; _______________________________________
;| Chun-Li by Jmorphman                  |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<KIKOSHO>=============================
[StateDef 3000]
type = S
physics = S
moveType = A
anim = ifElse(var(40) && !var(1), 3001, 3000)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(var(40) && !var(1), 67, 43)

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(14) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 27 && var(40) && !var(1)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -27,-107
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(var(40) && !var(1), 67, 43)
moveTime = ifElse(var(40) && !var(1), 67, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3000, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 27 && var(40) && !var(1)
value = 8500,0
channel = 1

[State 3000, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 1
value = 3000,10
channel = 3

[State 3000, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 5 && var(40) = 1
anim = 6005
posType = p1
pos = 4, -94
sprPriority = 2
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 730,1
channel = 0

[State 3000, "KIKOSHO!!!"]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3000,0
channel = 0

[State 3000, Kikosho Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3000,1
channel = 4

[State 3000, Kikosho Projectile]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 3005
ID = 3005
name = "Kikosho Projectile"
posType = P1
pos = 0,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(19) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX KIKOSHO>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = ifElse(var(40) && !var(1), 3051, 3050)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(var(40) && !var(1), 67, 43)

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(14) < 1
time = 1
value = SCA

[State 3050, SuperPause FX]
type = Helper
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 27 && var(40) && !var(1)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -27,-107
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(var(40) && !var(1), 67, 43)
moveTime = ifElse(var(40) && !var(1), 67, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3050, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(1) = 27 && var(40) && !var(1)
value = 8500,0
channel = 1

[State 3050, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40) = 1
value = 3000,10
channel = 3

[State 3050, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 5 && var(40) = 1
anim = 6005
posType = p1
pos = 4, -94
sprPriority = 2
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 730,1
channel = 0

[State 3050, "KIKOSHO!!!"]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3000,0
channel = 0

[State 3050, Kikosho Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3000,1
channel = 4

[State 3050, Kikosho Projectile]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 3005
ID = 3005
name = "Kikosho Projectile"
posType = P1
pos = 0,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(30) >= 0
moveType = I


[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HOYOKUSEN>=============================
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 32,-14
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 730,1
channel = 0

[State 3100, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 36
value = 4,3
channel = 0

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3100, Hoyokusen Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3100,1
channel = 1

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
trigger9 = AnimElem = 37
value = 1,5

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 12

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 3100, VelMul]
type = VelMul
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(7) > 0
x = 0.85

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
trigger2 = AnimElem = 21
trigger3 = AnimElem = 22
x = 8

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 36
trigger2 = AnimElem = 37
trigger3 = AnimElem = 38
x = 16

[State 3100, Spark XY]
type = Null
trigger1 = AnimElem = 8 || AnimElem = 23
trigger1 = var(35) := 57 || var(36) := -99
trigger2 = AnimElem = 11 || AnimElem = 26
trigger2 = var(35) := 67 || var(36) := -64
trigger3 = AnimElem = 14 || AnimElem = 29
trigger3 = var(35) := 65 || var(36) := -83
trigger4 = AnimElem = 17 || AnimElem = 32
trigger4 = var(35) := 60 || var(36) := -43

[State 3100, HitDef Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 11 || AnimElem = 17 || AnimElem = 26 || AnimElem = 32
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8 || AnimElem = 14 || AnimElem = 23 || AnimElem = 29
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 38
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5,-8.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5,-8.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -106
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(41) >= 0
moveType = I

[State 3100, ChangeState]
type = ChangeState
triggerAll = MoveHit
triggerAll = command = "highjump"
trigger1 = AnimElemTime(38) > 0
trigger1 = AnimElemTime(42) < 0
value = 3101
ignoreHitPause = 0

[State 3100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;High jump cancel
[StateDef 3101]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 3101, Juggle Reset]
type = VarSet
trigger1 = !Time
var(15) = 0

[State 3101, Throw, Custom Combo Disable]
type = VarSet
trigger1 = !Time
var(43) = 1

[State 3101, Direction]
type = VarSet
trigger1 = !Time
sysvar(1) = 0

[State 3101, Direction]
type = VarSet
trigger1 = !Time
sysvar(1) = ifElse(command = "holdfwd" || command = "rlsfwd", 1, ifElse(command = "holdback"|| command = "rlsback", -1, sysvar(1)))

[State 3101, High Jump]
type = VarSet
trigger1 = !Time
var(3) = 3

[State 3101, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = 41

[State 3101, Dust Helper]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3101, VelSet]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 3101, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1



;========================<MAX HOYOKUSEN>=============================
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 32,-14
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 730,1
channel = 0

[State 3150, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 60
value = 4,3
channel = 0

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3150, Hoyokusen Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3100,1
channel = 1

[State 3150, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
trigger9 = AnimElem = 35
trigger10 = AnimElem = 38
trigger11 = AnimElem = 41
trigger12 = AnimElem = 44
trigger13 = AnimElem = 47
trigger14 = AnimElem = 50
trigger15 = AnimElem = 53
trigger16 = AnimElem = 56
trigger17 = AnimElem = 61
value = 1,5

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 14

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 3150, VelMul]
type = VelMul
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(7) > 0
x = 0.85

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 32
trigger2 = AnimElem = 33
trigger3 = AnimElem = 34
x = 8

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 60
trigger2 = AnimElem = 61
trigger3 = AnimElem = 62
x = 16

[State 3150, Spark XY]
type = Null
trigger1 = AnimElem = 8 || AnimElem = 20 || AnimElem = 35 || AnimElem = 47
trigger1 = var(35) := 57 || var(36) := -99
trigger2 = AnimElem = 11 || AnimElem = 23|| AnimElem = 38 || AnimElem = 50
trigger2 = var(35) := 67 || var(36) := -64
trigger3 = AnimElem = 14 || AnimElem = 26 || AnimElem = 41 || AnimElem = 53
trigger3 = var(35) := 65 || var(36) := -83
trigger4 = AnimElem = 17 || AnimElem = 29 || AnimElem = 44 || AnimElem = 56
trigger4 = var(35) := 60 || var(36) := -43

[State 3150, HitDef Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 11 || AnimElem = 23|| AnimElem = 38 || AnimElem = 50 || AnimElem = 17 || AnimElem = 29 || AnimElem = 44 || AnimElem = 56
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 8 || AnimElem = 20 || AnimElem = 35 || AnimElem = 47 || AnimElem = 14 || AnimElem = 26 || AnimElem = 41 || AnimElem = 53
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 62
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5,-9.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5,-9.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -106
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(65) >= 0
moveType = I

[State 3150, ChangeState]
type = ChangeState
triggerAll = MoveHit
triggerAll = command = "highjump"
trigger1 = AnimElemTime(62) > 0
value = 3101
ignoreHitPause = 0

[State 3150, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<TENSEIRANKA>=============================
[StateDef 3200]
type = S
physics = S
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10,-66
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice 1]
type = PlaySnd
trigger1 = Time = 3
value = 730,1
channel = 0

[State 3200, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 16
value = 4,3
channel = 0

[State 3200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3100,1
channel = 1

[State 3200, Spinning Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3200,0
channel = 3

[State 3200, StateTypeSet: Air, Physics = None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 3200, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 0.5
y = -10.25

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.625

[State 3200, Tenseiranka FX (Bottom Layer)]
type = Explod
trigger1 = AnimElem = 5
anim = 3204
sprPriority = 0
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3200, Tenseiranka FX (Top Layer)]
type = Explod
trigger1 = AnimElem = 5
anim = 3205
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3200, Tenseiranka FX (Overlay)]
type = Explod
trigger1 = AnimElem = 13
anim = 3203
sprPriority = 4
posType = P1
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3200, Spark XY]
type = Null
trigger1 = !Time
trigger1 = var(35) := 28 || var(36) := -47
trigger2 = AnimElem = 13
trigger2 = var(35) := 33 || var(36) := -93
trigger3 = AnimElem = 14
trigger3 = var(35) := 43 || var(36) := -65
trigger4 = AnimElem = 15
trigger4 = var(35) := 36 || var(36) := -37

[State 3200, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 5 || AnimElem = 7 || AnimElem = 9 || AnimElem = 11
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -0.26, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -0.26, -2.81
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10,0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 13 || AnimElem = 14 || AnimElem = 15
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -0.26,1.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -0.26,1.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10,0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3201


;Landing
[StateDef 3201]
type = S
physics = N
moveType = A
anim = 3201
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3201, Impact Dust]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = 50,0
ownPal = 1

[State 3201, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = 3200,1
channel = 4

[State 3201, Energy Pillar Sound]
type = PlaySnd
trigger1 = !Time
value = 3200,2
channel = 5

[State 3201, EnvShake]
type = EnvShake
trigger1 = !Time
time = 22
ampl = 8
freq = 120
ignoreHitPause = 1

[State 3201, Shockwave Effect]
type = Explod
trigger1 = !Time
anim = 3206
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.3,0.36
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3201, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < ifElse(PrevStateNo = 3250, 9, 7)
trigger1 = AnimElem = 1
ID = 3201
attr = S, HA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 3250, 98, 70) < 7, 7, fvar(11) * ifElse(PrevStateNo = 3250, 98, 70))), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5,9.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.5,9.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := var(36) := (ceil(P2BodyDist y))
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 22
envShake.ampl = 8
envShake.freq = 120

[State 3201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 3201, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3201)
trigger1 = !(Target(3201), Time)
trigger1 = (Target(3201), StateNo = 5000) || (Target(3201), StateNo = 5010)
value = 1432
ID = 3201
ignoreHitPause = 1

[State 3201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX TENSEIRANKA>=============================
[StateDef 3250]
type = S
physics = S
moveType = A
anim = 3250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3250, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3250, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10,-66
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3250, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3250, Voice 1]
type = PlaySnd
trigger1 = Time = 3
value = 730,1
channel = 0

[State 3250, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 16
value = 4,3
channel = 0

[State 3250, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3100,1
channel = 1

[State 3250, Spinning Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3200,0
channel = 3

[State 3250, StateTypeSet: Air, Physics = None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 3250, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 0.5
y = -13

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.65

[State 3250, Tenseiranka FX (Bottom Layer)]
type = Explod
trigger1 = AnimElem = 5
anim = 3254
sprPriority = 0
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3250, Tenseiranka FX (Top Layer)]
type = Explod
trigger1 = AnimElem = 5
anim = 3255
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3250, Tenseiranka FX (Overlay)]
type = Explod
trigger1 = AnimElem = 13
anim = 3253
sprPriority = 4
posType = P1
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3250, Spark XY]
type = Null
trigger1 = !Time
trigger1 = var(35) := 28 || var(36) := -47
trigger2 = AnimElem = 13
trigger2 = var(35) := 33 || var(36) := -93
trigger3 = AnimElem = 14
trigger3 = var(35) := 43 || var(36) := -65
trigger4 = AnimElem = 15
trigger4 = var(35) := 36 || var(36) := -37

[State 3250, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 5 || AnimElem = 7 || AnimElem = 9 || AnimElem = 11 || AnimElem = 12
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -0.26, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -0.26, -4.81
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10,0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 13 || AnimElem = 14 || AnimElem = 15
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -0.26,5.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -0.26,5.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10,0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3250, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3201



;========================<HAZAN TENSHYOKYAKU>=============================
[StateDef 3300]
type = S
physics = S
moveType = A
anim = ifElse(!var(1), 3301, 3300)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 57, 43)

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(3) = 11 && !var(1)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -3,-41
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(!var(1), 57, 43)
moveTime = ifElse(!var(1), 57, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3300, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(3) = 11 && var(40) && !var(1)
value = 8500,0
channel = 1

[State 3300, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,10
channel = 3

[State 3300, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 6005
posType = p1
pos = -3, -50
sprPriority = 2
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3300, Super Pause Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 11
value = 8500,0
channel = 4

[State 3300, HAZAN!]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3300,0
channel = 0

[State 3300, TENSHYOKYAKU!]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1300,0
channel = 0

[State 3300, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41
channel = 1

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 10
trigger2 = AnimElem = 14 || AnimElem = 18
trigger3 = AnimElem = 22 || AnimElem = 26
value = 1,5

[State 3300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
stateType = A
physics = N

[State 3300, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenshyokyaku Dust"
posType = P1
ownPal = 1

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 6
y = -5

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = ifElse(vel y > 0, 0.375, 0.125)

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0 && vel x > 0
x = -0.25

[State 3300, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 3300, HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -4.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 29), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3300, HitDef (Air Kick 1)]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3300, HitDef (Air Kick 2)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3300, HitDef (Air Kick 3)]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 15
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3300, HitDef (Air Kick 4)]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = AnimElem = 19
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3300, HitDef (Air Kick 5)]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = AnimElem = 23
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3300, HitDef (Air Kick 6)]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 27
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(28) >= 0
moveType = I

[State 3300, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;========================<MAX HAZAN TENSHYOKYAKU>=============================
[StateDef 3350]
type = S
physics = S
moveType = A
anim = ifElse(!var(1), 3351, 3350)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 57, 43)

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(11) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(3) = 11 && !var(1)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -3,-41
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3350, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(!var(1), 57, 43)
moveTime = ifElse(!var(1), 57, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3350, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(3) = 11 && var(40) && !var(1)
value = 8500,0
channel = 1

[State 3350, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,10
channel = 3

[State 3350, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 6005
posType = p1
pos = -3, -50
sprPriority = 2
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3350, Super Pause Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 11
value = 8500,0
channel = 4

[State 3350, HAZAN!]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3300,0
channel = 0

[State 3350, TENSHYOKYAKU!]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1300,0
channel = 0

[State 3350, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41
channel = 1

[State 3350, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 10
trigger2 = AnimElem = 14 || AnimElem = 18
trigger3 = AnimElem = 22 || AnimElem = 26
trigger4 = AnimElem = 30 || AnimElem = 34
value = 1,5

[State 3350, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
stateType = A
physics = N

[State 3350, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenshyokyaku Dust"
posType = P1
ownPal = 1

[State 3350, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 6
y = -6

[State 3350, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = ifElse(vel y > 0, 0.375, 0.125)

[State 3350, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0 && vel x > 0
x = -0.25

[State 3350, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 3350, HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -5.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 29), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, HitDef (Air Kick 1)]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -5.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, HitDef (Air Kick 2)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -5.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, HitDef (Air Kick 3)]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 15
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -5.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, HitDef (Air Kick 4)]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = AnimElem = 19
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, HitDef (Air Kick 5)]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = AnimElem = 23
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, HitDef (Air Kick 6)]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 27
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.16, -4.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, HitDef (Air Kick 7)]
type = HitDef
trigger1 = !var(16) && (var(15) < 8 || var(20))
trigger1 = AnimElem = 31
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.16, -3.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, HitDef (Air Kick 8)]
type = HitDef
trigger1 = !var(16) && (var(15) < 9 || var(20))
trigger1 = AnimElem = 35
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.16, -3.81
air.cornerpush.velOff = 0
airguard.velocity = -8, -1
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3350, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(36) >= 0
moveType = I

[State 3350, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;========================<HOSENKA>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3400, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3400, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3400, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3400, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3400, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3400, NotHitBy]
type = NotHitBy
trigger1= AnimElemTime(13) < 0
time = 1
value = SCA

[State 3400, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -10,-37
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3400, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3400, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 25
trigger3 = AnimElem = 31
trigger4 = AnimElem = 37
value = 4,2
channel = 0

[State 3400, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 45
value = 3400,0
channel = 0

[State 3400, Dust Helper]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3400, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3100,1
channel = 1

[State 3400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 22
trigger3 = AnimElem = 25
trigger4 = AnimElem = 28
trigger5 = AnimElem = 31
trigger6 = AnimElem = 34
trigger7 = AnimElem = 37
trigger8 = AnimElem = 40
trigger9 = AnimElem = 47
value = 1,5

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 8

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 13
x = 0

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
trigger3 = AnimElem = 19
trigger4 = AnimElem = 20
trigger5 = AnimElem = 21
trigger6 = AnimElem = 22
x = 12

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 46
x = 16

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 48
x = 24

[State 3400, Spark XY]
type = Null
trigger1 = AnimElem = 13 || AnimElem = 25 || AnimElem = 37
trigger1 = var(35) := 67 || var(36) := -64
trigger2 = AnimElem = 22 || AnimElem = 34
trigger2 = var(35) := 57 || var(36) := -99
trigger3 = AnimElem = 28 || AnimElem = 40
trigger3 = var(35) := 65 || var(36) := -83
trigger4 = AnimElem = 31
trigger4 = var(35) := 60 || var(36) := -43

[State 3400, HitDef Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 13 || AnimElem = 25 || AnimElem = 31 || AnimElem = 37
attr = S, HA
hitFlag = MAF
guardFlag = HL
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, HitDef High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 22 || AnimElem = 28 || AnimElem = 34 || AnimElem = 40
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 48
ID = 3400
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.6,-12.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.6,-12.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -106
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3400, ChangeState]
type = ChangeState
triggerAll = MoveHit && !AnimTime
triggerAll = NumTarget(3400)
trigger1 = Target(3400), Alive
value = 3401

[State 3400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(51) >= 0
moveType = I

[State 3400, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;In Air
[StateDef 3401]
type = S
physics = N
moveType = A
anim = 3401
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 3401, StateTypeSet: Air, Physics = None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 3401, Wind Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 3405
ID = 3405
name = "Hosenka Wind Helper"
posType = P1
pos = 10,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3401, VelSet]
type = VelSet
trigger1 = AnimElem = 8
y = -7

[State 3401, VelSet]
type = VelSet
trigger1 = pos y <= -95 && AnimElemTime(54) < 0
y = -0.75

[State 3401, VelSet]
type = VelSet
trigger1 = AnimElem = 54
y = 0

[State 3401, VelSet]
type = VelSet
trigger1 = AnimElem = 55
y = 0.4

[State 3401, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(55) >= 0
y = 0.125

[State 3401, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 4

[State 3401, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
x = 6

[State 3401, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 8
x = 8

[State 3401, PosAdd]
type = PosAdd
trigger1 = AnimElem = 54
x = 3
y = 15

[State 3401, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 730,1
channel = 0

[State 3401, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 54
value = 4,3
channel = 0

[State 3401, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 12
trigger2 = AnimElem = 16
trigger3 = AnimElem = 20
trigger4 = AnimElem = 24
trigger5 = AnimElem = 28
trigger6 = AnimElem = 32
trigger7 = AnimElem = 36
trigger8 = AnimElem = 40
trigger9 = AnimElem = 44
trigger10 = AnimElem = 48
trigger11 = AnimElem = 54
value = 1,5

[State 3401, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 3401, HitDef: Opponent In front]
type = HitDef
trigger1 = AnimElem = 9 || AnimElem = 14 || AnimElem = 17 || AnimElem = 22 || AnimElem = 25 || AnimElem = 30 || AnimElem = 33 || AnimElem = 38 || AnimElem = 41 || AnimElem = 46
trigger1 = !var(16) && (var(15) < 11 || var(20))
trigger1 = P2Dist x >= 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = (P2Dist x + 25) / 4, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = (P2Dist x + 25) / 4, -2.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = -1
kill = 0

[State 3401, HitDef: Opponent Behind]
type = HitDef
trigger1 = AnimElem = 9 || AnimElem = 14 || AnimElem = 17 || AnimElem = 22 || AnimElem = 25 || AnimElem = 30 || AnimElem = 33 || AnimElem = 38 || AnimElem = 41 || AnimElem = 46
trigger1 = !var(16) && (var(15) < 11 || var(20))
trigger1 = P2Dist x < 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = (P2Dist x - 25) / 4, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = (P2Dist x - 25) / 4, -2.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -61), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = 1
kill = 0

[State 3401, Final Spinning Bird Kick: Opponent In front]
type = HitDef
trigger1 = AnimElem = 49
trigger1 = !var(16) && (var(15) < 12 || var(20))
trigger1 = P2Dist x >= 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 1, -5.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = -1
kill = 0

[State 3401, Final Spinning Bird Kick: Opponent Behind]
type = HitDef
trigger1 = AnimElem = 49
trigger1 = !var(16) && (var(15) < 12 || var(20))
trigger1 = P2Dist x < 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -1, -5.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -61), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2Facing = 1
kill = 0

[State 3401, Final Hit: Opponent In front]
type = HitDef
trigger1 = AnimElem = 54
trigger1 = !var(16) && (var(15) < 13 || var(20))
trigger1 = P2Dist x >= 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -8.81
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 12
envShake.freq = 120
p2Facing = 1

[State 3401, Final Hit: Opponent Behind]
type = HitDef
trigger1 = AnimElem = 54
trigger1 = !var(16) && (var(15) < 13 || var(20))
trigger1 = P2Dist x < 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 2.5, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 2.5, -8.81
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 12
envShake.freq = 120
p2Facing = -1

[State 3401, PlaySnd]
type = PlaySnd
trigger1 = MoveHit && AnimElem = 54
value = 3401,0

[State 3401, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(55) >= 0
moveType = I

[State 3401, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3402


;Landing
[StateDef 3402]
type = S
anim = 3402
physics = N
moveType = I
velSet = 0,0

[State 3403, ChangeAnim]
type = ChangeAnim
trigger1 = P2Dist x < 0 && !Time
value = 3403

[State 3402, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3402, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3402, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3402, Turn]
type = Turn
trigger1 = Anim = 3403 && !AnimTime

[State 3402, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1




;========================<SENRETSUKYAKU>=============================
[StateDef 3500]
type = S
physics = N
moveType = A
anim = ifElse(!var(1), 3501, 3500)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3500, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3500, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 54, 43)

[State 3500, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3500, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(2) = 11 && !var(1)
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 32,-14
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3500, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(!var(1), 54, 43)
moveTime = ifElse(!var(1), 54, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3500, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(2) = 11 && var(40) && !var(1)
value = 8500,0
channel = 4

[State 3500, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,10
channel = 3

[State 3500, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 6005
posType = p1
pos = 12, -76
sprPriority = 2
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3500, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3500, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3500,0
channel = 0

[State 3500, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5

[State 3500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
x = -0.3125

[State 3500, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 8

[State 3500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(28) < 0
x = -0.25

[State 3500, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100,1
channel = 1

[State 3500, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3500, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 15
trigger3 = AnimElem = 18
trigger4 = AnimElem = 21
trigger5 = AnimElem = 24
value = 1,5

[State 3500, Spark XY]
type = Null
trigger1 = AnimElem = 6 || AnimElem = 18
trigger1 = var(35) := 67 || var(36) := -64
trigger2 = AnimElem = 15
trigger2 = var(35) := 57 || var(36) := -99
trigger3 = AnimElem = 21
trigger3 = var(35) := 65 || var(36) := -83
trigger4 = AnimElem = 22
trigger4 = var(35) := 60 || var(36) := -43

[State 3500, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 =  AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 =  AnimElem = 18
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 21
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, HitDef 5]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 24
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.40, -8.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.40, -8.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(25) >= 0
moveType = I

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SENRETSUKYAKU>=============================
[StateDef 3550]
type = S
physics = N
moveType = A
anim = ifElse(!var(1), 3551, 3550)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3550, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3550, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3550, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3550, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3550, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 54, 43)

[State 3550, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3550, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3550, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3550, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElemTime(2) = 11 && !var(1)
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 32,-14
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3550, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = ifElse(!var(1), 54, 43)
moveTime = ifElse(!var(1), 54, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3550, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && (!var(40) || var(1))
trigger2 = AnimElemTime(2) = 11 && var(40) && !var(1)
value = 8500,0
channel = 4

[State 3550, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,10
channel = 3

[State 3550, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 6005
posType = p1
pos = 12, -76
sprPriority = 2
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3550, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3550, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3500,0
channel = 0

[State 3550, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 39
value = 4,3
channel = 0

[State 3550, VelSet]
type = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 38
x = 5

[State 3550, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
trigger2 = AnimElemTime(38) >= 0 && AnimElemTime(46) < 0
x = -0.3125

[State 3550, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 10.5

[State 3550, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(35) < 0
x = -0.25

[State 3550, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3550, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100,1
channel = 1

[State 3550, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 15
trigger3 = AnimElem = 18
trigger4 = AnimElem = 21
trigger5 = AnimElem = 24
trigger6 = AnimElem = 27
trigger7 = AnimElem = 30
trigger8 = AnimElem = 33
trigger9 = AnimElem = 39
value = 1,5

[State 3550, Spark XY]
type = Null
trigger1 = AnimElem = 6 || AnimElem = 18 || AnimElem = 30
trigger1 = var(35) := 67 || var(36) := -64
trigger2 = AnimElem = 15 || AnimElem = 27
trigger2 = var(35) := 57 || var(36) := -99
trigger3 = AnimElem = 21 || AnimElem = 33
trigger3 = var(35) := 65 || var(36) := -83
trigger4 = AnimElem = 24
trigger4 = var(35) := 60 || var(36) := -43

[State 3550, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 =  AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, HitDef Low 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 =  AnimElem = 18 || AnimElem = 24
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, HitDef High 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 15 || AnimElem = 21 || AnimElem = 27
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, HitDef Low 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 =  AnimElem = 30
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, HitDef High 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1 + HitCount
trigger1 = AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3550, Final Hit]
type = HitDef
trigger1= !var(16) && var(15) < 9
trigger1 = AnimElem = 40
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.40, -8.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.40, -8.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3550, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(43) >= 0
moveType = I

[State 3550, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 46
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3550, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 46
value = 52,0

[State 3550, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<FINAL MISSION>=============================
[StateDef 3600]
type = S
physics = N
moveType = A
anim = ifElse(!var(1), 3602, 3600)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3600, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3600, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3600, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3600, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3600, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = ifElse(!var(1), 57, 43)

[State 3600, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3600, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3600, NotHitBy]
type = NotHitBy
trigger1= AnimElemTime(7) < 0
time = 1
value = SCA

[State 3600, Super Pause FX]
type = Helper
trigger1 = Time = 3 && var(1)
trigger2 = AnimElem = 6 && !var(1)
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 28,-75
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3600, Super Pause]
type = SuperPause
trigger1 = !Time
time = ifElse(!var(1), 57, 43)
moveTime = ifElse(!var(1), 57, 43)
p2DefMul = 1
unHittable = 1
anim = -1
darken = 0

[State 3600, Super Pause Sound]
type = PlaySnd
trigger1 = Time = 3 && var(1)
trigger2 = AnimElem = 6 && !var(1)
value = 8500,0
channel = 1

[State 3600, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000,10
channel = 3

[State 3600, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 6005
posType = p1
pos = -13, -91
sprPriority = 2
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3600, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3600,0

[State 3600, Woosh Sound ]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,5
channel = 1

[State 3600, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8103
ID = 8100
name = "Hosenka Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3600, VelMul]
type = VelMul
trigger1 = 1
x = 0.925

[State 3600, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 16

[State 3600, VelSet]
type = VelSet
trigger1 = AnimElemTime(13) >= 0
x = 0

[State 3600, ChangeAnimElem]
type = ChangeAnim
trigger1 = AnimElemTime(8) >= 1 && AnimElemTime(14) < 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 1
trigger1 = P2BodyDist x <= 5 && P2Dist x >= 0
value = 3600
elem = AnimElemNo(0) + 1

[State 3600, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 14
ID = 3600
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 12, 12
animtype = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -12.75, 0
guard.velocity = -12.75
air.velocity = -7.4, -5.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 10), var(36) := -110
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3600, TargetState]
type = TargetState
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger1 = MoveHit && NumTarget(3600)
ID = 3600
value = 3615
ignoreHitpause = 1

[State 3600, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger1 = MoveHit && NumTarget(3600)
value = 3601
ignoreHitPause = 1

[State 3600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0
moveType = I

[State 3600, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Jump
[StateDef 3601]
type = A
physics = N
moveType = A
anim = 3601
ctrl = 0
velSet = 0,0
sprPriority = 1
moveHitPersist = 1

[State 3601, Camera]
type = ScreenBound
trigger1 = 0
value = 1
moveCamera = 1, 0

[State 3601, PalFX]
type = PalFX
trigger1 = !Time
time = 10
sinAdd = -255, -255, -255, 40

[State 3601, PalFX]
type = PalFX
trigger1 = Time >= 10
time = 1
mul = 0, 0, 0

[State 3601, Warp Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3601,0
channel = 1

[State 3601, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 13601
posType = P1
sprPriority = 1
ownPal = 1

[State 3601, VelSet]
type = VelSet
trigger1 = AnimElem = 2
y = -12

[State 3601, AllPalFX]
type = AllPalFX
trigger1 = AnimElem = 3
time = 10
sinAdd = -255, -255, -255, 40

[State 3601, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3610


;Attack
[StateDef 3610]
type = A
physics = N
moveType = A
anim = 1
ctrl = 0
velSet = 0, 0
sprPriority = 1
moveHitPersist = 1

[State 3610, TargetState]
type = TargetState
trigger1 = !Time && NumTarget(3600)
ID = 3600
value = 3616

[State 3610, Pos]
type = PosSet
trigger1 = 1
x = -const(size.ground.front) * Facing
y = -240

[State 3610, TargetBind]
type = TargetBind
trigger1 = NumTarget(3600)
pos = 40 + (Target(3600), const(size.ground.front) + const(size.ground.back)), 0
ID = 3600

[State 3610, Pause]
type = Pause
trigger1 = Time < 60
time = 2
moveTime = 2

[State 3610, Pause]
type = Pause
trigger1 = Time = 60
time = 0

[State 3610, BGPalFX]
type = BGPalFX
trigger1 = !Time
time = 59
add = -256,-256,-256

[State 3610, AssertSpecial: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 60
flag = NoBarDisplay
flag2 = NoFG

[State 3610, HitAdd]
type = HitAdd
trigger1 = (Time = [0,52]) && !(Time % 4)
value = 1

[State 3610, HitCount]
type = VarAdd
trigger1 = (Time = [0,52]) && !(Time % 4)
var(13) = 1

[State 3610, Damage]
type = TargetLifeAdd
trigger1 = NumTarget(3600)
trigger1 = (Time = [0,52]) && !(Time % 4)
ID = 3600
value = ceil(ifElse(21 * fvar(11) < 7, -7, -21 * fvar(11)))
kill = 0

[State 3610, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget(3600)
trigger1 = (Time = [0,52]) && !(Time % 4)
ID = 3600
value = 36

[State 3610, HitSound]
type = PlaySnd
trigger1 = (Time = [0,52]) && !(Time % 4)
value = 2,2
channel = 2

[State 3610, Hit Sparks]
type = Helper
trigger1 = (Time = [0,52]) && !(Time % 4)
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
sprPriority = 5
posType = Back
pos = Random % ceil(GameWidth), ceil(pos y - ScreenPos y) + Random % ceil(GameHeight)
ownPal = 1
onTop = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3610, EnvShake]
type = EnvShake
trigger1 = (Time = [0,52]) && !(Time % 4)
time = 18
freq = 120
ampl = 6

[State 3610, ChangeState]
type = ChangeState
trigger1 = Time >= 60
value = 3611


;Finish
[Statedef 3611]
type = S
physics = N
movetype = A
anim = 0
ctrl = 0
velSet = 0, 0
sprPriority = 1
movehitPersist = 1

[State 3611, Turn]
type = Turn
trigger1 = !Time

[State 3611, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3611, TargetState]
type = TargetState
trigger1 = !Time && NumTarget(3600)
ID = 3600
value = 3617

[State 3611, Explosion Sound]
type = PlaySnd
trigger1 = NumTarget(3600)
trigger1 = (Target(3600), StateNo = 3618) && (Target, Time) = 1
value = 3611,0

[State 3611, Explosion]
type = Explod
trigger1 = NumTarget(3600)
trigger1 = (Target(3600), StateNo = 3618) && (Target, Time) = 1
anim = 13611
sprPriority = 1
posType = left
pos = 160 + ceil(Target(3600), pos x), ceil(Target(3600), ScreenPos y) -40
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3611, Impact Dust]
type = Helper
trigger1 = NumTarget(3600)
trigger1 = (Target(3600), StateNo = 3618) && (Target, Time) = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
postype = left
pos = 160 + ceil(Target(3600), pos x), ceil(Target(3600), ScreenPos y)
facing = facing
ownPal = 1

[State 3611, ChangeAnim]
type = ChangeAnim
trigger1 = NumTarget(3600)
trigger1 = (Target(3600), StateNo = 3618) && (Target, Time) = 1
value = 3611
ignoreHitPause = 1

[State 3611, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && Anim = 3611
value = 195, 0
channel = 0

[State 3611, Eye Spark Sound]
type = PlaySnd
trigger1 = AnimElem = 5 && Anim = 3611
value = 3000,10
channel = 3

[State 3611, Eye Spark Explod]
type = Explod
trigger1 = AnimElem = 5 && Anim = 3611
anim = 6005
posType = p1
pos = 18, -90
sprPriority = 2
scale = 0.5, 0.5
bindTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3611, ChangeState]
type = ChangeState
trigger1 = !AnimTime && Anim = 3611
value = 0
ctrl = 1


;Target
[StateDef 3615]
type = A
physics = N
moveType = H
velSet = 0, 0
ctrl = 0
sprPriority = 0

[State 3615, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignoreHitPause = 1

[State 3615, Camera]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 0

[State 3615, ChangeAnim]
type = ChangeAnim
trigger1 = !HitShakeOver
value = 5002
ignoreHitPause = 1

[State 3615, ChangeAnim]
type = ChangeAnim
trigger1 = HitShakeOver
value = ifElse(SelfAnimExist(5250), 5250, ifElse(SelfAnimExist(5051), 5051, 5030))
persistent = 0

[State 3615, HitFallSet]
type = HitFallSet
trigger1 = !HitFall
value = 1
ignoreHitPause = 1

[State 3615, VelAdd]
type = VelAdd
trigger1 = HitShakeOver
y = 0.5

[State 3615, VelSet]
type = VelSet
trigger1 = HitShakeOver
y = -16
persistent = 0

[State 3615, SelfState]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;Being Hit
[StateDef 3616]
type = A
physics = N
moveType = H
velSet = 0, 0
ctrl = 0
sprPriority = 0

[State 3616, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignoreHitPause = 1

[State 3616, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1

[State 3616, Camera]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 0


;Falling
[StateDef 3617]
type = A
physics = N
moveType = H
velSet = 0, 0
ctrl = 0
sprPriority = 0

[State 3617, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3617

[State 3617, PosSet]
type = PosSet
trigger1 = !Time
y = -384

[State 3617, Camera]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 0

[State 3617, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 3617, VelSet]
type = VelSet
trigger1 = !Time
y = 4

[State 3617, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3618


;Hitting the Floor
[StateDef 3618]
type = L
physics = N
moveType = H
velSet = 0, 0
ctrl = 0
sprPriority = 0

[State 3618, Damage]
type = LifeAdd
trigger1 = !Time
value = -77
kill = 1

[State 3618, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5101), 5101, 5100)

[State 3618, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3618, EnvShake]
type = EnvShake
trigger1 = !Time
time = 18
freq = 120
ampl = 6

[State 3618, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 3618, End]
type = ChangeState
trigger1 = (Anim = [5100,5101]) && !AnimTime
trigger2 = Time >= 12
value = 3619


;Floor Bounc
[StateDef 3619]
type = L
moveType = H
physics = N

[State 3619, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3619, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (Anim % 10))
value = 5160

[State 3619, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = (Anim = [5101,5109]) && SelfAnimExist(5160 + (Anim % 10))
value = 5160 + (Anim % 10)

[State 3619, HitFallVel]
type = HitFallVel
trigger1 = !Time

[State 3619, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 3619, PosSet]
type = PosSet
trigger1 = !Time
y = 20

[State 3619, End]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 12
value = 3620


;Lie down
[StateDef 3620]
type = L
moveType = H
physics = N

[State 3620, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5081,5089]
trigger1 = SelfAnimExist(5110 + (Anim % 10))
value = 5110 + (Anim % 10)

[State 3410, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = Anim != [5110,5119]
trigger1 = Anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 3620, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3620, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yvel)
sysvar(1) = floor(vel y)

[State 3620, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 3620, PlaySnd]
type = PlaySnd
trigger1 = !Time && !sysvar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 3620, Hitting the Floor FX]
type = Explod
trigger1 = !time && !sysvar(0)
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 3620, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime || sysvar(0)
trigger1 = (Anim = [5171,5179]) && SelfAnimExist(5110 + (Anim % 10))
value = 5110 + (Anim % 10)

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5111,5119]
trigger1 = !AnimTime || sysvar(0)
value = 5110

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = !Alive
trigger1 = !AnimTime || sysvar(0) || (Anim = [5110,5119])
value = 5150

[State 3620, VarSet]
type = VarSet
trigger1 = !Time
sysvar(0) = 0

[State 3620, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 3620, End]
type = SelfState
trigger1 = !Alive
value = 5150

[State 3620, End]
type = SelfState
trigger1 = Time >= 38
value = 5120
