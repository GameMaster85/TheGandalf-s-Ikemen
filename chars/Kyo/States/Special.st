; _________________________________________
;| Kyo Kusanagi by Jmorphman               |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================


;========================<114 SHIKI: ARAGAMI>=============================
[StateDef 1000]
type = S
physics = N
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
var(10) = ifElse((command = "y" || command = "rlsy"), 1, 0)

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 170, 1, 0)

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 1, 1001, 1000)

[State 1000, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 1000,0
channel = 0

[State 1000, Voice 2]
type = PlaySnd
trigger1 = !AnimTime
value = 1000,1
channel = 0

[State 1000, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,2
channel = 1

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 8

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1000, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(4) < 0
x = 0.95

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 9

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 13

[State 1000, Fire Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1005
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Skid Dust]
type = Explod
triggerAll = !(AnimElemTime(1) % 3)
trigger1 = AnimElemTime(4) < 0
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1000, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(4)  >= 0 && AnimElemTime(5) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,12
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), (var(36) := -71)
hitSound = S3,0
numHits = 0

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 42, 35) < 7, 7, fvar(11) * ifElse(var(10), 42, 35))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 24
ground.slideTime = 24
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1000, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1000, Yanosabi]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = !AILevel
trigger1 = command = "HCB+P"
trigger2 = AILevel
trigger2 = (EnemyNear, StateNo = 121 || EnemyNear, StateNo = 131 || EnemyNear, StateNo = 141 || EnemyNear, StateNo = 151)
trigger2 = P2Dist x >= 0
trigger3 = AILevel
trigger3 = Random < 30
trigger3 = P2Dist x >= 0
var(14) = 1040

[State 1000, Konokizu]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = !AILevel
trigger1 = command = "QCF+P"
trigger2 = AILevel && !var(14)
trigger2 = Random < 200
trigger2 = P2Dist x >= 0
var(14) = 1010

[State 1000, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(12) < 0
value = var(14)

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<128 SHIKI: KONOKIZU>=============================
[StateDef 1010]
type = S
physics = N
moveType = A
anim = 1010
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1010, Voice]
type = PlaySnd
trigger1 = !Time
value = 1010,0
channel = 0

[State 1010, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 1

[State 1010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 5

[State 1010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 24

[State 1010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 21

[State 1010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8

[State 1010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 16

[State 1010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 10

[State 1010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 6

[State 1010, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1015
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1010, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.5, -5.5
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -84
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1010, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1010, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1010, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1010, Nanase]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = AILevel && !var(14)
trigger2 = Random < 333
trigger2 = P2Dist x >= 0
var(14) = 1030

[State 1010, Yanosabi]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x >= 0
var(14) = 1020

[State 1010, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
value = var(14)

[State 1010, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<127 SHIKI: YANOSABI>=============================
[StateDef 1020]
type = S
physics = N
moveType = A
anim = 1020
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1020, Fire Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 1000,2
channel = 1

[State 1020, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = AnimElemTime(1) = 2
x = 12

[State 1020, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 16

[State 1020, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
x = 4

[State 1020, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 6

[State 1020, Fire Explod]
type = Explod
trigger1 = AnimElemTime(4) = 1
anim = 1025
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1020, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
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
ground.velocity = -5.40,9
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5.40,9
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 46), var(36) := -67
palFX.time = 18
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1020, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1020, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1020)
trigger1 = !(Target(1020), Time)
trigger1 = (Target(1020), StateNo = 5000) || (Target(1020), StateNo = 5010)
value = 1045
ID = 1020
ignoreHitPause = 1

[State 1020, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1020, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<125 SHIKI: NANASE>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1030, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 9

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1030, PosAdd]
type = PosAdd
trigger1 = AnimTime = 0
x = 3

[State 1030, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1030, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nanase Dust"
posType = P1
ownPal = 1

[State 1030, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -4.5, -5.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.5, -5.5
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
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1030, StateTypeSet: Standing, Physics: Standing]
type = StateTypeSet
trigger1 = AnimElem = 7
StateType = S
physics = S

[State 1030, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 52,0

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<127 SHIKI: YANOSABI (FROM ARAGAMI)>=============================
[StateDef 1040]
type = S
physics = N
moveType = A
anim = 1040
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1040, Voice]
type = PlaySnd
trigger1 = !Time
value = 1040,0
channel = 0

[State 1040, Fire Sound]
type = PlaySnd
trigger1 = AnimElemTime(7) = 1
value = 1000,2
channel = 1

[State 1040, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 5

[State 1040, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 24

[State 1040, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 21

[State 1040, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 16

[State 1040, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
x = 4

[State 1040, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 6

[State 1040, Fire Explod]
type = Explod
trigger1 = AnimElemTime(7) = 1
anim = 1025
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1040, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
ID = 1040
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
ground.velocity = -1.5,10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.5,10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 46), var(36) := -67
palFX.time = 18
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1040, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1040, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1040)
trigger1 = !(Target(1040), Time)
trigger1 = (Target(1040), StateNo = 5000) || (Target(1040), StateNo = 5010)
value = 1045
ID = 1040
ignoreHitPause = 1

[State 1040, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1040, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1040, Nanase]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = !AILevel
trigger1 = command = "a" || command = "b" || command = "c"
trigger1 = command != "HCB+K"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x >= 160
var(14) = 1030

[State 1040, Migiri Ugachi]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = !AILevel
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = AILevel && !var(14)
trigger2 = (EnemyNear, StateNo = 130 || EnemyNear, StateNo = 150 || EnemyNear, StateNo = 151)
trigger2 = P2Dist x >= 0
trigger3 = AILevel && !var(14)
trigger3 = Random < 200
trigger3 = P2Dist x >= 0
var(14) = 1050

[State 1040, Kototsuki You]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = !AILevel
trigger1 = command = "HCB+K"
trigger2 = AILevel && !var(14)
trigger2 = Random < 200
trigger2 = P2Dist x >= 0
var(14) = 1060

[State 1040, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
value = var(14)

[State 1040, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SLAMMED AGAINST GROUND BY YANOSABI>=============================
;Being Slammed
[StateDef 1045]
type = A
moveType = H
physics = N
velset = 0,0

[State 1045, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1045, End]
type = SelfState
trigger1 = HitShakeOver && pos y < 0
value = 5030

[State 1045, End]
type = ChangeState
trigger1 = HitShakeOver && pos y >= 0
value = 1046


;Hitting the Ground
[StateDef 1046]
type = L
moveType = H
physics = N
velSet = 0,0

[State 1046, Change Anim]
type = ChangeAnim
triggerall = !Time
trigger1 = !SelfAnimExist(5100 + (Anim % 10))
value = 5100

[State 1046, Change Anim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5100 + (Anim % 10))
value = 5100 + (Anim % 10)

[State 1046, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1046, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 1046, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,1

[State 1046, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 1046, End]
type = ChangeState
trigger1 = !AnimTime
value = 1047


;Bouncing Off Ground
[StateDef 1047]
type = L
moveType = H
physics = N

[State 1047, Change Anim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (Anim % 10))
value = 5160

[State 1047, Change Anim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (Anim % 10))
value = 5160 + (Anim % 10)

[State 1047, VelSet]
type = VelSet
trigger1 = !Time
y = -4.5

[State 1047, PosSet]
type = PosSet
trigger1 = !Time
y = 20

[State 1047, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4

[State 1047, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 12
value = 5110




;========================<GESHIKI: MIGIRI UGACHI>=============================
[StateDef 1050]
type = S
physics = N
moveType = A
anim = 1050
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1050, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 1

[State 1050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 4

[State 1050, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1055
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1050, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAFD
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -1.5,10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.5,10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -7
palFX.time = 18
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1050, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1




;========================<212 SHIKI: KOTOTSUKI YOU (FROM YANOSABI)>=============================
;Grab Attempt
[StateDef 1060]
type = S
physics = N
moveType = A
anim = 1060
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1060, Voice]
type = PlaySnd
trigger1 = !Time
value = 1060,0
channel = 0

[State 1060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 16

[State 1060, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4 && !var(43)
attr = S, ST
hitFlag = MAFD
guardFlag = M
priority = 4, Miss
getPower = 0,0
givePower = 0,0
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Back
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
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -57
p1StateNo = 1070
P2Facing = 1
numHits = 0

[State 1060, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1060, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Connected
[StateDef 1070]
type = S
physics = N
moveType = A
anim = 1070
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1070, Fire Explod]
type = Explod
trigger1 = !Time
anim = 1525
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1070, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 4
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1070, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1070, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1075

[State 1070, Explosion]
type = Explod
trigger1 = AnimElem = 4
anim = 1535
sprPriority = 2
posType = P1
pos = 34, -120
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1070, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1070,0
channel = 0

[State 1070, Fire Sound]
type = PlaySnd
trigger1 = !Time
value = 1000,2
channel = 3

[State 1070, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 32,0
ignoreHitPause = 1

[State 1070, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 1070, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 57,-55

[State 1070, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 35, -106

[State 1070, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 30, -133

[State 1070, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) = 0
pos = 36, -25

[State 1070, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 4
value = floor(ifElse(77 * fvar(11) < 7, -7, -77 * fvar(11)))

[State 1070, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 4
value = 36

[State 1070, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 4 && !var(20)
value = ifElse(!var(13), 72, 36)

[State 1070, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 4
value = 1

[State 1070, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 4
var(13) = 1

[State 1070, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 4
var(15) = 1
ignoreHitPause = 1

[State 1070, Explosion Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 4
value = 1500,2
channel = 2

[State 1070, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 4
time = 14
ampl = -4
freq = 120

[State 1070, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 4
value = 1531

[State 1070, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<212 SHIKI: KOTOTSUKI YOU (TARGET)>==========================
;Being Thrown
[StateDef 1075]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 1075, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1075

[State 1075, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1



;========================<115 SHIKI: DOKUGAMI>=============================
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

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100,0
channel = 0

[State 1100, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,2
channel = 1

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 12

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 14

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 10

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 10

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 8

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 2

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 12

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1100, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(3) < 0
x = 0.95

[State 1100, Fire Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1105
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1100, Skid Dust]
type = Explod
triggerAll = !(AnimElemTime(1) % 3)
trigger1 = AnimElemTime(5) < 0
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1100, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1100, Tsumi Yomi]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(10) < 0
trigger1 = !AILevel
trigger1 = command = "HCB+P"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x <= 150
trigger2 = P2Dist x >= 0
var(14) = 1110

[State 1100, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(10) < 0
value = var(14)

[State 1100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<401 SHIKI: TSUMI YOMI>=============================
[StateDef 1110]
type = S
physics = N
moveType = A
anim = 1110
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1110, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 1

[State 1110, PosAdd]
type = PosAdd
trigger1 = !Time
x = 22

[State 1110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 22

[State 1110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 12

[State 1110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
x = 8

[State 1110, VelSet]
type = VelSet
trigger1 = !Time
x = 8

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1110, VelMul]
type = VelMul
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(2) < 0
x = 0.95

[State 1100, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1115
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1110, Skid Dust]
type = Explod
triggerAll = !(AnimElemTime(1) % 3)
trigger1 = AnimElemTime(4) < 0
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1110, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -67
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1110, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1110, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1110, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1110, Tsumi Yomi]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
trigger1 = !AILevel
trigger1 = command != "holddown" && command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x <= 90
trigger2 = P2Dist x >= 0
var(14) = 1120

[State 1110, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = var(14)

[State 1110, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<402 SHIKI: BATSU YOMI>=============================
[StateDef 1120]
type = S
physics = N
moveType = A
anim = 1120
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1120, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 1120, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,2
channel = 1

[State 1120, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1120, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 2
StateType = A
physics = N

[State 1120, PosAdd]
type = PosAdd
trigger1 = !Time
x = 16

[State 1120, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3
y = -5.5

[State 1120, VelMul]
type = VelMul
trigger1 = AnimElemTime(4) >= 2
x = 0.9

[State 1120, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2
y = 0.52

[State 1120, Fire Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1125
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1120, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 1120, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 29), var(36) := -91
palFX.time = 47
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1120, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1120, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1120, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1120, Oniyaki]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0
trigger1 = !AILevel
trigger1 = command = "Oniyaki"
trigger2 = AILevel && !var(14)
trigger2 = MoveHit
trigger2 = P2Dist x >= 0
var(14) = 1130

[State 1120, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
trigger1 = MoveContact
value = var(14)

[State 1120, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1121


;Landing
[StateDef 1121]
type = S
anim = 1121
physics = N
moveType = I
velSet = 0,0

[State 1121, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1121, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1121, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1121, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<100 SHIKI: ONIYAKI (FROM BATSU YOMI)>=============================
[StateDef 1130]
type = A
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200,0
channel = 0

[State 1130, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,2
channel = 1

[State 1130, VelAdd]
type = VelAdd
trigger1 = !Time
y = -8

[State 1130, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.47

[State 1130, VelMul]
type = VelMul
trigger1 = 1
x = 0.95

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1130, Fire Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 1205
ID = 1205
name = "Oniyaki Fire Helper"
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -90
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1130, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<115 SHIKI: DOKUGAMI KAI>=============================
[StateDef 1150]
type = S
physics = N
moveType = A
anim = 1150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1150, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1150, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 29

[State 1150, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -7, -78
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1150, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1150, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,3
channel = 0

[State 1150, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,2
channel = 3

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 12

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 14

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
x = 10

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 8

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 2

[State 1150, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 12

[State 1150, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1150, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(3) < 0
x = 0.95

[State 1150, Fire Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1105
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1150, Skid Dust]
type = Explod
triggerAll = !(AnimElemTime(1) % 3)
trigger1 = AnimElemTime(5) < 0
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1150, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(4)  >= 0 && AnimElemTime(6) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,12
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), (var(36) := -71)
hitSound = S3,0
numHits = 0

[State 1150, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 24
ground.slideTime = 24
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1150, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1150, Aragami]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(10) < 0
trigger1 = !AILevel
trigger1 = command = "QCF+P"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x <= 170
trigger2 = P2Dist x >= 0
var(14) = 1160

[State 1150, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(10) < 0
value = var(14)

[State 1150, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<114 SHIKI: ARAGAMI (FROM DOKUGAMI KAI)>=============================
[StateDef 1160]
type = S
physics = N
moveType = A
anim = 1160
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1160, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 29

[State 1160, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0

[State 1160, Voice 2]
type = PlaySnd
trigger1 = !AnimTime
value = 1000,1
channel = 0

[State 1160, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,2
channel = 1

[State 1160, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 1160, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1160, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(5) < 0
x = 0.95

[State 1160, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 9

[State 1160, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 13

[State 1160, Fire Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 1005
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1160, Skid Dust]
type = Explod
triggerAll = !(AnimElemTime(2) % 3)
trigger1 = AnimElemTime(5) < 0
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1160, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(5)  >= 0 && AnimElemTime(6) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,12
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), (var(36) := -71)
hitSound = S3,0
numHits = 0

[State 1160, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 24
ground.slideTime = 24
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1160, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1160, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1160, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1160, Konokizu]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(13) < 0
trigger1 = !AILevel
trigger1 = command = "QCF+P"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x <= 130
trigger2 = P2Dist x >= 0
var(14) = 1170

[State 1160, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(13) < 0
value = var(14)

[State 1160, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<128 SHIKI: KONOKIZU (DOKUGAMI KAI CHAIN)>=============================
[StateDef 1170]
type = S
physics = N
moveType = A
anim = 1010
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1170, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 17

[State 1170, Voice]
type = PlaySnd
trigger1 = !Time
value = 1010,0
channel = 0

[State 1170, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 1

[State 1170, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 5

[State 1170, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 24

[State 1170, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 21

[State 1170, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8

[State 1170, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 16

[State 1170, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 10

[State 1170, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 6

[State 1170, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1015
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1170, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.5, -5.5
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -84
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1170, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1170, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1170, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1170, Nanase]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
trigger1 = command = "QCF+K"
trigger2 = AILevel && !var(14)
trigger2 = MoveContact
var(14) = 1180

[State 1170, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
value = var(14)

[State 1170, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<125 SHIKI: NANASE (DOKUGAMI KAI CHAIN)>=============================
[StateDef 1180]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1180, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 31

[State 1180, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 1180, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 9

[State 1180, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1180, PosAdd]
type = PosAdd
trigger1 = !AnimTime
x = 3

[State 1180, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1180, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nanase Dust"
posType = P1
ownPal = 1

[State 1180, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
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
ground.velocity = -2.25, -10.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.25, -10.5
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
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1180, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1180, StateTypeSet: Standing, Physics: Standing]
type = StateTypeSet
trigger1 = AnimElem = 7
StateType = S
physics = S

[State 1180, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1180, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 52,0

[State 1180, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1180, Hikigane]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(9) < 0
trigger1 = !AILevel
trigger1 = command = "HCB+K"
trigger2 = AILevel && !var(14)
trigger2 = MoveContact
var(14) = 1190

[State 1180, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
value = var(14)

[State 1180, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<412 SHIKI: HIKIGANE>=============================
[StateDef 1190]
type = S
physics = N
moveType = A
anim = 1190
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1190, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 36

[State 1190, Voice]
type = PlaySnd
trigger1 = !Time
value = 1190,0
channel = 0

[State 1190, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,2
channel = 1

[State 1190, Fire Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1015
bindtime = -1
sprPriority = 2
pos = 18,-6
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1190, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.5, -8.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5.5, -8.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -94
palFX.time = 56
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1190, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1190, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1190, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<100 SHIKI: ONIYAKI>=============================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(PrevStateNo = 750, 0, 72 * !var(20))
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"  || PrevStateNo = 750), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || PrevStateNo = 750 || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0 && var(10) != 2
trigger2 = AnimElemTime(3) < 0 && var(10) = 2
value = SCA
time = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,0 + 10 * var(40)
channel = 0

[State 1200, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,2
channel = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 12

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3
y = ifElse(!var(10), -7.5, ifElse(var(10) = 1, -9, -10.5))

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.55

[State 1200, VelMul]
type = VelMul
trigger1 = AnimElemTime(4) > 0
x = 0.95

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1200, Fire Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 1205
ID = 1205
name = "Oniyaki Fire Helper"
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1200, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(2)  >= 0 && AnimElemTime(3) < 0
trigger1 = PrevStateNo != 750
reversal.attr = SCA, NA, SA
pauseTime = 12,12
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), (var(36) := -71)
hitSound = S3,0
numHits = 0

[State 1200, LP/MP Ground HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && var(10) != 2 && PrevStateNo != 750
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 119, 70) < 7, 7, fvar(11) * ifElse(var(10), 119, 70))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
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
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HP Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && var(10) = 2 && PrevStateNo != 750
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Back
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
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -60
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef (Air)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && PrevStateNo != 750
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
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
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -90
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef (Zero Counter)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4
trigger1 = PrevStateNo = 750
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201


;Landing
[StateDef 1201]
type = S
anim = ifElse(!var(10) || PrevStateNo = 1230, 1201, ifElse(var(10) = 1, 1211, 1221))
physics = N
moveType = I
velSet = 0,0

[State 1201, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX 100 SHIKI: ONIYAKI>=============================
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
var(25) = 29

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 3, -62
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,0 + 10 * var(40)
channel = 0

[State 1230, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,2
channel = 3

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 4

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 16

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4
y = -11.5

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.55

[State 1230, VelMul]
type = VelMul
trigger1 = AnimElemTime(4) > 0
x = 0.95

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1230, Fire Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 1205
ID = 1205
name = "Oniyaki Fire Helper"
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1230, Auto Guard]
type = ReversalDef
trigger1 = AnimElem = 2
reversal.attr = SCA, NA, SA
pauseTime = 12, 12
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), (var(36) := -71)
hitSound = s3, 0
numHits = 0

[State 1230, Ground Hit]
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
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Back
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
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -60
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Air Hits]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
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
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -90
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1230, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<75 SHIKI KAI>=============================
[StateDef 1300]
type = S
physics = S
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
var(10) = ifElse(P2Dist x > 160, 2, ifElse(P2Dist x > 115, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, ifElse(var(10) = 1, 1310, 1300))

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && !var(40)
value = 4,1
channel = 0

[State 1300, Voice (Kusanagi)]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40)
value = 1300,10
channel = 0

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 4

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 7

[State 1300, VelSet]
type = VelSet
trigger1 = !Time && var(10)
x = 6 + (var(10) * 0.5)

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = ifElse(!var(10), 3.5, ifElse(var(10) = 1, 3.75, 4))
y = ifElse(!var(10), -6, ifElse(var(10) = 1, -6.2, -6.4))

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.45

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shiki Kai Dust"
posType = P1
ownPal = 1

[State 1300, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = AnimElem = 6
trigger1 = !var(11)
trigger2 = !var(10) && var(12)
trigger3 = var(10) = 1 && var(12) > 1
trigger4 = var(10) = 2 && var(12) > 2
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -4.16, -6.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -6.81
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
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1300, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1300, Second Kick]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(6) >= 0 && AnimElemTime(10) < 0
trigger1 = !AILevel
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = AILevel
trigger2 = MoveHit
var(14) = 1305

[State 1300, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
value = var(14)

[State 1300, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301


;Landing
[StateDef 1301]
type = S
anim = ifElse(!var(10) || PrevStateNo = 1330 || PrevStateNo = 1335, 1301, ifElse(var(10) = 1, 1311, 1321))
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


;Second Kick
[StateDef 1305]
type = A
physics = N
moveType = A
anim = 1305
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 1305, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 1305, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && !var(40)
value = 4,2
channel = 0

[State 1305, Voice (Kusanagi)]
type = PlaySnd
trigger1 = AnimElem = 2 && var(40)
value = 1300,11
channel = 0

[State 1305, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.45

[State 1305, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 2 || var(20))
triggerAll = AnimElem = 3
trigger1 = !var(11)
trigger2 = !var(10) && var(12)
trigger3 = var(10) = 1 && var(12) > 1
trigger4 = var(10) = 2 && var(12) > 2
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
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
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1305, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1305, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(11) && var(10)
var(15) = 0

[State 1305, VarAdd]
type = VarAdd
trigger1 = MoveHit
var(11) = 1
persistent = 0

[State 1305, VarSet]
type = VarSet
trigger1 = MoveHit && var(11)
var(12) = var(10)

[State 1305, Juggle Flag]
type = VarSet
trigger1 = var(11) = 2
var(16) = 1

[State 1305, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;========================<EX 75 SHIKI KAI>=============================
[StateDef 1330]
type = S
physics = S
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
var(25) = 25

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -3, -62
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 3

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && !var(40)
value = 4,1
channel = 0

[State 1300, Voice (Kusanagi)]
type = PlaySnd
trigger1 = AnimElem = 5 && var(40)
value = 1300,10
channel = 0

[State 1330, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 4

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 4

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 7

[State 1330, VelSet]
type = VelSet
trigger1 = !Time && var(10)
x = 7

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 4
y = -6.4

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.45

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shiki Kai Dust"
posType = P1
ownPal = 1

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
value = SCA
time = 1

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6 && !var(12)
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
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
ground.velocity = -4.16, -6.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -6.81
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
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1330, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1330, Second Kick]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(6) >= 0 && AnimElemTime(10) < 0
trigger1 = !AILevel
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = AILevel
trigger2 = MoveHit
var(14) = 1335

[State 1330, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
value = var(14)

[State 1330, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301


;Second Kick
[StateDef 1335]
type = A
physics = N
moveType = A
anim = 1335
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 1335, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 12

[State 1335, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 1335, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && !var(40)
value = 4,2
channel = 0

[State 1335, Voice (Kusanagi)]
type = PlaySnd
trigger1 = AnimElem = 2 && var(40)
value = 1300,11
channel = 0

[State 1335, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.45

[State 1335, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3 && !var(12)
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
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
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1335, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1335, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(11)
var(15) = 0

[State 1335, VarAdd]
type = VarAdd
trigger1 = MoveHit
var(11) = 1
persistent = 0

[State 1335, VarSet]
type = VarSet
trigger1 = MoveHit && var(11)
var(12) = 3

[State 1335, Juggle Flag]
type = VarSet
trigger1 = var(11) = 2
var(16) = 1

[State 1335, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;========================<R.E.D. KICK>=============================
[StateDef 1400]
type = S
physics = S
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
var(10) = ifElse(P2Dist x > 180, 2, ifElse(P2Dist x > 170, 1, 0))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400))

[State 1400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,4
channel = 1

[State 1400, Voice]
type = PlaySnd
trigger1 = !Time
value = 1400,0
channel = 0

[State 1400, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40,0
channel = 3

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
x = 8

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 2

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.5 + var(10) / 2
y = -6.125 - (var(10) * 1.5)

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.625

[State 1400, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "R.E.D KicK Dust"
posType = P1
ownPal = 1

[State 1400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1400, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 105, ifElse(var(10), 98, 91)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 105, ifElse(var(10), 98, 91)))), 7
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
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 3.24
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
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7 && !MoveContact
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)))), 7
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
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 3.24
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
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8 && !MoveContact
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)))), 7
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
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 3.24
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
sparkXY = -10 + 0 * (var(35) := 26), var(36) := -33
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = !(Target(1400), Time)
trigger1 = (Target(1400), StateNo = 5000) || (Target(1400), StateNo = 5010)
value = 1045
ID = 1400
ignoreHitPause = 1

[State 1400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1400, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401


;Landing
[StateDef 1401]
type = S
anim = ifElse(!var(10) || PrevStateNo = 1430, 1401, ifElse(var(10), 1411, 1421))
physics = N
moveType = I
velSet = 0,0

[State 1401, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1401, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1401, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1401, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX R.E.D. KICK>=============================
[StateDef 1430]
type = S
physics = S
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
var(25) = 31

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -2, -64
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 3

[State 1430, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,4
channel = 1

[State 1430, Voice]
type = PlaySnd
trigger1 = !Time
value = 1430,0
channel = 0

[State 1430, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40,0
channel = 4

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
x = 8

[State 1430, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 2

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 4
y = -14

[State 1430, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 1

[State 1430, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "R.E.D KicK Dust"
posType = P1
ownPal = 1

[State 1430, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1430, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(6) < 0
value = SCA
time = 1

[State 1430, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = HA
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
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 3.24
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
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7 && !MoveContact
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12) , ifElse(var(20), 6, 12)
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
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 3.24
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
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8 && !MoveContact
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
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
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 3.24
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
sparkXY = -10 + 0 * (var(35) := 26), var(36) := -33
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = !(Target(1400), Time)
trigger1 = (Target(1400), StateNo = 5000) || (Target(1400), StateNo = 5010)
value = 1045
ID = 1400
ignoreHitPause = 1

[State 1430, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401


;=====================<212 SHIKI: KOTOTSUKI YOU>==========================
;Startup
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
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 270, 2, ifElse(P2Dist x > 210, 1, 0))

[State 1500, Voice]
type = PlaySnd
trigger1 = !Time
value = 1500,0 + 10 * var(40)
channel = 0

[State 1500, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
value = 100, ifElse((AnimElem = 4), 0, 1)
channel = 1

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.5

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1
persistent = 1

[State 1500, ChangeState]
type = ChangeState
triggerAll = Time > 4
trigger1 = P2BodyDist X <= 5
value = 1510

[State 1500, ChangeState]
type = ChangeState
trigger1 = Time >= 24 + (9 * var(10))
value = 1501

;Missed
[StateDef 1501]
type = S
physics = S
moveType = I
anim = 101

[State 1501, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1501, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 1501, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1501, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Grab Attempt
[Statedef 1510]
physics = S
moveType = A
anim = 1510
velset = 0,0

[State 1510, Fire Sound]
type = PlaySnd
trigger1 = !Time
value = 1000,2
channel = 1

[State 1510, Fire Explod]
type = Explod
trigger1 = !Time
anim = 1515
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1510, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && !var(43)
attr = S, ST
hitFlag = MAF
guardFlag = M
priority = 4, Miss
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 39), var(36) := -59
palFX.time = 17
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1StateNo = 1520
P2Facing = 1

[State 1510, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1510, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1510, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Connected
[StateDef 1520]
type = S
physics = N
moveType = A
anim = 1520
ctrl = 0
svelSet = 0,0
sprPriority = 1

[State 1520, EX Flash]
type = VarSet
trigger1 = !Time && PrevStateNo = 1560
var(25) = 69

[State 1520, Flame Particles]
type = Helper
triggerAll = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
trigger2 = NumTarget && AnimElem = 5
trigger2 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1520, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1520, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1530

[State 1520, PosAdd]
type = PosAdd
trigger1 = !Time
x = 28

[State 1520, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 24

[State 1520, Fire Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1525
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1520, Explosion]
type = Explod
trigger1 = NumTarget && AnimElem = 5
anim = 1535
sprPriority = 2
posType = P1
pos = 34, -120
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1520, EX Explosion 2]
type = Explod
trigger1 = NumTarget && AnimElemTime(5) = 3 && PrevStateNo = 1560
anim = 1535
sprPriority = 2
posType = P1
pos = 44, -95
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1520, EX Explosion 3]
type = Explod
trigger1 = NumTarget && AnimElemTime(5) = 5 && PrevStateNo = 1560
anim = 1535
sprPriority = 2
posType = P1
pos = 12, -105
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1520, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,800
channel = 1

[State 1520, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,2
channel = 3

[State 1520, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1500, 1 + 10 * var(40)
channel = 0

[State 1520, Width]
type = Width
trigger1 = AnimElemTime(6) < 0
edge = 32,0
ignoreHitPause = 1

[State 1520, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 1520, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) < 0
pos = 35,0

[State 1520, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 35, -106

[State 1520, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 30, -133

[State 1520, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) = 0
pos = 36, -25

[State 1520, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5 && PrevStateNo != 1560
value = floor(ifElse(ifElse(var(10) = 2, 126, ifElse(var(10), 112, 98)) * fvar(11) < 7, -7, ifElse(var(10) = 2, -126, ifElse(var(10), -112, -98)) * fvar(11)))

[State 1520, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5 && PrevStateNo = 1560
value = floor(ifElse(134 * fvar(11) < 7, -7, -134 * fvar(11)))

[State 1520, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 5
value = 36

[State 1520, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 5 && !var(20)
value = ifElse(!var(13), 72, 36)

[State 1520, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 5
value = 1

[State 1520, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
var(13) = 1

[State 1520, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
var(15) = 1
ignoreHitPause = 1

[State 1520, Explosion Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 5
value = 1500,2
channel = 4

[State 1520, EX Explosion Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(5) = 3 && PrevStateNo = 1560
value = 1500,2
channel = 5

[State 1520, EX Explosion Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(5) = 5 && PrevStateNo = 1560
value = 1500,2
channel = 6

[State 1520, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 5
time = 14
ampl = -4
freq = 120

[State 1520, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 5
value = 1531

[State 1520, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;=====================<212 SHIKI: KOTOTSUKI YOU (TARGET)>==========================
;Being Thrown
[StateDef 1530]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 1530, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1530

[State 1530, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1531]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -4, -7.5

[State 1531, PalFX]
type = PalFX
trigger1 = !Time
time = 30
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 1531, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 1531, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.49

[State 1531, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1531, Recover]
type = SelfState
trigger1 = command = "recovery"
trigger1 = Alive && CanRecover
trigger1 = vel y > -1 && pos y >= -44
value = 5200

[State 1531, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<EX 212 SHIKI: KOTOTSUKI YOU>=============================
[StateDef 1550]
type = S
physics = N
movetype = A
anim = 1500
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500
facep2 = 1

[State 1550, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1550, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1550, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 51

[State 1550, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -16, -56
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1550, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 3

[State 1550, Voice]
type = PlaySnd
trigger1 = !Time
value = 1500,0 + 10 * var(40)
channel = 0

[State 1550, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
value = 100, ifElse((AnimElem = 4), 0, 1)
channel = 1

[State 1550, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.5

[State 1550, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1
persistent = 1

[State 1550, ChangeState]
type = ChangeState
triggerAll = Time > 4
trigger1 = P2BodyDist X <= 5
value = 1560

[State 1550, ChangeState]
type = ChangeState
trigger1 = Time >= 51
value = 1501


;Grab Attempt
[Statedef 1560]
physics = S
moveType = A
anim = 1560
velset = 0,0

[State 1560, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 11

[State 1560, Fire Sound]
type = PlaySnd
trigger1 = !Time
value = 1000,2
channel = 1

[State 1560, Fire Explod]
type = Explod
trigger1 = !Time
anim = 1515
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1560, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 1560, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && !var(43)
attr = S, ST
hitFlag = MAF
priority = 7, Miss
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 18, 18
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 39), var(36) := -59
palFX.time = 17
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1StateNo = 1520
P2Facing = 1

[State 1560, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1560, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1560, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;=====================<108 SHIKI: YAMI BARAI>==========================
[StateDef 1600]
type = S
physics = S
moveType = A
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1600, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1600, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1600, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1600, ifElse(var(10) = 1, 1610, 1620))

[State 1600, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1600,0
channel = 0

[State 1600, Yami Barai Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1600,1
channel = 3

[State 1600, Yami Barai Startup FX]
type = Explod
trigger1 = AnimElem = 4
anim = 1604
sprPriority = 3
posType = p1
pos = 0,0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1600, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1605
ID = 1605
name = "Yami Barai Projectile"
posType = P1
pos = 40,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1600, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX 108 SHIKI: YAMI BARAI>=============================
[StateDef 1630]
type = S
physics = N
moveType = A
anim = 1630
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1630, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1630, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1630, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1630, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 23

[State 1630, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 3, -72
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1630, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1630, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1600,0
channel = 0

[State 1630, Yami Barai Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1600,1
channel = 3

[State 1630, Yami Barai Startup FX]
type = Explod
trigger1 = AnimElem = 4
anim = 1604
sprPriority = 3
posType = p1
pos = 0,0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1630, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1605
ID = 1605
name = "Yami Barai Projectile"
posType = P1
pos = 40,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1630, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<101 SHIKI: OBORO GURUMA>=============================
[StateDef 1700]
type = S
physics = S
moveType = A
anim = 1700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1700, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1700, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 110, 2, ifElse(P2Dist x > 105, 1, 0))

[State 1700, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1720, ifElse(var(10) = 1, 1710, 1700))

[State 1700, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && !var(10)
trigger2 = AnimElem = 11 && var(10) = 1
trigger3 = AnimElem = 19 && var(10) = 2
value = 1700,0
channel = 0

[State 1700, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 6

[State 1700, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 3

[State 1700, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 11 && var(10)
value = 1,5
channel = 4

[State 1700, Woosh Sound 3]
type = PlaySnd
trigger1 = AnimElem = 19 && var(10) = 2
value = 1,5
channel = 5

[State 1700, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(!var(10), 4, ifElse(var(10) = 1, 4.25, 5))
y = ifElse(!var(10), -3.55, ifElse(var(10) = 1, -3.25, -3.5))

[State 1700, VelAdd]
type = VelAdd
triggerAll = AnimElemTime(2) > 0
trigger1 = AnimElemTime(7) <= 0 && !var(10)
trigger2 = AnimElemTime(14) <= 0 && var(10) = 1
trigger3 = AnimElemTime(23) <= 0 && var(10) = 2
y = ifElse(!var(10), 0.2, ifElse(var(10) = 1, 0.175, 0.167))

[State 1700, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) >= 0 && !var(10)
trigger2 = AnimElemTime(14) >= 0 && var(10) = 1
trigger3 = AnimElemTime(23) >= 0 && var(10) = 2
y = 0.35

[State 1700, VelAdd]
type = VelAdd
trigger1 = AnimElem = 6 && var(10)
trigger2 = AnimElem = 9 && var(10)
trigger3 = AnimElem = 14 && var(10) = 2
trigger4 = AnimElem = 12 && var(10) = 2
y = -1

[State 1700, VelMel]
type = VelMul
trigger1 = AnimElemTime(2) > 0 && !var(10)
trigger2 = AnimElemTime(14) > 0 && var(10) = 1
trigger3 = AnimElemTime(14) > 0 && var(10) = 2
x = 0.98

[State 1700, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1700, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oboro Guruma Dust"
posType = P1
ownPal = 1

[State 1700, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 21, ifElse(var(10), 35, 98)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 21, ifElse(var(10), 35, 98)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -4.16, -10.01
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -8.81
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
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 12 && var(10)
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 35, 77) < 7, 7, fvar(11) * ifElse(var(10) = 2, 35, 77))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -4.16, -6.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -5.81
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
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 20 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -4.16, 10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, 10.81
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
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0 && !var(10)
trigger2 = AnimElemTime(14) >= 0 && var(10) = 1
trigger3 = AnimElemTime(21) >= 0 && var(10) = 2
moveType = I

[State 1700, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1701


;Landing
[StateDef 1701]
type = S
anim = ifElse(!var(10) || PrevStateNo = 1730, 1701, ifElse(var(10), 1711, 1721))
physics = N
moveType = I
velSet = 0,0

[State 1701, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1701, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1701, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1701, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;========================<EX 101 SHIKI: OBORO GURUMA>=============================
[StateDef 1730]
type = S
physics = S
moveType = A
anim = 1730
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1730, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1730, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1730, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 44

[State 1730, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -2, -64
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1730, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 6

[State 1730, Voice]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1700,0
channel = 0

[State 1730, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 2

[State 1730, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 3

[State 1730, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1,5
channel = 4

[State 1730, Woosh Sound 3]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1,5
channel = 5

[State 1730, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 6
y = -4.5

[State 1730, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(21) <= 0
y = 0.14

[State 1730, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(20) >= 0
y = 0.35

[State 1730, VelAdd]
type = VelAdd
trigger1 = AnimElem = 9
y = -1.6

[State 1700, VelMel]
type = VelMul
trigger1 = AnimElemTime(14) > 0
x = 0.98

[State 1700, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1700, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oboro Guruma Dust"
posType = P1
ownPal = 1

[State 1730, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
value = SCA
time = 1

[State 1730, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 0,0
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
ground.velocity = -4.16, -9.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -7.81
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
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1730, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 12
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 0,0
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
ground.velocity = -4.16, -9.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, -6.81
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
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1730, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 20
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 0,0
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
ground.velocity = -4.16, 10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4.16, 10.81
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
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1730, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(21) >= 0
moveType = I

[State 1730, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1701



;========================<AOKI>=============================
[StateDef 1800]
type = S
physics = N
moveType = A
anim = 1800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"  || PrevStateNo = 750), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 140, 2, ifElse(P2Dist x > 125, 1, 0))

[State 1800, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1820, ifElse(var(10) = 1, 1810, 1800))

[State 1800, Voice]
type = PlaySnd
trigger1 = !Time
value = 1700,0
channel = 0

[State 1800, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 1

[State 1800, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = AnimElem = 2
x = 12

[State 1800, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 10

[State 1800, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 2

[State 1800, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 6 + (var(10) * 2)

[State 1800, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(3) < 0
x = 0.92

[State 1800, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(4) < 0
x = 0.85

[State 1800, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1800, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1515
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1800, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 35, 28)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 35, 28)))), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 39), var(36) := -59
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1800, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1800, ChangeState]
type = ChangeState
triggerall = AnimElemTime(3) > 0
triggerall = AnimElemTime(4) <= 0
trigger1 = MoveContact
value = 1801

[State 1800, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 1801]
type = S
physics = N
moveType = A
anim = 1801
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)

[State 1801, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,2
channel = 1

[State 1801, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 3

[State 1801, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = AnimElem = 2
x = 22

[State 1801, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 16

[State 1801, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 3
y = -5 - var(10)

[State 1801, VelMul]
type = VelMul
trigger1 = AnimElemTime(6) >= 2
x = 0.92

[State 1801, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 2
y = 0.5

[State 1801, Fire Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 1125
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1801, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Aoki Dust"
posType = P1
ownPal = 1

[State 1801, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1801, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -60
palFX.time = 47
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1801, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 6
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 29), var(36) := -91
palFX.time = 49
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1801, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1801, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1801, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1802


;Landing
[StateDef 1802]
type = S
anim = ifElse(PrevStateNo = 1831, 1832, 1802)
physics = N
moveType = I
velSet = 0,0

[State 1802, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1802, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1802, Hitting the Floor Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1802, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX AOKI>=============================
[StateDef 1830]
type = S
physics = N
moveType = A
anim = 1830
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1830, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1830, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1830, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 13

[State 1830, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -2, -71
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1830, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1830, Voice]
type = PlaySnd
trigger1 = !Time
value = 1700,0
channel = 0

[State 1830, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,2
channel = 2

[State 1830, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = AnimElem = 2
x = 12

[State 1830, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 10

[State 1830, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 2

[State 1830, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 1830, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(3) < 0
x = 0.92

[State 1830, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(4) < 0
x = 0.85

[State 1830, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1830, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1515
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1830, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 39), var(36) := -59
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1830, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1830, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1830, ChangeState]
type = ChangeState
triggerall = AnimElemTime(3) > 0
triggerall = AnimElemTime(4) <= 0
trigger1 = MoveContact
value = 1831

[State 1830, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 1831]
type = S
physics = N
moveType = A
anim = 1831
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)

[State 1831, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 14

[State 1831, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,2
channel = 3

[State 1831, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 4

[State 1831, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = AnimElem = 2
x = 22

[State 1831, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 16

[State 1831, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 3
y = -7

[State 1831, VelMul]
type = VelMul
trigger1 = AnimElemTime(6) >= 2
x = 0.92

[State 1831, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 2
y = 0.5

[State 1831, Fire Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 1125
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1831, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Aoki Dust"
posType = P1
ownPal = 1

[State 1831, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1831, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -60
palFX.time = 47
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1831, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 6
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 29), var(36) := -91
palFX.time = 49
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1831, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1831, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1831, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1802
