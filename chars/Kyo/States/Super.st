; _________________________________________
;| Kyo Kusanagi by Jmorphman               |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<URA 108 SHIKI: OROCHINAGI>=============================
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
var(17) = 43

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
trigger1 = 1
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
pos = 28,-108
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = !Time && !var(40)
value = 730,1
channel = 0

[State 3000, Voice (Kusanagi)]
type = PlaySnd
trigger1 = !Time && var(40)
value = 3000,10
channel = 0

[State 3000, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3005
ID = 3005
bindtime = -1
removeTime = -1
sprPriority = 2
posType = P1
pos = 27,-100
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime && !AILevel
trigger1 = command = "holdx" || command = "holdy" || command = "holdz"
value = 3001

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3010


;Holding
[StateDef 3001]
type = S
anim = 3001
physics = S
moveType = A
velSet = 0,0

[State 3001, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse(command = "holdz", 2, ifElse(command = "holdy", 1, 0))

[State 3001, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 3002, 3001)

[State 3001, End]
type = ChangeState
trigger1 = command != "holdx" && !var(10)
trigger2 = command != "holdy" && var(10) = 1
trigger3 = command != "holdz" && var(10) = 2
trigger4 = Time = 67
value = 3010


;Release
[StateDef 3010]
type = S
anim = 3010
physics = N
moveType = A
velSet = 0,0

[State 3010, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(3005)
id = 3005

[State 3010, Fire Explod]
type = Explod
trigger1 = !Time
anim = 10190
sprPriority = 2
posType = P1
pos = 13,-46
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1

[State 3010, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000,0 + 11 * var(40)
channel = 0

[State 3010, Fire Fade Away Sound]
type = PlaySnd
trigger1 = !Time
value = 190,1
channel = 1

[State 3010, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3010,0
channel = 3

[State 3010, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 7

[State 3010, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = 0

[State 3010, VelMul]
type = VelMul
trigger1 = AnimElemTime(7) > 0
x = 0.96

[State 3010, Orochinagi Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3015
ID = 3015
name = "Orochinagi Projectile"
posType = P1
pos = 36,-48
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3010, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 8
moveType = I

[State 3010, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX URA 108 SHIKI: OROCHINAGI>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3050
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
var(17) = 43

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
trigger1 = AnimElemTime(9) < 0
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
pos = 28,-108
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = !Time && !var(40)
value = 730,1
channel = 0

[State 3050, Voice (Kusanagi)]
type = PlaySnd
trigger1 = !Time && var(40)
value = 3000,10
channel = 0

[State 3050, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3050,0
channel = 4

[State 3050, Fire Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 3055
ID = 3055
name = "MAX Orochinagi Fire Helper"
superMoveTime = 38
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, ChangeState]
type = ChangeState
triggerAll = !AnimTime && !AILevel
trigger1 = command = "holdx" && command = "holdy"
trigger2 = command = "holdy" && command = "holdz"
trigger3 = command = "holdx" && command = "holdz"
value = 3051

[State 3050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3060


;Holding
[StateDef 3051]
type = S
anim = 3051
physics = S
moveType = A
velSet = 0,0

[State 3051, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse(command = "holdz" && command = "holdx", 2, ifElse(command = "holdy" && command = "holdz", 1, 0))

[State 3051, Orochinagi Juggle Count]
type = VarSet
trigger1 = !Time
var(42) = var(15)

[State 3051, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = 1

[State 3051, HitDef]
type = HitDef
trigger1 = !var(16) && var(42) < 3
trigger1 =  AnimElem = 1 || AnimElem = 2
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -5.16, -6.81
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.16, -6.81
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := ceil(P2Dist y - 64)
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3051, AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,160,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State 3051, Flame Particles]
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

[State 3051, End]
type = ChangeState
trigger1 = (command != "holdx" || command != "holdy") && !var(10)
trigger2 = (command != "holdy" || command != "holdz") && var(10) = 1
trigger3 = (command != "holdz" || command != "holdx") && var(10) = 2
trigger4 = Time = 67
value = 3060


;Release
[StateDef 3060]
type = S
anim = 3060
physics = N
moveType = A
velSet = 0,0

[State 3060, Fire Explod]
type = Explod
trigger1 = !Time
anim = 10190
sprPriority = 4
posType = P1
pos = 13,-46
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1

[State 3060, Voice]
type = PlaySnd
trigger1 = !Time && !var(40)
value = 3060,0
channel = 0

[State 3060, Voice (Kusanagi)]
type = PlaySnd
trigger1 = !Time && var(40)
value = 3000,11
channel = 0

[State 3060, Fire Fade Away Sound]
type = PlaySnd
trigger1 = !Time
value = 190,1
channel = 1

[State 3060, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3010,0
channel = 3

[State 3060, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 4

[State 3060, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 7

[State 3060, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = 0

[State 3060, VelMul]
type = VelMul
trigger1 = AnimElemTime(7) > 0
x = 0.96

[State 3060, Orochinagi Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3015
ID = 3015
name = "Orochinagi Projectile"
posType = P1
pos = 36,-48
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3060, AfterImage]
type = AfterImage
trigger1 = AnimElem = 14
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 32,32,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State 3060, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 8
moveType = I

[State 3060, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;========================<SAISHU KESSEN OUGI "MUSHIKI">=============================
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
trigger1 = AnimElemTime(14) < 0
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
pos = 28,-108
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100,0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 29
value = 3100,1
channel = 0

[State 3100, Fire Sound 1]
type = PlaySnd
trigger1 = AnimElem = 20
value = 3010,0
channel = 3

[State 3100, Fire Sound 2]
type = PlaySnd
trigger1 = AnimElem = 51
value = 1000,2
channel = 4

[State 3100, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 33
value = 1,2
channel = 5

[State 3100, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 39
value = 1,2
channel = 6

[State 3100, Woosh Sound 3]
type = PlaySnd
trigger1 = AnimElem = 45
value = 1,2
channel = 7

[State 3100, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3005
ID = 3005
removeTime = 36
sprPriority = 2
posType = P1
pos = 27,-100
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 3100, Fire Fade Away Explod]
type = Explod
trigger1 = AnimElem = 14
anim = 3006
sprPriority = 4
posType = P1
pos = 13,-46
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1

[State 3100, Yami Barai Startup FX]
type = Explod
trigger1 = AnimElem = 20
anim = 1604
sprPriority = 3
posType = p1
pos = 0,0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3100, Dokugami Fire Explod]
type = Explod
trigger1 = AnimElem = 33
trigger2 = AnimElem = 39
trigger3 = AnimElem = 45
trigger4 = AnimElem = 51
anim = 1105
ID = 1105
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, RemoveExplod]
type = RemoveExplod
triggerAll = NumExplod(1105)
trigger1 = AnimElem = 35
trigger2 = AnimElem = 41
trigger3 = AnimElem = 47
ID = 1105

[State 3100, Mushiki Pillar]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 3105
ID = 3105
name = "Mushiki Pillar"
posType = P1
pos = 48,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3100, Mushiki Fire Explod]
type = Explod
trigger1 = AnimElem = 31
anim = 3106
ID = 3106
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 30
trigger2 = AnimElem = 36
trigger3 = AnimElem = 42
trigger4 = AnimElem = 48
x = 12

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 31
trigger2 = AnimElem = 37
trigger3 = AnimElem = 43
trigger4 = AnimElem = 49
x = 18

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 32
trigger2 = AnimElem = 38
trigger3 = AnimElem = 44
trigger4 = AnimElem = 50
x = 14

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 33
trigger2 = AnimElem = 39
trigger3 = AnimElem = 45
trigger4 = AnimElem = 51
x = 10

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 55
trigger2 = AnimElem = 56
x = 8

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 57
x = 2

[State 3100, PosAdd]
type = PosSet
trigger1 = AnimElem = 35
trigger2 = AnimElem = 41
trigger3 = AnimElem = 47
x = var(10)

[State 3100, VarSet]
type = VarSet
trigger1 = !Time
trigger2 = AnimElem = 35
trigger3 = AnimElem = 41
var(10) = ceil(pos x)

[State 3100, HitDef 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 34
trigger2 = AnimElem = 40
trigger3 = AnimElem = 46
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 34
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 52
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 24,24
guard.pauseTime = 24,24
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -5.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Flame Particles]
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

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 53
moveType = I

[State 3100, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 3100, Taunt]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(52) >= 0 && AnimElemTime(57) < 0
trigger1 = !AILevel
trigger1 = MoveHit
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = AILevel && MoveHit
var(14) = 3101

[State 3100, Followup]
type = ChangeState
trigger1 = var(14) = 3101
trigger1 = !AnimTime
value = var(14)

[State 3100, AfterImage Off]
type = AfterImageTime
trigger1 = AnimElemTime(52) >= 0
time = 0

[State 3100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Taunt
[StateDef 3101]
type = S
moveType = I
physics = S
anim = 3101
velSet  = 0,0
sprPriority = 1
ctrl = 0

[State 182, Fire Fade Away Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 182,2
channel = 1

[State 3101, Fire Explod 1]
type = Explod
trigger1 = AnimElem = 2
anim = 3005
ID = 3005
sprPriority = 3
posType = P1
pos = 32,-90
removeTime = 29
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3101, ModifyExplod 1]
type = ModifyExplod
trigger1 = AnimElem = 3
ID = 3005
pos = 17,-96
posType = P1

[State 3101, ModifyExplod 2]
type = ModifyExplod
trigger1 = AnimElem = 4
ID = 3005
pos = 7,-98
posType = P1

[State 3101, Fire Explod 2]
type = Explod
trigger1 = AnimElem = 5
anim = 10182
ID = 10182
sprPriority = 3
posType = P1
pos = 7,-98
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3101, AfterImage Off]
type = AfterImageTime
trigger1 = 1
time = 0

[State 3101, Voice]
type = PlaySnd
trigger1 = !Time
value = 3101,0
channel = 0

[State 3101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SAISHU KESSEN OUGI "MUSHIKI">=============================
[StateDef 3150]
type = S
physics = S
moveType = A
anim = 3100
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
trigger1 = time = 3
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
pos = 28,-108
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100,0
channel = 0

[State 3150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 29
value = 3100,1
channel = 0

[State 3150, Fire Sound 1]
type = PlaySnd
trigger1 = AnimElem = 20
value = 3010,0
channel = 3

[State 3150, Fire Sound 2]
type = PlaySnd
trigger1 = AnimElem = 51
value = 1000,2
channel = 4

[State 3150, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 33
value = 1,2
channel = 5

[State 3150, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 39
value = 1,2
channel = 6

[State 3150, Woosh Sound 3]
type = PlaySnd
trigger1 = AnimElem = 45
value = 1,2
channel = 7

[State 3150, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3005
ID = 3005
removeTime = 36
sprPriority = 2
posType = P1
pos = 27,-100
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 3150, Fire Fade Away Explod]
type = Explod
trigger1 = AnimElem = 14
anim = 3006
sprPriority = 4
posType = P1
pos = 13,-46
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1

[State 3150, Yami Barai Startup FX]
type = Explod
trigger1 = AnimElem = 20
anim = 1604
sprPriority = 3
posType = p1
pos = 0,0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3150, Dokugami Fire Explod]
type = Explod
trigger1 = AnimElem = 33
trigger2 = AnimElem = 39
trigger3 = AnimElem = 45
trigger4 = AnimElem = 51
anim = 1105
ID = 1105
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, RemoveExplod]
type = RemoveExplod
triggerAll = NumExplod(1105)
trigger1 = AnimElem = 35
trigger2 = AnimElem = 41
trigger3 = AnimElem = 47
ID = 1105

[State 3150, Mushiki Pillar]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 3105
ID = 3105
name = "Mushiki Pillar"
posType = P1
pos = 48,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3150, Mushiki Fire Explod]
type = Explod
trigger1 = AnimElem = 31
anim = 3106
ID = 3106
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 30
trigger2 = AnimElem = 36
trigger3 = AnimElem = 42
trigger4 = AnimElem = 48
x = 12

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 31
trigger2 = AnimElem = 37
trigger3 = AnimElem = 43
trigger4 = AnimElem = 49
x = 18

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 32
trigger2 = AnimElem = 38
trigger3 = AnimElem = 44
trigger4 = AnimElem = 50
x = 14

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 33
trigger2 = AnimElem = 39
trigger3 = AnimElem = 45
trigger4 = AnimElem = 51
x = 10

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 55
trigger2 = AnimElem = 56
x = 8

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 57
x = 2

[State 3150, PosAdd]
type = PosSet
trigger1 = AnimElem = 35
trigger2 = AnimElem = 41
trigger3 = AnimElem = 47
x = var(10)

[State 3150, VarSet]
type = VarSet
trigger1 = !Time
trigger2 = AnimElem = 35
trigger3 = AnimElem = 41
var(10) = ceil(pos x)

[State 3150, AfterImage]
type = AfterImage
trigger1 = AnimElem = 29
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,160,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State 3150, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 34
trigger2 = AnimElem = 40
trigger3 = AnimElem = 46
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 34
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 52
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 24,24
guard.pauseTime = 24,24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Flame Particles]
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

[State 3150, End]
type = ChangeState
trigger1 = AnimElem = 55 && MoveHit
value = 3151

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 55
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Second Part
[StateDef 3151]
type = S
physics = S
moveType = A
anim = 3151
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3151, Voice]
type = PlaySnd
trigger1 = AnimElem = 27
value = 1200,0
channel = 0

[State 3151, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 14
trigger4 = AnimElem = 19
trigger5 = AnimElem = 28
value = 1000,2
channel = 1

[State 3151, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 30
value = 40,0
channel = 3

[State 3151, Aragami Fire Explod]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 20
anim = 1005
ID = 1005
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3151, RemoveExplod]
type = RemoveExplod
triggerAll = NumExplod(1005)
trigger1 = AnimElem = 10
trigger2 = AnimElem = 15
trigger3 = AnimElem = 20
ID = 1005

[State 3151, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
trigger4 = AnimElem = 17
x = 6

[State 3151, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 14
trigger4 = AnimElem = 19
x = 9

[State 3151, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 20
x = 13

[State 3151, PosSet]
type = PosSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
x = var(10)

[State 3151, VarSet]
type = VarSet
trigger1 = Time = 0
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
var(10) = ceil(pos x)

[State 3151, PosAdd]
type = PosAdd
trigger1 = AnimElem = 27
trigger2 = AnimElem = 28
x = 12

[State 3151, VelSet]
type = VelSet
trigger1 = AnimElem = 30
x = 3
y = -10.5

[State 3151, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(30) > 0
y = 0.55

[State 3151, VelMul]
type = VelMul
triggerall = var(5) = 2
trigger1 = AnimElemTime(30) > 0
x = 0.95

[State 3151, VelSet]
type = VelSet
trigger1 = AnimElem = 32
x = 0

[State 3151, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 30
stateType = A
physics = N

[State 3151, Dust Helper]
type = Helper
trigger1 = AnimElem = 30
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 3151, Oniyaki Fire Helper]
type = Helper
trigger1 = AnimElem = 30
helperType = Normal
stateNo = 1205
ID = 1205
name = "Oniyaki Fire Helper"
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3151, Aragami Hits]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 34
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3151, Final Aragami Hits]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 24,24
guard.pauseTime = 24,24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -4, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 54
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3151, Ground Oniyaki Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 29
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 39
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3151, Air Oniyaki Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 30
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -2.16, -12.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -12.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 64
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3151, Flame Particles]
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

[State 3151, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 33
moveType = I

[State 3151, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3152


;Landing
[StateDef 3152]
type = S
anim = 1221
physics = N
moveType = I
velSet = 0,0

[State 3152, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3152, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3152, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3152, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<524 SHIKI: KAMIGOMI>=============================
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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 10,-66
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = !Time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 3300, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3300,0
channel = 0

[State 3300, Voice 2]
type = PlaySnd
trigger1 = !AnimTime
value = 3300,1
channel = 0

[State 3300, Safety]
type = SuperPause
trigger1 = Animelem = 4 && NumEnemy
trigger1 = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
trigger1 = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020, 5040])
time = 0
p2DefMul = 1
anim = -1
sound = -1
darken = 0

[State 3300, HitDef]
type = HitDef
trigger1 = AnimElem = 4 && !var(43)
attr = S, HT
hitFlag = M
priority = 7, Miss
getPower = 0, 0
givePower = 0, 0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -60
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
numHits = 0
p1stateno = 3301

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Connected
[StateDef 3301]
type = S
physics = S
anim = 3301
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 3301, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3301, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3305

[State 3301, TargetBind]
type = TargetBind
trigger1 = NumTarget
pos = 15,0

[State 3301, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3301, Explosion Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 5
value = 1500,2
channel = 3

[State 3301, Explosion Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(5) = 3
value = 1500,2
channel = 4

[State 3301, Explosion Sound 3]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(5) = 5
value = 1500,2
channel = 5

[State 3301, Explosion]
type = Explod
trigger1 = AnimElem = 5
anim = 1535
sprPriority = 2
posType = P1
pos = 29,-80
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3301, Explosion 2]
type = Explod
trigger1 = AnimElemTime(5) = 3
anim = 1535
sprPriority = 2
posType = P1
pos = 35,-98
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3301, Explosion 3]
type = Explod
trigger1 = AnimElemTime(5) = 5
anim = 1535
sprPriority = 2
posType = P1
pos = 46,-47
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3301, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5
value = floor(ifElse(84 * fvar(11) < 7, -7, -84 * fvar(11)))
kill = 0

[State 3301, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 5
value = 36

[State 3301, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 5
time = 18
ampl = 6
freq = 120

[State 3301, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 5
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3301, End]
type = ChangeState
trigger1 = !AnimTime
value = 3310


;Kamigomi (Target)
[Statedef 3305]
type = S
moveType = H
physics = N
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 3305, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3305, ChangeAnim]
type = ChangeAnim
trigger1 = HitShakeOver
value = 5005
elem = 1

[State 3305, PalFX]
type = PalFX
trigger1 = Time = 65
time = 26
mul = 128,128,128
sinAdd = 96,96,96,4

[State 3305, SelfState]
type = SelfState
trigger1 = Time = 93
value = 0
ctrl = 1


;Success
[StateDef 3310]
type = S
moveType = A
physics = N
anim = 3310
ctrl = 0
velSet = 0,0

[State 3310, AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,160,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul= 0.75,0.75,0.75
trans = Add1

[State 3310, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3310,0
channel = 0

[State 3310, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 51
value = 3310,1
channel = 0

[State 3310, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 36
trigger2 = AnimElem = 11 || AnimElem = 42
trigger3 = AnimElem = 17 || AnimElem = 26
value = 1000,2
channel = 1

[State 3310, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 48
value = 40,0
channel = 3

[State 3310, Dokugami Fire Explod]
type = Explod
trigger1 = AnimElem = 5 || AnimElem = 36
anim = 1105
ID = 3310
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3310, Tsumi Yomi Fire Explod]
type = Explod
trigger1 = AnimElem = 11 || AnimElem = 42
anim = 1115
ID = 3310
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3310, Aragami Fire Explod]
type = Explod
trigger1 = AnimElem = 17 || AnimElem = 26
anim = 1005
ID = 3310
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3310, Batsu Yomi Fire Explod]
type = Explod
trigger1 = AnimElem = 48
anim = 1125
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3310, Oniyaki Fire Helper]
type = Helper
trigger1 = AnimElem = 51
helperType = Normal
stateNo = 1205
ID = 1205
name = "Oniyaki Fire Helper"
posType = P1
pos = 0,20
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3310, RemoveExplod]
type = RemoveExplod
triggerAll = NumExplod(3310)
trigger1 = AnimElem = 9 || AnimElem = 40
trigger2 = AnimElem = 14 || AnimElem = 45
ID = 3310

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15
trigger2 = AnimElem = 24
x = 6

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 17
trigger2 = AnimElem = 26
x = 9

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 27
x = 13

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 33
x = 12

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 34
x = 18

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 35
x = 14

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 36
x = 10

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 40
x = 22

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 41
x = 22

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 42
x = 12

[State 3310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 48
stateType = A
physics = N

[State 3310, Dust Helper]
type = Helper
trigger1 = AnimElem = 48
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kamigomi Dust"
posType = P1
ownPal = 1

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 45
x = 16

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 48
x = 3
y = -5.5

[State 3310, VelMul]
type = VelMul
trigger1 = AnimElemTime(48) >= 2
x = 0.9

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 56
x = 0

[State 3310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(51) > 0
y = 0.47

[State 3310, Dokugami Hits]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5 || AnimElem = 36
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Tsumi Yomi Hits]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 12 || AnimElem = 43
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -67
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Aragami Hits]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 18 || AnimElem = 27
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 36
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Batsu Yomi Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 49
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 47
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Oniyaki Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 53
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 24,24
guard.pauseTime = 24,24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 60
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3310, Flame Particles]
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

[State 3310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 56
moveType = I

[State 3310, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3152




;========================<1999 SHIKI: KIRI HONOO>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
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
trigger1 = Time = 3
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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3400, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 43,-87
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElem = 27
value = 3400,0
channel = 0

[State 3400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9 || AnimElem = 20 || AnimElem = 28 || AnimElem = 35
value = 1,2
channel = 1

[State 3400, Explosion Sound 1]
type = PlaySnd
trigger1 = NumExplod(3400)
value = 1500,2
channel = 3
ignoreHitPause = 1
persistent = 0

[State 3400, Explosion Sound 2]
type = PlaySnd
trigger1 = NumExplod(3400)
value = 1500,2
channel = 4
ignoreHitPause = 1
persistent = 0

[State 3400, Explosion Sound 3]
type = PlaySnd
trigger1 = NumExplod(3400)
value = 1500,2
channel = 5
ignoreHitPause = 1
persistent = 0

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 31
x = 12

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 9

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 21
x = 13

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
x = 35

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 32
x = 4

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 36
x = 0

[State 3400, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(10) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,12
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), (var(36) := -71)
hitSound = S3,0
numHits = 0

[State 3400, Aragami Hit]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,12
guard.pauseTime = 4,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -4.16,0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Ground Oniyaki Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 21
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,12
guard.pauseTime = 4,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 29
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,12
guard.pauseTime = 4,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 40
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 37
ID = 3400
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -5.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 9), var(36) := -101
palFX.time = 53
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, Explosion 1]
type = Explod
trigger1 = AnimElemTime(37) >= 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
anim = 1535
ID = 3400
sprPriority = 2
posType = P1
pos = 38,-109
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3400, Explosion 2]
type = Explod
trigger1 = AnimElemTime(37) >= 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
anim = 1535
sprPriority = 2
posType = P1
pos = 44,-127
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3400, Explosion 3]
type = Explod
trigger1 = AnimElemTime(37) >= 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
anim = 1535
sprPriority = 2
posType = P1
pos = 55,-76
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3400, Flame Particles]
type = Helper
trigger1 = AnimElemTime(37) >= 0
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

[State 3400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 38
moveType = I

[State 3400, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX 1999 SHIKI: KIRI HONOO>=============================
[StateDef 3450]
type = S
physics = N
moveType = A
anim = 3450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3450, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3450, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3450, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3450, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3450, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3450, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3450, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 43,-87
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3450, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3450, Voice]
type = PlaySnd
trigger1 = AnimElem = 32
value = 3400,0
channel = 0

[State 3450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 10 || AnimElem = 16 || AnimElem = 25 || AnimElem = 33 || AnimElem = 40
value = 1,2
channel = 1

[State 3400, Explosion Sound 1]
type = PlaySnd
trigger1 = NumExplod(3400)
value = 1500,2
channel = 3
ignoreHitPause = 1
persistent = 0

[State 3400, Explosion Sound 2]
type = PlaySnd
trigger1 = NumExplod(3400)
value = 1500,2
channel = 4
ignoreHitPause = 1
persistent = 0

[State 3400, Explosion Sound 3]
type = PlaySnd
trigger1 = NumExplod(3400)
value = 1500,2
channel = 5
ignoreHitPause = 1
persistent = 0

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 16
trigger3 = AnimElem = 36
x = 12

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 18

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 14

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 10

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 26
x = 13

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 25
x = 35

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 14
trigger1 = AnimElem = 15
x = 22

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 21
x = -11

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 8

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 37
x = 4

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 15
trigger2 = AnimElem = 41
x = 0

[State 3450, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(11) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,12
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), (var(36) := -71)
hitSound = S3,0
numHits = 0

[State 3450, Dokugami Hit]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 11
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
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -4.16,0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Tsumi Yomi Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,6
guard.pauseTime = 6,6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -4.16,0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Ground Oniyaki Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 26
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
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 34
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 40
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Hit 5]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 42
ID = 3400
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -5.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 9), var(36) := -101
palFX.time = 53
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Explosion 1]
type = Explod
trigger1 = AnimElemTime(42) >= 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
anim = 1535
ID = 3400
sprPriority = 2
posType = P1
pos = 38,-109
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3450, Explosion 2]
type = Explod
trigger1 = AnimElemTime(42) >= 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
anim = 1535
sprPriority = 2
posType = P1
pos = 44,-127
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3450, Explosion 3]
type = Explod
trigger1 = AnimElemTime(42) >= 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
anim = 1535
sprPriority = 2
posType = P1
pos = 55,-76
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3450, Flame Particles]
type = Helper
trigger1 = AnimElemTime(37) >= 0
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

[State 3450, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 43
moveType = I

[State 3450, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SAISHUU KESSEN OUGI "REISHIKI">=============================
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
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
trigger1 = 1
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

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
trigger1 = 1
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 28,-108
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3500,0
channel = 0

[State 3500, Fire Sound 1]
type = PlaySnd
trigger1 = AnimElem = 20
value = 3010,0
channel = 3

[State 3500, Fire Sound 2]
type = PlaySnd
trigger1 = AnimElem = 34
trigger2 = AnimElem = 41
trigger3 = AnimElem = 48
trigger4 = AnimElem = 52
value = 1000,2
channel = 4

[State 3500, Fire Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3005
ID = 3005
removeTime = 36
sprPriority = 2
posType = P1
pos = 27,-100
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 3500, Fire Fade Away Explod]
type = Explod
trigger1 = AnimElem = 14
anim = 3006
sprPriority = 4
posType = P1
pos = 13,-46
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1

[State 3500, Yami Barai Startup FX]
type = Explod
trigger1 = AnimElem = 20
anim = 1604
sprPriority = 3
posType = p1
pos = 0,0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3500, Dokugami Fire Explod]
type = Explod
trigger1 = AnimElem = 34
anim = 1105
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3500, Tsumi Yomi Fire Explod]
type = Explod
trigger1 = AnimElem = 41
anim = 1115
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3500, Batsu Yomi Fire Explod]
type = Explod
trigger1 = AnimElem = 48
anim = 1125
bindtime = -1
sprPriority = 2
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3500, Mushiki Pillar]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 3105
ID = 3105
name = "Mushiki Pillar"
posType = P1
pos = 48,0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3500, PosAdd]
type = PosAdd
trigger1 = AnimElem = 31
trigger2 = AnimElem = 41
x = 12

[State 3500, PosAdd]
type = PosAdd
trigger1 = AnimElem = 32
x = 18

[State 3500, PosAdd]
type = PosAdd
trigger1 = AnimElem = 33
x = 14

[State 3500, PosAdd]
type = PosAdd
trigger1 = AnimElem = 34
x = 10

[State 3500, PosAdd]
type = PosAdd
trigger1 = AnimElem = 44
x = 16

[State 3500, PosAdd]
type = PosAdd
trigger1 = AnimElem = 39
trigger2 = AnimElem = 40
x = 22

[State 3500, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 48
stateType = A
physics = N

[State 3500, Dust Helper]
type = Helper
trigger1 = AnimElem = 48
helperType = Normal
stateNo = 8100
ID = 8100
name = "Reishiki Dust"
posType = P1
ownPal = 1

[State 3500, VelSet]
type = VelSet
trigger1 = AnimElem = 48
x = 3
y = -5.5

[State 3500, VelMul]
type = VelMul
trigger1 = AnimElemTime(48) >= 2
x = 0.9

[State 3500, VelSet]
type = VelSet
trigger1 = AnimElem = 56
x = 0

[State 3500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(51) >= 0
y = 0.47

[State 3500, Dokugami Afterimage Helper]
type = Helper
trigger1 = AnimElem = 29
trigger2 = AnimElemTime(29) = 5
trigger3 = AnimElemTime(29) = 10
helperType = Normal
stateNo = 3505
ID = 3505
name = "Dokugami Afterimage"
ownPal = 1

[State 3500, Tsumi Yomi Afterimage Helper]
type = Helper
trigger1 = AnimElem = 38
trigger2 = AnimElemTime(38) = 5
trigger3 = AnimElemTime(38) = 10
helperType = Normal
stateNo = 3506
ID = 3506
name = "Tsumi Yomi Afterimage"
ownPal = 1

[State 3500, Batsu Yomi Afterimage Helper]
type = Helper
trigger1 = AnimElem = 47
trigger2 = AnimElemTime(47) = 5
trigger3 = AnimElemTime(47) = 10
helperType = Normal
stateNo = 3507
ID = 3507
name = "Batsu Yomi Afterimage"
ownPal = 1

[State 3500, Oniyaki Fire Helper]
type = Helper
trigger1 = AnimElem = 51
helperType = Normal
stateNo = 1205
ID = 1205
name = "Oniyaki Fire Helper"
posType = P1
pos = 0,20
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3500, Dokugami Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 35
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -77
palFX.time = 32
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, Tsumi Yomi Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 42
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
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
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -67
palFX.time = 32
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, Batsu Yomi Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 49
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 41
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, Oniyaki Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 53
attr = A, HA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -70
palFX.time = 60
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, AfterImage Off]
type = AfterImageTime
trigger1 = AnimElemTime(29) >= 0 && AnimElemTime(58) < 0
time = 0

[State 3500, Flame Particles]
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

[State 3500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 56
moveType = I

[State 3500, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3152
