**-----------------------------------------------------------
* Program Number:
* Written by    :
* Date Created  :
* Description   :
*
*-----------------------------------------------------------

ALL_REG                     REG     D0-D7/A0-A6
PEN_COLOR_TRAP_CODE         EQU     80
DRAW_PIXEL_TRAP_CODE        EQU     82
BMP_HEADER_SIZE             EQU     14

X_MAIN_DRAW                 EQU     0
Y_MAIN_DRAW                 EQU     0
X_BMP_DRAW_LOC              EQU     $FF
Y_BMP_DRAW_LOC              EQU     10
X_DRAW_SIZE                 EQU     100
Y_DRAW_SIZE                 EQU     100

*...
*put your code here
*...

	move.l	#33,d0
	move.w	#720,d1
	swap	d1
	move.w	#480,d1
	trap #15

main:
    move.l      #28,d0
	sub.l       d0,sp                   ;prepare stack for two 4 byte arguments
	move.l      #BmpToDraw,(sp)
	move.l      #X_MAIN_DRAW,4(sp)      ;set the values of the arguments
	move.l      #Y_MAIN_DRAW,8(sp)
	move.l      #X_BMP_DRAW_LOC,12(sp)  ;set the values of the arguments
	move.l      #Y_BMP_DRAW_LOC,16(sp)
	move.l      #X_DRAW_SIZE,20(sp)     ;set the values of the arguments
	move.l      #Y_DRAW_SIZE,24(sp)
    
    jsr drawBmp
    move.l      #28,d0
	add.l       d0,sp
	rts

    ;jmp end
    

drawBmp:
        move.l  4(sp),a0
		move.l	a0,bmpAddr
        move.l  8(sp),xMainDraw
        move.l  12(sp),yMainDraw
        move.l  16(sp),xBmpDrawLoc
        move.l  20(sp),yBmpDrawLoc
        move.l  24(sp),xDrawSize
        move.l  28(sp),yDrawSize
        
        

        movem.l ALL_REG,-(sp)
        clr.l   d0
        clr.l   d1
        clr.l   d2      
        clr.l   d3
        clr.l   d4
        clr.l   d5
        clr.l   d6
        clr.l   d7
        move.l     bmpAddr, a0
        
        move.l  10(a0),d1
        jsr fromLittleEndToBigEnd
        move.l  d1,imageDataOffset
        
        move.l  18(a0),d1
        jsr fromLittleEndToBigEnd
        move.l  d1,imageWidth
        
        move.l  22(a0),d1
        jsr fromLittleEndToBigEnd
        move.l  d1,imageHeight

        move.w  28(a0),d1
        rol.w   #8,d1
        move.w  d1,bitsPerPixel

        move.l  46(a0),d1
        jsr fromLittleEndToBigEnd
        move.l  d1,palleteSize
        
        clr     d1
        move.w  bitsPerPixel,d1
        lsr.w   #3,d1
        move.l  imageWidth,d2
        mulu.w  d2,d1
        and.b   #3,d1
        move.b  #4,d3
        sub.b   d1,d3
        cmp     #4,d3
        bne doneWithOffset  ;Gotta check if offset is 4. If so, clear it.
        clr d3
doneWithOffset:
        move.b  d3,rowOffset
        
        move.l  xBmpDrawLoc,d0  ;If this is FF (useless in application), we just use the entire image)
        cmp.l   #$FF,d0
        bne     useChunk
        move.l  #0,xBmpDrawLoc
        move.l  #0,yBmpDrawLoc
        move.l  imageWidth,xDrawSize
        move.l  imageHeight,yDrawSize
        
        
useChunk:
        ;Calculating Row size in bytes
        move.w  bitsPerPixel,d1
        lsr.w   #3,d1
        move.l  imageWidth,d2
        mulu.w  d2,d1           ;offset + (bits per pixel X pixels across) = pixels in a row
        add.l   d3,d1           ;Adding offset
        move.l  d1,rowSizeInBytes
        ;Done Calcing Row Size
        
        add.l   imageDataOffset,a0  ;moving address to pixel data
        
        move.l  xDrawSize,a2     ;The amount we're drawing toward  
        add.l   xMainDraw,a2     ;Offset for drawing chunk requested
        
        move.l  yDrawSize,a3     ;Keep in mind, these are the MAX X/Y draw points
        add.l   yMainDraw,a3
        
        move.l  xMainDraw,d2     ;These are the actual draw coords. Start at the offset
        move.l  a3,d3     ;This one's special, becase we draw bottom to top. Start at max, not min
        
        move.l  xBmpDrawLoc,d0  ;Moving DRAW_LOC bytes to the right X Location
        move.w  bitsPerPixel,d1
        lsr.l   #3,d1
        mulu.w  d1,d0
        add.l   d0,a0
        
        move.l  rowSizeInBytes,d0
        mulu.w  yBmpDrawLoc,d0
        add.l   d0,a0               ;Moving DRAW_LOC bytes to the right Y Location
        
        ;Choosing between indexed BMP or not
        move.w  bitsPerPixel,d1
        cmp.w   #8,d1
        beq     palleteFunctionBranch
        jmp     noPalleteFunctionBranch
palleteFunctionBranch:
        jsr     colorPalleteBmp
        movem.l (sp)+,ALL_REG
        rts
noPalleteFunctionBranch:
        jsr     drawPixels
        movem.l (sp)+,ALL_REG
        rts
        
drawPixels:
        ;AT THIS POINT:
        ;a2 is MAX X DRAW LOC
        ;a3 is MAX Y DRAW LOC
        ;d1 is COLOR REGISTER
        ;d2 is CUR X DRAW LOC
        ;d3 is CUR Y DRAW LOC
        clr     d1
        move.b  (a0)+,d1
        lsl.l   #08,d1
        move.b  (a0)+,d1
        lsl.l   #08,d1
        move.b  (a0)+,d1

        jsr drawPixel
        add.l   #1,d2
        cmp.l   d2,a2
        bne drawPixels
        
        sub.l   xDrawSize,a0 ;Cheating a little. I know at this point the bytePerPixel is 3, so just do 3 subs.
        sub.l   xDrawSize,a0
        sub.l   xDrawSize,a0

        add.l   rowSizeInBytes,a0
        move.l  xMainDraw,d2
        sub.l   #1,d3
        cmp.l   yMainDraw,d3
        bne drawPixels
        rts
        
        ;d7 is CurHeight
        ;d6 is CurWidth
        ;d5 is ColorIndexStart
        ;d4 is TotalWidth
        ;d3 is YLocation for function
        ;d2 is XLocation for function
        ;d1 is Color for function
        ;d0 gets eaten by the function
        
        ;a0 is current pixel index loc
        ;a1 is used to store/pull color from
        ;a4 is ONE TIME data gather
colorPalleteBmp:
        move.l  bmpAddr, a4
        clr d5
        move.b  #BMP_HEADER_SIZE,d5
        add.b   BMP_HEADER_SIZE(a4),d5
        
colorPalleteLoop:
        clr     d1        
        move.b  (a0)+,d1
        lsl     #2,d1
        add.l   d5,d1           ;Adding Color Index
        add.l   (bmpAddr),d1   ;Adding File Location Start
        move.l  d1,a1
        move.l  (a1),d1
        lsr.l   #8,d1

        jsr drawPixel
        add.l   #1,d2
        cmp.l   d2,a2
        bne colorPalleteLoop
        
        sub.l   xDrawSize,a0
        add.l   rowSizeInBytes,a0
        move.l  xMainDraw,d2
        sub.l   #1,d3
        cmp.l   yMainDraw,d3
        bne colorPalleteLoop
        rts
        
        *Mangles D0,D1
        *Keeps D2,D3 safe
        *D1 Should be the color
        *D2 should be x loc
        *D3 should be y loc
drawPixel:
        move.l #PEN_COLOR_TRAP_CODE, d0
        trap #15
        
        move.l #DRAW_PIXEL_TRAP_CODE,d0
        move.l d2,d1
        move.l d3,d2
        trap    #15
        
        move.l d2,d3
        move.l d1,d2

        rts


fromLittleEndToBigEnd:
     rol.w   #8,d1
     swap    d1
     rol.w   #8,d1
     rts
        
;end:
*...by here, SortedData area of memory should contain
*...the data from DataToSort, sorted smallest to largest
        ;movem.l (sp)+,ALL_REG
        ;move.b  $9,d0
        ;TRAP #15       
        ;STOP #$2000
BmpToDraw:      INCBIN "level1.bmp"


bitsPerPixel        dc.w    0
palleteSize         dc.l    0
imageDataOffset     dc.l    0
imageWidth          dc.l    0
imageHeight         dc.l    0
rowOffset           dc.b    0
colorIndexOffset    dc.l    0
rowSizeInBytes      dc.l    0

xMainDraw           dc.l    0
yMainDraw           dc.l    0
xBmpDrawLoc         dc.l    0
yBmpDrawLoc         dc.l    0
xDrawSize           dc.l    0
yDrawSize           dc.l    0

bmpAddr				dc.l    0



























*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
