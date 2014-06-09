; ________________________________
;| Karin by Phantom.of.the.Server |
; ��������������������������������
;============================================================================================
;======================================< SUPER STATES >========================================
;============================================================================================

;======================< SHINPI KAIBYAKU >========================
[Statedef 3000]
type = S
physics = N
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3000, Button]
type = varset
trigger1 = var(10) != 0
var(10) = 0

[State 3000, Super Level]
type = varadd
trigger1 = !time
var(15) = 1
[State 3000, Super Cancels]
type = varadd
triggerall = !time
trigger1 = numenemy
trigger1 = (prevstateno = [3000, 4999]) || var(16)
trigger1 = (enemynear, movetype = H && enemynear, statetype != L)
trigger2 = var(20)
var(16) = 1

[State 3000, Dampener]
type = varset
trigger1 = !time
fvar(10) = ifelse(var(20), 0.8, 1.0 / (1 + var(16)))
ignorehitpause = 1

[State 3000, ECjuggle]
type = varset
trigger1 = var(20) > 0
var(36) = 1
ignorehitpause = 1
[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 43
[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
time = 1
value = SCA

[State 3000, Snd]
type = playsnd
trigger1 = time = 4
value = 5, 0
channel = 0

[State 3000, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-55 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3000, superpause]
type = superpause
trigger1 = time = 4
time = 43
movetime = 43
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 3000, Vel]
type = veladd
trigger1 = vel x > 0
x = -.125
[State 3000, Vel]
type = velset
trigger1 = vel x < 0
x = 0
[State 3000, Vel]
type = velset
trigger1 = animelem = 3 || animelem = 8 || animelem = 15 || animelem = 20 || animelem = 25
x = 4

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 3
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = animelem = 18
value = 5, 4
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 6 || animelem = 9 || animelem = 12 || animelem = 18 || animelem = 22 || animelem = 29
value = 1, 2
channel = 1

[State 3000, hit low]
type = hitdef
trigger1 = !var(27) && (var(14) < (1 + hitcount) || var(36))
trigger1 = animelem = 4 || animelem = 10 || animelem = 19
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 17
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.62, 0
guard.velocity = -5.62
air.velocity = -5.25, -7
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0;-9.83
guard.cornerpush.veloff = 0;-9.83
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-55 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3000, hit high]
type = hitdef
trigger1 = !var(27) && (var(14) < (1 + hitcount) || var(36))
trigger1 = animelem = 7 || animelem = 13 || animelem = 23
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 17
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.62, 0
guard.velocity = -5.62
air.velocity = -5.25, -7
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0;-9.83
guard.cornerpush.veloff = 0;-9.83
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-55 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3000, hit final]
type = hitdef
trigger1 = !var(27) && (var(14) < (1 + hitcount) || var(36))
trigger1 = animelem = 30
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 17
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -9.625, -7.15
guard.velocity = -12.65
air.velocity = -9.625, -7.15
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.6
forcestand = 1
fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-58 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3000, Type]
type = statetypeset
trigger1 = animelemtime(32) >= 0
movetype = I
[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< KOU'OU KEN >========================
[Statedef 3100]
type = S
physics = N
movetype = A
anim = 3100
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3100, Button]
type = varset
trigger1 = var(10) != 0
var(10) = 0

[State 3100, Super Level]
type = varadd
trigger1 = !time
var(15) = 1
[State 3100, Super Cancels]
type = varadd
triggerall = !time
trigger1 = numenemy
trigger1 = (prevstateno = [3000, 4999]) || var(16)
trigger1 = (enemynear, movetype = H && enemynear, statetype != L)
trigger2 = var(20)
var(16) = 1

[State 3100, Dampener]
type = varset
trigger1 = !time
fvar(10) = ifelse(var(20), 0.8, 1.0 / (1 + var(16)))
ignorehitpause = 1

[State 3100, ECjuggle]
type = varset
trigger1 = var(20) > 0
var(36) = 1
ignorehitpause = 1
[State 3100, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 43
[State 3100, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
time = 1
value = SCA

[State 3100, Snd]
type = playsnd
trigger1 = time = 4
value = 5, 0
channel = 0

[State 3100, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(37 * const(size.xscale)), ceil(-55 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3100, superpause]
type = superpause
trigger1 = time = 4
time = 43
movetime = 43
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 3100, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N

[State 3100, Vel]
type = veladd
trigger1 = animelemtime(3) >= 2 && vel x > 0
x = -.1
[State 3100, Accel]
type = veladd
trigger1 = animelemtime(3) >= 2
y = 0.5

[State 3100, Vel]
type = velset
trigger1 = animelemtime(3) = 2
x = 6.25
y = -9.25
[State 3100, Vel]
type = velset
trigger1 = animelem = 13
trigger2 = vel x < 0
x = 0

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 1
channel = 0
[State 3100, Snd]
type = playsnd
trigger1 = animelem = 5 || animelem = 9 || animelem = 13
value = 1, 2
channel = 1

[State 3100, Hit]
type = hitdef
trigger1 = !var(27) && (var(14) < (4 + hitcount) || var(36))
;trigger1 = animelem = 4 || animelem = 6 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 12 || animelem = 13 || animelem = 14
trigger1 = animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 2, 2
guard.pausetime = 2, 2
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 17
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -2.75, -9.33
guard.velocity = 0
air.velocity = -2.75, -9.33
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.6
forcestand = 1
fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -30, var(22) := ceil(-80 * const(size.yscale))
hitsound = sifelse(hitcount, -1, 2), 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3100, hitsound]
type = playsnd
trigger1 = hitcount > 1
trigger1 = movehit = 1 && hitpausetime = 1
value = 2, 2
channel = 2
ignorehitpause = 1

[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(17) >= 0
movetype = I
[State 3100, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3101


;--- Land ---
[Statedef 3101]
type = S
physics = N
movetype = I
anim = 47
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3101, Pos]
type = posset
trigger1 = 1
y = 0

[State 3101, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3101, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
pos = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3101, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< KILLER SATELLITE-BOUND PUNCH >========================
[Statedef 3200]
type = S
physics = N
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -3000
facep2 = 1

[State 3200, Button]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 3200, Super Level]
type = varadd
trigger1 = !time
var(15) = 3
[State 3200, Super Cancels]
type = varadd
triggerall = !time
trigger1 = numenemy
trigger1 = (prevstateno = [3000, 4999]) || var(16)
trigger1 = (enemynear, movetype = H && enemynear, statetype != L)
trigger2 = var(20)
var(16) = 1

[State 3200, Dampener]
type = varset
trigger1 = !time
fvar(10) = ifelse(var(20), 0.8, 1.0 / (1 + var(16)))
ignorehitpause = 1

[State 3200, ECjuggle]
type = varset
trigger1 = var(20) > 0
var(36) = 1
ignorehitpause = 1
[State 3200, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 67
[State 3200, NHB]
type = nothitby
trigger1 = animelemtime(8) < 0
time = 1
value = SCA

[State 3200, Snd]
type = playsnd
trigger1 = time = 4
value = 4, 0
channel = 0

[State 3200, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(-37 * const(size.xscale)), ceil(-49 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3200, superpause]
type = superpause
trigger1 = time = 4
time = 67
movetime = 67
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 12
channel = 0
[State 3200, Snd]
type = playsnd
trigger1 = animelem = 6
value = 1, 2
channel = 1

[State 3200, Pos]
type = posadd
trigger1 = animelem = 5
x = ceil(30 * const(size.xscale))
[State 3200, Pos]
type = posadd
trigger1 = animelem = 6
x = ceil(12 * const(size.xscale))

[State 3200, Hit]
type = hitdef
trigger1 = !var(27) && (var(14) < 1 || var(36))
trigger1 = animelem = 7
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 72 < 7, 7, fvar(11) * 72)), 9
getpower = 0, 0
givepower = 36, 36
pausetime = 24, 24
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 32
ground.slidetime = 32
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -12.65, 0
guard.velocity = -12.65
air.velocity = -5.25, -7
ground.cornerpush.veloff = 0;-24.4
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-55 * const(size.yscale))
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3200, Dust]
type = helper
trigger1 = movehit = 1
stateno = 3205
ID = 3205
name = "Dust"
postype = p1
pos = 60, 0
ownpal = 1

[State 3200, next]
type = changestate
triggerall = movecontact || movereversed
triggerall = animelemtime(7) >= 0 && animelemtime(9) < 0
trigger1 = !AIlevel && command = "qcfp"
trigger2 = AIlevel
value = 3201

[State 3200, Type]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
[State 3200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Connected ---
[Statedef 3201]
type = S
physics = N
movetype = A
anim = 3201
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3201, Pos]
type = posadd
trigger1 = animelem = 1
x = ceil(22 * const(size.xscale))
[State 3201, Pos]
type = posadd
trigger1 = animelem = 2
x = ceil(19 * const(size.xscale))
[State 3201, Pos]
type = posadd
trigger1 = animelem = 3
x = ceil(24 * const(size.xscale))
[State 3201, Pos]
type = posadd
trigger1 = animelem = 4
x = ceil(22 * const(size.xscale))

[State 3201, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 7
channel = 0
[State 3201, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 3201, Hit]
type = hitdef
trigger1 = !var(27) && (var(14) < 1 || var(36))
trigger1 = animelem = 4
ID = 3200
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 72 < 7, 7, fvar(11) * 72)), 9
getpower = 0, 0
givepower = 36, 36
pausetime = 24, 24
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 32
ground.slidetime = 32
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -12.65, 0
guard.velocity = -12.65
air.velocity = -5.25, -7
ground.cornerpush.veloff = 0;-24.4
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-55 * const(size.yscale))
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3201, Dust]
type = helper
trigger1 = movehit = 1
stateno = 3205
ID = 3205
name = "Dust"
postype = p1
pos = 60, 0
ownpal = 1

[State 3201, next]
type = changestate
triggerall = movecontact || movereversed
triggerall = animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = !AIlevel && command = "hcfp"
trigger2 = AIlevel
value = 3202

[State 3201, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
[State 3201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Third ---
[Statedef 3202]
type = S
physics = N
movetype = A
anim = 3202
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3202, Pos]
type = posadd
trigger1 = animelem = 2
x = ceil(19 * const(size.xscale))
[State 3202, Pos]
type = posadd
trigger1 = animelem = 3
x = ceil(24 * const(size.xscale))
[State 3202, Pos]
type = posadd
trigger1 = animelem = 4
x = ceil(22 * const(size.xscale))

[State 3202, Vel]
type = velset
trigger1 = animelem = 6
x = 8
[State 3202, Vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 3202, Snd]
type = playsnd
trigger1 = animelem = 6
value = 4, 12
channel = 0
[State 3202, Snd]
type = playsnd
trigger1 = animelem = 6
value = 1, 2
channel = 1

[State 3202, Hit]
type = hitdef
trigger1 = !var(27) && (var(14) < 1 || var(36))
trigger1 = animelem = 7
ID = 3200
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 72 < 7, 7, fvar(11) * 72)), 9
getpower = 0, 0
givepower = 36, 36
pausetime = 24, 24
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 32
ground.slidetime = 32
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -12.65, 0
guard.velocity = -12.65
air.velocity = -5.25, -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.4
air.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-55 * const(size.yscale))
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
kill = 0

[State 3202, Dust]
type = helper
trigger1 = movehit = 1
stateno = 3205
ID = 3205
name = "Dust"
postype = p1
pos = 60, 0
ownpal = 1

[State 3202, next]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
value = 3203

[State 3202, Type]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
[State 3202, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Beam ---
[Statedef 3203]
type = S
physics = N
movetype = A
anim = 3203
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3203, Dust]
type = helper
trigger1 = movehit = 1
stateno = 3205
ID = 3205
name = "Dust"
postype = p1
pos = 60, 0
ownpal = 1

[State 3203, Beam]
type = helper
trigger1 = !time
trigger1 = numtarget(3200)
helpertype = normal
stateno = 3250
ID = 3250
name = "Satellite Beam"
postype = p1
pos = ceil(target(3200), pos x -pos x) * facing, 0
size.xscale = 0.5
size.yscale = 16
ownpal = 1

[State 3203, End]
type = changestate
trigger1 = !numhelper(3250)
trigger2 = time >= 60
value = 3204

[State 3203, Vel]
type = velmul
trigger1 = 1
x = 0.7
[State 3203, Vel]
type = velset
trigger1 = !time
x = -30

[State 3203, glow]
type = helper
trigger1 = !numhelper(3206)
helpertype = normal
stateno = 3206
ID = 3206
name = "Lighting FX"
postype = p1
ownpal = 1
[State 3203, glow]
type = palfx
trigger1 = numhelper(3206)
time = 1
mul = 128, 128, 128


;--- Beam Over ---
[Statedef 3204]
type = S
physics = N
movetype = I
anim = 3204
ctrl = 0
velset = 0, 0
sprpriority = 1
[State 3204, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< KISAKI NO KAKOU >========================
[Statedef 3300]
type = A
physics = N
movetype = A
anim = 3300
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -2000

[State 3300, Button]
type = varset
trigger1 = var(10) != 1
var(10) = 1

[State 3300, Super Level]
type = varadd
trigger1 = !time
var(15) = 2
[State 3300, Super Cancels]
type = varadd
triggerall = !time
trigger1 = numenemy
trigger1 = (prevstateno = [3000, 4999]) || var(16)
trigger1 = (enemynear, movetype = H && enemynear, statetype != L)
trigger2 = var(20)
var(16) = 1

[State 3300, Dampener]
type = varset
trigger1 = !time
fvar(10) = ifelse(var(20), 0.8, 1.0 / (1 + var(16)))
ignorehitpause = 1

[State 3300, ECjuggle]
type = varset
trigger1 = var(20) > 0
var(36) = 1
ignorehitpause = 1
[State 3300, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 55
[State 3300, NHB]
type = nothitby
trigger1 = animelemtime(3) < 1
time = 1
value = SCA

[State 3300, Snd]
type = playsnd
trigger1 = time = 4
value = 6, 1
channel = 0

[State 3300, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(11 * const(size.xscale)), ceil(-38 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3300, superpause]
type = superpause
trigger1 = time = 4
time = 55
movetime = 55
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 3300, Vel]
type = velset
trigger1 = animelem = 3
x = 9
y = 9

[State 3300, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 1
channel = 0
[State 3300, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 3300, Hit]
type = hitdef
trigger1 = !var(27) && (var(14) < 1 || var(36))
trigger1 = !movecontact && !movereversed
ID = 3300
attr = A, HA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 0
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 30
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -9.22, 0
guard.velocity = -9.22
air.velocity = -5, 1.5
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-17.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-20 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
kill = 0

[State 3300, p2state]
type = targetstate
trigger1 = movehit && numtarget(3300)
trigger1 = target(3300), statetype != A
ID = 3300
value = 3302
ignorehitpause = 1
[State 3300, p1state]
type = changestate
trigger1 = movehit && numtarget(3300)
trigger1 = target(3300), statetype != A
value = 3310
ignorehitpause = 1

[State 3300, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3301


;--- Land ---
[Statedef 3301]
type = S
physics = S
movetype = I
anim = 3301
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3301, Pos]
type = posset
trigger1 = 1
y = 0

[State 3301, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3301, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
pos = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3301, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- --Target -----
[Statedef 3302]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0
[State 3302, Anim]
type = changeanim
trigger1 = 1
value = 5012
[State 3302, Pos]
type = posset
trigger1 = 1
y = 0
[State 3302, fall]
type = hitfallset
trigger1 = 1
value = 0
[State 3302, End]
type = changestate
trigger1 = time >= 30
value = 3303

[Statedef 3303]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0
[State 3303, Anim]
type = changeanim
trigger1 = !time
value = 5017
[State 3303, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 3303, End]
type = selfstate
trigger1 = time >= 30
value = 5000


;--- Ressen Ha ---
[Statedef 3310]
type = A
physics = N
movetype = A
anim = 3310
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3310, Push]
type = playerpush
trigger1 = 1
value = 0
[State 3310, Pos]
type = bindtotarget
trigger1 = !time
trigger1 = numtarget(3300)
ID = 3300
pos = 0, -(target(3300), const(size.height))

[State 3310, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.4
[State 3310, Vel]
type = velset
trigger1 = animelem = 3
x = 0
y = -5

[State 3310, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 4
channel = 0
[State 3310, Snd]
type = playsnd
trigger1 = animelem = 5 || animelem = 9 || animelem = 13
value = 1, 2
channel = 1
[State 3310, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 40

[State 3310, Hit]
type = hitdef
trigger1 = !var(27) && (var(14) < 1 || var(36))
trigger1 = animelem = 6 || animelem = 10 || animelem = 14
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 17
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -5.33, -6.46
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-32 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3310, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3311


;--- Combo ---
[Statedef 3311]
type = S
physics = N
movetype = A
anim = 3311
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3311, Pos]
type = posset
trigger1 = !time
y = 0
[State 3311, Pos]
type = posadd
trigger1 = animelem = 5
x = ceil(40 * const(size.yscale))
[State 3311, Pos]
type = posadd
trigger1 = animelem = 11
x = ceil(36 * const(size.yscale))

[State 3311, Vel]
type = veladd
trigger1 = vel x > 0
x = -.2
[State 3311, Vel]
type = velset
trigger1 = vel x < 0
x = 0
[State 3311, Vel]
type = velset
trigger1 = animelem = 12
x = 6

[State 3311, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 3
channel = 0
[State 3310, Snd]
type = playsnd
trigger1 = animelem = 6
value = 4, 5
channel = 0
[State 3310, Snd]
type = playsnd
trigger1 = animelem = 14
value = 4, 8
channel = 0
[State 3311, Snd]
type = playsnd
trigger1 = animelem = 1 || animelem = 6
value = 1, 2
channel = 1
[State 3311, Snd]
type = playsnd
trigger1 = animelem = 13 || animelem = 16
value = 1, 5
channel = 1

[State 3311, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3311, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
pos = 14, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3311, hit low]
type = hitdef
trigger1 = !var(27) && (var(14) < 1 || var(20))
trigger1 = animelem = 1 || animelem = 13
attr = S, HA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 17
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.62, 0
guard.velocity = -5.62
air.velocity = -5.33, -6.45
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0;-9.83
guard.cornerpush.veloff = 0;-9.83
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(ifelse((animelem = 13), -36, -22) * const(size.yscale))
hitsound = s2, ifelse((animelem = 13), 5, 2)
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3311, hit high]
type = hitdef
trigger1 = !var(27) && (var(14) < 1 || var(20))
trigger1 = animelem = 7
attr = S, HA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 17
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.62, 0
guard.velocity = -5.62
air.velocity = -5.33, -6.45
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0;-9.83
guard.cornerpush.veloff = 0;-9.83
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-74 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3311, hit final]
type = hitdef
trigger1 = !var(27) && (var(14) < 1 || var(20))
trigger1 = animelem = 17
attr = S, HA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = Low
ground.hittime = 17
ground.slidetime = 17
guard.hittime = 17
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -7.5, -10
guard.velocity = -9.22
air.velocity = -7.5, -10
airguard.velocity = -8, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-9.22
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.6
forcestand = 1
fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-80 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6

[State 3311, statetype]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I
[State 3311, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1