; _______________________________
;| Yuri by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================< SPECIAL STATES >=======================================
;============================================================================================

;======================< KOUOU KEN >=============================
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[State 1000, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "qcfz", 2, ifelse(command = "qcfy", 1, 0))
[State 1000, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 2, ifelse(random < 500, 1, 0))
[State 1000, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1002, ifelse(var(10) = 1, 1001, 1000))

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 7
channel = 0
[State 1000, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 0

[State 1000, FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1004
ID = 1004
name = "Ko'ou Ken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, Kouou Ken]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1005
ID = 1000
name = "Ko'ou Ken"
postype = p1
pos = 64, -68
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< EX KOUOU KEN >=============================
[Statedef 1020]
type = S
physics = S
movetype = A
anim = 1020
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500
facep2 = 1

[State 1020, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1020, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1020, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1020, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1020, ExFX]
type = explod
trigger1 = !time
anim = 8410
sprpriority = 3
postype = p1
pos = -38, -82
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1020, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 7
channel = 0
[State 1020, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 0

[State 1020, FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1004
ID = 1004
name = "Kouou Ken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1020, Vel]
type = velset
trigger1 = animelem = 4
x = 6

[State 1020, Kouou Ken]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1025
ID = 1020
name = "Kouou Ken"
postype = p1
pos = 64, -68
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1020, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< CHOU UPPER >=============================
[Statedef 1100]
type = S
physics = N
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[State 1100, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "dfz", 2, ifelse(command = "dfy", 1, 0))
[State 1100, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 0, ifelse(random < 500, 1, 2))
[State 1100, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1102, ifelse(var(10) = 1, 1101, 1100))

[State 1100, nothitby]
type = nothitby
trigger1 = (anim = [1101, 1102]) && time <= 6
value = SCA
time = 1
ignorehitpause = 1

[State 1100, Vel]
type = velmul
trigger1 = animelemtime(4) >= 0
x = 0.975
[State 1100, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.6
[State 1100, Vel]
type = velset
trigger1 = anim = 1100 && animelem = 4
trigger2 = (anim = [1101, 1102]) && animelem = 2
x = ifelse(anim = 1102, 5, ifelse(anim = 1101, 4.5, 4))
[State 1100, Vel]
type = velset
trigger1 = animelem = 4
y = ifelse(anim = 1102, -10, ifelse(anim = 1101, -8, -6))

[State 1100, statetype]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
[State 1100, statetype]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 10
channel = 0
[State 1100, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 40
[State 1100, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (ifelse(var(10) = 2, 49, ifelse(var(10) = 1, 63, 90))) < 7, 7, fvar(11) * (ifelse(var(10) = 2, 49, ifelse(var(10) = 1, 63, 90))))), ifelse(var(10) = 2, 7, ifelse(var(10) = 1, 8, 11))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; ifelse(var(10) = 2, 64, ifelse(var(10) = 1, 57, 40))
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1100, Hit]
type = hitdef
trigger1 = anim = 1100 && animelem = 4 && !movecontact && !movereversed
trigger2 = (anim = 1101 || anim = 1102) && animelem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (ifelse(var(10) = 2, 28, ifelse(var(10) = 1, 35, 49))) < 7, 7, fvar(11) * (ifelse(var(10) = 2, 28, ifelse(var(10) = 1, 35, 49))))), 7
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; ifelse(var(10) = 2, 58, ifelse(var(10) = 1, 45, 39))
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1100, hit -]
type = hitdef
trigger1 = var(14) >= 1
trigger1 = animelem = 3
attr = S, SA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (ifelse(var(10) = 2, 49, ifelse(var(10) = 1, 63, 90))) < 7, 7, fvar(11) * (ifelse(var(10) = 2, 49, ifelse(var(10) = 1, 63, 90))))), ifelse(var(10) = 2, 7, ifelse(var(10) = 1, 8, 11))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; ifelse(var(10) = 2, 64, ifelse(var(10) = 1, 57, 40))
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1100, hit -]
type = hitdef
triggerall = var(14) >= ifelse(!var(10) || !movecontact, 1, 2)
trigger1 = anim = 1100 && animelem = 4 && !movecontact && !movereversed
trigger2 = (anim = 1101 || anim = 1102) && animelem = 4
attr = A, SA
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (ifelse(var(10) = 2, 28, ifelse(var(10) = 1, 35, 49))) < 7, 7, fvar(11) * (ifelse(var(10) = 2, 28, ifelse(var(10) = 1, 35, 49))))), 7
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; ifelse(var(10) = 2, 58, ifelse(var(10) = 1, 45, 39))
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1100, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1105


;--- LAND ---
[Statedef 1105]
type = S
physics = S
ctrl = 0
anim = 1105
velset = 0, 0
movehitpersist = 1
[State 1105, Pos]
type = posset
trigger1 = 1
y = 0
[State 1105, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1105, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1105, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< DOUBLE CHOU UPPER >=============================
[Statedef 1110]
type = S
physics = N
movetype = A
anim = 1110
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)

[State 1110, juggle]
type = varset
trigger1 = !time
var(14) = 0

[State 1110, Button]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 1110, Vel]
type = velmul
trigger1 = animelemtime(3) >= 0
x = 0.975
[State 1110, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.4
[State 1110, Vel]
type = velset
trigger1 = animelem = 3
x = 3
y = -10
[State 1110, Vel]
type = velset
trigger1 = vel y >= 0
x = 0

[State 1110, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
[State 1110, statetype]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 1110, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 0
channel = 0
[State 1110, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1110, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 41
[State 1110, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -46
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 84
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 3
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 21)), 7
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -98
hitsound = s2, 2
guardsound = s3, 0
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 69
air.recover = 1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1110, hit -]
type = hitdef
trigger1 = var(14) >= 1
trigger1 = animelem = 2
attr = S, SA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -46
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 84
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1110, hit -]
type = hitdef
trigger1 = var(14) >= 2
trigger1 = animelem = 3
attr = A, SA
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 21)), 7
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -98
hitsound = s2, 2
guardsound = s3, 0
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 69
air.recover = 1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1110, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1112


;--- LAND ---
[Statedef 1112]
type = S
physics = S
ctrl = 0
anim = 1112
velset = 0, 0
movehitpersist = 1
[State 1112, Pos]
type = posset
trigger1 = 1
y = 0
[State 1112, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1112, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1112, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< EX CHOU UPPER >=============================
[Statedef 1120]
type = S
physics = N
movetype = A
anim = 1120
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500
facep2 = 1

[State 1120, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1120, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1120, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1120, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1120, ExFX]
type = explod
trigger1 = !time
anim = 8410
sprpriority = 3
postype = p1
pos = -6, -54
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1120, Vel]
type = velmul
trigger1 = animelemtime(6) < 0
x = 0.85
[State 1120, Vel]
type = velmul
trigger1 = animelemtime(6) >= 0
x = 0.975
[State 1120, Accel]
type = veladd
trigger1 = animelemtime(6) >= 0
y = 0.6
[State 1120, Vel]
type = velset
trigger1 = animelem = 2
x = 12
[State 1120, Vel]
type = velset
trigger1 = animelem = 6
x = 6
y = -10

[State 1120, statetype]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
[State 1120, statetype]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 10
channel = 0
[State 1120, Snd]
type = playsnd
trigger1 = animelem = 6
value = 1, 2
channel = 1

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 6
value = 0, 40
[State 1120, Dust]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1120, Hit]
type = hitdef
trigger1 = animelem = 5
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 75 < 7, 7, fvar(11) * 75)), 10
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 65
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1120, Hit]
type = hitdef
trigger1 = animelem = 6
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 50
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1120, hit -]
type = hitdef
trigger1 = var(14) >= 2
trigger1 = animelem = 5
attr = S, SA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 75 < 7, 7, fvar(11) * 75)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 65
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1120, hit -]
type = hitdef
trigger1 = var(14) >= 3
trigger1 = animelem = 6
attr = A, SA
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 50
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1120, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1105


;======================< EX DOUBLE CHOU UPPER >=============================
[Statedef 1130]
type = S
physics = N
movetype = A
anim = 1130
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500

[State 1130, juggle]
type = varset
trigger1 = !time
var(14) = 0

[State 1130, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1130, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1130, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1130, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1130, ExFX]
type = explod
trigger1 = !time
anim = 8410
sprpriority = 3
postype = p1
pos = 17, -42
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1130, Vel]
type = velset
trigger1 = animelem = 2
x = 5
[State 1130, Vel]
type = velset
trigger1 = animelem = 3
y = -10

[State 1130, Vel]
type = velmul
trigger1 = animelemtime(3) >= 0
x = 0.975
[State 1130, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.6

[State 1130, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
[State 1130, statetype]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 0
channel = 0
[State 1130, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 41
[State 1130, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1130, Hit]
type = hitdef
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -46
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 63
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1130, Hit]
type = hitdef
trigger1 = animelem = 3
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 15 < 7, 7, fvar(11) * 15)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -98
hitsound = s2, 2
guardsound = s3, 0
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 49
air.recover = 1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1130, hit -]
type = hitdef
trigger1 = var(14) >= 1
trigger1 = animelem = 2
attr = S, SA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -46
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 63
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1130, hit -]
type = hitdef
trigger1 = var(14) >= 2
trigger1 = animelem = 3
attr = A, SA
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 15 < 7, 7, fvar(11) * 15)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -98
hitsound = s2, 2
guardsound = s3, 0
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 49
air.recover = 1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1130, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1112


;======================< TRIPLE CHOU UPPER >=============================
[Statedef 1140]
type = S
physics = N
movetype = A
anim = 1140
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)

[State 1140, Button]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 1140, Vel]
type = velmul
trigger1 = animelemtime(3) >= 0
x = 0.975
[State 1140, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.4
[State 1140, Vel]
type = velset
trigger1 = vel y >= 0
x = 0
[State 1140, Vel]
type = velset
trigger1 = animelem = 3
x = 3
y = -10

[State 1140, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
[State 1140, statetype]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 1140, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 12
channel = 0
[State 1140, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1140, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 41
[State 1140, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1140, Hit]
type = hitdef
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 82
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1140, Hit]
type = hitdef
trigger1 = animelem = 3
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 68
air.recover = 1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1140, hit -]
type = hitdef
trigger1 = var(14) >= 3
trigger1 = animelem = 2
attr = S, SA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 82
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1140, hit -]
type = hitdef
trigger1 = var(14) >= 4
trigger1 = animelem = 3
attr = A, SA
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 68
air.recover = 1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 1140, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1105


;======================< RAIOU KEN >=============================
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[State 1200, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "qcfc", 2, ifelse(command = "qcfb", 1, 0))
[State 1200, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 1, ifelse(random < 500, 0, 2))
[State 1200, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1202, ifelse(var(10) = 1, 1201, 1200))

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40
[State 1200, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1200, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(anim = 1202, 4, ifelse(anim = 1201, 3.25, 2.5))
y = -7.47

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N
[State 1200, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.47

[State 1200, Anim]
type = changeanim
triggerall = p2bodydist x <= 0
trigger1 = (anim = 1200 || anim = 1201) && animelemtime(3) >= 0 && animelemtime(6) < 0
trigger2 = anim = 1202 && animelemtime(3) >= 0 && animelemtime(14) < 0
value = anim
elem = ifelse((anim = 1202), 14, 6)

[State 1200, Snd]
type = playsnd
trigger1 = (anim = 1200 || anim = 1201) && animelem = 4
trigger2 = anim = 1202 && animelem = 8
trigger3 = animelemtime(3) >= 0 && p2bodydist x <= 0
value = 5, 8
channel = 0
persistent = 0
[State 1200, Snd]
type = playsnd
trigger1 = (anim = 1200 || anim = 1201) && animelem = 6
trigger2 = anim = 1202 && animelem = 14
value = 7, 5

[State 1200, FX]
type = helper
triggerall = !numhelper(1204)
trigger1 = (anim = 1200 || anim = 1201) && animelemtime(4) >= 0 && animelemtime(7) < 0
trigger2 = anim = 1202 && animelemtime(12) >= 0 && animelemtime(15) < 0
helpertype = normal
stateno = 1204
ID = 1204
name = "Raiouken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = (anim = 1200 || anim = 1201) && animelem = 7
trigger2 = anim = 1202 && animelem = 15
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (85 + 7 * var(10)) < 7, 7, fvar(11) * (85 + 7 * var(10)))), (11 + var(10))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -68
hitsound = s2, 2
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -6, 8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -6, 8
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
forcestand = 1
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 52
fall.xvelocity = -1.5
fall.yvelocity = -6;6.68
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 1200
forcestand = 1

[State 1200, hit -]
type = hitdef
triggerall = var(14) >= 1
trigger1 = (anim = 1200 || anim = 1201) && animelem = 7
trigger2 = anim = 1202 && animelem = 15
attr = A, SA
hitflag = MA
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (85 + 7 * var(10)) < 7, 7, fvar(11) * (85 + 7 * var(10)))), (11 + var(10))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -68
hitsound = s2, 2
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -6, 8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -6, 8
air.cornerpush.veloff = 0
forcestand = 1
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 52
fall.xvelocity = -1.5
fall.yvelocity = -6;6.68
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 1200
forcestand = 1

[State 1200, p2state]
type = targetstate
trigger1 = movehit && numtarget(1200)
trigger1 = !(target, time) && (target(1200), stateno = [5000, 5010])
value = 7070
ignorehitpause = 1

[State 1200, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1203


;--- LAND ---
[Statedef 1203]
type = S
physics = S
ctrl = 0
anim = 1203
velset = 0, 0
movehitpersist = 1
[State 1203, Pos]
type = posset
trigger1 = 1
y = 0
[State 1203, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1203, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1203, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Slammed Against Ground ---
[Statedef 7070]
type = A
movetype = H
physics = N
velset = 0, 0

[State 7070, Anim]
type = changeanim
trigger1 = 1
value = ifelse(selfanimexist(5980), 5980, 5012)

[State 7070, Vel]
type = hitvelset
trigger1 = hitshakeover
x = 1
y = 1

[State 7070, End]
type = changestate
trigger1 = hitshakeover && pos y >= 0
value = 7071

[Statedef 7071]
type = L
movetype = H
physics = N
velset = 0, 0

[State 7071, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5102), 5102, 5100)

[State 7071, hurt]
type = hitfalldamage
trigger1 = !time
[State 7071, Shake]
type = envshake
trigger1 = !time
time = 14
ampl = -4
freq = 120

[State 7071, Pos]
type = posset
trigger1 = 1
y = 0

[State 7071, Snd]
type = playsnd
trigger1 = !time
value = f7, 2
[State 7071, FX]
type = gamemakeanim
trigger1 = !time
value = 62
pos = 0, 0
under = 1

[State 7071, End]
type = changestate
trigger1 = !animtime
value = 7072


[Statedef 7072]
type = L
movetype = H
physics = N

[State 7072, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5162), 5162, 5160)

[State 7072, Pos]
type = posset
trigger1 = !time
y = 0
[State 7072, Vel]
type = velset
trigger1 = !time
y = -2.4
[State 7072, accel]
type = veladd
trigger1 = 1
y = 0.6

[State 7072, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 12
value = 5110


;======================< EX RAIOU KEN >=============================
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1220
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500
facep2 = 1

[State 1220, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1220, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1220, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1220, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1220, ExFX]
type = explod
trigger1 = !time
anim = 8410
sprpriority = 3
postype = p1
pos = 0, -60
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 41
[State 1220, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1220, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(p2bodydist x >= 240, 8, ifelse(p2bodydist x <= 0, 0, p2bodydist x / 30.0))
y = -7.47

[State 1220, statetype]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N
[State 1220, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.47

[State 1220, Anim]
type = changeanim
trigger1 = p2bodydist x <= 0
trigger1 = animelemtime(3) >= 0 && animelemtime(14) < 0
value = 1220
elem = 14

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 8
trigger2 = animelemtime(3) >= 0 && p2bodydist x <= 0
value = 5, 8
channel = 0
persistent = 0
[State 1220, Snd]
type = playsnd
trigger1 = animelem = 14
value = 7, 5

[State 1220, FX]
type = helper
trigger1 = !numhelper(1204)
trigger1 = animelemtime(12) >= 0 && animelemtime(15) < 0
helpertype = normal
stateno = 1204
ID = 1204
name = "Raiouken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1220, Hit]
type = hitdef
trigger1 = animelem = 15
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 120 < 7, 7, fvar(11) * 120)), 15
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -68
hitsound = s2, 2
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -6, 8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -6, 8
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
forcestand = 1
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 54
fall.xvelocity = -1.5
fall.yvelocity = -6;6.68
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 1220
forcestand = 1

[State 1220, hit -]
type = hitdef
trigger1 = var(14) >= 2
trigger1 = animelem = 15
attr = A, SA
hitflag = MA
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 120 < 7, 7, fvar(11) * 120)), 15
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -68
hitsound = s2, 2
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -6, 8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -6, 8
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
forcestand = 1
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 54
fall.xvelocity = -1.5
fall.yvelocity = -6;6.68
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 1220
forcestand = 1

[State 1220, target]
type = targetstate
trigger1 = movehit && numtarget(1220)
trigger1 = !(target, time) && (target(1220), stateno = [5000, 5010])
value = 7070
ignorehitpause = 1

[State 1220, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1203


;======================< RAIOU KEN >=============================
[Statedef 1250]
type = A
physics = N 
movetype = A
anim = 1250
ctrl = 0
sprpriority = 1
poweradd = 72 * !var(20)

[State 1250, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "qcfz", 2, ifelse(command = "qcfy", 1, 0))
[State 1250, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 500), 2, ifelse(random < 500, 1, 0))

[State 1250, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 1250, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 8
channel = 0
[State 1250, Snd]
type = playsnd
trigger1 = animelem = 4
value = 7, 0

[State 1250, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 1254
ID = 1254
name = "Raiouken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1250, Raiou Ken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1255
ID = 1250
name = "Raiou Ken"
postype = p1
pos = 38, -44
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1250, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1253



;--- LAND ---
[Statedef 1253]
type = S
physics = S
ctrl = 0
anim = 1253
velset = 0, 0
movehitpersist = 1
[State 1253, Pos]
type = posset
trigger1 = 1
y = 0
[State 1253, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1253, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1253, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< SAIFA >=============================
[Statedef 1300]
type = S
physics = S
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[State 1300, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "qcbz", 2, ifelse(command = "qcby", 1, 0))
[State 1300, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 250), 2, ifelse(random < 333, 1, 0))
[State 1300, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1302, ifelse(var(10) = 1, 1301, 1300))

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 6
channel = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 1

[State 1300, Saifa]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1305
ID = 1300
name = "Saifa"
postype = p1
pos = 64, -68
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1300, Anim]
type = changeanim
triggerall = animelemtime(9) >= 0 && animelemtime(10) < 0
trigger1 = !numhelper(1300)
trigger2 = numhelper(1300)
trigger2 = helper(1300), stateno = 1306
value = anim
elem = 10
[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< EX SAIFA >=============================
[Statedef 1320]
type = S
physics = S
movetype = A
anim = 1320
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500
facep2 = 1

[State 1320, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1320, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1320, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1320, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1320, ExFX]
type = explod
trigger1 = !time
anim = 8410
sprpriority = 3
postype = p1
pos = 0, -60
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1320, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 6
channel = 0
[State 1320, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 1

[State 1320, Saifa]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1325
ID = 1320
name = "Saifa"
postype = p1
pos = 64, -68
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1320, Anim]
type = changeanim
triggerall = animelemtime(9) >= 0 && animelemtime(10) < 0
trigger1 = !numhelper(1320)
trigger2 = numhelper(1320)
trigger2 = helper(1320), stateno = 1326
value = anim
elem = 10
[State 1320, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< HYAKU RETSU BINTA >=============================
[Statedef 1600]
type = S
physics = S
movetype = A
anim = 1600
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[State 1600, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "hcbc", 2, ifelse(command = "hcbb", 1, 0))
[State 1600, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2movetype = H || random < 333), 2, ifelse(random < 500, 1, 0))
[State 1600, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1602, ifelse(var(10) = 1, 1601, 1600))

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 5
channel = 0

[State 1600, Vel]
type = velset
trigger1 = animelem = 3
x = 6
[State 1600, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
physics = N

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 106
[State 1600, Dust]
type = explod
trigger1 = animelem = 3
anim = 8103
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1600, Hit]
type = hitdef
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 0, 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = 0, 0
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -55
hitsound = s2, 0
guardsound = s3, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 13
ground.slidetime = 13
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -4, -4
air.cornerpush.veloff = 0
guard.velocity = -8
airguard.velocity = -4, -4
yaccel = 0.5
fall = 1
fall.recover = 0
hitonce = 1
ID = 1600
forcestand = 1

[State 1600, hit -]
type = hitdef
trigger1 = var(14) >= 1
trigger1 = animelem = 3
attr = S, SA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = 0, 0
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = 0, 0
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -55
hitsound = s2, 0
guardsound = s3, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 13
ground.slidetime = 13
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -4, -4
air.cornerpush.veloff = 0
guard.velocity = -8
airguard.velocity = -4, -4
yaccel = 0.5
fall = 1
fall.recover = 0
hitonce = 1
ID = 1600
forcestand = 1

[State 1600, p2state]
type = targetstate
trigger1 = animelemtime(3) >= 0 && movehit && numtarget(1600)
ID = 1600
value = 1615
[State 1600, p1state]
type = changestate
trigger1 = animelemtime(3) >= 0 && movehit && numtarget(1600)
value = 1610

[State 1600, blocked]
type = changestate
trigger1 = animelemtime(3) >= 0 && movehit && !numtarget(1600)
trigger2 = animelemtime(3) >= 0 && (moveguarded || movereversed)
value = 1606
[State 1600, End]
type = changestate
trigger1 = time >= (16 + var(10) * 9)
trigger2 = frontedgebodydist <= 0
trigger2 = time >= (6 + var(10) * 2)
value = 1605


;--- MISS ---
[Statedef 1605]
type = S
physics = N
ctrl = 0
anim = 1605

[State 1605, Vel]
type = velmul
trigger1 = 1
x = 0.9
[State 1605, Snd]
type = playsnd
trigger1 = animelem = 1
value = 0, 103
[State 1605, Dust]
type = explod
trigger1 = animelem = 1
anim = 8103
sprpriority = 3
postype = p1
pos = 27, 0
vel = 3, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1605, Vel]
type = velset
trigger1 = animelemtime(4) >= 0
x = 0
[State 1600, statetype]
type = statetypeset
trigger1 = animelemtime(4) >= 0
physics = S
[State 1605, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- BLOCKED ---
[Statedef 1606]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 1606
ctrl = 0
sprpriority = 1

[State 1606, Vel]
type = velset
trigger1 = !time
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 1606, Accel]
type = veladd
trigger1 = 1
y = 0.5
[State 1606, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1607


[Statedef 1607]
type = S
physics = S
ctrl = 0
anim = 1607
velset = 0, 0
[State 1607, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 1607, Pos]
type = posset
trigger1 = 1
y = 0
[State 1607, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1607, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 1607, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- HIT ---
[Statedef 1610]
type = S
physics = S
movetype = A
anim = 1610
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1610, grabsnd]
type = playsnd
trigger1 = !time
value = 0, 800

[State 1610, Anim]
type = changeanim
triggerall = animelemtime(18) < 0
trigger1 = var(10) = 0 && animelemtime(10) >= 0
trigger2 = var(10) = 1 && animelemtime(14) >= 0
value = 1610
elem = 18

[State 1610, target]
type = targetfacing
trigger1 = 1
value = -1
[State 1610, target]
type = targetstate
trigger1 = numtarget(1600)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15 || animelem = 17
ID = 1600
value = 1616
[State 1610, target]
type = targetstate
trigger1 = numtarget(1600) && animelem = 18
ID = 1600
value = 1617

[State 1610, Bind]
type = targetbind
trigger1 = numtarget(1600) && animelemtime(21) < 0
ID = 1600
pos = 16, 0
[State 1610, Bind]
type = targetbind
trigger1 = numtarget(1600) && animelemtime(21) < 0
trigger1 = (target(1600), anim = [1631, 1634])
ID = 1600
pos = 28, -78
[State 1610, Bind]
type = targetbind
trigger1 = numtarget(1600) && animelem = 21
ID = 1600
pos = 38, -16
[State 1610, Bind]
type = targetbind
trigger1 = numtarget(1600) && animelem = 21
trigger1 = (target(1600), anim = [1631, 1634])
ID = 1600
pos = 38, -78 -(target(1600), const(size.head.pos.y))

[State 1610, damage]
type = targetlifeadd
trigger1 = numtarget(1600)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15 || animelem = 17
ID = 1600
value = ceil(ifelse(7 * fvar(11) < 7, -7, -7 * fvar(11)))
kill = 0
[State 1610, damage]
type = targetlifeadd
trigger1 = numtarget(1600) && animelem = 21
ID = 1600
value = ceil(ifelse(76 * fvar(11) < 7, -7, -76 * fvar(11)))
kill = 1

[State 1610, givepower]
type = targetpoweradd
trigger1 = numtarget(1600)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15 || animelem = 17 || animelem = 21
ID = 1600
value = 36

[State 1610, Hit]
type = hitadd
trigger1 = numtarget(1600)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15 || animelem = 17 || animelem = 21
value = 1
[State 1610, hitcount]
type = varadd
trigger1 = numtarget(1600)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15 || animelem = 17 || animelem = 21
var(13) = 1

[State 1610, Snd]
type = playsnd
trigger1 = animelem = 20
value = 4, 3
channel = 0

[State 1610, slap]
type = playsnd
trigger1 = numtarget(1600)
trigger1 = animelem = 3 || animelem = 7 || animelem = 11 || animelem = 15 || animelem = 21
value = 7, 3
[State 1610, slap]
type = playsnd
trigger1 = numtarget(1600)
trigger1 = animelem = 5 || animelem = 9 || animelem = 13 || animelem = 17
value = 7, 4

[State 1610, slap]
type = playsnd
triggerall = !numtarget(1600)
trigger1 = animelem = 3 || animelem = 7 || animelem = 11 || animelem = 15 || animelem = 21
trigger2 = animelem = 5 || animelem = 9 || animelem = 13 || animelem = 17
value = 1, 0
channel = 1

[State 1610, Shake]
type = envshake
trigger1 = numtarget(1600)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15 || animelem = 17
time = 6
ampl = 2
freq = 120
[State 1610, Shake]
type = envshake
trigger1 = numtarget(1600) && animelem = 22
time = 14
ampl = 4
freq = 120

[State 1610, bishi]
type = helper
trigger1 = numtarget(1600)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15 || animelem = 17
helpertype = normal
stateno = 1613
ID = 1613
name = "Bishi!"
postype = p1
pos = -10 + (random % 80), -38 -(random % 80)
facing = ifelse(facing = 1, 1, -1)
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1610, Sparks]
type = explod
trigger1 = numtarget(1600) && animelem = 21
anim = 8020 + (random % 8)
sprpriority = 5
postype = p1
pos = 38, -78
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State 1610, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 1615]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
[State 1615, Anim]
type = changeanim2
trigger1 = !time
value = ifelse(const(size.head.pos.y) >= -60, 1631, 1615)
[State 1615, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 0
[State 1615, Safety]
type = selfstate
trigger1 = time >= 180
value = 0
ctrl = 1

[Statedef 1616]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
[State 1616, Anim]
type = changeanim2
trigger1 = !time
value = ifelse(const(size.head.pos.y) >= -60, 1632, 1616)
[State 1616, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 0


[Statedef 1617]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
[State 1617, Anim]
type = changeanim2
trigger1 = !time
value = ifelse(const(size.head.pos.y) >= -60, 1633, 1617)
[State 1617, Camera]
type = screenbound
trigger1 = animelemtime(3) < 0
value = 0
movecamera = 1, 0
[State 1617, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N
[State 1617, End]
type = changestate
trigger1 = !animtime
value = 1618


[Statedef 1618]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0

[State 1618, Vel]
type = velset
trigger1 = !time
x = -4
y = -9
[State 1618, Accel]
type = veladd
trigger1 = 1
y = 0.5
[State 1618, fall]
type = hitfallset
trigger1 = 1
value = 1

[State 1618, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5050)
[State 1618, Anim]
type = changeanim
trigger1 = (anim = [5050, 5051])
trigger1 = vel y >= ifelse(anim = 5050, 1, -2) && selfanimexist(anim + 10)
value = anim + 10

[State 1618, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.groundlevel)
value = 5200

[State 1618, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;======================< EX HYAKU RETSU BINTA >=============================
[Statedef 1620]
type = S
physics = S
movetype = A
anim = 1620
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500
facep2 = 1

[State 1620, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1620, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1620, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1620, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1620, ExFX]
type = explod
trigger1 = !time
anim = 8410
sprpriority = 3
postype = p1
pos = 14, -62
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1620, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 5
channel = 0

[State 1620, Vel]
type = velset
trigger1 = animelem = 3
x = 8
[State 1620, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
physics = N

[State 1620, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 106
[State 1620, Dust]
type = explod
trigger1 = animelem = 3
anim = 8103
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1620, Hit]
type = hitdef
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 0, 0
getpower = 0, 0
givepower = 36, 36
pausetime = 0, 0
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -55
hitsound = s2, 0
guardsound = s3, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 13
ground.slidetime = 13
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -4, -4
air.cornerpush.veloff = 0
guard.velocity = -8
airguard.velocity = -4, -4
yaccel = 0.5
fall = 1
fall.recover = 0
hitonce = 1
ID = 1620
forcestand = 1

[State 1620, hit -]
type = hitdef
trigger1 = var(14) >= 2
trigger1 = animelem = 3
attr = S, SA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = 0, 0
getpower = 0, 0
givepower = 36, 36
pausetime = 0, 0
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -55
hitsound = s2, 0
guardsound = s3, 0
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 13
ground.slidetime = 13
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -4, -4
air.cornerpush.veloff = 0
guard.velocity = -8
airguard.velocity = -4, -4
yaccel = 0.5
fall = 1
fall.recover = 0
hitonce = 1
ID = 1620
forcestand = 1

[State 1620, p2state]
type = targetstate
trigger1 = animelemtime(3) >= 0 && movehit && numtarget(1620)
ID = 1620
value = 1615
[State 1620, p1state]
type = changestate
trigger1 = animelemtime(3) >= 0 && movehit && numtarget(1620)
value = 1630

[State 1620, blocked]
type = changestate
trigger1 = animelemtime(3) >= 0 && movehit && !numtarget(1620)
trigger2 = animelemtime(3) >= 0 && (moveguarded || movereversed)
value = 1606
[State 1620, End]
type = changestate
trigger1 = time >= 30
trigger2 = frontedgebodydist <= 0
trigger2 = time >= 6
value = 1605


;--- HIT ---
[Statedef 1630]
type = S
physics = S
movetype = A
anim = 1630
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1630, grabsnd]
type = playsnd
trigger1 = !time
value = 0, 800

[State 1630, Anim]
type = changeanim
triggerall = animelemtime(18) < 0
trigger1 = var(10) = 0 && animelemtime(10) >= 0
trigger2 = var(10) = 1 && animelemtime(14) >= 0
value = 1630
elem = 18

[State 1630, target]
type = targetfacing
trigger1 = 1
value = -1
[State 1630, target]
type = targetstate
triggerall = numtarget(1620)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15
trigger2 = animelem = 17 || animelem = 19 || animelem = 21 || animelem = 23 || animelem = 25
nimelem = 17
ID = 1620
value = 1616
[State 1630, target]
type = targetstate
trigger1 = numtarget(1620) && animelem = 26
ID = 1620
value = 1637

[State 1630, Bind]
type = targetbind
trigger1 = numtarget(1620) && animelemtime(34) < 0
ID = 1620
pos = 16, 0
[State 1630, Bind]
type = targetbind
trigger1 = numtarget(1620) && animelemtime(34) < 0
trigger1 = (target(1620), anim = [1631, 1634])
ID = 1620
pos = 28, -78
[State 1630, Bind]
type = targetbind
trigger1 = numtarget(1620) && animelem = 34
ID = 1620
pos = 38, -16
[State 1630, Bind]
type = targetbind
trigger1 = numtarget(1620) && animelem = 34
trigger1 = (target(1620), anim = [1631, 1634])
ID = 1620
pos = 38, -78 -(target(1600), const(size.head.pos.y))

[State 1630, damage]
type = targetlifeadd
triggerall = numtarget(1620)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15
trigger2 = animelem = 17 || animelem = 19 || animelem = 21 || animelem = 23 || animelem = 25
nimelem = 17
ID = 1620
value = ceil(ifelse(7 * fvar(11) < 7, -7, -7 * fvar(11)))
kill = 0
[State 1630, damage]
type = targetlifeadd
trigger1 = numtarget(1620) && animelem = 34
ID = 1620
value = ceil(ifelse(85 * fvar(11) < 7, -7, -85 * fvar(11)))
kill = 1

[State 1630, givepower]
type = targetpoweradd
triggerall = numtarget(1620)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15
trigger2 = animelem = 17 || animelem = 19 || animelem = 21 || animelem = 23 || animelem = 25 || animelem = 34
ID = 1620
value = 36

[State 1630, Hit]
type = hitadd
triggerall = numtarget(1620)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15
trigger2 = animelem = 17 || animelem = 19 || animelem = 21 || animelem = 23 || animelem = 25 || animelem = 34
value = 1
[State 1630, hitcount]
type = varadd
triggerall = numtarget(1620)
trigger1 = animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15
trigger2 = animelem = 17 || animelem = 19 || animelem = 21 || animelem = 23 || animelem = 25 || animelem = 34
var(13) = 1

[State 1630, Snd]
type = playsnd
trigger1 = animelem = 32
value = 4, 1
channel = 0

[State 1630, slap]
type = playsnd
trigger1 = numtarget(1620)
trigger1 = animelem = 3 || animelem = 7 || animelem = 11 || animelem = 15 || animelem = 19 || animelem = 23 || animelem = 34
value = 7, 3
[State 1630, slap]
type = playsnd
trigger1 = numtarget(1620)
trigger1 = animelem = 5 || animelem = 9 || animelem = 13 || animelem = 17 || animelem = 21 || animelem = 25
value = 7, 4

[State 1630, slap]
type = playsnd
triggerall = !numtarget(1620)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15
trigger2 = animelem = 17 || animelem = 19 || animelem = 21 || animelem = 23 || animelem = 25 || animelem = 34
value = 1, 0
channel = 1

[State 1630, Shake]
type = envshake
triggerall = numtarget(1620)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15
trigger2 = animelem = 17 || animelem = 19 || animelem = 21 || animelem = 23 || animelem = 25
time = 6
ampl = 2
freq = 120
[State 1630, Shake]
type = envshake
trigger1 = numtarget(1620) && animelem = 34
time = 14
ampl = 4
freq = 120

[State 1630, bishi]
type = helper
triggerall = numtarget(1620)
trigger1 = animelem = 3 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11 || animelem = 13 || animelem = 15
trigger2 = animelem = 17 || animelem = 19 || animelem = 21 || animelem = 23 || animelem = 25
helpertype = normal
stateno = 1613
ID = 1613
name = "Bishi!"
postype = p1
pos = -10 + (random % 80), -38 -(random % 80)
facing = ifelse(facing = 1, 1, -1)
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1630, Sparks]
type = explod
trigger1 = numtarget(1620) && animelem = 34
anim = 8020 + (random % 8)
sprpriority = 5
postype = p1
pos = 38, -78
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State 1630, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 1637]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
[State 1637, Anim]
type = changeanim2
trigger1 = !time
value = ifelse(const(size.head.pos.y) >= -60, 1634, 1637)
[State 1637, Camera]
type = screenbound
trigger1 = animelemtime(3) < 0
value = 0
movecamera = 1, 0
[State 1637, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N
[State 1637, End]
type = changestate
trigger1 = !animtime
value = 1638


[Statedef 1638]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0

[State 1638, Vel]
type = velset
trigger1 = !time
x = -5
y = -10
[State 1638, Accel]
type = veladd
trigger1 = 1
y = 0.5
[State 1638, fall]
type = hitfallset
trigger1 = 1
value = 1

[State 1638, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5050)
[State 1638, Anim]
type = changeanim
trigger1 = (anim = [5050, 5051])
trigger1 = vel y >= ifelse(anim = 5050, 1, -2) && selfanimexist(anim + 10)
value = anim + 10

[State 1638, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.groundlevel)
value = 5200

[State 1638, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;======================< PUNCH ZERO COUNTER >=============================
[Statedef 2900]
type = S
physics = N
movetype = A
anim = 2900
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[State 2900, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 2900, nothitby]
type = nothitby
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Vel]
type = velmul
trigger1 = animelemtime(4) >= 0
x = 0.975
[State 2900, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.6
[State 2900, Vel]
type = velset
trigger1 = animelem = 4
x = 4.5
y = -8

[State 2900, statetype]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
[State 2900, statetype]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 2900, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 10
channel = 0
[State 2900, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 2900, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 40
[State 2900, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 2
guardsound = s3, 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.0, -8.0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.0, -8.0
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 46
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
kill = 0
forcestand = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -4.0, -8.0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -4.0, -8.0
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 46
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
kill = 0
forcestand = 1

[State 2900, hit -]
type = hitdef
trigger1 = var(14) >= 1
trigger1 = animelem = 3
attr = S, SA
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 7, 14)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -56
hitsound = s2, 2
guardsound = s3, 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 46
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
kill = 0
forcestand = 1

[State 2900, hit -]
type = hitdef
trigger1 = var(14) >= ifelse(!var(10) || !movecontact, 1, 2)
trigger1 = animelem = 4
attr = A, SA
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -2.5, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 46
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
kill = 0
forcestand = 1

[State 2900, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1105


;======================< KICK ZERO COUNTER >=============================
[Statedef 2950]
type = C
physics = C
movetype = A
anim = 2950
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[State 2950, Button]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 2950, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 2, 3)
channel = 0
[State 2950, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 2900, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2950, Hit]
type = hitdef
trigger1 = animelem = 4
attr = C, SA
hitflag = MAFD
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -29
hitsound = s2, 5
guardsound = s3, 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 16 + 4 * var(9)
ground.slidetime = 16 + 4 * var(9)
ground.velocity = -1, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 12 + 4 * var(9)
air.velocity = -.5, -6
air.cornerpush.veloff = 0
down.hittime = 16 + 4 * var(9)
down.velocity = -3, -5
down.ground.cornerpush.veloff = 0;-22
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 34
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
kill = 0
forcestand = 1

[State 2950, hit -]
type = hitdef
trigger1 = var(14) >= 1 || var(17)
trigger1 = animelem = 4
attr = C, SA
hitflag = MA
guardflag = L
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
sparkno = s8020 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -29
hitsound = s2, 5
guardsound = s3, 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 16 + 4 * var(9)
ground.slidetime = 16 + 4 * var(9)
ground.velocity = -1, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 12 + 4 * var(9)
air.velocity = -.5, -6
air.cornerpush.veloff = 0
down.hittime = 16 + 4 * var(9)
down.velocity = -3, -5
down.ground.cornerpush.veloff = 0;-22
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 34
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
kill = 0
forcestand = 1

[State 2950, Type]
type = statetypeset
trigger1 = 0;animelemtime(6) >= 0
movetype = I
[State 2950, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1
