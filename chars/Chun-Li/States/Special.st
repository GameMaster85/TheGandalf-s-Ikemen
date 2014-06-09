; _______________________________________
;| Chun-Li by Jmorphman                  |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;=====================<KIKOKEN>==========================
[StateDef 1000]
type = S
physics = S
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || P2Dist x < 165), 2, ifElse(P2Dist x < 212, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,0
channel = 0

[State 1000, Kikoken Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000, 1
channel = 3

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 1005
ID = 1005
name = "Kikoken Projectile"
posType = P1
pos = 70,-61
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(6) = 0
value = 30,0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX KIKOKEN>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 11

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 24, -48
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Kikoken Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000, 1
channel = 3

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
volume = 255
value = 1000, 0
channel = 0

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 1005
ID = 1005
name = "Kikoken Projectile"
posType = P1
pos = 70,-61
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(6) = 0
value = 30,0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HYAKURETSUKYAKU>=============================
;Startup
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse(command = "c", 2, ifElse(command = "b", 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
trigger1 = !NumEnemy
var(10) = 2

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
trigger1 = NumEnemy
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) <= 4), 0, ifElse((EnemyNear, GetHitVar(HitTime) <= 6), 1, 2))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 1101


;Looping
[StateDef 1101]
type = S
physics = N
moveType = A
anim = 1101
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1101, Button Detect]
type = VarSet
trigger1 = !Time
var(11) = var(10)

[State 1101, Button Detect]
type = VarSet
trigger1 = Time && !AILevel
trigger1 = command = "a" || command = "b" || command = "c"
var(11) = ifElse(command = "c", 2, ifElse(command = "b", 1, 0))

[State 1101, Button Detect (AI)]
type = VarSet
trigger1 = AILevel
trigger1 = Time && AnimElem = 5
var(11) = ifElse(Random < 500, 2, ifElse(Random < 500, 1, 0))

[State 1101, Tap Punch (AI)]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2StateType != A && (P2BodyDist x = [0,58])
var(46) = 10

[State 1101, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1121, ifElse(var(10) = 1, 1111, 1101))

[State 1101, Loop]
type = ChangeAnim
trigger1 = !AnimTime
trigger2 = Anim = 1101
trigger2 = var(11) != 0 && AnimElemTime(11) >= 0
trigger3 = Anim = 1111
trigger3 = var(11) != 1 && AnimElemTime(12) >= 0
value = ifElse(var(11) = 2, 1121, ifElse(var(11) = 1, 1111, 1101))
elem = 1

[State 1101, Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 4,2
channel = 0

[State 1101, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
value = 1,4

[State 1101, Spark XY]
type = Null
trigger1 = AnimElem = 1
trigger1 = var(35) := 60 || var(36) := -43
trigger2 = AnimElem = 4
trigger2 = var(35) := 57 || var(36) := -99
trigger3 = AnimElem = 7
trigger3 = var(35) := 67 || var(36) := -64
trigger4 = AnimElem = 10
trigger4 = var(35) := 65 || var(36) := -83

[State 1101, HitDef Low]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1 || AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(10)
ground.slideTime = 15 + 3 * var(10)
guard.hitTime = ifElse(var(10) = 2, 12, ifElse(var(10), 9, 15))
air.hitTime = 120
ground.velocity = -4.3,0
ground.cornerPush.velOff = 0
guard.velocity = -5.3
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
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1101, HitDef High]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 ||  AnimElem = 10
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(10)
ground.slideTime = 15 + 3 * var(10)
guard.hitTime = ifElse(var(10) = 2, 12, ifElse(var(10), 9, 15))
air.hitTime = 120
ground.velocity = -4.3,0
ground.cornerPush.velOff = 0
guard.velocity = -5.3
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
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1101, End]
type = ChangeState
trigger1 = var(46) <= 0
value = 1102


;Recover
[Statedef 1102]
type = S
physics = N
moveType = I
anim = 1102
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 1102, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX HYAKURETSUKYAKU>=============================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 35

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 20, -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, End]
type = ChangeState
trigger1 = !AnimTime
value = 1131


;Looping
[StateDef 1131]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1131, Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
trigger2 = AnimElemTime(11) = 1
trigger3 = AnimElemTime(22) = 1
value = 4,2
channel = 0

[State 1131, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
trigger5 = AnimElem = 13
trigger6 = AnimElem = 16
trigger7 = AnimElem = 19
trigger8 = AnimElem = 22
value = 1,4

[State 1131, Spark XY]
type = Null
trigger1 = AnimElem = 1 || AnimElem = 13
trigger1 = var(35) := 60 || var(36) := -43
trigger2 = AnimElem = 4 || AnimElem = 16
trigger2 = var(35) := 57 || var(36) := -99
trigger3 = AnimElem = 7 || AnimElem = 19
trigger3 = var(35) := 67 || var(36) := -64
trigger4 = AnimElem = 10 || AnimElem = 22
trigger4 = var(35) := 65 || var(36) := -83

[State 1131, HitDef Low]
type = HitDef
trigger1= !var(16) && var(15) < 4
trigger1 = AnimElem = 1 || AnimElem = 7 || AnimElem = 13 ||  AnimElem = 19
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.40, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.40, -5.25
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

[State 1131, HitDef High]
type = HitDef
trigger1= !var(16) && var(15) < 4
trigger1 = AnimElem = 4 || AnimElem = 10 || AnimElem = 16 || AnimElem = 22
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.40, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.40, -5.25
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

[State 1131, End]
type = ChangeState
trigger1 = !AnimTime
value = 1102



;========================<SPINNING BIRD KICK>=============================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || P2Dist x > 210), 0, ifElse(P2Dist x > 164, 1, 2))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200,0
channel = 0

[State 1200, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 100,0
channel = 1

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 12 || AnimElem = 16
trigger2 = var(10) && (AnimElem = 20 || AnimElem = 24)
trigger3 = var(10) = 2 && (AnimElem = 28 || AnimElem = 32)
value = 1,5

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = ifelse(!var(10), 3, ifelse(var(10) = 1, 3.3, 3.6))

[State 1200, VelMul]
type = VelMul
trigger1 = !var(10) && AnimElemTime(17) > 0
trigger2 = var(10) = 1 && AnimElemTime(25) > 0
trigger3 = var(10) = 2 && AnimElemTime(33) > 0
x = 0.98

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 4

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
x = 6

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 8
x = 8

[State 1200, HitDef 1: Opponent In Front]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount || var(20))
trigger1 = AnimElem = 9 || AnimElem = 14 || AnimElem = 17 || (var(10) = 1 && AnimElem = 22)
trigger1 = P2Dist x >= 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 21, 35) < 7, 7, fvar(11) * ifElse(var(10), 21, 35))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 1: Opponent Behind]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount || var(20))
triggerAll = var(10) = 2
trigger1 = AnimElem = 22 || AnimElem = 25 || AnimElem = 30
trigger1 = P2Dist x >= 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 21, 35) < 7, 7, fvar(11) * ifElse(var(10), 21, 35))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 2: Opponent In Front]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount || var(20))
triggerAll = var(10) = 2
trigger1 = AnimElem = 22 || AnimElem = 25 || AnimElem = 30
trigger1 = P2Dist x >= 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 2: Opponent Behind]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount || var(20))
triggerAll = var(10) = 2
trigger1 = AnimElem = 22 || AnimElem = 25 || AnimElem = 30
trigger1 = P2Dist x < 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 22 && !var(10)
trigger2 = AnimElem = 30 && var(10) = 1
trigger3 = AnimElem = 38 && var(10) = 2
anim = 8102
sprPriority = -3
posType = P1
pos = 10,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1200, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 22 && !var(10)
trigger2 = AnimElem = 30 && var(10) = 1
trigger3 = AnimElem = 38 && var(10) = 2
value = 52,0
channel = 1

[State 1200, StateTypeSet: Standing, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 22 && !var(10)
trigger2 = AnimElem = 30 && var(10) = 1
trigger3 = AnimElem = 38 && var(10) = 2
stateType = S
physics = N

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SPINNING BIRD KICK>=============================
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1230, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1230, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 38

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -5,-60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200,0
channel = 0

[State 1230, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 100,0
channel = 3

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 12 || AnimElem = 16 || AnimElem = 20 || AnimElem = 24
value = 1,5

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9) < 0
value = SCA
time = 1

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 4

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
x = 6

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 8
x = 8

[State 1230, PlayerPush]
type = PlayerPush
trigger1 = MoveHit
value = 0
ignoreHitPause = 1

[State 1230, HitDef: Opponent In front]
type = HitDef
trigger1 = AnimElem = 9 || AnimElem = 14 || AnimElem = 17 || AnimElem = 22
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = P2Dist x >= 0
ID = 1230
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = (P2Dist x + 50) / 4,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p2Facing = -1

[State 1230, HitDef: Opponent Behind]
type = HitDef
trigger1 = AnimElem = 9 || AnimElem = 14 || AnimElem = 17 || AnimElem = 22
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = P2Dist x < 0
ID = 1231
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = (P2Dist x - 50) / 4,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p2Facing = 1

[State 1230, HitDef: Final Hit, Opponent In front]
type = HitDef
trigger1 = AnimElem = 25
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = P2Dist x >= 0
ID = 1232
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef: Final Hit, Opponent Behind]
type = HitDef
trigger1 = AnimElem = 25
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = P2Dist x < 0
ID = 1232
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, TargetVelSet]
type = TargetVelSet
trigger1 = NumTarget(1230) && P2Dist x <= -30
trigger1 = Target(1230), StateType != A
trigger1 = Target(1230), StateNo != [5100,5150]
x = 0
ID = 1230

[State 1230, TargetVelSet]
type = TargetVelSet
trigger1 = NumTarget(1231) && P2Dist x >= 30
trigger1 = Target(1231), StateType != A
trigger1 = Target(1231), StateNo != [5100,5150]
x = 0
ID = 1231

[State 1230, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 32
anim = 8102
sprPriority = -3
posType = P1
pos = 10,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 32
value = 52,0
channel = 3

[State 1230, StateTypeSet: Standing, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 32
stateType = S
physics = N

[State 1230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<TENSHYOKYKAKU>=============================
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, ifElse(var(10) = 1, 1310, 1300))

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1300,0
channel = 0

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12 && var(10) = 1
trigger4 = (AnimElem = 11 || AnimElem = 15) && var(10) = 2
value = 1,5

[State 1300, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41
channel = 1

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenshyokyaku Dust"
posType = P1
ownPal = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 6
y = ifElse(var(10) = 2, -5, ifElse(var(10) = 1, -4.5, -4))

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = ifElse(vel y > 0, ifElse(var(10) = 2, 0.28125, 0.48125), ifElse(var(10) = 2, 0.1640625, 0.125))

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0 && vel x > 0
x = -0.25

[State 1300, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0 && !var(10)
trigger2 = AnimElemTime(14) >= 0 && var(10) = 1
trigger3 = AnimElemTime(17) >= 0 && var(10) = 2
moveType = I

[State 1300, HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1300, HitDef (Air Kick 1)]
type = HitDef
triggerAll = !var(16) && (var(15) < ifElse(var(10), 2, 1) || var(20))
triggerAll = AnimElem = 4
trigger1 = !var(10) && !MoveContact
trigger2 = var(10)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1300, HitDef (Air Kick 2)]
type = HitDef
triggerAll = !var(16) && (var(15) < ifElse(var(10) = 2, 3, ifElse(var(10), 2, 1)) || var(20))
triggerAll = AnimElem = 8
trigger1 = !var(10) && !MoveContact
trigger2 = var(10)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 14, 21) < 7, 7, fvar(11) * ifElse(var(10), 14, 21))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1300, HitDef (MK Air Kick 3)]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 13
trigger1 = var(10) = 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 14, 21) < 7, 7, fvar(11) * ifElse(var(10), 14, 21))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1300, HitDef (HK Air Kick 3)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 12
trigger1 = var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1300, HitDef (HK Air Kick 4)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 16
trigger1 = var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1300, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301


;Landing
[StateDef 1301]
type = S
anim = ifElse(PrevStateNo = 3300, 1311, ifElse(PrevStateNo = 1330 || PrevStateNo = 3350, 1301, ifElse(var(10) = 2, 1321, ifElse(var(10) = 1, 1311, 1301))))
physics = N
moveType = I
velSet = 0,0

[State 1301, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1301, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1301, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX TENSHYOKYKAKU>=============================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 49

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 5, -62
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1300,0
channel = 0

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41
channel = 3

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7
trigger2 = AnimElem = 11 || AnimElem = 15
value = 1,5

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
stateType = A
physics = N

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenshyokyaku Dust"
posType = P1
ownPal = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 6
y = -5.5

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = ifElse(vel y > 0, 0.28125, 0.1640625)

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0 && vel x > 0
x = -0.25

[State 1300, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 1330, HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1330, HitDef (Air Kick 1)]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1330, HitDef (Air Kick 2)]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1330, HitDef (HK Air Kick 3)]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 12
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1330, HitDef (HK Air Kick 4)]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -2.16, -8.81
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

[State 1330, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;========================<HAZANSHU>=============================
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2Dist x > 169), 0, ifElse(P2Dist x > 147, 1, 2))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400))

[State 1400, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0
channel = 1

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4,3
channel = 0

[State 1400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
stateType = A
physics = N

[State 1400, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Hazanshu Dust"
posType = P1
ownPal = 1

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 2

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(var(10) = 2, 4, ifElse(var(10) = 1, 3, 2))
y = ifElse(var(10) = 2, -11.5, ifElse(var(10) = 1, -11.25, -11))

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = ifElse(var(10) = 2, 0.6, ifElse(var(10) = 1, 0.7, 0.6))

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.95

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) > 0
y = ifElse(var(10) = 2, 1.2, ifElse(var(10) = 1, 1.4, 1.3))

[State 1400, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401


;Landing
[StateDef 1401]
type = S
anim = 1401
physics = N
moveType = A
velSet = 0,0

[State 1401, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1401, Impact Dust]
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

[State 1401, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = 1400,0

[State 1401, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = ifElse(var(10) = 2, 4, ifElse(var(10) = 1, 3, 2))
freq = 120
ignoreHitPause = 1

[State 1401, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 26
ground.slideTime = 26
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := 0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1401, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX HAZANSHU>=============================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 38

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 8, -62
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1430, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0
channel = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 3

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4,3
channel = 0

[State 1430, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
stateType = A
physics = N

[State 1430, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Hazanshu Dust"
posType = P1
ownPal = 1

[State 1430, VelSet]
type = VelSet
trigger1 = !Time
x = 2

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 4
y = -11.5

[State 1430, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 0.6

[State 1430, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = 0.95

[State 1430, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) > 0
y = 1.2

[State 1430, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1431


;Landing
[StateDef 1431]
type = S
anim = 1401
physics = N
moveType = A
velSet = 0,0

[State 1431, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 11

[State 1431, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1431, Impact Dust]
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

[State 1431, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = 1400,0

[State 1431, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1431, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
ID = 1431
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 119 < 7, 7, fvar(11) * 119)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := 0
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1431, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1431)
trigger1 = !(Target(1431), Time)
trigger1 = (Target(1431), StateNo = 5000) || (Target(1431), StateNo = 5010)
value = 1432
ID = 1431
ignoreHitPause = 1

[State 1431, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SLAMMED AGAINST GROUND BY EX HAZANSHU>=============================
;Being Slammed
[StateDef 1432]
type = A
moveType = H
physics = N
velset = 0,0

[State 1432, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = ifElse(SelfAnimExist(5980) && enemyNear, AuthorName != "Warusaki3", 5980, 5002)

[State 1432, End]
type = SelfState
trigger1 = HitShakeOver && pos y < 0
value = 5030

[State 1432, End]
type = ChangeState
trigger1 = HitShakeOver && pos y >= 0
value = 1433


;Hitting the Ground
[StateDef 1433]
type = L
moveType = H
physics = N
velSet = 0,0

[State 1432, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5100

[State 1432, Pos]
type = PosSet
trigger1 = 1
y = 0

[State 1432, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 1432, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,1

[State 1432, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 1432, End]
type = ChangeState
trigger1 = !AnimTime
value = 1434


;Bouncing Off Ground
[StateDef 1434]
type = L
moveType = H
physics = N

[State 1433, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 1433, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1433, VelSet]
type = VelSet
trigger1 = !Time
y = -2.4

[State 1433, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.6

[State 1433, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 12
value = 5110



;========================<SENENSHU>=============================
[StateDef 1500]
type = S
physics = N
moveType = A
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2Dist x > 150), 0, ifElse(P2Dist x > 103, 1, 2))

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1520, ifElse(var(10) = 1, 1510, 1500))

[State 1500, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
value = 52,0
channel = 1

[State 1500, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3400,0
channel = 0

[State 1500, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1,5
channel = 3

[State 1500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1

[State 1500, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
StateType = A
physics = N

[State 1500, StateTypeSet: Stand, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 12
StateType = S
physics = N

[State 1500, VelSet]
type = VelSet
trigger1 = !Time && var(10)
x = 6

[State 1500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
trigger1 = var(10)
x = -0.25

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = ifElse(var(10) = 2, 8, ifElse(var(10), 4.5, 4))

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 4 && var(10)
trigger2 = AnimElem = 12
x = 0

[State 1500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0 && AnimElemTime(12) < 0
trigger1 = var(10) != 2
x = -0.125

[State 1500, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 12
anim = 8102
sprPriority = -3
posType = P1
pos = 24,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1500, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 11
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SENENSHU>=============================
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1530
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1530, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1530, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1530, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 23

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 0, -62
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 4

[State 1530, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
value = 52,0
channel = 1

[State 1530, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3400,0
channel = 0

[State 1530, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1,5
channel = 3

[State 1530, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1530, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
StateType = A
physics = N

[State 1530, StateTypeSet: Stand, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 12
StateType = S
physics = N

[State 1530, VelSet]
type = VelSet
trigger1 = !Time
x = 8.0625

[State 1530, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
x = -0.25

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 8

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
x = 0

[State 1530, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 12
anim = 8102
sprPriority = -3
posType = P1
pos = 24,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 11
ID = 1530
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1530, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1530)
trigger1 = !(Target(1530), Time)
trigger1 = (Target(1530), StateNo = 5000) || (Target(1530), StateNo = 5010)
value = 1432
ID = 1530
ignoreHitPause = 1

[State 1530, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1530, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 86), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
