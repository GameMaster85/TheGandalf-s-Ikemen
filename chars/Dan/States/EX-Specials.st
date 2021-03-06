; ______________________________
;| Dan by Phantom.of.the.Server |
; ŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻ
;============================================================================================
;===================================< EX SPECIAL STATES >======================================
;============================================================================================

;======================< SHAKUNETSU GADOU KEN >=============================
[Statedef 1010]
type = S
physics = S
movetype = A
anim = 1010
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 1
facep2 = 1

[State 1010, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1010, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1010, width]
type = width
trigger1 = animelemtime(4) = 0
value = floor(40 * const(size.xscale))

[State 1010, Gadouken]
type = helper
trigger1 = animelemtime(4) = 1
helpertype = normal
stateno = 1015
ID = 1015
name = "Gadouken"
postype = p1
pos = floor(120 * const(size.xscale)), floor(-126 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1010, snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 19
channel = 0
[State 1010, snd]
type = playsnd
trigger1 = animelemtime(4) = 1
value = 5, 0

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< KOURYUU KEN >=============================
[Statedef 1110]
type = S
physics = S
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
poweradd = -500
juggle = 7
facep2 = 1

[State 1110, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1110, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1110, nothitby]
type = nothitby
trigger1 = anim = 1100 && animelemtime(3) < 0
value = SCA, AP
time = 1
ignorehitpause = 1

[State 1110, Vel]
type = velset
trigger1 = anim = 1100 && animelem = 3
x = 16
y = -12
[State 1110, Vel]
type = velmul
trigger1 = 1
x = 0.8
[State 1110, Vel]
type = velmul
trigger1 = vel y > 0
x = 0

[State 1110, snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 3
value = 0, 41
[State 1110, dust]
type = helper
trigger1 = anim = 1100 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1110, snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 2
value = 4, 8
channel = 0
ignorehitpause = 1
persistent = 0

[State 1110, hit]
type = hitdef
trigger1 = animelem = 2 && anim = 1100
attr = S, SA
damage = 110, 14
animtype = Medium
fall.animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -68
hitsound = s2, 3
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0.5, -5.5
air.type = Low
air.velocity = 0.5, -5.5
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 5
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
forcestand = 1

[State 1110, hit2]
type = hitdef
trigger1 = animelem = 3 && anim = 1100
attr = A, SA
damage = 42, 7
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12 / ((var(20) > 0) + 1), 12 / ((var(20) > 0) + 1)
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -82
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4, -10
air.type = Low
air.velocity = -4, -10
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1

[State 1110, statetype]
type = statetypeset
trigger1 = anim = 1100 && animelemtime(3) >= 0
statetype = A
physics = A
[State 1110, Anim]
type = changeanim
trigger1 = anim = 1100 && animelemtime(3) > 0 && vel y > -3
value = 1101

[State Idle]
type = statetypeset
trigger1 = anim != 1100
movetype = I


;======================< UPPERCUT >=============================
[Statedef 1150]
type = S
physics = S
movetype = A
anim = 1150
ctrl = 0
velset = 0, 0
poweradd = -500
juggle = ifelse((p2movetype = H && p2statetype = A), 7, 0)
facep2 = 1

[State 1150, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1150, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1150, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 1
value = SCA, AA, AT
time = 1
ignorehitpause = 1

[State 1150, snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 21
channel = 0
ignorehitpause = 1
persistent = 0
[State 1150, snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 3
channel = 1

[State 1150, hit]
type = hitdef
trigger1 = animelem = 4
attr = C, SA
damage = 100, 12
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -93
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10, 0
air.type = Low
air.velocity = -3, -6
ground.cornerpush.veloff = 0
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.ampl = 4
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1

[State 1150, hit]
type = hitdef
trigger1 = animelem = 4 && var(29)
ID = 1150
attr = C, SA
damage = 100, 12
animtype = Up
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -93
hitsound = s2, 3
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -.5, -15
air.type = Low
air.velocity = -.5, -15
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
forcestand = 1

[State 1150, p2state]
type = targetstate
trigger1 = movehit && numtarget(1150)
trigger1 = (target(1150), stateno = 5000) || (target(1150), stateno = 5010) || (target(1150), stateno = 5020)
value = 1111150
ID = 1150
ignorehitpause = 1

[State 1150, snd]
type = playsnd
trigger1 = movehit && numtarget(1150)
value = 5, 9
ignorehitpause = 1
persistent = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1150, Anim]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< DANKUU KYAKU >=============================
[Statedef 1210]
type = S
physics = S
movetype = A
anim = 1210
ctrl = 0
velset = 0, 0
poweradd = -500
juggle = 7
facep2 = 1

[State 1210, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1210, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1210, Vel]
type = velset
trigger1 = animelem = 3
x = 5
y = -3
[State 1210, statetype]
type = statetypeset
trigger1 = animelemtime(2) >= 0 && animelemtime(20) < 0
statetype = A
physics = N
[State 1210, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0 && animelemtime(20) < 0
y = 0.1
[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(20) >= 0
statetype = A
physics = A

[State 1210, snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 40
[State 1210, dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1210, snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 11
value = 3, 8
channel = 0
ignorehitpause = 1
[State 1210, snd]
type = playsnd
trigger1 = animelem = 7 || animelem = 14
value = 3, 0
channel = 0
ignorehitpause = 1
[State 1210, snd]
type = playsnd
trigger1 = animelem = 18
value = 3, 2
channel = 0
ignorehitpause = 1
[State 1210, snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 7 || animelem = 11 || animelem = 14
value = 1, 5
channel = 1
[State 1210, snd]
type = playsnd
trigger1 = animelem = 18
value = 1, 6
channel = 1

[State 1210, hit]
type = hitdef
trigger1 = animelem = 4 || animelem = 11 || animelem = 7 || animelem = 14
attr = A, SA
damage = 32, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 4 || animelem = 7), -65, -49)
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10, 0
air.type = Low
air.velocity = -4, -4
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.5
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = ifelse(var(20), -4, -8), -1.5

[State 1210, hit]
type = hitdef
trigger1 = animelem = 18
attr = A, SA
damage = 32, 7
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 14 / ((var(20) > 0) + 1), 14 / ((var(20) > 0) + 1)
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -54
hitsound = s2, 6
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -5, -5
air.type = Low
air.velocity = -5, -5
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I

[State 1210, End]
type = changestate
trigger1 = animelemtime(3) > 0 && vel y > 0 && pos y >= 0
value = 52


;======================< DANKUU KYAKU 2 >=============================
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1220
ctrl = 0
velset = 0, 0
poweradd = -500
juggle = ifelse((p2movetype = H && p2statetype = A), 7, 0)
facep2 = 1

[State 1220, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1220, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 1220, Vel]
type = velset
trigger1 = animelem = 3
x = 5
y = -5
[State 1220, statetype]
type = statetypeset
trigger1 = animelemtime(2) >= 0 && animelemtime(10) < 0
statetype = A
physics = N
[State 1220, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0 && animelemtime(10) < 0
y = 0.3
[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(10) >= 0
statetype = A
physics = A

[State 1220, snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 41
[State 1220, dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1220, snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 13
channel = 0

[State 1220, hit]
type = hitdef
trigger1 = animelem = 8
ID = 1220
attr = A, SA
damage = 80, 10
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -54
hitsound = s2, 6
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10, -5
air.type = Low
air.velocity = -10, -5
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
yaccel = 0.5
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1

[State 1220, End]
type = targetstate
trigger1 = movehit
ID = 1220
value = 1111200
persistent = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I

[State 1220, End]
type = changestate
trigger1 = animelemtime(3) > 0 && vel y > 0 && pos y >= 0
value = 52


;======================< KUUCHUU DANKUU KYAKU >=============================
[Statedef 1260]
type = A
physics = N
movetype = A
anim = 1210
ctrl = 0
poweradd = -500
juggle = 7

[State 1260, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1260, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 1260, Anim]
type = changeanim
trigger1 = !time
value = 1210
elem = 2

[State 1260, Vel]
type = velset
trigger1 = !time
x = ifelse(vel x > 0, 6, ifelse(vel x < 0, -4.5, 3))
y = -4.5
[State 1260, Accel]
type = veladd
trigger1 = anim != 41
y = 0.167

[State 1260, snd]
type = playsnd
trigger1 = anim = 1210 && (animelem = 4 || animelem = 11)
value = 3, 8
channel = 0
ignorehitpause = 1
[State 1260, snd]
type = playsnd
trigger1 = anim = 1210 && (animelem = 7 || animelem = 14)
value = 3, 0
channel = 0
ignorehitpause = 1
[State 1260, snd]
type = playsnd
trigger1 = anim = 1210 && animelem = 18
value = 3, 2
channel = 0
ignorehitpause = 1
[State 1260, snd]
type = playsnd
trigger1 = anim = 1210 && (animelem = 4 || animelem = 7 || animelem = 11 || animelem = 14)
value = 1, 5
channel = 1
[State 1260, snd]
type = playsnd
trigger1 = anim = 1210 && animelem = 18
value = 1, 6
channel = 1

[State 1260, hit]
type = hitdef
trigger1 = anim = 1210 && (animelem = 4 || animelem = 11 || animelem = 7 || animelem = 14)
attr = A, SA
damage = 32, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 4 || animelem = 7), -65, -49)
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10, 0
air.type = Low
air.velocity = -4, -4
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1

[State 1260, hit]
type = hitdef
trigger1 = anim = 1210 && animelem = 18
attr = A, SA
damage = 32, 7
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 14 / ((var(20) > 0) + 1), 14 / ((var(20) > 0) + 1)
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -54
hitsound = s2, 6
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -5, -8
air.type = Low
air.velocity = -5, -8
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1

[State 1260, End]
type = changeanim
trigger1 = anim = 1210 && animelemtime(20) >= 5
value = 41
elem = 6
[State 1260, statetype]
type = statetypeset
trigger1 = anim = 41
physics = A

[State Idle]
type = statetypeset
trigger1 = anim = 1210 && animelemtime(19) >= 0
trigger2 = anim = 41
movetype = I

[State 1260, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;======================< SAIKYOU -RYUU BOUGYO >=============================
;--- STANDING ---
[Statedef 1510]
type = S
physics = S
movetype = I
anim = 1500
velset = 0, 0
ctrl = 0
poweradd = -500
sprpriority = 1
[State 1510, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1510, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 1510, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA
[State 1510, snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0
[State 1510, pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1
[State 1510, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- CROUCHING ---
[Statedef 1511]
type = C
physics = C
movetype = I
anim = 1501
velset = 0, 0
ctrl = 0
poweradd = -500
sprpriority = 1
[State 1511, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1511, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 1511, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA
[State 1511, snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0
[State 1511, pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1
[State 1511, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;--- AERIAL ---
[Statedef 1512]
type = A
physics = A
movetype = I
anim = 1502
ctrl = 0
sprpriority = 1
[State 1512, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1512, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 1512, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA
[State 1512, Stop]
type = posfreeze
trigger1 = animelemtime(3) < 0
value = 1
[State 1512, snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0
[State 1512, pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
pos = 0, floor(-158 * const(size.yscale))
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1
