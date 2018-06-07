*-----------------------------------------------------------
* Title      :	Space Vacuum
* Written by :	Jacob Lites
* Date       :	10/18/2017
* Description:	Space Vacuum is a physics based arcade game in which you must keep asteroids from hitting the vacuum consuming the cosmos
*-----------------------------------------------------------
ALL_REG							REG D0-D7/A0-A6

CIRCLE_SIZE	                    EQU 12

SI_SHOOT						EQU	1
SF_MUSIC						EQU	2
SF_WIN							EQU	3
SF_LOSE							EQU	4
SF_HIT							EQU	5
FINAL_MUSIC						EQU	6
FINAL_SHOOT						EQU	7
FINAL_HIT						EQU	8
FINAL_WIN						EQU	9
FINAL_LOSE						EQU	10
SI_HIT							EQU	11

A_SCREEN_X_SIZE					EQU	640
A_SCREEN_Y_SIZE					EQU	480

A_PLAY_X_START					EQU	68
A_PLAY_Y_START					EQU	89
A_PLAY_X_START_OFFSET			EQU	A_PLAY_X_START+(CIRCLE_SIZE/2)
A_PLAY_Y_START_OFFSET			EQU	A_PLAY_Y_START+(CIRCLE_SIZE/2)
A_PLAY_X_SIZE					EQU	564
A_PLAY_Y_SIZE					EQU	384
A_FINAL_SCORE_X					EQU	A_PLAY_X_START+(A_PLAY_X_SIZE/2)
A_FINAL_SCORE_Y					EQU	A_PLAY_Y_START+(A_PLAY_Y_SIZE/2)
A_PLAY_X_END					EQU	A_PLAY_X_START+A_PLAY_X_SIZE
A_PLAY_Y_END					EQU	A_PLAY_Y_START+A_PLAY_Y_SIZE
A_PLAY_X_END_OFFSET				EQU	A_PLAY_X_END-(CIRCLE_SIZE)
A_PLAY_Y_END_OFFSET				EQU	A_PLAY_Y_END-(CIRCLE_SIZE)
A_VACUUM_OFFSET					EQU	A_PLAY_X_START+(A_PLAY_X_SIZE/5)
A_SCORE_X						EQU	485
A_SCORE_Y						EQU	45
A_THRESHOLD_X					EQU	355
A_THRESHOLD_Y					EQU	45
A_BULLET_COUNT_X				EQU	270
A_BULLET_COUNT_Y				EQU	45
A_CIRCLE_SPEED					EQU	$01A0
A_BULLET_SPEED					EQU	$0200
A_ASTEROIDSIZE					EQU	40
A_HALF_ASTEROIDSIZE				EQU	20
A_ASTEROID_HEALTH				EQU	5

B_SCREEN_X_SIZE					EQU	720
B_SCREEN_Y_SIZE					EQU	578
B_PLAY_X_START					EQU	0
B_PLAY_Y_START					EQU	0
B_PLAY_X_START_OFFSET			EQU	B_PLAY_X_START+(CIRCLE_SIZE/2)
B_PLAY_Y_START_OFFSET			EQU	B_PLAY_Y_START+(CIRCLE_SIZE/2)
B_PLAY_X_SIZE					EQU	580
B_PLAY_Y_SIZE					EQU	578
B_FINAL_SCORE_X					EQU	B_PLAY_X_START+(B_PLAY_X_SIZE/2)
B_FINAL_SCORE_Y					EQU	B_PLAY_Y_START+(B_PLAY_Y_SIZE/2)
B_PLAY_X_END					EQU	B_PLAY_X_START+B_PLAY_X_SIZE
B_PLAY_Y_END					EQU	B_PLAY_Y_START+B_PLAY_Y_SIZE
B_PLAY_X_END_OFFSET				EQU	B_PLAY_X_END-(CIRCLE_SIZE)
B_PLAY_Y_END_OFFSET				EQU	B_PLAY_Y_END-(CIRCLE_SIZE)
B_VACUUM_OFFSET					EQU	B_PLAY_X_START+(B_PLAY_X_SIZE/5)
B_SCORE_X						EQU	668
B_SCORE_Y						EQU	75
B_BULLET_COUNT_X				EQU	660
B_BULLET_COUNT_Y				EQU	495
B_THRESHOLD_X					EQU	620
B_THRESHOLD_Y					EQU	75
B_CIRCLE_SPEED					EQU	$0200
B_BULLET_SPEED					EQU	$0300
B_ASTEROIDSIZE					EQU	36
B_HALF_ASTEROIDSIZE				EQU	18
B_ASTEROID_HEALTH				EQU	6

C_SCREEN_X_SIZE					EQU	1024
C_SCREEN_Y_SIZE					EQU	768
C_PLAY_X_START					EQU	150
C_PLAY_Y_START					EQU	0
C_PLAY_X_START_OFFSET			EQU	C_PLAY_X_START+(CIRCLE_SIZE/2)
C_PLAY_Y_START_OFFSET			EQU	C_PLAY_Y_START+(CIRCLE_SIZE/2)
C_PLAY_X_SIZE					EQU	874
C_PLAY_Y_SIZE					EQU	768
C_FINAL_SCORE_X					EQU	C_PLAY_X_START+(C_PLAY_X_SIZE/2)
C_FINAL_SCORE_Y					EQU	C_PLAY_Y_START+(C_PLAY_Y_SIZE/2)
C_PLAY_X_END					EQU	C_PLAY_X_START+C_PLAY_X_SIZE
C_PLAY_Y_END					EQU	C_PLAY_Y_START+C_PLAY_Y_SIZE
C_PLAY_X_END_OFFSET				EQU	C_PLAY_X_END-(CIRCLE_SIZE)
C_PLAY_Y_END_OFFSET				EQU	C_PLAY_Y_END-(CIRCLE_SIZE)
C_VACUUM_OFFSET					EQU	C_PLAY_X_START+(C_PLAY_X_SIZE/5)
C_SCORE_X						EQU	120
C_SCORE_Y						EQU	720
C_BULLET_COUNT_X				EQU	25
C_BULLET_COUNT_Y				EQU	720
C_THRESHOLD_X					EQU	70
C_THRESHOLD_Y					EQU	720
C_CIRCLE_SPEED					EQU	$0240
C_BULLET_SPEED					EQU	$0380
C_ASTEROIDSIZE					EQU	32
C_HALF_ASTEROIDSIZE				EQU	16
C_ASTEROID_HEALTH				EQU	7

D_SCREEN_X_SIZE					EQU	1280
D_SCREEN_Y_SIZE					EQU	720
D_PLAY_X_START					EQU	230
D_PLAY_Y_START					EQU	0
D_PLAY_X_START_OFFSET			EQU	D_PLAY_X_START+(CIRCLE_SIZE/2)
D_PLAY_Y_START_OFFSET			EQU	D_PLAY_Y_START+(CIRCLE_SIZE/2)
D_PLAY_X_SIZE					EQU	1006
D_PLAY_Y_SIZE					EQU	720
D_FINAL_SCORE_X					EQU	D_PLAY_X_START+(D_PLAY_X_SIZE/2)
D_FINAL_SCORE_Y					EQU	D_PLAY_Y_START+(D_PLAY_Y_SIZE/2)
D_PLAY_X_END					EQU	D_PLAY_X_START+D_PLAY_X_SIZE
D_PLAY_Y_END					EQU	D_PLAY_Y_START+D_PLAY_Y_SIZE
D_PLAY_X_END_OFFSET				EQU	D_PLAY_X_END-(CIRCLE_SIZE)
D_PLAY_Y_END_OFFSET				EQU	D_PLAY_Y_END-(CIRCLE_SIZE)
D_VACUUM_OFFSET					EQU	D_PLAY_X_START+(D_PLAY_X_SIZE/5)
D_SCORE_X						EQU	1220
D_SCORE_Y						EQU	45
D_BULLET_COUNT_X				EQU	1220
D_BULLET_COUNT_Y				EQU	600
D_THRESHOLD_X					EQU	1220
D_THRESHOLD_Y					EQU	355
D_CIRCLE_SPEED					EQU	$0280
D_BULLET_SPEED					EQU	$0400
D_ASTEROIDSIZE					EQU	30
D_HALF_ASTEROIDSIZE				EQU	15
D_ASTEROID_HEALTH				EQU	8

ENABLE_DOUBLE_BUFFER_CODE       EQU 17

OUTPUT_WINDOW_TRAP_CODE         EQU 33
NOT_FULL_SCREEN_SETTING_NUM     EQU 1
FULL_SCREEN_SETTING_NUM         EQU 2

GET_TIME_TRAP_CODE				EQU 8
DELAY_TIME_TRAP_CODE			EQU 23

GET_MOUSE_LOC_TRAP_CODE         EQU 61

SET_PEN_COLOR_TRAP_CODE         EQU 80
SET_FILL_COLOR_TRAP_CODE        EQU 81
DRAW_FILLED_RECT_TRAP_CODE      EQU 87
DRAW_FILLED_ELLIPSE_TRAP_CODE   EQU 88
DRAW_ELLIPSE_TRAP_CODE			EQU 91

SET_DRAW_MODE_TRAP_CODE         EQU 92
DRAW_TO_SCREEN_TRAP_CODE        EQU 94


MAROON                          EQU $000E003E
RED                             EQU $000000FF
BLUE                            EQU $00FF0000
DARKBLUE                        EQU $005E0E00
GREEN                           EQU $0000FF00
DARKGREEN                       EQU $000E3E00
YELLOW                          EQU $0000F2FF
DARKYELLOW                      EQU $00003F34
WHITE                           EQU $00FFFFFF
BLACK                           EQU $00000000
GREY                            EQU $00666666

BULLET_X						EQU	0
BULLET_Y						EQU	4
BULLET_SIZE_IN_MEMORY			EQU	8
BULLET_COUNT					EQU	7

ASTEROID_X						EQU	0
ASTEROID_Y						EQU	4
ASTEROID_X_VELOCITY				EQU	8
ASTEROID_Y_VELOCITY				EQU	12
ASTEROID_HEALTH					EQU	16
ASTEROID_SIZE_IN_MEMORY			EQU	20
MAX_ASTEROID_COUNT				EQU	6

    ORG    $1000
START:
    
	jsr		loadSounds			;Loading sounds into directX Audio player
	jsr		seedRandomNumber	;Priming the pump
	move.l	#OUTPUT_WINDOW_TRAP_CODE,d0
	move.w	#A_SCREEN_X_SIZE,d1
	swap	d1
	move.w	#A_SCREEN_Y_SIZE,d1
	trap #15
	
	;POPULATING CIRCLE_SIZE DATA
	move.l	#CIRCLE_SIZE,d0
	lsr.b	#1,d0
	move.l	d0,halfCircleSize
    jsr		setDoubleBufferMode

	jsr		startLevel


;Main game loop. Updates time, then calculates the state for the given frame
loop:
	jsr	updateTimeSinceLastLoop
	jsr updateInput
	jsr updateElements
	jsr drawElements
	jsr removeElements
	jsr checkForLevelEnd

    jmp loop

;Element removal step. Removes all drawn elements from the draw step of the game loop
removeElements:
    moveq   #0,d1
    jsr setPenColor
    jsr setFillColor
    jsr removeCircle
    jsr removeBullets
    jsr removeAsteroids
	rts

;Updating logical representation of the elements in memory. Includes physics updates and collisions
updateElements:
	jsr updateCircleLocation
	jsr	spawnBulletIfPossible
	jsr updateBulletLocation
	jsr updateAsteroidLocation
	jsr	checkForAsteroidBulletCollision
	rts

;Draws all elements after their state has been updated.
drawElements:
    move.l  #WHITE,d1
    jsr		setPenColor
    jsr		setFillColor

	move.l	curDrawShipFunction,a6		;Can set the draw function based on current arcade cabinet
	jsr		(a6)
	jsr		drawBullets	

    move.l  #GREY,d1
    jsr		setPenColor
    jsr		setFillColor

	move.l	curDrawAsteroidFunction,a6	;Can set the draw function based on current arcade cabinet
	jsr		(a6)

	jsr		drawVacuumLine
	jsr		drawScore
	jsr		drawBulletCount
	jsr		drawThresholdCount
    jsr		drawBufferToScreen
	rts

;Function to check if there are any free spaces into which to spawn a bullet
spawnBulletIfPossible:
	move.b	spawnBullet,d0
	beq		finishBulletSpawn
	move.b	#0,spawnBullet
	moveq	#0,d7
	moveq	#BULLET_COUNT,d6
findEmptyBulletSpaceLoop:
	lea		bullet,a0
	move.l	(a0,d7.w),d0
	bne		nextFindEmptyBulletLoopIter		;Moves to the next iteration if this one is taken, IE not zero
											;We got here, that means this one is NOT taken. Populate it, get out of the loop
	jsr		playShoot
	add.l	d7,a0							;Move the A0 register to point to our new bullet
	move.l	circleXLocation,d0
	move.l	halfCircleSize,d1
	lsl.l	#8,d1
	lsl.l	#1,d1
	add.l	d1,d0
	move.l	d0,BULLET_X(a0)

	move.l	circleYLocation,d0
	move.l	halfCircleSize,d1
	lsl.l	#8,d1
	add.l	d1,d0
	move.l	d0,BULLET_Y(a0)
	jmp		finishBulletSpawn
nextFindEmptyBulletLoopIter:
	add.w	#BULLET_SIZE_IN_MEMORY,d7
	sub.b	#1,d6
	bne		findEmptyBulletSpaceLoop
finishBulletSpawn:
	rts	

updateBulletLocation:
    lea     bullet,a0
	moveq	#BULLET_COUNT,d6	
bulletUpdateLoop:
	cmp.l	#0,BULLET_X(a0)			;Means bullet is not in use
	beq		updateBulletNextIter
	move.l	BULLET_X(a0),d1

	;Mult by current deltaTime
	move.l	bulletSpeed,d3
	muls.w	deltaTime,d3
	add.l	d3,d1

	move.l	d1,d2
	lsr.l	#8,d2
	cmp.l	playXEnd,d2
	ble		saveNewBulletLoc
	move.l	#0,BULLET_X(a0)
	jmp		updateBulletNextIter
saveNewBulletLoc:
	move.l	d1,BULLET_X(a0)
updateBulletNextIter:
	add.l	#BULLET_SIZE_IN_MEMORY,a0
	sub.b	#1,d6
	bne		bulletUpdateLoop
	rts

drawBullets:
	move.l	#0,currentBullets
	lea		bullet,a0
	moveq	#BULLET_COUNT,d6
drawBulletLoop:
	move.l	BULLET_X(a0),d1
	cmp.l	#0,d1
	beq		dontDrawThisBullet
	move.l	BULLET_Y(a0),d2

	;Drawing bullet
	lsr.l	#8,d2
	lsr.l	#8,d1
    moveq   #DRAW_FILLED_RECT_TRAP_CODE,d0
    moveq   #1,d3
    add.l   d1,d3
    moveq   #1,d4
    add.l   d2,d4
    trap    #15
	jmp		nextBulletDrawIter

dontDrawThisBullet:
	add.l	#1,currentBullets
nextBulletDrawIter:
	add.l	#BULLET_SIZE_IN_MEMORY,a0
	sub.b	#1,d6
	bne		drawBulletLoop
drawBulletEnd:
	rts

removeBullets:
	lea		bullet,a0
	moveq	#BULLET_COUNT,d6
removeBulletLoop:
	move.l	BULLET_X(a0),d1
	cmp.l	#$0,d1
	beq		removeBulletEnd
	move.l	BULLET_Y(a0),d2

	;Drawing bullet
	lsr.l	#8,d2
	lsr.l	#8,d1
    moveq   #DRAW_FILLED_RECT_TRAP_CODE,d0
    moveq   #1,d3
    add.l   d1,d3
    moveq   #1,d4
    add.l   d2,d4
    trap    #15
removeBulletEnd:
	add.l	#BULLET_SIZE_IN_MEMORY,a0
	sub.b	#1,d6
	bne		removeBulletLoop
	rts

resetCircleLocation:
	move.l	playYSize,d0
	lsr.l	#1,d0
	add.l	playYStartOffset,d0
	lsl.l	#8,d0

	move.l	playXStartOffset,d1
	lsl.l	#8,d1

	move.l	d0,circleYLocation
	move.l	d1,circleXLocation
	rts
	

updateCircleLocation:
	move.l	halfCircleSize,d3
	move.w	mouseXLocation,d1
	ext.l	d1

	;CHECKING LOWER X BOUNDARY
	cmp.l	playXStartOffset,d1
	bgt		.notOutOfX
	move.l	playXStartOffset,d1
	jmp		.xAdjDone
.notOutOfX:

	;CHECKING HIGHER X BOUNDARY
	move.l	currentVacuumLineX,d5
	sub.l	#CIRCLE_SIZE,d5
	cmp.l	d5,d1
	blt		.notOutOfXU
	move.l	d5,d1
	jmp		.xAdjDone
.notOutOfXU:
	sub.l	d3,d1

.xAdjDone:

	move.w	mouseYLocation,d2
	ext.l	d2

	;CHECKING LOWER Y BOUNDARY
	cmp.l	playYStartOffset,d2
	bgt		.notOutOfY
	move.l	playYStartOffset,d2
	jmp		.yAdjDone
.notOutOfY:

	;CHECKING HIGHER Y BOUNDARY
	cmp.l	playYEndOffset,d2
	blt		.notOutOfYU
	move.l	playYEndOffset,d2
	jmp		.yAdjDone
.notOutOfYU:
	sub.l	d3,d2

.yAdjDone:

    lsl.l   #8,d1
    lsl.l   #8,d2
    move.l  circleXLocation,d3
    move.l  circleYLocation,d4

	;If we're within 10 X or Y pixels of the mouse cursor, don't update. Otherwise we overshoot and get jerky movement
	move.l	d1,d5
	sub.l	d3,d5
	bpl		.validXCheck
	neg.l	d5
.validXCheck
	move.l	d2,d6
	sub.l	d4,d6
	bpl		.validYCheck
	neg.l	d6
.validYCheck
	add.l	d5,d6
	move.l	#10,d5
	lsl.l	#8,d5
	cmp.l	d5,d6
	blt		dontMove

    ;At this point:
    ;D1 has mouse x
    ;D2 has mouse y
    ;D3 has cur circle x
    ;D4 has cur circle y
    ;D5 will have x vel
    ;D6 will have y vel
    ;D0 is saved for calcs/trap codes
    
    move.l  circleSpeed,d5
    cmp.l   d1,d3
    ble     dontNegateX
    neg.l   d5
dontNegateX:
	muls.w	deltaTime,d5
    add.l   d5,d3

    move.l  circleSpeed,d6
    cmp.l   d2,d4
    ble     dontNegateY
    neg.l   d6
dontNegateY:
	muls.w	deltaTime,d6
    add.l   d6,d4

    move.l  d3,circleXLocation
    move.l  d4,circleYLocation
dontMove:
    rts

drawShip:
    move.l  circleXLocation,d1
    move.l  circleYLocation,d2
    lsr.l   #8,d1
    lsr.l   #8,d2

    moveq   #CIRCLE_SIZE,d3
    moveq   #CIRCLE_SIZE,d4
    add.l   d2,d4
    add.l   d1,d3
    
    moveq   #DRAW_FILLED_ELLIPSE_TRAP_CODE,d0
    trap    #15
	rts

drawLevel2Ship:
    move.l  circleXLocation,d1
    move.l  circleYLocation,d2
    lsr.l   #8,d1
    lsr.l   #8,d2

    moveq   #CIRCLE_SIZE,d3
    moveq   #CIRCLE_SIZE,d4
    add.l   d2,d4
    add.l   d1,d3
    
    moveq   #DRAW_FILLED_ELLIPSE_TRAP_CODE,d0
    trap    #15
	move.l	d1,d5

    move.l  #RED,d1
    jsr		setPenColor
    jsr 	setFillColor
	move.l	d5,d1
	add.l	#CIRCLE_SIZE,d1
	sub.l	#6,d1
	add.l	#2,d2

	sub.l	#CIRCLE_SIZE,d4
	add.l	#5,d4
	sub.l	#4,d3
    moveq   #DRAW_FILLED_RECT_TRAP_CODE,d0
    trap    #15

	add.l	#6,d2
	add.l	#6,d4
    moveq   #DRAW_FILLED_RECT_TRAP_CODE,d0
    trap    #15

    move.l  #WHITE,d1
    jsr		setPenColor
    jsr 	setFillColor
	rts

drawLevel3Ship:
    move.l  circleXLocation,d1
    move.l  circleYLocation,d2
    lsr.l   #8,d1
    lsr.l   #8,d2

    moveq   #CIRCLE_SIZE,d3
    moveq   #CIRCLE_SIZE,d4
    add.l   d2,d4
    add.l   d1,d3
    
    moveq   #DRAW_FILLED_ELLIPSE_TRAP_CODE,d0
    trap    #15
	move.l	d1,d5

    move.l  #BLACK,d1
    jsr		setPenColor
    jsr 	setFillColor
	move.l	d5,d1
	add.l	#CIRCLE_SIZE,d1
	sub.l	#6,d1

	sub.l	#CIRCLE_SIZE,d4
	add.l	#5,d4
    moveq   #DRAW_FILLED_RECT_TRAP_CODE,d0
    trap    #15

	add.l	#8,d2
	add.l	#8,d4
    moveq   #DRAW_FILLED_RECT_TRAP_CODE,d0
    trap    #15

    move.l  #WHITE,d1
    jsr		setPenColor
    jsr 	setFillColor
	rts

updateTimeSinceLastLoop:
	moveq	#DELAY_TIME_TRAP_CODE,d0
	moveq	#2,d1
	trap	#15
	moveq	#GET_TIME_TRAP_CODE,d0
	trap	#15
	move.l	lastIterTime,d2
	move.l	d1,lastIterTime
	sub.l	d2,d1
	;bne		deltaTimeNotZero
	;moveq	#1,d1
deltaTimeNotZero:
	move.w	d1,deltaTime
	rts
    
updateInput:
    moveq   #GET_MOUSE_LOC_TRAP_CODE,d0
    moveq   #0,d1
    trap    #15
	;Getting mouse Location
    move.w  d1,mouseXLocation
    swap    d1
    move.w  d1,mouseYLocation
	;Getting mouse down state
	and.b	#2,d0
	lsr.b	#1,d0
	moveq	#0,d1
	move.b	(mouseDown),d1
	cmp		d1,d0
	ble		dontSpawnBullet
	move.b	#1,spawnBullet
dontSpawnBullet:
	move.b	d0,(mouseDown)
    rts
    
removeCircle:
	move.l	(circleXLocation),d1
	move.l	(circleYLocation),d2
	lsr.l	#8,d1
	lsr.l	#8,d2
    moveq   #CIRCLE_SIZE,d3
    add.l   d1,d3
    moveq   #CIRCLE_SIZE,d4
    add.l   d2,d4
    moveq   #DRAW_FILLED_RECT_TRAP_CODE,d0
    trap    #15
    rts

setPenColor:
    moveq   #SET_PEN_COLOR_TRAP_CODE,d0
    trap    #15
    rts

setFillColor:
    moveq   #SET_FILL_COLOR_TRAP_CODE,d0
    trap    #15
    rts

setDoubleBufferMode:
    moveq   #SET_DRAW_MODE_TRAP_CODE,d0
    moveq   #ENABLE_DOUBLE_BUFFER_CODE,d1
    trap    #15
    rts

drawBufferToScreen:
    moveq   #DRAW_TO_SCREEN_TRAP_CODE,d0
    trap    #15
    rts

spawnRandomAsteroid:
	moveq	#0,d6
	jsr getRandomByteIntoD6
	move.l	playXEnd,d1
	sub.l	d6,d1
	lsl.l	#8,d1

	jsr getRandomByteIntoD6
	move.l	playYEnd,d2
	sub.l	d6,d2
	sub.l	d6,d2
	lsl.l	#8,d2

	jsr getRandomByteIntoD6
	sub.l	#127,d6
	move.l	d6,d3

	jsr getRandomByteIntoD6
	sub.l	#127,d6
	move.l	d6,d4
	jsr spawnAsteroid
	rts

;When calling:
;D1 is x, Fixed point lsl 8
;D2 is y, Fixed point lsl 8
;D3 is xVel, Fixed point lsl 8
;D4 is yVel, Fixed point lsl 8
spawnAsteroid:
	lea		asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d7
.loop:
	move.l	ASTEROID_X(a0),d6
	bne		.continueLoop			;Next loop iter if this asteroid's taken
	move.l	d1,ASTEROID_X(a0)
	move.l	d2,ASTEROID_Y(a0)
	move.l	d3,ASTEROID_X_VELOCITY(a0)
	move.l	d4,ASTEROID_Y_VELOCITY(a0)
	move.l	levelAsteroidHealth,ASTEROID_HEALTH(a0)
	jmp		.spawnedAsteroid
.continueLoop
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d7
	bne		.loop
.spawnedAsteroid
	rts

removeAsteroids:
	lea		asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d7
.loop:
	move.l	ASTEROID_X(a0),d1
	beq		.continueLoop			;Don't draw if it's not populated
    move.l  ASTEROID_Y(a0),d2

    asr.l   #8,d1
    asr.l   #8,d2

	moveq	#0,d3
	move.b	curAsteroidSize,d3
	moveq	#0,d4
	move.b	curAsteroidSize,d4

	add.l	d1,d3
	add.l	d2,d4

    moveq   #DRAW_FILLED_ELLIPSE_TRAP_CODE,d0
    trap    #15
.continueLoop
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d7
	bne		.loop
	rts
	
drawAsteroids:
	lea		asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d7
.loop:
	move.l	ASTEROID_X(a0),d1
	beq		.continueLoop			;Don't draw if it's not populated
    move.l  ASTEROID_Y(a0),d2

    asr.l   #8,d1
    asr.l   #8,d2

	moveq	#0,d3
	move.b	curAsteroidSize,d3
	moveq	#0,d4
	move.b	curAsteroidSize,d4

	add.l	d1,d3
	add.l	d2,d4

    moveq   #DRAW_ELLIPSE_TRAP_CODE,d0
    trap    #15
.continueLoop
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d7
	bne		.loop
	rts

drawLevel2Asteroids:
	lea		asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d7
.loop:
	move.l	ASTEROID_X(a0),d1
	beq		.continueLoop			;Don't draw if it's not populated
    move.l  ASTEROID_Y(a0),d2

    asr.l   #8,d1
    asr.l   #8,d2

	moveq	#0,d3
	move.b	curAsteroidSize,d3
	moveq	#0,d4
	move.b	curAsteroidSize,d4

	add.l	d1,d3
	add.l	d2,d4

    moveq   #DRAW_FILLED_ELLIPSE_TRAP_CODE,d0
    trap    #15
.continueLoop
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d7
	bne		.loop
	rts

drawLevel3Asteroids:
	lea		asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d7
.loop:
	move.l	ASTEROID_X(a0),d1
	beq		.continueLoop			;Don't draw if it's not populated
    move.l  ASTEROID_Y(a0),d2

    asr.l   #8,d1
    asr.l   #8,d2

	moveq	#0,d3
	move.b	curAsteroidSize,d3
	moveq	#0,d4
	move.b	curAsteroidSize,d4

	add.l	d1,d3
	add.l	d2,d4

    moveq   #DRAW_FILLED_ELLIPSE_TRAP_CODE,d0
    trap    #15
	move.l	d1,d5

    move.l  #WHITE,d1
    jsr		setPenColor
    jsr 	setFillColor
	move.l	d5,d1
	add.l	curHalfAsteroidSize,d1
	add.l	curHalfAsteroidSize,d2
	sub.l	#6,d3
	sub.l	#6,d4
    moveq   #DRAW_FILLED_ELLIPSE_TRAP_CODE,d0
    trap    #15
    move.l  #GREY,d1
    jsr		setPenColor
    jsr 	setFillColor

.continueLoop
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d7
	bne		.loop
	rts


updateAsteroidLocation:
    lea     asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d6	
updateAsteroidloop:
	move.l	ASTEROID_X(a0),d1		;Means asteroid is not in use
	beq		nextAsteroidDrawIter
	move.l	ASTEROID_Y(a0),d2

	;Updating X Location based on velocity
	move.l	ASTEROID_X_VELOCITY(a0),d3
	muls.w	deltaTime,d3
	sub.l	d3,d1
	move.l	d1,ASTEROID_X(a0)

	;We're going to apply gravity in the X Direction
	move.l	ASTEROID_X_VELOCITY(a0),d3
	move.l	curAsteroidGravity,d4	
	muls.w	deltaTime,d4
	add.l	d4,d3
	move.l	d3,ASTEROID_X_VELOCITY(a0)

	;Updating Y Location based on velocity
	move.l	ASTEROID_Y_VELOCITY(a0),d3
	muls.w	deltaTime,d3
	add.l	d3,d2
	move.l	d2,ASTEROID_Y(a0) ;MAY BE ABLE TO UPDATE IN MEMORY

	;Checking if we're out of Y bounds, if so, reverse velocity
	move.l	ASTEROID_Y(a0),d3
	asr.l	#8,d3
	cmp.l	playYStart,d3
	bgt		dontReverseAsteroidY
	move.l	playYStart,d3
	lsl.l	#8,d3
	move.l	d3,ASTEROID_Y(a0)
	move.l	ASTEROID_Y_VELOCITY(a0),d3
	bpl		dontReverseAsteroidY
	;asr.l	#8,d3
	muls.w	#-1,d3
	move.l	d3,ASTEROID_Y_VELOCITY(a0)
dontReverseAsteroidY:
	
	;Checking if we're out of Y bounds, if so, reverse velocity
	move.l	ASTEROID_Y(a0),d3
	lsr.l	#8,d3
	move.l	playYEnd,d4
	sub.l	curHalfAsteroidSize,d4
	sub.l	curHalfAsteroidSize,d4
	cmp.l	d4,d3
	blt		dontReverseAsteroidY2
	move.l	playYEnd,d3
	sub.l	curHalfAsteroidSize,d3
	sub.l	curHalfAsteroidSize,d3
	lsl.l	#8,d3
	move.l	d3,ASTEROID_Y(a0)
	move.l	ASTEROID_Y_VELOCITY(a0),d3
	bmi		dontReverseAsteroidY2
	muls.w	#-1,d3
	move.l	d3,ASTEROID_Y_VELOCITY(a0)
dontReverseAsteroidY2:

	;Checking if asteroids are out of up bounds, and setting xVel to 0 if they are
	move.l	d1,d2
	lsr.l	#8,d2
	moveq	#0,d3
	move.b	curAsteroidSize,d3
	add.l	d3,d2
	cmp.l	playXEnd,d2
	ble		dontNukeVel
	move.l	#0,ASTEROID_X_VELOCITY(a0)
	move.l	playXEnd,d5
	sub.l	d3,d5
	lsl.l	#8,d5
	move.l	d5,ASTEROID_X(a0)
dontNukeVel:
	sub.l	d3,d2
	;Checking if asteroids are out of down bounds, and invalidating them if they are
	cmp.l	currentVacuumLineX,d2
	bge		nextAsteroidDrawIter
	move.l	#0,ASTEROID_X(a0)
nextAsteroidDrawIter:
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d6
	bne		updateAsteroidloop
	rts

checkForAsteroidBulletCollision:
    lea     asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d7	
	moveq	#0,d5
	move.b	curAsteroidSize,d5

	;Retrieving and squaring radius of asteroid
	lsr.l	#1,d5
	moveq	#0,d4
	move.b	d5,d4
	muls.w	d4,d5
	add.l	#2,d5
checkAsteroidLoop:
	move.l	ASTEROID_X(a0),d0
	beq		nextAsteroidCheckIter
	move.l	ASTEROID_Y(a0),d1
	lsr.l	#8,d0
	lsr.l	#8,d1
	add.l	curHalfAsteroidSize,d0
	add.l	curHalfAsteroidSize,d1

    lea     bullet,a1
	moveq	#BULLET_COUNT,d6	
checkBulletLoop:
	move.l	BULLET_X(a1),d2
	beq		nextBulletCheckIter
	move.l	BULLET_Y(a1),d3
	lsr.l	#8,d2
	lsr.l	#8,d3

	sub.l	d0,d2
	move.l	d2,d4
	muls.w	d4,d2

	sub.l	d1,d3
	move.l	d3,d4
	muls.w	d4,d3

	add.l	d3,d2
	cmp.l	d2,d5
	blt		nextBulletCheckIter		;If we pass this, THERE IS A COLLISION
	jsr		playHit

	;Get Mult Factor
	move.l	BULLET_Y(a1),d2
	lsr.l	#8,d2
	sub.l	d1,d2
	muls.w	#-1,d2
	move.l	curBulletYPower,d3
	muls.w	d3,d2
	add.l	d2,ASTEROID_Y_VELOCITY(a0)
	move.l	curBulletXPower,d2
	sub.l	d2,ASTEROID_X_VELOCITY(a0)
	move.l	#0,BULLET_X(a1)
	jsr		incrementScoreCounter
	sub.l	#1,ASTEROID_HEALTH(a0)
	move.l	ASTEROID_HEALTH(a0),d4
	bne		nextBulletCheckIter			;If we pass this, ASTEROID HAS DIED
	move.l	#0,ASTEROID_X(a0)
	jmp nextAsteroidCheckIter
nextBulletCheckIter:
	add.l	#BULLET_SIZE_IN_MEMORY,a1
	sub.b	#1,d6
	bne		checkBulletLoop
nextAsteroidCheckIter:
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d7
	bne		checkAsteroidLoop
	rts

;D0 is number to draw
;D1 is center X location
;D2 is center Y location
drawSevenSegment:
	movem.l	ALL_REG,-(sp)
	move.l	d1,segmentCenterX
	move.l	d2,segmentCenterY
	moveq	#0,d1
	moveq	#0,d2
	moveq	#0,d3
	moveq	#0,d4
	lea		sevenSegmentList,a0
	lea		segmentStartXLocs,a1
	lea		segmentStartYLocs,a2
	lea		segmentEndXLocs,a3
	lea		segmentEndYLocs,a4
	move.b	(a0,d0),d7
	moveq	#7,d5
	;AT THIS POINT
	;D0 is clobbered for trap code
	;D1 is draw left x
	;D2 is draw upper y
	;D3 is draw right x
	;D4 is draw lower y
	;D5 is loop controller
	;D7 is 7 seg binary checker
.loop:
	sub.l	#1,d5
	btst	d5,d7
	beq		.penIsMaroon
	jmp		.penIsRed
.penIsMaroon:
	move.l	curCounterOffColor,d1
	jsr		setPenColor
	jsr		setFillColor
	jmp		.drawSegment
.penIsRed:
	move.l	curCounterColor,d1
	jsr		setPenColor
	jsr		setFillColor
	jmp		.drawSegment
.drawSegment
	lea		sevenSegmentList,a0
	lea		segmentStartXLocs,a1
	lea		segmentStartYLocs,a2
	lea		segmentEndXLocs,a3
	lea		segmentEndYLocs,a4

	lsl.l	#2,d5
	add.l	d5,a1
	add.l	d5,a2
	add.l	d5,a3
	add.l	d5,a4
	move.l	(a1),d1
	move.l	(a2),d2
	move.l	(a3),d3
	move.l	(a4),d4
	add.l	segmentCenterX,d1
	add.l	segmentCenterX,d3
	add.l	segmentCenterY,d2
	add.l	segmentCenterY,d4
	moveq	#DRAW_FILLED_RECT_TRAP_CODE,d0
	trap	#15
    jsr		drawBufferToScreen

	lsr.l	#2,d5
	bne		.loop
	movem.l (sp)+,ALL_REG
	rts

drawBulletCount:
	move.l	currentBullets,d3
	move.l	d3,d0
	move.l	currentBulletsX,d1
	move.l	currentBulletsY,d2
	add.l	#10,d2

	divu	#10,d0
	move.w	d0,d3
	swap	d0
	ext.l	d0
	jsr		drawSevenSegment
	sub.l	#20,d2
	move.w	d3,d0
	jsr		drawSevenSegment
	rts

drawThresholdCount:
	move.l	pointsThreshold,d3
	move.l	d3,d0
	move.l	currentThresholdX,d1
	move.l	currentThresholdY,d2
	add.l	#10,d2

	divu	#10,d0
	move.w	d0,d3
	swap	d0
	ext.l	d0
	jsr		drawSevenSegment
	sub.l	#20,d2
	move.w	d3,d0
	jsr		drawSevenSegment
	rts

incrementScoreCounter:
	add.l	#1,currentScore
	add.l	#1,totalScore
	rts

drawScore:
	move.l	currentScore,d3
	move.l	d3,d0
	move.l	currentScoreX,d1
	move.l	currentScoreY,d2
	add.l	#10,d2

	divu	#10,d0
	move.w	d0,d3
	swap	d0
	ext.l	d0
	jsr		drawSevenSegment
	sub.l	#20,d2
	move.w	d3,d0
	jsr		drawSevenSegment
	rts

drawVacuumLine:
	move.l	currentVacuumLineX,d1
	move.l	playYStart,d2
	move.l	currentVacuumLineX,d3
	move.l	playYEnd,d4
	moveq	#DRAW_FILLED_RECT_TRAP_CODE,d0
	trap	#15
	rts

nukeBullets:
	lea     bullet,a0
	moveq	#BULLET_COUNT,d6	
.bulletNukeLoop:
	move.l	#0,BULLET_X(a0)		;Means bullet is not in use
	add.l	#BULLET_SIZE_IN_MEMORY,a0
	sub.b	#1,d6
	bne		.bulletNukeLoop
	rts

nukeAsteroids:
	lea     asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d6	
.asteroidNukeLoop:
	move.l	#0,ASTEROID_X(a0)
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d6
	bne		.asteroidNukeLoop
	rts

resetScore:
	move.l	#0,currentScore
	jsr		drawScore
	rts

resetGame:
	move.l	curMusic,d1
	jsr		stopMusic

	jsr nukeAsteroids
	jsr	nukeBullets
	jsr	resetCircleLocation
	jsr	resetScore
	move.l	#0,totalScore
	move.l	#1,currentLevel
	rts

incrementLevel:
	move.l	curMusic,d1
	jsr		stopMusic

	jsr		nukeAsteroids
	jsr		nukeBullets
	jsr		resetCircleLocation
	jsr		resetScore
	add.l	#1,currentLevel
	rts

checkForLevelEnd:
	lea     asteroids,a0
	moveq	#MAX_ASTEROID_COUNT,d6	
.astCheckLoop:
	cmp.l	#0,ASTEROID_X(a0)
	bne		.gamesNotOver
	add.l	#ASTEROID_SIZE_IN_MEMORY,a0
	sub.b	#1,d6
	bne		.astCheckLoop
	move.l	pointsThreshold,d0
	move.l	currentScore,d1
	cmp.l	d0,d1					;If we get here, LEVEL'S OVER. Check for level win or loss
	bge		.winState
.loseState
	jsr		playLose
	move.l  #youLoseBmp,a0
	jsr		displayEndBmp
	jsr		resetGame
	jsr		startLevel
	rts
.winState
	move.l	currentLevel,d1
	cmp.l	#9,d1
	beq		.finishGameState
	jsr		playWin
	move.l  #youWinBmp,a0
	jsr		displayEndBmp
	jsr		incrementLevel
	jsr		startLevel
	jmp		.gamesNotOver
.finishGameState:
	move.l  #youWinFinalBmp,a0
	jsr		drawFinalScreen
	jsr		resetGame
	jsr		startLevel
.gamesNotOver:
	rts

;This function has a lot of fiddly math for correct positioning
;It was all pulled out of my butt to look good. Feel free to edit (Pairs with "drawTotalScore")
eraseTotalScore:
    moveq   #0,d1
    jsr		setPenColor
    jsr 	setFillColor

	move.l	curEndLocationX,d1
	move.l	curEndLocationY,d2
	move.l	curEndLocationX,d3
	move.l	curEndLocationY,d4
	sub.l	#60,d1
	sub.l	#20,d2
	add.l	#70,d4
	add.l	#20,d3
	moveq	#DRAW_FILLED_RECT_TRAP_CODE,d0
	trap	#15
	rts

;This function has a lot of fiddly math for correct positioning
;It was all pulled out of my butt to look good. Feel free to edit
drawTotalScore:
	move.l	curEndLocationX,d1
	move.l	curEndLocationY,d2
	sub.l	#50,d1
	add.l	#50,d2
	move.l	totalScore,d3
	move.l	d3,d0

	add.l	#10,d2
	divu	#10,d0
	move.w	d0,d3
	swap	d0
	ext.l	d0
	jsr		drawSevenSegment
	sub.l	#20,d2
	move.w	d3,d0
	divu	#10,d0
	move.w	d0,d3
	swap	d0
	ext.l	d0
	jsr		drawSevenSegment
	sub.l	#20,d2
	move.w	d3,d0
	divu	#10,d0
	move.w	d0,d3
	swap	d0
	ext.l	d0
	jsr		drawSevenSegment
	rts

;This function has a lot of fiddly math for correct positioning
;It was all pulled out of my butt to look good. Feel free to edit
drawFinalScreen:
    move.l      #28,d0
	sub.l       d0,sp			;prepare stack for two 4 byte arguments
	move.l      a0,(sp)
	move.l      #0,4(sp)		;set the values of the arguments
	move.l      #0,8(sp)
	move.l      #$FF,12(sp)		;Not Going to slice
	move.l      #0,16(sp)
	move.l      #0,20(sp)
	move.l      #0,24(sp)
    
    jsr drawBmp
    move.l      #28,d0
	add.l       d0,sp
	jsr	drawBufferToScreen

	jsr		drawTotalScore

	moveq	#DELAY_TIME_TRAP_CODE,d0
	move.l	#300,d1
	trap	#15

	;Erasing bitmap
	jsr	eraseTotalScore
	move.l	#379,d1
	move.l	#230,d2
	move.l	#20,d3
	move.l	#80,d4
	add.l	d1,d3
	add.l	d2,d4
	moveq	#DRAW_FILLED_RECT_TRAP_CODE,d0
	trap	#15
	rts

displayEndBmp:
    move.l  #28,d0
	sub.l   d0,sp                   ;prepare stack for two 4 byte arguments
	move.l  a0,(sp)
	move.l  curEndLocationX,4(sp)   ;set the values of the arguments
	move.l  curEndLocationY,8(sp)
	move.l  #$FF,12(sp)				;Not Going to slice
	move.l  #0,16(sp)
	move.l  #0,20(sp)
	move.l	#0,24(sp)
    
    jsr drawBmp
    move.l  #28,d0
	add.l   d0,sp
	jsr		drawBufferToScreen
	jsr		drawTotalScore
	moveq	#DELAY_TIME_TRAP_CODE,d0
	move.l	#300,d1
	trap	#15

	;Erasing bitmap
	jsr	eraseTotalScore
	move.l	curEndLocationX,d1
	move.l	curEndLocationY,d2
	move.l	#20,d3
	move.l	#80,d4
	add.l	d1,d3
	add.l	d2,d4
	moveq	#DRAW_FILLED_RECT_TRAP_CODE,d0
	trap	#15
	rts

loadScreen:
	cmp.l	#1,currentLevel
	bne		.loadScreen80
	lea		titleScreen,a0
	jmp		.displayScreen
.loadScreen80
	cmp.l	#3,currentLevel
	bne		.loadScreen90
	lea		loadScreen80,a0
	jmp		.displayScreen
.loadScreen90
	cmp.l	#6,currentLevel
	bne		.loadScreen00
	lea		loadScreen90,a0
	jmp		.displayScreen
.loadScreen00
	cmp.l	#8,currentLevel
	bne		.displayScreen
	lea		loadScreen00,a0
.displayScreen
	jsr		printBackground
	jsr		drawBufferToScreen
	rts

waitForClick:
.wait4Click:
    moveq   #GET_MOUSE_LOC_TRAP_CODE,d0
    moveq   #0,d1
    trap    #15

	;Getting mouse down state
	and.b	#2,d0
	lsr.b	#1,d0
	beq		.wait4Click
	rts

changeMapIfNecessary:
	move.l	currentLevel,d5
	cmp.l	#1,d5
	bne		.tryLevel2
	move.l	level1X,d2		;Changing Window Size
	move.w	d2,d1
	swap	d1
	move.l	level1Y,d2
	move.w	d2,d1 
	moveq	#OUTPUT_WINDOW_TRAP_CODE,d0
	trap	#15
	move.l	#OUTPUT_WINDOW_TRAP_CODE,d0
	move.l	#NOT_FULL_SCREEN_SETTING_NUM,d1
	trap	#15
	jsr		loadScreen
	lea		level1Bmp,a0
	jsr		printBackground
	jsr		waitForClick
.tryLevel2:
	cmp.l	#3,d5
	bne		.tryLevel3
	move.l	level2X,d2		;Changing Window Size
	move.w	d2,d1
	swap	d1
	move.l	level2Y,d2
	move.w	d2,d1 
	moveq	#OUTPUT_WINDOW_TRAP_CODE,d0
	trap	#15
	move.l	#OUTPUT_WINDOW_TRAP_CODE,d0
	move.l	#NOT_FULL_SCREEN_SETTING_NUM,d1
	trap	#15
	jsr		loadScreen
	lea		level2Bmp,a0
	jsr		printBackground
	jsr		waitForClick
.tryLevel3:
	cmp.l	#6,d5
	bne		.tryLevel4
	move.l	level3X,d2		;Changing Window Size
	move.w	d2,d1
	swap	d1
	move.l	level3Y,d2
	move.w	d2,d1 
	moveq	#OUTPUT_WINDOW_TRAP_CODE,d0
	trap	#15
	move.l	#OUTPUT_WINDOW_TRAP_CODE,d0
	move.l	#NOT_FULL_SCREEN_SETTING_NUM,d1
	trap	#15
	jsr		loadScreen
	lea		level3Bmp,a0
	jsr		printBackground
	jsr		waitForClick
.tryLevel4:
	cmp.l	#8,d5
	bne		.noLevels
	move.l	level4X,d2		;Changing Window Size
	move.w	d2,d1
	swap	d1
	move.l	level4Y,d2
	move.w	d2,d1 
	moveq	#OUTPUT_WINDOW_TRAP_CODE,d0
	trap	#15
	move.l	#OUTPUT_WINDOW_TRAP_CODE,d0
	move.l	#FULL_SCREEN_SETTING_NUM,d1
	trap	#15
	jsr		loadScreen
	lea		level4Bmp,a0
	jsr		printBackground
	jsr		waitForClick
.noLevels
	rts


printBackground:
    move.l	#28,d0
	sub.l   d0,sp		;prepare stack for two 4 byte arguments
	move.l  a0,(sp)
	move.l  #0,4(sp)	;set the values of the arguments
	move.l  #0,8(sp)
	move.l  #$FF,12(sp)	;Not Going to slice
	move.l  #0,16(sp)
	move.l  #0,20(sp)
	move.l  #0,24(sp)
    jsr		drawBmp
    move.l  #28,d0
	add.l   d0,sp
	rts
	
;This is where we load all of the static presets for each level.
;This includes color schemes, background map data, sound effects, and score/information locations
;Level shifts are hardcoded. Possible optimizations include dynamic level boundaries
loadLevelPresets:
	move.l	currentLevel,d5
	cmp.l	#1,d5
	bne		.tryLevel3
	move.l	#A_PLAY_X_START,playXStart
	move.l	#A_PLAY_Y_START,playYStart		
	move.l	#A_PLAY_X_START_OFFSET,playXStartOffset
	move.l	#A_PLAY_Y_START_OFFSET,playYStartOffset
	move.l	#A_PLAY_X_SIZE,playXSize		
	move.l	#A_PLAY_Y_SIZE,playYSize
	move.l	#A_PLAY_X_END,playXEnd		
	move.l	#A_PLAY_Y_END,playYEnd		
	move.l	#A_PLAY_X_END_OFFSET,playXEndOffset	
	move.l	#A_PLAY_Y_END_OFFSET,playYEndOffset	
	move.l	#A_VACUUM_OFFSET,currentVacuumLineX
	move.l	#A_VACUUM_OFFSET,currentVacuumLineX
	move.l	#A_SCORE_X,currentScoreX
	move.l	#A_SCORE_Y,currentScoreY
	move.l	#A_BULLET_COUNT_X,currentBulletsX
	move.l	#A_BULLET_COUNT_Y,currentBulletsY
	move.l	#A_THRESHOLD_X,currentThresholdX
	move.l	#A_THRESHOLD_Y,currentThresholdY
	move.l	#A_CIRCLE_SPEED,circleSpeed
	move.l	#A_BULLET_SPEED,bulletSpeed
	move.b	#A_ASTEROIDSIZE,curAsteroidSize
	move.l	#A_HALF_ASTEROIDSIZE,curHalfAsteroidSize
	move.l	#A_ASTEROID_HEALTH,levelAsteroidHealth
	move.l	#drawAsteroids,curDrawAsteroidFunction
	move.l	#drawShip,curDrawShipFunction
	move.l	#RED,curCounterColor
	move.l	#MAROON,curCounterOffColor
	move.l	#0,curMusic
	move.l	#0,curHit
	move.l	#FINAL_SHOOT,curShoot
	move.l	#0,curWin
	move.l	#0,curLost
	move.l	#A_FINAL_SCORE_X,curEndLocationX
	move.l	#A_FINAL_SCORE_Y,curEndLocationY
	jmp		.presetsLoaded
.tryLevel3:
	cmp.l	#3,d5
	bne		.tryLevel6
	move.l	#B_PLAY_X_START,playXStart
	move.l	#B_PLAY_Y_START,playYStart		
	move.l	#B_PLAY_X_START_OFFSET,playXStartOffset
	move.l	#B_PLAY_Y_START_OFFSET,playYStartOffset
	move.l	#B_PLAY_X_SIZE,playXSize		
	move.l	#B_PLAY_Y_SIZE,playYSize
	move.l	#B_PLAY_X_END,playXEnd		
	move.l	#B_PLAY_Y_END,playYEnd		
	move.l	#B_PLAY_X_END_OFFSET,playXEndOffset	
	move.l	#B_PLAY_Y_END_OFFSET,playYEndOffset	
	move.l	#B_VACUUM_OFFSET,currentVacuumLineX
	move.l	#B_SCORE_X,currentScoreX
	move.l	#B_SCORE_Y,currentScoreY
	move.l	#B_BULLET_COUNT_X,currentBulletsX
	move.l	#B_BULLET_COUNT_Y,currentBulletsY
	move.l	#B_THRESHOLD_X,currentThresholdX
	move.l	#B_THRESHOLD_Y,currentThresholdY
	move.l	#B_CIRCLE_SPEED,circleSpeed
	move.l	#B_BULLET_SPEED,bulletSpeed
	move.b	#B_ASTEROIDSIZE,curAsteroidSize
	move.l	#B_HALF_ASTEROIDSIZE,curHalfAsteroidSize
	move.l	#B_ASTEROID_HEALTH,levelAsteroidHealth
	move.l	#drawLevel2Asteroids,curDrawAsteroidFunction
	move.l	#drawLevel2Ship,curDrawShipFunction
	move.l	#WHITE,curCounterColor
	move.l	#DARKBLUE,curCounterOffColor
	move.l	#0,curMusic
	move.l	#SI_HIT,curHit
	move.l	#SI_SHOOT,curShoot
	move.l	#0,curWin
	move.l	#0,curLost
	move.l	#B_FINAL_SCORE_X,curEndLocationX
	move.l	#B_FINAL_SCORE_Y,curEndLocationY
	jmp		.presetsLoaded
.tryLevel6:
	cmp.l	#6,d5
	bne		.tryLevel8
	move.l	#C_PLAY_X_START,playXStart
	move.l	#C_PLAY_Y_START,playYStart		
	move.l	#C_PLAY_X_START_OFFSET,playXStartOffset
	move.l	#C_PLAY_Y_START_OFFSET,playYStartOffset
	move.l	#C_PLAY_X_SIZE,playXSize		
	move.l	#C_PLAY_Y_SIZE,playYSize
	move.l	#C_PLAY_X_END,playXEnd		
	move.l	#C_PLAY_Y_END,playYEnd		
	move.l	#C_PLAY_X_END_OFFSET,playXEndOffset	
	move.l	#C_PLAY_Y_END_OFFSET,playYEndOffset	
	move.l	#C_VACUUM_OFFSET,currentVacuumLineX
	move.l	#C_SCORE_X,currentScoreX
	move.l	#C_SCORE_Y,currentScoreY
	move.l	#C_BULLET_COUNT_X,currentBulletsX
	move.l	#C_BULLET_COUNT_Y,currentBulletsY
	move.l	#C_THRESHOLD_X,currentThresholdX
	move.l	#C_THRESHOLD_Y,currentThresholdY
	move.l	#C_CIRCLE_SPEED,circleSpeed
	move.l	#C_BULLET_SPEED,bulletSpeed
	move.l	#drawLevel3Asteroids,curDrawAsteroidFunction
	move.l	#drawLevel3Ship,curDrawShipFunction
	move.l	#YELLOW,curCounterColor
	move.l	#DARKYELLOW,curCounterOffColor
	move.l	#SF_MUSIC,curMusic
	move.l	#SF_HIT,curHit
	move.l	#0,curShoot
	move.l	#SF_WIN,curWin
	move.l	#SF_LOSE,curLost
	move.l	#C_FINAL_SCORE_X,curEndLocationX
	move.l	#C_FINAL_SCORE_Y,curEndLocationY
	jmp		.presetsLoaded
.tryLevel8:
	cmp.l	#8,d5
	bne		.presetsLoaded
	move.l	#D_PLAY_X_START,playXStart
	move.l	#D_PLAY_Y_START,playYStart		
	move.l	#D_PLAY_X_START_OFFSET,playXStartOffset
	move.l	#D_PLAY_Y_START_OFFSET,playYStartOffset
	move.l	#D_PLAY_X_SIZE,playXSize		
	move.l	#D_PLAY_Y_SIZE,playYSize
	move.l	#D_PLAY_X_END,playXEnd		
	move.l	#D_PLAY_Y_END,playYEnd		
	move.l	#D_PLAY_X_END_OFFSET,playXEndOffset	
	move.l	#D_PLAY_Y_END_OFFSET,playYEndOffset	
	move.l	#D_VACUUM_OFFSET,currentVacuumLineX
	move.l	#D_SCORE_X,currentScoreX
	move.l	#D_SCORE_Y,currentScoreY
	move.l	#D_BULLET_COUNT_X,currentBulletsX
	move.l	#D_BULLET_COUNT_Y,currentBulletsY
	move.l	#D_THRESHOLD_X,currentThresholdX
	move.l	#D_THRESHOLD_Y,currentThresholdY
	move.l	#D_CIRCLE_SPEED,circleSpeed
	move.l	#D_BULLET_SPEED,bulletSpeed
	move.l	#GREEN,curCounterColor
	move.l	#DARKGREEN,curCounterOffColor
	move.l	#FINAL_MUSIC,curMusic
	move.l	#FINAL_HIT,curHit
	move.l	#FINAL_SHOOT,curShoot
	move.l	#FINAL_WIN,curWin
	move.l	#FINAL_LOSE,curLost
	move.l	#D_FINAL_SCORE_X,curEndLocationX
	move.l	#D_FINAL_SCORE_Y,curEndLocationY
	jmp		.presetsLoaded
.presetsLoaded:
	rts

;Will read from "currentLevel"
startLevel:
	jsr		nukeBullets
	jsr		nukeAsteroids
	jsr		loadLevelPresets
	jsr		changeMapIfNecessary
	jsr		resetCircleLocation

	move.l	currentLevel,d0
	subq	#1,d0
	lsl.l	#2,d0

	lea		levelThresholds,a0
	move.l	(a0,d0),pointsThreshold

	lea		asteroidsPerLevel,a0
	move.l	(a0,d0),d5
.spawnAsts:
	jsr		spawnRandomAsteroid
	subq	#1,d5
	bne		.spawnAsts

	move.l	curMusic,d1
	jsr		startMusic

	moveq	#GET_TIME_TRAP_CODE,d0	;Reset time for the next level, so we don't have a massive time skip
	trap	#15
	move.l	d1,lastIterTime
	rts

playShoot:
	movem.l	ALL_REG,-(sp)
	move.l	curShoot,d1
	beq		.noSound
	moveq	#75,d0
	trap	#15
.noSound
	movem.l (sp)+,ALL_REG
	rts

playWin:
	movem.l	ALL_REG,-(sp)
	move.l	curWin,d1
	beq		.noSound
	moveq	#75,d0
	trap	#15
.noSound
	movem.l (sp)+,ALL_REG
	rts

playLose:
	movem.l	ALL_REG,-(sp)
	move.l	curLost,d1
	beq		.noSound
	moveq	#75,d0
	trap	#15
.noSound
	movem.l (sp)+,ALL_REG
	rts

playHit:
	movem.l	ALL_REG,-(sp)
	move.l	curHit,d1
	beq		.noSound
	moveq	#75,d0
	trap	#15
.noSound
	movem.l (sp)+,ALL_REG
	rts

startMusic:
	move.l	d1,d0
	beq		.noSound
	move.l	#0,d2
	moveq	#77,d0
	trap	#15
.noSound
	rts

stopMusic:
	move.l	d1,d0
	beq		.noSound
	move.l	#2,d2
	moveq	#77,d0
	trap	#15
.noSound
	rts

;Initial sound load. Should only be called once
loadSounds
	lea		siShootSound,a1
	moveq	#SI_SHOOT,d1
	jsr		loadSound

	lea		siHit,a1
	moveq	#SI_HIT,d1
	jsr		loadSound

	lea		sfMusic,a1
	moveq	#SF_MUSIC,d1
	jsr		loadSound

	lea		sfWin,a1
	moveq	#SF_WIN,d1
	jsr		loadSound

	lea		sfLose,a1
	moveq	#SF_LOSE,d1
	jsr		loadSound

	lea		sfHit,a1
	moveq	#SF_HIT,d1
	jsr		loadSound

	lea		finalMusic,a1
	moveq	#FINAL_MUSIC,d1
	jsr		loadSound

	lea		finalShoot,a1
	moveq	#FINAL_SHOOT,d1
	jsr		loadSound

	lea		finalHit,a1
	moveq	#FINAL_HIT,d1
	jsr		loadSound

	lea		finalWin,a1
	moveq	#FINAL_WIN,d1
	jsr		loadSound

	lea		finalLose,a1
	moveq	#FINAL_LOSE,d1
	jsr		loadSound
	rts

;Helper function for loadSounds
loadSound
	moveq	#74,d0			;load the sound into directx memory
	trap	#15
	rts

end:
    SIMHALT             ; halt simulator
    
siShootSound
	dc.b	'siShoot.wav',$00
siHit
	dc.b	'siHit.wav',$00
sfWin
	dc.b	'sfWin.wav',$00
sfLose
	dc.b	'sfLose.wav',$00
sfMusic
	dc.b	'sfMusic.wav',$00
sfHit
	dc.b	'sfHit.wav',$00
finalMusic
	dc.b	'finalMusic.wav',$00
finalShoot
	dc.b	'finalShoot.wav',$00
finalWin
	dc.b	'finalWin.wav',$00
finalLose
	dc.b	'finalLose.wav',$00
finalHit
	dc.b	'finalHit.wav',$00

circleXLocation     dc.l    0
circleYLocation     dc.l    0
circleVelocity		dc.l    0
halfCircleSize		dc.l    0
circleSpeed			dc.l	$0160

;Mouse Inputs per iteration
mouseXLocation		dc.w	0
mouseYLocation		dc.w	0
mouseDown			dc.b	1

;Bullet X and Y location
bullet              ds.l    BULLET_COUNT*BULLET_SIZE_IN_MEMORY
spawnBullet			dc.b	0
curBulletXPower		dc.l	$0100	
curBulletYPower		dc.l	$0010	
bulletSpeed			dc.l	$0300

;Clock Cycles
lastIterTime		dc.l	0
deltaTime			dc.w	0

asteroids			ds.l	MAX_ASTEROID_COUNT*ASTEROID_SIZE_IN_MEMORY
curAsteroidSize		dc.b	40
curHalfAsteroidSize	dc.l	20
curAsteroidGravity	dc.l	$0001
levelAsteroidHealth	dc.l	5

sevenSegmentList	dc.b	$77,$12,$5D,$5B,$3A,$6B,$2F,$52,$7F,$7A

segmentStartXLocs	dc.l	-10,-1,-1,0,8,8,10
segmentEndXLocs		dc.l	-10,-8,-8,0,1,1,10
segmentStartYLocs	dc.l	6,6,-6,6,6,-6,6
segmentEndYLocs		dc.l	-6,6,-6,-6,6,-6,-6

segmentCenterX		dc.l	0
segmentCenterY		dc.l	0

screenSegmentXLoc	dc.l	100
screenSegmentYLoc	dc.l	100

curCounterColor		dc.l	RED
curCounterOffColor	dc.l	MAROON
currentScore		dc.l	0
currentScoreX		dc.l	485
currentScoreY		dc.l	45
totalScore			dc.l	0

currentBullets		dc.l	BULLET_COUNT
currentBulletsX		dc.l	300
currentBulletsY		dc.l	45

pointsThreshold		dc.l	5
currentThresholdX	dc.l	300
currentThresholdY	dc.l	45

isLevelOver			dc.b	0
oddBitFixer			dc.b	0

currentLevel		dc.l	1
asteroidsPerLevel	dc.l	1,2,3,3,4,4,5,5,6
levelThresholds		dc.l	2,4,6,8,9,10,11,12,15

level1X				dc.l	640
level1Y				dc.l	480

level2X				dc.l	720
level2Y				dc.l	576

level3X				dc.l	1024
level3Y				dc.l	768

level4X				dc.l	1280
level4Y				dc.l	720

currentVacuumLineX	dc.l	A_PLAY_X_START+(A_PLAY_X_SIZE/5)
currentVacuumLineColor	dc.l	WHITE

titleScreen:		INCBIN "titleScreen.bmp"
loadScreen80:		INCBIN "loading80.bmp"
loadScreen90:      	INCBIN "loading90.bmp"
loadScreen00:      	INCBIN "loading00.bmp"
youWinBmp:			INCBIN "youWin.bmp"
youWinFinalBmp:     INCBIN "finalWinScreen.bmp"
youLoseBmp:			INCBIN "youLose.bmp"
level1Bmp:			INCBIN "level1.bmp"
level2Bmp:      	INCBIN "level2.bmp"
level3Bmp:      	INCBIN "level3.bmp"
level4Bmp:      	INCBIN "level4.bmp"

screenXSize				dc.l	640
screenYSize				dc.l	480
playXStart				dc.l	77
playYStart				dc.l	89
playXStartOffset		dc.l	A_PLAY_X_START+(CIRCLE_SIZE/2)
playYStartOffset		dc.l	A_PLAY_X_START+(CIRCLE_SIZE/2)
playXSize				dc.l	634
playYSize				dc.l	384
playXEnd				dc.l	A_PLAY_X_START+A_PLAY_X_SIZE
playYEnd				dc.l	A_PLAY_X_START+A_PLAY_Y_SIZE
playXEndOffset			dc.l	A_PLAY_X_END-(CIRCLE_SIZE)
playYEndOffset			dc.l	A_PLAY_Y_END-(CIRCLE_SIZE)

;Dynamic draw functions
curDrawShipFunction			dc.l	drawShip
curDrawAsteroidFunction		dc.l	drawAsteroids

;Audio Files
curMusic					dc.l	0
curHit						dc.l	0
curShoot					dc.l	0
curWin						dc.l	0
curLost						dc.l	0

curEndLocationX				dc.l	0
curEndLocationY				dc.l	0



* Put variables and constants here

    INCLUDE "BMPSubroutine.x68"
    INCLUDE "randomNumbers.x68"
    END    START        ; last line of source















*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
