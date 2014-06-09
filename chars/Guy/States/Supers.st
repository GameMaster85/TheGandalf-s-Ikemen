; ______________________________
;| Guy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;======================================< SUPER STATES >========================================
;============================================================================================

;======================< BUSHIN GOURAI KYAKU >=============================
[Statedef 3000]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3000
velset = 0, 0
poweradd = -1000
juggle = ifelse((prevstateno = [1000, 4999]), 0, 6) * !var(20)
sprpriority = 1
facep2 = 1

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000 && animelemtime(1) = 3
value = 4, 1
channel = 0
[State 3000, Super Pause FX]
type = helper
trigger1 = anim = 3000 && animelemtime(1) = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = 35, -70
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3000, Super Pause]
type = superpause
trigger1 = anim = 3000 && animelemtime(1) = 3
time = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = anim = 3000 && animelemtime(1) = 3
fvar(5) = 0

[State 3000, NHB]
type = nothitby
trigger1 = anim = 3000 && animelemtime(2) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3000, Vel]
type = velset
trigger1 = anim = 3000 && animelemtime(2) >= 0 && animelemtime(16) < 0
x = 4
[State 3000, Vel]
type = velset
trigger1 = anim = 3000 && animelem = 20
x = -5
y = -4
[State 3000, Type]
type = statetypeset
trigger1 = anim = 3000 && animelem = 17
statetype = A
physics = N
[State 3000, Accel]
type = veladd
trigger1 = anim = 3000 && animelemtime(20) > 0
y = 0.55

[State 3000, Anim]
type = changeanim
trigger1 = anim = 3000 && animelemtime(20) > 0
trigger1 = vel y > 0 && pos y >= -5
value = 3001
persistent = 0

[State 3000, Type]
type = statetypeset
trigger1 = anim = 3001 && animelemtime(3) < 0
statetype = S
physics = S
[State 3000, Vel]
type = velset
trigger1 = anim = 3001 && animelemtime(3) < 0
x = 0
y = 0
[State 3000, Pos]
type = posset
trigger1 = anim = 3001 && animelemtime(3) < 0
y = 0

[State 3000, Vel]
type = velset
trigger1 = anim = 3001 && animelem = 3
x = 10
y = -5

[State 3000, Type]
type = statetypeset
trigger1 = anim = 3001 && animelemtime(3) >= 0
statetype = A
physics = N
[State Accel]
type = veladd
trigger1 = anim = 3001 && animelemtime(3) >= 0
y = 0.45

[State 3000, Vel]
type = velset
trigger1 = anim = 3001 && animelemtime(5) >= 0 && animelemtime(6) < 0
y = 0

[State 3000, trail]
type = explod
trigger1 = anim = 3001 && animelem = 5
anim = 1121
sprpriority = 2
postype = p1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000 && (animelem = 2 || animelem = 6 || animelem = 10)
value = 3, 8
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000 && (animelem = 13 || animelem = 17 || animelem = 19)
value = 3, 4
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 4
value = 3, 7
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000 && animelem = 2
value = 1, 1
channel = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000 && (animelem = 6 || animelem = 13)
value = 1, 2
channel = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000 && animelem = 10
value = 1, 3
channel = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000 && animelem = 17
value = 1, 5
channel = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000 && animelem = 19
trigger2 = anim = 3001 && animelem = 5
value = 1, 6
channel = 1

[State 3000, hithigh]
type = hitdef
trigger1 = anim = 3000 && (animelem = 2 || animelem = 10 || animelem = 19)
attr = S, HA
damage = 31, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = ifelse((animelem = 10), 12, 4), ifelse((animelem = 10), 12, 4)
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 2), -92, ifelse((animelem = 10), -76, -65))
hitsound = s2, ifelse((animelem = 19), 6, 3)
guardsound = s2, 0
ground.type = High
ground.hittime = 32
ground.slidetime = 32
guard.hittime = 16
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse((animelem = 19), -1, -3), -3
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1
air.fall = 1
fall.recover = 0
yaccel = 0.5

[State 3000, hitlow]
type = hitdef
trigger1 = anim = 3000 && (animelem = 6 || animelem = 13 || animelem = 17)
attr = S, HA
damage = 31, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit 
pausetime = 6, 6
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 17), -60, -58)
hitsound = s2, ifelse((animelem = 17), 6, 3)
guardsound = s2, 0
ground.type = Low
ground.hittime = 32
ground.slidetime = 32
guard.hittime = 16
ground.velocity = -5.62
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = -3, -3
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1
air.fall = 1
fall.recover = 0
yaccel = 0.5

[State 3000, hitfinal]
type = hitdef
trigger1 = anim = 3001 && animelem = 5
attr = A, SA
damage = 31, 5
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 14 / ((var(20) > 0) + 1), 14 / ((var(20) > 0) + 1)
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -77
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -6, -6
air.type = Low
air.velocity = -6, -6
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
yaccel = 0.6
forcestand = 1

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 1
value = 0, 52
persistent = 0
[State 3000, Dust]
type = explod
trigger1 = anim = 3001 && animelem = 1
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
pos = 0, 0
vel = 0, 0
ownpal = 1
scale = 0.5, 0.5
persistent = 0
pausemovetime = -1
supermovetime = -1

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 3
value = 0, 41
persistent = 0
[State 3000, Dust]
type = helper
trigger1 = anim = 3001 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = anim = 3001 && animelemtime(6) >= 0
movetype = I
[State Land]
type = changestate
trigger1 = anim = 3001 && animelemtime(6) >= 0
trigger1 = pos y > -vel y
value = 52


;======================< BUSHIN HASSOU KEN >=============================
[Statedef 3050]
type = A
physics = N
movetype = A
ctrl = 0
anim = 3050
velset = 0, 0
poweradd = -1000
juggle = ifelse(numtarget, 0, 6) * !var(20)
sprpriority = 1

[State 3050, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3050, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3050, Snd]
type = playsnd
trigger1 = animelemtime(1) = 1
value = 4, 1
channel = 0
[State 3050, Super Pause FX]
type = helper
trigger1 = animelemtime(1) = 1
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = 12, -89
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3050, Super Pause]
type = superpause
trigger1 = animelemtime(1) = 1
time = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelemtime(1) = 1
fvar(5) = 0

[State 3050, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3050, Snd]
type = playsnd
trigger1 = animelemtime(1) = 2 && statetype != A
value = 0, 41
persistent = 0
[State 3050, Dust]
type = helper
trigger1 = animelemtime(1) = 2 && statetype != A
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3050, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 3
value = 0, 41
persistent = 0
[State 3050, Dust]
type = helper
trigger1 = anim = 3001 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3050, Snd]
type = playsnd
trigger1 = animelemtime(1) = 2 && !pos y
value = 0, 41
[State 3050, Dust]
type = helper
trigger1 = animelemtime(1) = 2 && !pos y
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3050, Vel]
type = veladd
trigger1 = animelemtime(2) >= 0 && animelemtime(6) < 0
x = -.66
y = 1.1
[State 3050, Vel]
type = velset
trigger1 = animelem = 2
x = 12
y = -12
[State 3050, Vel]
type = velset
trigger1 = animelemtime(6) >= 0 && animelemtime(36) < 0
x = 1.5
y = -1.5

[State 3050, Anim]
type = changeanim
trigger1 = animelem = 6 && !movecontact
trigger2 = (animelem = 12 || animelem = 18 || animelem = 21 || animelem = 32)
trigger2 = (movecontact != [1, 12]) && (movereversed != [1, 12])
value = 3050
elem = 36
[State 3050, Anim]
type = velset
trigger1 = animelem = 36
x = 0
y = 0
[State Type]
type = statetypeset
trigger1 = animelemtime(36) >= 0
physics = A

[State 3050, trail]
type = explod
trigger1 = animelem = 34
anim = 1121
sprpriority = 2
postype = p1
pos = 0, -10
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3050, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 9 || animelem = 14
value = 3, 8
channel = 0
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 19 || animelem = 25
value = 3, 6
channel = 0
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 34
value = 3, 4
channel = 0

[State 3050, Snd]
type = playsnd
trigger1 = animelem = 9
value = 1, 2
channel = 1
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 14
value = 1, 3
channel = 1
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 19
value = 1, 3
channel = 1
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 23
value = 1, 5
channel = 1
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 25 || animelem = 34
value = 1, 6
channel = 1

[State 3050, 1sthit]
type = hitdef
trigger1 = animelem = 4
attr = A, HA
damage = 32, 5
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -86
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -1.5, -8
air.type = High
air.velocity = -1.5, ifelse(p2dist y >= 0, -7.5, -5)
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
forcestand = 1

[State 3050, hithigh]
type = hitdef
trigger1 = animelem = 9 || animelem = 14 || animelem = 19 || animelem = 25
attr = A, HA
damage = 32, 5
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, ifelse((animelem = 9), -78, ifelse((animelem = 14), -90, ifelse((animelem = 19), -92, -65)))
hitsound = s2, ifelse((animelem = 19 || animelem = 25), 6, 3)
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -1.5, -8
air.type = High
air.velocity = -1.5, ifelse(p2dist y >= 0, -6, -3.3)
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
forcestand = 1

[State 3050, hitfinal]
type = hitdef
trigger1 = animelem = 34
attr = A, HA
damage = 32, 5
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -86
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -12, -4
air.type = High
air.velocity = -12, -4
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 3050, slow]
type = pause
trigger1 = animelemtime(33) >= 0 && animelemtime(34) < 0
time = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(35) >= 0
movetype = I


;======================< TESSHINHOU >=============================
[Statedef 3100]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3100
velset = 0, 0
poweradd = -2000
juggle = ifelse((prevstateno = [1000, 4999]), 0, 6) * !var(20)
sprpriority = 1
facep2 = 1

[State 3100, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 3100, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100 && animelem = 2
value = 4, 1
channel = 0
[State 3100, Super Pause FX]
type = helper
trigger1 = anim = 3100 && animelem = 2
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = 22, -26
ownpal = 1
persistent = 0
supermovetime = 9999
[State 3100, Super Pause]
type = superpause
trigger1 = anim = 3100 && animelem = 2
time = 53
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = anim = 3100 && animelem = 2
fvar(5) = 0

[State 3100, NHB]
type = nothitby
trigger1 = time <= 14
time = 1
value = SCA
ignorehitpause = 1

[State 3100, Vel]
type = velset
trigger1 = anim = 3100 && animelemtime(3) >= 0
x = 8.5

[State 3100, steps]
type = playsnd
trigger1 = anim = 3100 && (animelem = 4 || animelem = 7)
value = 0, 100
[State 3100, Dust]
type = explod
trigger1 = anim = 3100 && (animelem = 4 || animelem = 7)
anim = 7101
ID = 7101
sprpriority = 3
postype = p1
pos = -55, 0
scale = 0.5, 0.5
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3100, Anim]
type = changeanim
triggerall = anim = 3100 && animelemtime(3) >= 0
trigger1 = !AIlevel && (command = "holda" || command = "holdb" || command = "holdc")
trigger2 = AIlevel && p2dist x <= 120
value = 3101

[State 3100, Type]
type = statetypeset
trigger1 = anim = 3101 && animelemtime(3) >= 0
statetype = A
physics = N
[State Accel]
type = veladd
trigger1 = anim = 3101 && animelemtime(11) >= 0
y = 0.45

[State 3100, Vel]
type = velset
trigger1 = anim = 3101 && animelem = 3
x = 8
y = -3
[State 3100, Accel]
type = gravity
trigger1 = anim = 3101 && animelemtime(3) > 0
[State 3100, Vel]
type = velset
trigger1 = anim = 3101 && animelemtime(5) >= 0 && animelemtime(11) < 0
y = 0

[State 3100, Anim]
type = changeanim
trigger1 = anim = 3101 && animelemtime(11) >= 0 && movehit
value = 3103
persistent = 0

[State 3100, Type]
type = statetypeset
trigger1 = anim = 3103 && animelemtime(4) > 0
physics = N
[State Accel]
type = veladd
trigger1 = anim = 3103 && animelemtime(4) > 0
y = 0.45

[State 3100, Vel]
type = velset
trigger1 = anim = 3103 && animelemtime(4) < 0
y = 0
[State 3100, Vel]
type = velset
trigger1 = anim = 3103 && animelem = 4
x = -3
y = -9

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3101 && animelem = 4
value = 3, 4
channel = 0
[State 3100, Snd]
type = playsnd
trigger1 = anim = 3103 && (animelem = 1 || animelem = 3)
value = 3, ifelse((animelem = 1), 3, 5)
channel = 0
[State 3100, Snd]
type = playsnd
trigger1 = anim = 3101 && animelem = 5
value = 1, 6
channel = 1
[State 3100, Snd]
type = playsnd
trigger1 = anim = 3103 && (animelem = 1 || animelem = 3)
value = 1, ifelse((animelem = 1), 5, 6)
channel = 1

[State 3100, Hit]
type = hitdef
trigger1 = anim = 3101 && (animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10)
attr = S, HA
damage = 36, 7
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -58
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -6, 0
air.type = Low
air.velocity = -6, -1
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1
air.fall = 1
fall.recover = 0
yaccel = 0.5

[State 3100, Hit]
type = hitdef
trigger1 = anim = 3103 && animelem = 1
attr = S, HA
damage = 36, 7
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 14, 18
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -60
hitsound = s2, 5
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -6, -12
air.type = Low
air.velocity = -6, -12
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = anim = 3103 && animelem = 3
attr = S, HA
damage = 36, 7
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14
sparkno = s7030 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -65
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -6, -12
air.type = Low
air.velocity = -6, -12
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
yaccel = 0.5
forcestand = 1

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3101 && animelem = 3
value = 0, 40
persistent = 0
[State 3100, Dust]
type = helper
trigger1 = anim = 3101 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = anim = 3101 && animelemtime(11) >= 0
movetype = I

[State 3100, End]
type = changestate
trigger1 = time >= 8 && anim = 3100
trigger1 = !AIlevel && (command = "x" || command = "y" || command = "z")
trigger2 = time >= 8 && anim = 3100 && frontedgebodydist <= 0
trigger3 = time >= 48 && anim = 3100
value = 3102

[State Land]
type = changestate
trigger1 = anim != 3100 && vel y > 0
trigger1 = pos y > -vel y
value = 52


;--- < STOP > ---
[Statedef 3102]
type = S
physics = S
movetype = I
anim = 1102
ctrl = 0
sprpriority = 1

[State 3102, as]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = noautoturn

[State 3102, Snd]
type = playsnd
trigger1 = !time
value = 5, 0
[State 3102, Dust]
type = explod
trigger1 = !time
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
pos = 70, 0
vel = 1, 0
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3102, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< BUSHIN MUSOU RENGE >=============================
[Statedef 4000]
type = S
physics = S
movetype = A
anim = 4000
ctrl = 0
velset = 0, 0
poweradd = -3000
juggle = 15
facep2 = 1
sprpriority = 1

[State 4000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1
[State 4000, Strength]
type = varset
trigger1 = var(10) != 7
var(10) = 7

[State 4000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 1
channel = 0
volume = 200
[State 4000, Super Pause FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Super Charge"
postype = p1
pos = -23, -64
ownpal = 1
persistent = 0
supermovetime = 9999
[State 4000, Super Pause]
type = superpause
trigger1 = animelem = 3
time = 60
movetime = 60
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 3
fvar(5) = 0

[State 4000, NHB]
type = nothitby
trigger1 = animelemtime(5) < 1
time = 1
value = SCA

[State 4000, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = !var(38)
trigger1 = p2dist x >= 0 && p2bodydist x <= 28
attr = S, HT
hitflag = M-
priority = 7, Miss
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 4001
animtype = Up
ground.velocity = -2, -16
air.velocity = -2, -16
sprpriority = -1
fall = 1
fall.recover = 0

[State 4000, misssnd]
type = playsnd
trigger1 = animelem = 6
value = 3, 0
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 4000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 4001]
type = S
physics = N
movetype = A
anim = 4001
ctrl = 0
velset = 0, 0
sprpriority = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 4002

[State 4001, grabsound]
type = playsnd
trigger1 = !time
value = 0, 800
[State 4001, throw]
type = targetfacing
trigger1 = !time
value = -1

[State 4001, Push]
type = playerpush
trigger1 = 1
value = 0
[State 4001, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 4001, bound]
type = screenbound
trigger1 = animelemtime(18) < 0
value = 0
[State 4001, spr]
type = sprpriority
trigger1 = animelemtime(2) >= 0
value = 1

[State 4001, fadeout]
type = allpalfx
trigger1 = animelemtime(1) = 10
time = 19
sinadd = -255, -255, -255, 76
[State 4001, afterimage]
type = afterimagetime
trigger1 = animelemtime(11) < 0
time = 0

[State 4001, BG PalFX]
type = bgpalfx
trigger1 = animelemtime(2) = -1 || animelemtime(3) = -1 || animelemtime(4) = -1 || animelemtime(5) = -1 || animelemtime(6) = -1
trigger2 = animelemtime(7) = -1 || animelemtime(8) = -1 || animelemtime(9) = -1 || animelemtime(10) = -1 || animelemtime(11) = -1
invertall = 1
add = 255, 255, 255
sinadd = -1000, -1000, -1000, 80
color = 0
time = 20
[State 4001, palfx]
type = palfx
trigger1 = animelemtime(2) = -1 || animelemtime(3) = -1 || animelemtime(4) = -1 || animelemtime(5) = -1 || animelemtime(6) = -1
trigger2 = animelemtime(7) = -1 || animelemtime(8) = -1 || animelemtime(9) = -1 || animelemtime(10) = -1 || animelemtime(11) = -1
add = -50, -50, -50
sinadd = -155, -155, -155, 80
color = 0
time = 20
[State 4001, palfx]
type = palfx
trigger1 = animelemtime(12) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1
[State 4001, BG PalFX]
type = bgpalfx
trigger1 = animelemtime(12) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
color = 256
time = 1

[State 4001, Assert]
type = assertspecial
trigger1 = animelemtime(11) < 0
flag = nobardisplay

[State 4001, fix]
type = posset
triggerall = animelem = 2
trigger1 = facing = 1 && pos x > 20
trigger2 = facing = -1 && pos x < -20
x = ifelse(pos x < -20, -20, 20)
[State 4001, Bind]
type = targetbind
trigger1 = animelemtime(2) <= 0
pos = 45, 0

[State 4001, hitadd]
type = hitadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
value = 1
[State 4001, hitdamage]
type = targetlifeadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
value = -ceil(40 * fvar(12))
kill = animelem = 11
[State 4001, hitpower]
type = targetpoweradd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
value = 36

[State 4001, HitSound]
type = playsnd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 9
value = 2, 7
[State 4001, HitSound]
type = playsnd
trigger1 = animelem = 6 || animelem = 7 || animelem = 8 || animelem = 10 || animelem = 11
value = 2, ifelse((animelem = 11), 9, 8)
[State 4001, Shake]
type = envshake
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
time = 6
freq = 120
ampl = -4

[State 4001, Sparks]
type = explod
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
anim = 7030 + (random % 8)
ID = 7000
sprpriority = 5
postype = p2
pos = -10, -60
removetime = -2
ownpal = 1
facing = -1
pausemovetime = 100
supermovetime = 100

[State 4001, throw]
type = targetstate
trigger1 = animelemtime(12) >= 0 && numtarget
value = 4003
persistent = 0

[State 4001, Type]
type = statetypeset
trigger1 = animelemtime(11) >= 0
statetype = A
movetype = I
physics = N
[State 4001, gravity]
type = gravity
trigger1 = animelemtime(11) >= 0
[State 4001, Vel]
type = velset
trigger1 = animelem = 11
x = -3
y = -8

[State 4001, End]
type = changestate
trigger1 = animelemtime(11) > 0 && vel y > 0 && pos y >= -5
value = ifelse(winko, 186, 4005)

[Statedef 4005]
type = S
movetype = I
physics = S
anim = 4005
velset = 0, 0
sprpriority = -1
ctrl = 0
[State 4005, Pos]
type = posset
trigger1 = pos y
y = 0
[State 4005, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 3
channel = 0
[State 4005, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 1
channel = 1
[State 4005, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;--- TARGET ---
[Statedef 4002]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
[State 4002, Anim]
type = changeanim2
trigger1 = !time
value = 4002
[State 4002, palfx]
type = palfx
trigger1 = animelemtime(2) = -1 || animelemtime(3) = -1 || animelemtime(4) = -1 || animelemtime(5) = -1 || animelemtime(6) = -1
trigger2 = animelemtime(7) = -1 || animelemtime(8) = -1 || animelemtime(9) = -1 || animelemtime(10) = -1 || animelemtime(11) = -1
add = -50, -50, -50
sinadd = -155, -155, -155, 80
color = 0
time = 20

[Statedef 4003]
type = S
physics = N
movetype = H
velset = -2, -16
ctrl = 0
[State 4003, BG PalFX]
type = palfx
trigger1 = !time
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1
[State 4003, End]
type = selfstate
trigger1 = time
value = 5020
