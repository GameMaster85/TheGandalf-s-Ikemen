; _______________________________________
;| Joe Higashi by Jmorphman              |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;=====================<HURRICANE UPPER>==========================
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
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0

[State 1000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11 && var(10) = 2
value = 1,5

[State 1000, Hurricane Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12 && var(10) = 2
value = 1000, 1

[State 1000, Hurricane Upper Startup FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11 && var(10) = 2
anim = 1004
sprPriority = 3
pos = (AnimElem = 11 || var(10) = 1) * -8, (AnimElem = 11 || var(10) = 1) * 4
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12 && var(10) = 2
helperType = Normal
stateNo = 1005
ID = 1005
name = "Hurricane Upper Projectile"
posType = P1
pos = 55,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX HURRICANE UPPER>=============================
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
var(25) = 78

[State 1030, VarSet]
type = VarSet
trigger1 = !Time
var(47) = 0

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 18, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1030,0
channel = 0

[State 1030, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1030,1
channel = 0

[State 1030, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 21
value = 1030,2
channel = 0

[State 1030, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
trigger3 = AnimElem = 20
value = 1,5

[State 1030, Hurricane Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
trigger3 = AnimElem = 21
value = 1000, 1

[State 1030, Hurricane Upper Startup FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
trigger3 = AnimElem = 20
anim = 1004
sprPriority = 3
pos = (AnimElem = 11) * -8, (AnimElem = 11) * 4
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
trigger3 = AnimElem = 21
helperType = Normal
stateNo = 1005
ID = 1005
name = "Hurricane Upper Projectile"
posType = P1
pos = 55,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SLASH KICK>=============================
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
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 250, 2, ifElse(P2Dist x > 200, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 0
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 1
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(Anim = 1120, 11.0, ifElse(Anim = 1110, 9.0, 7.0))
y = ifElse(Anim = 1120, -3.25, ifElse(Anim = 1110, -2.4, -2.25))

[State 1100, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.25

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Slash Kick Dust"
posType = P1
ownPal = 1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)))), ifElse(var(10) = 2, 11, ifElse(var(10) = 1, 10, 9))
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
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 1101]
type = S
physics = S
moveType = I
Anim = ifElse(Anim = 1120, 1121, ifElse(Anim = 1110, 1111, 1101))
velSet = 0,0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1101, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SLASH KICK>=============================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1120
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
var(25) = 32

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 18, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Anim = 1120
value = 1100, 0
channel = 0

[State 1130, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3 && Anim = 1120
value = 1100, 1
channel = 3

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 4

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3 && Anim = 1120
stateType = A
physics = N

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 4 && Anim = 1120
x = 13.0
y = -3.25

[State 1130, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0 && Anim = 1120
y = 0.25

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 4 && Anim = 1120
helperType = Normal
stateNo = 8100
ID = 8100
name = "Slash Kick Dust"
posType = P1
ownPal = 1

[State 1130, EX Slash Kick FX]
type = Explod
trigger1 = AnimElem = 5
anim = 1135
ID = 1135
sprPriority = 4
posType = P1
pos = 75,-70
bindTime = -1
scale = 0.75,0.5
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1
removeOnGetHit = 1

[State 1130, RemoveExplod]
type = RemoveExplod
trigger1 = MoveHit || (pos y > -vel y && Anim = 1120)
ID = 1135
ignoreHitPause = 1

[State 1130, EX Slash Kick FX Fade Away]
type = Explod
trigger1 = MoveHit || (pos y > -vel y && Anim = 1120)
anim = 1136
ID = 1136
sprPriority = 4
posType = P1
pos = 75,-70
scale = 0.75,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 1130, HitDef]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 12
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
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -2;-7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = ifElse(EnemyNear, StateType = A, 1, 0)
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 1101
moveType = I

[State 1130, ChangeAnim]
type = ChangeAnim
trigger1 = pos y > -vel y && Anim = 1120
value = 1101

[State 1130, VelSet]
type = VelSet
trigger1 = Anim = 1101
x = 0
y = 0

[State 1130, PosSet]
type = PosSet
trigger1 = Anim = 1101
y = 0

[State 1130, Landing Dust Explod]
type = Explod
trigger1 = Anim = 1101 && AnimElemTime(1) = 0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130 Landing Sound]
type = PlaySnd
trigger1 = Anim = 1101 && AnimElemTime(1) = 0
value = 52,0

[State 1130, ChangeState: End]
type = ChangeState
trigger1 = Anim = 1101 && !AnimTime
value = 0
ctrl = 1

[State 1130, ChangeState: Follow Up]
type = ChangeState
trigger1 = MoveHit
value = 1140


;EX Slash Kick Follow Up
[StateDef 1140]
type = A
physics = N
moveType = A
anim = 1140
velSet = 5,0

[State 1140, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1140, HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = !var(16) && (var(15) < 2 || var(20))
ID = 1140
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 12
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
ground.velocity = -12, -6
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -12, -6
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
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1140, Juggle Points Reset]
type = VarSet
trigger1 = MoveHit
var(15) = 0

[State 1140, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 8
moveType = I

[State 1140, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1140)
trigger1 = (Target(1140), StateNo = 5000) || (Target(1140), StateNo = 5010) || (Target(1140), StateNo = 5020)
value = 1145
ID = 1140
ignoreHitPause = 1

[State 1140, End]
type = ChangeState
trigger1 = AnimElem = 9
value = 1141


;EX Slash Kick Follow up (Falling)
[StateDef 1141]
type = A
physics = A
moveType = I

[State 1141, Gravity]
type = VelAdd
trigger1 = 1
y = 0.3

[State 1141, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1142


;Landing
[StateDef 1142]
type = S
physics = S
moveType = I
anim = 47
velSet = 0,0

[State 1142, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1142, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1142, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1142, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HIT BY EX SLASH KICK>=============================
;Being Launched
[StateDef 1145]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1145, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5002

[State 1146, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1146


;Heading Towards Wall
[StateDef 1146]
type = A
moveType = H
physics = N

[State 1146, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1146, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 1146, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1146, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1146, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 1146, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1147

[State 1146, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 1147]
type = A
moveType = H
physics = N

[State 1147, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1147, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1147, Hitting the Wall FX]
type = Explod
trigger1= !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType =  Back
sprPriority = 3

[State 1147, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1147, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1147, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1147, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5000

[State 1147, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1147, End]
type = ChangeState
trigger1 = Time >= 4
value = 1148


;Bouncing Off Wall
[Statedef 1148]
type = A
moveType = H
physics = N

[State 1148, Turn]
type = Turn
trigger1 = !Time

[State 1148, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1148, VelSet]
type = VelSet
trigger1 = !Time
x = -2.5
y = -9

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1148, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1148, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1148, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100



;========================<TIGER KICK>=============================
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

[State 1200, Button Detect (Normal)]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0 && var(10) != 2
trigger2 = AnimElemTime(5) < 0 && var(10) = 2
value = SCA
time = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 0

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 1200, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1200,1
channel = 4

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
stateType = A
physics = N

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tiger Kick Dust"
posType = P1
ownPal = 1

[State 1200, Tiger Kick Flames]
type = Explod
trigger1 = AnimElem = 5
anim = ifElse(var(10) = 2, 1225, ifElse(var(10) = 1, 1215, 1205))
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = ifElse(var(10) = 2, 2.25, ifElse(var(10) = 1, 1.5, 0.75))
y = ifElse(var(10) = 2, -10.0, ifElse(var(10) = 1, -8.0, -6.5))

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = 0.5

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0 && var(10)
x = -0.025

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4 && var(10) = 2
x = 15

[State 1200, LK HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !var(10)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 7
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
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, MK HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && var(10) = 1
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
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
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HK HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger1 = var(10) = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, LK/MK HitDef (Air)]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + var(10)) || var(20))
trigger1 = AnimElem = 5
trigger1 = var(10) != 2
trigger1 = ifElse(!var(10), !MoveContact, 1)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 42, 105) < 7, 7, fvar(11) * ifElse(var(10), 42, 105))), 7
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HK Air Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 5
trigger1 = var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HK Air Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 6
trigger1 = var(10) = 2
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201


;Tiger Kick, Golden Heel, (MAX) Exploding Hurricane Tiger Heel, and Golden Tiger Kick Landing
[StateDef 1201]
type = S
physics = N
moveType = I
velSet = 0,0

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, ChangeAnim]
type = ChangeAnim
trigger1 = (PrevStateNo = [1200,1230]) && !Time
value = ifElse(var(10) = 2 && PrevStateNo = 1200, 1221, ifElse(var(10) = 1 && PrevStateNo = 1200, 1211, 1201))

[State 1201, ChangeAnim]
type = ChangeAnim
trigger1 = (PrevStateNo = 1300) && !Time
value = ifElse(var(10) = 2 && PrevStateNo = 1300, 1321, ifElse(var(10) = 1 && PrevStateNo = 1300, 1311, 1301))

[State 1201, ChangeAnim]
type = ChangeAnim
trigger1 = (PrevStateNo = 1330) && !Time
value = 1331

[State 1201, ChangeAnim]
type = ChangeAnim
trigger1 = PrevStateNo = 2900 && !Time
value = 1201

[State 1201, ChangeAnim]
type = ChangeAnim
trigger1 = (PrevStateNo = [3100,3251]) && !Time
value = ifElse((PrevStateNo = [3100,3150]), 3101, 3202)

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



;========================<EX TIGER KICK>=============================
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
posType = P1
pos = 18, -45
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 0

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 3

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 4

[State 1230, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1200,1
channel = 5

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
stateType = A
physics = N

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tiger Kick Dust"
posType = P1
ownPal = 1

[State 1230, Tiger Kick Flames]
type = Explod
trigger1 = AnimElem = 5
anim = 1235
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 15

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 3
y = -10.5

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = 0.5

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
x = -0.05

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1230, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
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
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Air Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerpush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Air Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 6
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 50
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Air Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 50
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Flame Particles]
type = Helper
trigger1 = AnimElemTime(5) > 0
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
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1230, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<GOLDEN HEEL>=============================
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
var(10) = ifElse(P2Dist x > 155, 2, ifElse(P2Dist x > 145, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, ifElse(var(10) = 1, 1310, 1300))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1300, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 1

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 3

[State 1300, Golden Heel Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1300,1
channel = 4

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Golden Heel Dust"
posType = P1
ownPal = 1

[State 1300, Golden Heel FX]
type = Explod
trigger1 = AnimElem = 5
anim = 1305
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = ifElse(var(10) = 2, 6.0, ifElse(var(10) = 1, 4.6, 4.0))
y = -9.1

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = 0.65

[State 1300, Air Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
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
down.hitTime = 20
ground.velocity = -5.40, 6.57
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -115
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(15) < 2 && NumTarget(1300)) || var(20))
trigger1 = AnimElem = 7
ID = 1301
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 0, 63, ifElse(var(10) = 1, 70, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 0, ifElse(NumTarget(1300), 42, 63), ifElse(var(10) = 1, ifElse(NumTarget(1300), 47, 70), ifElse(NumTarget(1300), 51, 77))))), 7
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
down.hitTime = 20
ground.velocity = 0, 6.57
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 6.57
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
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -36
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

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<EX GOLDEN HEEL>=============================
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
var(25) = 19

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 8, -75
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(40) = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1330, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 3

[State 1330, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 4

[State 1330, Golden Heel Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1300,1
channel = 5

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
stateType = A
physics = N

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Golden Heel Dust"
posType = P1
ownPal = 1

[State 1330, Fire Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1305
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8
y = -12

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 7
y = -5

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.65

[State 1330, Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 6
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
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
down.hitTime = 20
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -115
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
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
down.hitTime = 20
ground.velocity = -5.40, 0
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
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -36
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

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<TNT PUNCH>=============================
;Startup
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse(command = "z", 2, ifElse(command = "y", 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
trigger1 = !NumEnemy
var(10) = 2

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
trigger1 = NumEnemy
var(10) = ifElse((EnemyNear, GetHitVar(HitTime) <= 4), 0, ifElse((EnemyNear, GetHitVar(HitTime) <= 6), 1, 2))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400))

[State 1400, Voice]
type = PlaySnd
trigger1 = !Time
value = 1400, var(10)
channel = 0

[State 1400, Dust]
type = Helper
trigger1 = !AnimTime && (var(10) = 1 || var(10) = 2)
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1400, End]
type = ChangeState
trigger1 = !AnimTime
value = 1401


;Looping
[StateDef 1401]
type = S
physics = N
moveType = A
anim = 1401
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1401, Button Detect]
type = VarSet
trigger1 = !Time
var(11) = var(10)

[State 1401, Button Detect]
type = VarSet
trigger1 = Time && !AILevel
trigger1 = command = "x" || command = "y" || command = "z"
var(11) = ifElse(command = "z", 2, ifElse(command = "y", 1, 0))

[State 1401, Button Detect (AI)]
type = VarSet
trigger1 = AILevel
trigger1 = Time && AnimElem = 5
var(11) = ifElse(Random < 500, 2, ifElse(Random < 500, 1, 0))

[State 1401, Tap Punch (AI)]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2StateType != A && (P2BodyDist x = [0,75])
var(46) = 10

[State 1401, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1401

[State 1401, Loop]
type = ChangeAnim
trigger1 = !AnimTime
trigger2 = var(11) != 0 && AnimElemTime(7) >= 0
trigger3 = var(11) != 1 && AnimElemTime(8) >= 0
value = 1401
elem = 1

[State 1401, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
value = 1,2

[State 1401, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo = 1400
x = ifElse(var(10) = 2, 9.9, ifElse(var(10) = 1, 6.1, 0))

[State 1401, VelAdd]
type = VelAdd
trigger1 = vel x > 0
x = ifElse(var(10) = 2, -0.71862, -0.53896)

[State 1401, Stop]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1401, Spark XY]
type = Null
trigger1 = AnimElem = 1
trigger1 = var(35) := 75 || var(36) := -55
trigger2 = AnimElem = 3
trigger2 = var(35) := 80 || var(36) := -81
trigger3 = AnimElem = 5
trigger3 = var(35) := 85 || var(36) := -68
trigger4 = AnimElem = 7
trigger4 = var(35) := 68 || var(36) := -92

[State 1401, HitDef Low]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1 || AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(Anim = 1401, 28, 21) < 7, 7, fvar(11) * ifElse(Anim = 1401, 28, 21))), 7
getPower = ifElse(!var(13), 72, 36)*!var(20), 12 * !var(20)
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
ground.velocity = -8.3,0
ground.cornerPush.velOff = 0
guard.velocity = -8.3
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
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

[State 1401, HitDef High]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 || AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(Anim = 1401, 28, 21) < 7, 7, fvar(11) * ifElse(Anim = 1401, 28, 21))), 7
getPower = ifElse(!var(13), 72, 36)*!var(20), 12 * !var(20)
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
ground.velocity = -8.3,0
ground.cornerPush.velOff = 0
guard.velocity = -8.3
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
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

[State 1401, End]
type = ChangeState
trigger1 = var(46) <= 0
trigger2 = Time > 80
value = 1402


;Recover
[Statedef 1402]
type = S
physics = N
moveType = I
anim = 1402
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 1402, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2 || PrevStateNo = 1431, 1422, ifelse(var(10)=1, 1412, 1402))

[State 1402, Accel]
type = VelAdd
trigger1 = Time && vel x > 0
x = ifElse(var(10) = 2, -0.88445, -0.6633375)

[State 1402, Accel]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1402, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<DYNAMITE FIST>=============================
[StateDef 1405]
type = S
physics = N
moveType = A
anim = 1405
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 1405, VelSet]
type = VelSet
trigger1 = !Time
x = 9.9

[State 1405, VelAdd]
type = VelAdd
trigger1 = vel x > 0
x = -0.71862

[State 1405, Stop]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1405, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,3
channel = 0

[State 1405, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 1405, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 || AnimElem = 4
attr = S, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 144, 72)*!var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.86, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.86
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<DYNAMITE UPPER>=============================
[StateDef 1406]
type = S
physics = N
moveType = A
anim = 1406
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 1406, VelSet]
type = VelSet
trigger1 = !Time
x = 12.0

[State 1406, VelADd]
type = VelAdd
trigger1 = vel x > 0
x = -0.71862

[State 1406, Stop]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1406, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1030,2
channel = 0

[State 1406, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 1406, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, NA
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
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1406, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX TNT PUNCH>=============================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1400
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
var(25) = 34

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 22, -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1430, Voice]
type = PlaySnd
trigger1 = !Time
value = 1400, 3
channel = 0

[State 1430, Dust]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1430, End]
type = ChangeState
trigger1 = !AnimTime
value = 1431


;Looping
[StateDef 1431]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 12.7,0
sprPriority = 1

[State 1431, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
trigger5 = AnimElem = 9
trigger6 = AnimElem = 11
trigger7 = AnimElem = 13
trigger8 = AnimElem = 15
value = 1,2

[State 1431, VelAdd]
type = VelAdd
trigger1 = vel x > 0
x = -0.89828

[State 1431, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1431, Spark XY]
type = Null
trigger1 = AnimElem = 1 || AnimElem = 9
trigger1 = var(35) := 70 || var(36) := -55
trigger2 = AnimElem = 3 || AnimElem = 11
trigger2 = var(35) := 80 || var(36) := -81
trigger3 = AnimElem = 5 || AnimElem = 13
trigger3 = var(35) := 85 || var(36) := -68
trigger4 = AnimElem = 7 || AnimElem = 15
trigger4 = var(35) := 68 || var(36) := -92

[State 1431, HitDef Low]
type = HitDef
trigger1= !var(16) && var(15) < 4
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9 || AnimElem = 13
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.40, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
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

[State 1431, HitDef High]
type = HitDef
trigger1= !var(16) && var(15) < 4
trigger1 = AnimElem = 3 || AnimElem = 7 || AnimElem = 11 || AnimElem = 15
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.40, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
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

[State 1431, End]
type = ChangeState
trigger1 = !AnimTime
value = 1402



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
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 0

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 1

[State 2900, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1200,1
channel = 3

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tiger Kick Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 1.5
y = -8.0

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = 0.5

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
x = -0.025

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 2900, Tiger Kick Flames]
type = Explod
trigger1 = AnimElem = 5
anim = 1215
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = A, SA
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
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 2900, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



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

[State 2910, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 450, 0
channel = 3

[State 2910, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = normal
stateNo = 8103
ID = 8100
name = "Slide Dust"
posType = p1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 2910, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) <= 0
x = 5.5

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
