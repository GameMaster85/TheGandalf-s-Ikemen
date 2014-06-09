; _______________________________________
;| Joe Higashi by Jmorphman              |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<SCREW UPPER>=============================
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

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
var(17) = 54

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
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -3,-55
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 54
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, SCREW!]
type = PlaySnd
trigger1 = !Time
value = 3000,0
channel = 0

[State 3000, UPPER!]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3000,1
channel = 0

[State 3000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 1,5
channel = 1

[State 3000, Small Screw Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1
channel = 3

[State 3000, Large Screw Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 2
channel = 4

[State 3000, Screw Upper Startup FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
anim = 1004
sprPriority = 3
pos = (AnimElem = 11) * -8, (AnimElem = 11) * 4
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 3000, Small Screw Upper Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3002
ID = 3002
name = "Small Screw Upper Projectile"
posType = P1
pos = 55,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, Large Screw Upper Projectile]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 3005
ID = 3005
name = "Large Screw Upper Projectile"
posType = P1
pos = 55,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SCREW UPPER>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3000
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
var(17) = 54

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
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -3,-55
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 54
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, SCREW!]
type = PlaySnd
trigger1 = !Time
value = 3000,0
channel = 0

[State 3050, UPPER!]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3000,1
channel = 0

[State 3050, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 1,5
channel = 1

[State 3050, Small Screw Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1
channel = 3

[State 3050, Large Screw Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 2
channel = 4

[State 3050, Screw Upper Startup FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
anim = 1004
sprPriority = 3
pos = (AnimElem = 11) * -8, (AnimElem = 11) * 4
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 3050, Small Screw Upper Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3002
ID = 3002
name = "Small Screw Upper Projectile"
posType = P1
pos = 55,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Large Screw Upper Projectile]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 3005
ID = 3005
name = "Large Screw Upper Projectile"
posType = P1
pos = 55,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
moveType = I

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EXPLODING HURRICANE TIGER HEEL>=============================
[StateDef 3100]
type = S
physics = S
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
var(17) = 54

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
trigger1 = AnimElemTime(3) < 0
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
pos = 2,-80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 54
moveTime = 50
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
value = 3100,1
channel = 0
persistent = 1

[State 3100, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 35
value = 3100,2
channel = 0

[State 3100, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
value = 1,2

[State 3100, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 26
trigger3 = AnimElem = 37
trigger4 = AnimElem = 44
value = 1,5

[State 3100, Hurricane Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 20
trigger2 = AnimElem = 28
value = 1000, 1
channel = 4

[State 3100, Tiger Kick Flame Sound]
type = PlaySnd
trigger1 = AnimElem = 38
value = 1200, 1
channel = 5

[State 3100, Golden Heel Sound]
type = PlaySnd
trigger1 = AnimElem = 45
value = 1300,1
channel = 6

[State 3100, Hurricane Upper Startup FX]
type = Explod
trigger1 = AnimElem = 19
trigger2 = AnimElem = 27
anim = 1004
sprPriority = 3
pos = (AnimElem = 23) * -8, (AnimElem = 23) * 4
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 3100, VarSet]
type = VarSet
trigger1 = 1
var(10) = 0

[State 3100, Hurricane Upper Projectile]
type = Helper
trigger1 = AnimElem = 20
trigger2 = AnimElem = 28
helperType = Normal
stateNo = 3105
ID = 3105
name = "Hurricane Upper Projectile"
posType = P1
pos = 55,0
superMoveTime = 255
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3100, Tiger Kick Flames]
type = Explod
trigger1 = AnimElem = 38
anim = 3105
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, Golden Heel FX]
type = Explod
trigger1 = AnimElem = 45
anim = 3106
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, VelSet: TNT Punch]
type = VelSet
trigger1 = AnimELemTime(3) >= 0 && AnimElemTime(15) < 0
x = 4.0

[State 3100, Stop]
type = VelSet
trigger1 = AnimElem = 15
x = 0

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 38
helperType = Normal
stateNo = 8100
ID = 8100
name = "Exploding Hurricane Tiger Heel Dust"
posType = P1
ownPal = 1

[State 3100, VelSet: Tiger Kick]
type = Velset
trigger1 = AnimElem = 38
x = 2.25
y = -10.0

[State 3100, StateTypeSet: Air, Physics = None]
type = StateTypeSet
trigger1 = AnimElem = 38
stateType = A
physics = N

[State 3100, Gravity]
type = VelAdd
trigger1 = (AnimElemTime(38) >= 1)
y = 0.5

[State 3100, VelSet: Golden Heel]
type = VelSet
trigger1 = AnimElem = 43
x = 1.0

[State 3100, TNT Punch Spark XY]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 11
trigger1 = var(35) := 75 || var(36) := -55
trigger2 = AnimElem = 5 || AnimElem = 13
trigger2 = var(35) := 80 || var(36) := -81
trigger3 = AnimElem = 7
trigger3 = var(35) := 85 || var(36) := -68
trigger4 = AnimElem = 9
trigger4 = var(35) := 68 || var(36) := -92

[State 3100, TNT Punch Hit Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 7 || AnimElem = 11
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
ground.velocity = -3.0,0
ground.cornerPush.velOff = 0
guard.velocity = -3.0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5 || AnimElem = 9 || AnimElem = 13
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
ground.velocity = -3.0,0
ground.cornerPush.velOff = 0
guard.velocity = -3.0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Ground Tiger Kick Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 37
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Air Tiger Kick Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 38
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Back
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
air.cornerpush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Golden Heel Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 47
attr = A, HA
hitFlag = MAF
guardFlag = MA
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
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
down.hitTime = 20
ground.velocity = -5.40, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 6.57
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(48) >= 0
moveType = I

[State 3100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<MAX EXPLODING HURRICANE TIGER HEEL>=============================
[StateDef 3150]
type = S
physics = S
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
var(17) = 54

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
trigger1 = AnimElemTime(3) < 0
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
pos = 2,-80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 54
moveTime = 50
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
value = 3100,1
channel = 0

[State 3150, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 65
value = 3100,2
channel = 0

[State 3150, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
trigger11 = AnimElem = 23
trigger12 = AnimElem = 25
value = 1,2

[State 3150, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 31
trigger2 = AnimElem = 39
trigger3 = AnimElem = 48
trigger4 = AnimElem = 56
trigger5 = AnimElem = 67
trigger6 = AnimElem = 74
value = 1,5

[State 3150, Hurricane Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 32
trigger2 = AnimElem = 40
trigger3 = AnimElem = 49
trigger4 = AnimElem = 57
value = 1000, 1
channel = 1

[State 3150, Tiger Kick Flame Sound]
type = PlaySnd
trigger1 = AnimElem = 68
value = 1200, 1
channel = 4

[State 3150, Golden Heel Sound]
type = PlaySnd
trigger1 = AnimElem = 75
value = 1300,1
channel = 5

[State 3150, Screw Upper Startup FX]
type = Explod
trigger1 = AnimElem = 31
trigger2 = AnimElem = 39
trigger3 = AnimElem = 48
trigger4 = AnimElem = 56
anim = 1004
sprPriority = 3
pos = (AnimElem = 39 || AnimElem = 56) * -8, (AnimElem = 39 || AnimElem = 56) * 4
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 3150, VarSet]
type = VarSet
trigger1 = 1
var(10) = 2

[State 3150, Hurricane Upper Projectile]
type = Helper
trigger1 = AnimElem = 32
trigger2 = AnimElem = 40
trigger3 = AnimElem = 49
trigger4 = AnimElem = 57
helperType = Normal
stateNo = 3105
ID = 3105
name = "Superpause FX"
posType = P1
pos = 55,0
superMoveTime = 255
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3100, Tiger Kick Flames]
type = Explod
trigger1 = AnimElem = 68
anim = 3155
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, Golden Heel FX]
type = Explod
trigger1 = AnimElem = 75
anim = 3106
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, VelSet: TNT Punch]
type = Velset
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(27) < 0
x = 4.0

[State 3150, Stop]
type = Velset
trigger1 = AnimElem = 27
x = 0

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 68
helperType = Normal
stateNo = 8100
ID = 8100
name = "Exploding Hurricane Tiger Heel Dust"
posType = P1
ownPal = 1

[State 3150, VelSet: Tiger Kick]
type = VelSet
trigger1 = AnimElem = 68
x = 2.5
y = -11.5

[State 3150, StateTypeSet: Air, Physics = None]
type = StateTypeSet
trigger1 = AnimElem = 68
stateType = A
physics = N

[State 3150, Gravity]
type = VelAdd
trigger1 = AnimElemTime(68) >= 1
y = 0.5

[State 3150, VelSet: Golden Heel]
type = VelSet
trigger1 = AnimElem = 72
x = 3.0

[State 3150, TNT Punch Spark XY]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 11 || AnimElem = 19
trigger1 = var(35) := 75 || var(36) := -55
trigger2 = AnimElem = 5 || AnimElem = 13 || AnimElem = 21
trigger2 = var(35) := 80 || var(36) := -81
trigger3 = AnimElem = 7 || AnimElem = 15 || AnimElem = 23
trigger3 = var(35) := 85 || var(36) := -68
trigger4 = AnimElem = 9 || AnimElem = 17 || AnimElem = 25
trigger4 = var(35) := 68 || var(36) := -92

[State 3150, TNT Punch Hit Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 || AnimElem = 7 || AnimElem = 11 ||AnimElem = 15 || AnimElem = 19 || AnimElem = 23
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
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
ground.velocity = -3.0,0
ground.cornerPush.velOff = 0
guard.velocity = -3.0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5 || AnimElem = 9 || AnimElem = 13 || AnimElem = 17 || AnimElem = 21 || AnimElem = 25
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
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
ground.velocity = -3.0,0
ground.cornerPush.velOff = 0
guard.velocity = -3.0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Ground Tiger Kick Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 67
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Air Tiger Kick Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 68
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
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
ground.velocity = -2.16, -12.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -12.81
air.cornerpush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 47
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Flame Particles]
type = Helper
trigger1 = AnimElemTime(68) > 0
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

[State 3150, Golden Heel Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 77
attr = A, HA
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
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
down.hitTime = 20
ground.velocity = -5.40, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 6.57
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(78) >= 0
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<GOLDEN TIGER KICK>=============================
;Startup
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

[State 3200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse(command = "holdc", 2, ifElse(command = "holdb", 1, 0))

[State 3200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 3200, End]
type = ChangeState
triggerAll = !AILevel && AnimElemTime(2) >= 0
trigger1 = command != "holda" && !var(10)
trigger2 = command != "holdb" && var(10) = 1
trigger3 = command != "holdc" && var(10) = 2
trigger4 = Time = 67
value = 3201

[State 3200, End]
type = ChangeState
trigger1 = AILevel && AnimElem = 2
value = 3201


;Release
[StateDef 3201]
anim = 3201
type = S
physics = S
moveType = A

[State 3201, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3201, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3201, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3201, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 31,-30
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3201, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3201, TIGER KICK!]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200,0
channel = 0

[State 3201, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1

[State 3201, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3201, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = ifElse(var(10) = 2, 4, ifElse(var(10) = 1, 3, 2))
y = ifElse(var(10) = 2, -12, ifElse(var(10) = 1, -11, -10))

[State 3201, Gravity]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.65

[State 3201, ChangeAnim]
type = ChangeAnim
trigger1 = vel y >= 0 && AnimElemTime(5) >= 0
value = 3201
elem = 7
ignoreHitPause = 1
persistent = 0

[State 3201, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 3201, VarSet]
type = VarSet
trigger1 = AnimElem = 5
var(10) = 0

[State 3201, VarSet]
type = VarAdd
trigger1 = AnimElemTime(5) >= 0
var(10) = 1

[State 3201, Golden Tiger Kick FX (Top)]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3205
ID = 3205
Name = "Golden Tiger Kick FX (Top)"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0
pausemovetime = 0

[State 3201, Golden Tiger Kick FX (Circle)]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3206
ID = 3206
name = "Golden Tiger Kick FX (Circle)"
posType = P1
pos = 48,-102
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0
pausemovetime = 0

[State 3201, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Golden Tiger Kick Dust"
posType = P1
ownPal = 1

[State 3201, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3201, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = AnimElemTime(5) >= 0
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1, -12.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -10.81
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3201, Flame Particles]
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

[State 3201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3201, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<MAX GOLDEN TIGER KICK>=============================
[StateDef 3250]
type = S
physics = S
moveType = A
anim = 3200
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

[State 3250, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse(command = "holdc" && command = "holda", 2, ifElse(command = "holdb" && command = "holdc", 1, 0))

[State 3250, End]
type = ChangeState
triggerAll = !AILevel && AnimElemTime(2) >= 0
trigger1 = (command != "holda" || command != "holdb") && !var(10)
trigger2 = (command != "holdb" || command != "holdc") && var(10) = 1
trigger3 = (command != "holdc" || command != "holda") && var(10) = 2
trigger4 = Time = 67
value = 3251

[State 3200, End]
type = ChangeState
trigger1 = AILevel && AnimElem = 2
value = 3251


;Release
[StateDef 3251]
anim = 3251
type = S
physics = S
moveType = A

[State 3251, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3251, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3251, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3251, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 31,-30
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3251, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3251, TIGER KICK!]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200,0
channel = 0

[State 3251, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1

[State 3251, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3251, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 6
y = -14

[State 3251, Gravity]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.65

[State 3251, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 3251, VarSet]
type = VarSet
trigger1 = AnimElem = 5
var(10) = 0

[State 3251, VarSet]
type = VarAdd
trigger1 = AnimElemTime(5) >= 0
var(10) = 1

[State 3251, Golden Tiger Kick FX (Top)]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3205
ID = 3205
Name = "Golden Tiger Kick FX (Top)"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0
pausemovetime = 0

[State 3251, Golden Tiger Kick FX (Circle)]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3206
ID = 3206
name = "Golden Tiger Kick FX (Circle)"
posType = P1
pos = 48,-102
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0
pausemovetime = 0

[State 3251, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Golden Tiger Kick Dust"
posType = P1
ownPal = 1

[State 3251, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3251, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElemTime(5) >= 0
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1, -12.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -10.81
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -95
palFX.time = 51
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3251, Flame Particles]
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

[State 3251, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3251, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<DOUBLE CYCLONE>=============================
[StateDef 3300]
type = S
physics = S
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
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
trigger1 = 1
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

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
trigger1= AnimElemTime(3) < 0
time = 1
value = SCA

[State 3300, PlayerPush]
type = PlayerPush
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType = A || EnemyNear, StateType = L
value = 0
ignoreHitPause = 1

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 8, -39
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, DOUBLE!]
type = PlaySnd
trigger1 = Time = 4
value = 3300,0
channel = 0

[State 3300, CYCLONE!]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3300, 1
channel = 0

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1

[State 3300, Cyclone Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000, 2
channel = 2

[State 3300, Right Cyclone Startup]
type = Explod
trigger1 = AnimElem = 4
anim = 1004
sprPriority = 3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 3300, Left Cyclone Startup]
type = Explod
trigger1 = AnimElem = 4
anim = 1004
sprPriority = 3
pos = 10,0
posType = P1
facing = -1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 3300, Right Cyclone Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3305
ID = 3305
name = "Right Double Cyclone Projectile"
posType = P1
pos = 55,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3300, Left Cyclone Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3307
ID = 3306
name = "Left Double Cyclone Projectile"
posType = P1
pos = -35,0
facing = -1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3300, VarSet]
type = VarSet
triggerAll = NumHelper(3305) && NumHelper(3306)
trigger1 = (Helper(3305), var(13)) + (Helper(3306), var(13)) >= 12
var(16) = 1

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
