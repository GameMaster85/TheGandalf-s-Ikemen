; _______________________________
;| Yuri by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;======================================< SUPER STATES >========================================
;============================================================================================

;======================< HAOU SHOUKOU KEN =============================
[Statedef 3000]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3000, juggle]
type = varset
trigger1 = !time && var(15)
var(14) = 0

[State 3000, Button]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 3000, Button]
type = varset
trigger1 = !time && !AIlevel
var(11) = ifelse(command = "z", 2, ifelse(command = "y", 1, 0))
[State 3000, Button AI]
type = varset
trigger1 = !time && AIlevel
var(11) = ifelse(random < 500, 2, ifelse(random < 666, 1, 0))

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, superlvl]
type = varadd
trigger1 = animelem = 2
var(15) = 1
[State 3000, supercount]
type = varadd
trigger1 = animelem = 2
var(16) = 1

[State 3000, unguardable]
type = varset
trigger1 = animelem = 2 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 43
[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(7) < 1
time = 1
value = SCA

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 3
channel = 0
[State 3000, superpausefx]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = 13, -65
supermovetime = 255
ownpal = 1
[State 3000, superpause]
type = superpause
trigger1 = animelem = 2
time = 43
movetime = 43
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 2
fvar(5) = 0

[State 3000, FX]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 3004
ID = 3004
name = "Shoukou Ken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 255
ownpal = 1

[State 3000, Haou Shoukou Ken]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 3005
ID = 3000
name = "Haou Shoukou Ken"
postype = p1
pos = 54, -58
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3000, Snd]
type = playsnd
trigger1 = animelem = 7
value = 7, 2

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< HIEN REKKOU >=============================
[Statedef 3100]
type = S
physics = S
movetype = A
anim = 3100
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3100, juggle]
type = varset
trigger1 = !time && var(15)
var(14) = 0

[State 3100, Button]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 3100, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, superlvl]
type = varadd
trigger1 = animelem = 3
var(15) = 1
[State 3100, supercount]
type = varadd
trigger1 = animelem = 3
var(16) = 1

[State 3100, unguardable]
type = varset
trigger1 = animelem = 3 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 43
[State 3100, NHB]
type = nothitby
trigger1 = animelemtime(11) < 0
time = 1
value = SCA

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 9
channel = 0
[State 3100, superpausefx]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = -28, -66
supermovetime = 255
ownpal = 1
[State 3100, superpause]
type = superpause
trigger1 = animelem = 3
time = 43
movetime = 43
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 3
fvar(5) = 0

[State 3100, width]
type = width
trigger1 = animelemtime(29) < 0
edge = 16

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 12 || animelem = 19 || animelem = 28
value = 5, ifelse((animelem = 28), 1, 2)
channel = 0

[State 3100, Vel]
type = velset
trigger1 = animelem = 8
x = 9
[State 3100, Vel]
type = velset
trigger1 = animelem = 12 || animelem = 19 || animelem = 28
x = ifelse((animelem = 28), 16, 12)
y = ifelse((animelem = 28), -10, ifelse((animelem = 18), -6, -5))

[State 3100, Accel]
type = veladd
trigger1 = animelemtime(12) >= 0 && animelemtime(15) < 0
trigger2 = animelemtime(19) >= 0 && animelemtime(23) < 0
trigger3 = animelemtime(28) >= 0
y = 0.4
[State 3100, statetype]
type = statetypeset
trigger1 = animelemtime(12) >= 0 && animelemtime(15) < 0
trigger2 = animelemtime(19) >= 0 && animelemtime(23) < 0
trigger3 = animelemtime(28) >= 0
statetype = A
physics = N

[State 3100, Vel]
type = velmul
trigger1 = statetype = A && vel y <= 0
x = 0.85
[State 3100, Vel]
type = velset
trigger1 = animelemtime(28) >= 0 && vel y > 0
x = 0

[State 3100, simulate -1]
type = changeanim
trigger1 = animelemtime(14) >= 0 && animelemtime(15) < 0
trigger2 = animelemtime(22) >= 0 && animelemtime(23) < 0
value = 3100
elem = animelemno(0)

[State 3100, Land]
type = changeanim
trigger1 = animelemtime(12) >= 0 && animelemtime(15) < 0
trigger1 = vel y > 0 && pos y >= -ceil(vel y)
value = 3100
elem = 15
[State 3100, Land]
type = changeanim
trigger1 = animelemtime(19) >= 0 && animelemtime(23) < 0
trigger1 = vel y > 0 && pos y >= 0
value = 3100
elem = 23
[State 3100, Vel]
type = velset
trigger1 = animelem = 7 || animelem = 15 || animelem = 23
x = 0

[State 3100, Vel]
type = velset
trigger1 = animelemtime(12) < 0
trigger2 = animelemtime(15) >= 0 && animelemtime(19) < 0
trigger3 = animelemtime(23) >= 0 && animelemtime(28) < 0
y = 0
[State 3100, Pos]
type = posset
trigger1 = animelemtime(12) < 0
trigger2 = animelemtime(15) >= 0 && animelemtime(19) < 0
trigger3 = animelemtime(23) >= 0 && animelemtime(28) < 0
y = 0
[State 3100, statetype]
type = statetypeset
trigger1 = animelemtime(12) < 0
trigger2 = animelemtime(15) >= 0 && animelemtime(19) < 0
trigger3 = animelemtime(23) >= 0 && animelemtime(28) < 0
statetype = S
physics = S

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 15 || animelem = 23
value = 0, 52
[State 3100, Dust]
type = explod
trigger1 = animelem = 15 || animelem = 23
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 12 || animelem = 19 || animelem = 28
value = 1, 1
channel = 1

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 12 || animelem = 19 || animelem = 28
value = 0, ifelse((animelem = 28), 41, 40)
[State 3100, Dust]
type = helper
trigger1 = animelem = 12 || animelem = 19 || animelem = 28
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3100, hit low]
type = hitdef
trigger1 = animelem = 11 || animelem = 17 || animelem = 18 || animelem = 26 || animelem = 27
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifelse((animelem = 11), 40, 20) < 7, 7, fvar(11) * ifelse((animelem = 11), 40, 20))), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 8
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ifelse((animelem = 11), -42, ifelse((animelem = 17 || animelem = 26), -37, -65))
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 36
ground.slidetime = 36
ground.velocity = -6, 0
ground.cornerpush.veloff = 0
air.hittime = 20
air.velocity = -2, -4.5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 3100, hit high]
type = hitdef
trigger1 = animelem = 12 || animelem = 19
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifelse((animelem = 12), 40, 20) < 7, 7, fvar(11) * ifelse((animelem = 12), 40, 20))), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 8
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Hard
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = Low
ground.hittime = 36
ground.slidetime = 36
ground.velocity = -6, 0
ground.cornerpush.veloff = 0
air.hittime = 20
air.velocity = -2, -7.5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 3100, hit mid -air]
type = hitdef
trigger1 = animelem = 28
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 8
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -100
hitsound = s2, 2
guardsound = s3, 0
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -4, -10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -4, -10
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 3100, statetype]
type = statetypeset
trigger1 = animelemtime(29) >= 0
movetype = I
[State 3100, End]
type = changestate
trigger1 = animelemtime(28) >= 0 && vel y > 0 && pos y >= 0
value = 1105


;======================< HIEN HOUOU KYAKU >=============================
[Statedef 3200]
type = S
physics = S
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3200, juggle]
type = varset
trigger1 = !time && var(15)
var(14) = 0

[State 3200, Button]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 3200, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, superlvl]
type = varadd
trigger1 = animelem = 3
var(15) = 1
[State 3200, supercount]
type = varadd
trigger1 = animelem = 3
var(16) = 1

[State 3200, unguardable]
type = varset
trigger1 = animelem = 3 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 43
[State 3200, NHB]
type = nothitby
trigger1 = animelemtime(11) < 0
time = 1
value = SCA

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 5
channel = 0
[State 3200, superpausefx]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = 27, -68
supermovetime = 255
ownpal = 1
[State 3200, superpause]
type = superpause
trigger1 = animelem = 3
time = 43
movetime = 43
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 3
fvar(5) = 0

[State 3200, statetype]
type = statetypeset
trigger1 = animelemtime(10) >= 0
physics = N
[State 3200, Vel]
type = velset
trigger1 = animelemtime(10) >= 0
x = 8

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 9
value = 0, 106
[State 3200, Dust]
type = explod
trigger1 = animelem = 9
anim = 8103
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3200, Hit]
type = hitdef
trigger1 = animelem = 10
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 0, 0
getpower = 0, 0
givepower = 36, 36
pausetime = 0, 12
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -48
hitsound = s2, 4
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.hittime = 20
air.velocity = 0, -3
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 3200
kill = 0
forcestand = 1

[State 3200, success]
type = changestate
trigger1 = animelemtime(10) >= 0 && (movecontact || movereversed)
value = 3210
ignorehitpause = 1
[State 3200, End]
type = changestate
trigger1 = time >= 72;run 24
value = 3201


;--- MISS ---
[Statedef 3201]
type = S
physics = N
ctrl = 0
anim = 3201

[State 3201, Vel]
type = velmul
trigger1 = 1
x = 0.9
[State 3201, Snd]
type = playsnd
trigger1 = animelem = 1
value = 0, 103
[State 3201, Dust]
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

[State 3201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- LAND ---
[Statedef 3211]
type = S
physics = S
ctrl = 0
anim = 3211
velset = 0, 0
[State 3211, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 3211, Pos]
type = posset
trigger1 = 1
y = 0
[State 3211, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3211, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 3211, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- HIT ---
[Statedef 3210]
type = A
physics = N
movetype = A
anim = 3210
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3210, width]
type = width
trigger1 = animelemtime(34) < 0
edge = 30
[State 3210, Push]
type = playerpush
trigger1 = animelemtime(34) < 0
value = 0

[State 3210, Pos]
type = posset
trigger1 = !time && numtarget(3200)
x = (target(3200), pos x) -(48 * facing)

[State 3210, Vel]
type = velset
trigger1 = animelem = 3
x = 0.33
y = (enemynear, const(size.head.pos.y) + (enemynear, pos y) -pos y + 45) / 56.0

[State 3210, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(33) < 0
trigger1 = vel y < -1.5 || pos y > 0
y = ifelse(pos y > 0, 0, -1.5)
[State 3210, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(33) < 0
trigger1 = p2bodydist x <= 0
x = 0

[State 3210, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 4
channel = 0
[State 3210, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 7 || animelem = 10 || animelem = 13 || animelem = 16
trigger2 = animelem = 19 || animelem = 22 || animelem = 25 || animelem = 28 || animelem = 31
value = 1, ifelse(!(animelemno(0) % 2), 4, 3)
channel = 1

[State 3210, Hit]
type = hitdef
triggerall = (pos y -35 -(enemynear, pos y)) > enemynear, const(size.mid.pos.y)
trigger1 = animelem = 4 || animelem = 7 || animelem = 10 || animelem = 13 || animelem = 16
trigger2 = animelem = 19 || animelem = 22 || animelem = 25 || animelem = 28 || animelem = 31
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 19 < 7, 7, fvar(11) * 19)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 12
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := -35
hitsound = s2, ifelse(!(animelemno(0) % 2), 5, 4)
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.hittime = 20
air.velocity = -3, -3
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 3200
kill = (numtarget != numenemy)
forcestand = 1

[State 3210, Hit]
type = hitdef
triggerall = (pos y -35 -(enemynear, pos y)) <= enemynear, const(size.mid.pos.y)
trigger1 = animelem = 4 || animelem = 7 || animelem = 10 || animelem = 13 || animelem = 16
trigger2 = animelem = 19 || animelem = 22 || animelem = 25 || animelem = 28 || animelem = 31
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 19 < 7, 7, fvar(11) * 19)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 12
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -35
hitsound = s2, ifelse(!(animelemno(0) % 2), 5, 4)
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.hittime = 20
air.velocity = -3, -3
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 3200
kill = (numtarget != numenemy)
forcestand = 1

[State 3210, Hit]
type = hitdef
trigger1 = animelem = 33
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -35
hitsound = s2, 5
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -4.5, -7.25
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -4.5, -7.25
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1

[State 3210, blocked]
type = changeanim
trigger1 = animelemtime(5) >= 0 && animelemtime(33) < 0
trigger1 = (moveguarded || movereversed)
trigger2 = animelemtime(7) >= 0 && animelemtime(33) < 0
trigger2 = movecontact >= 8
value = 3210
elem = 33
ignorehitpause = 1

[State 3210, Vel]
type = velset
trigger1 = animelem = 33
x = -2.5
y = -8
ignorehitpause = 1
[State 3210, Accel]
type = veladd
trigger1 = animelemtime(33) > 0
y = 0.5
[State 3210, statetype]
type = statetypeset
trigger1 = animelemtime(34) >= 0
movetype = I

[State 3210, End]
type = changestate
trigger1 = animelemtime(33) >= 0 && vel y > 0 && pos y >= 0
value = 3211


;======================< SHIN HIEN HOUOU KYAKU >=============================
[Statedef 3220]
type = S
physics = S
movetype = A
anim = 3220
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -3000
facep2 = 1

[State 3220, juggle]
type = varset
trigger1 = !time && var(15)
var(14) = 0

[State 3220, Button]
type = varset
trigger1 = var(10) != 6
var(10) = 6

[State 3220, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3220, superlvl]
type = varadd
trigger1 = animelem = 2
var(15) = 1
[State 3220, supercount]
type = varadd
trigger1 = animelem = 2
var(16) = 1

[State 3220, unguardable]
type = varset
trigger1 = animelem = 2 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 67
[State 3220, NHB]
type = nothitby
trigger1 = animelemtime(10) < 6
time = 1
value = SCA

[State 3220, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 5
channel = 0
[State 3220, superpausefx]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = 27, -68
supermovetime = 255
ownpal = 1
[State 3220, superpause]
type = superpause
trigger1 = animelem = 2
time = 67
movetime = 67
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 2
fvar(5) = 0

[State 3220, statetype]
type = statetypeset
trigger1 = animelemtime(10) >= 0
statetype = A
physics = N
[State 3220, Vel]
type = velset
trigger1 = animelem = 10
x = 12;15
y = -3
[State 3220, Accel]
type = veladd
trigger1 = animelemtime(10) >= 0
y = 0.25;.35

[State 3220, Snd]
type = playsnd
trigger1 = animelem = 10
value = 0, 106
[State 3220, Dust]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3220, Hit]
type = hitdef
trigger1 = animelem = 10
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 0, 0
getpower = 0, 0
givepower = 36, 36
pausetime = 0, 12
guard.pausetime = 12, 12
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -48
hitsound = s2, 4
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 12
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.hittime = 20
air.velocity = 0, -3
air.cornerpush.veloff = 0
guard.velocity = -10.52
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 3220
kill = 0
forcestand = 1

[State 3220, success]
type = changestate
trigger1 = animelemtime(10) >= 0 && movehit
value = 3230
ignorehitpause = 1
[State 3220, blocked]
type = changestate
trigger1 = animelemtime(10) >= 0 && (moveguarded || movereversed)
value = 3222
ignorehitpause = 1
[State 3220, End]
type = changestate
trigger1 = animelemtime(10) >= 0 && vel y > 0 && pos y >= 0
value = 3221


;--- MISS ---
[Statedef 3221]
type = S
physics = S
ctrl = 0
anim = 3221

[State 3221, Pos]
type = posset
trigger1 = 1
y = 0
[State 3221, Vel]
type = velset
trigger1 = 1
y = 0

[State 3221, Snd]
type = playsnd
trigger1 = animelem = 1
value = 0, 103
[State 3221, Dust]
type = explod
trigger1 = animelem = 1
anim = 8103
sprpriority = 3
postype = p1
pos = 27, 0
vel = 6, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- BLOCKED ---
[Statedef 3222]
type = S
physics = S
ctrl = 0
anim = 3222
velset = 0, 0
movehitpersist = 1
[State 3222, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 3222, Pos]
type = posset
trigger1 = 1
y = 0
[State 3222, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3222, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 3222, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- HIT ---
[Statedef 3230]
type = A
physics = N
movetype = A
anim = 3230
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3230, width]
type = width
trigger1 = animelemtime(34) < 0
edge = 30
[State 3230, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3230, Pos]
type = posset
trigger1 = !time && numtarget(3220)
x = (target(3220), pos x) -(48 * facing)
[State 3230, Vel]
type = velset
trigger1 = animelem = 3
x = 0.25
y = (enemynear, const(size.head.pos.y) + (enemynear, pos y) -pos y + 40) / 98.0

[State 3230, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(34) < 0
trigger1 = vel y < -1.5 || pos y > 0
y = ifelse(pos y > 0, 0, -1.5)
[State 3230, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(34) < 0
trigger1 = p2bodydist x <= 0
x = 0

[State 3230, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 4
channel = 0
[State 3230, Snd]
type = playsnd
trigger1 = animelem = 34 || animelem = 43
value = 4, ifelse((animelem = 43), 1, 0)
channel = 0

[State 3230, Snd]
type = playsnd
trigger1 = animelem = 1 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30 || animelem = 32
value = 1, 4
channel = 1
[State 3230, Snd]
type = playsnd
trigger1 = animelem = 43
value = 1, 5
channel = 1

[State 3230, Hit]
type = hitdef
triggerall = (pos y -30 -(enemynear, pos y)) > enemynear, const(size.mid.pos.y)
trigger1 = animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16 || animelem = 18
trigger2 = animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30 || animelem = 32
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 22 < 7, 7, fvar(11) * 22)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 3, 12
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -40
hitsound = s2, ifelse(!(animelemno(0) % 4), 5, 4)
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.hittime = 20
air.velocity = -3, -3
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 3220
kill = (numtarget != numenemy)
forcestand = 1

[State 3230, Hit]
type = hitdef
triggerall = (pos y -30 -(enemynear, pos y)) <= enemynear, const(size.mid.pos.y)
trigger1 = animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16 || animelem = 18
trigger2 = animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30 || animelem = 32
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 22 < 7, 7, fvar(11) * 22)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 3, 12
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -40
hitsound = s2, ifelse(!(animelemno(0) % 4), 5, 4)
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.hittime = 20
air.velocity = -3, -3
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
ID = 3220
kill = (numtarget != numenemy)
forcestand = 1

[State 3230, Hit]
type = hitdef
trigger1 = animelem = 34
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 14
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -10
hitsound = s2, 5
guardsound = s3, 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = High
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -3, -9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -3, -9
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
kill = (numtarget != numenemy)
forcestand = 1

[State 3230, Hit]
type = hitdef
trigger1 = animelem = 43
attr = A, HA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 24, 24
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -33
hitsound = s2, 7
guardsound = s3, 0
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 20
ground.slidetime = 20
ground.velocity = -14, 10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-20.01
air.hittime = 20
air.velocity = -14, 10
air.cornerpush.veloff = 0
fall.xvelocity = -7
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p2facing = 1
forcestand = 1

[State 3230, Vel]
type = velset
trigger1 = animelem = 34
x = 3
y = -9
[State 3230, Accel]
type = veladd
trigger1 = animelemtime(34) >= 0
y = 0.5
[State 3230, statetype]
type = statetypeset
trigger1 = animelemtime(45) >= 0
movetype = I

[State 3230, End]
type = changestate
trigger1 = animelemtime(34) >= 0 && vel y > 0 && pos y >= 0
value = 3211


;======================< YURI CHOU ENBU >=============================
[Statedef 3300]
type = S
physics = S
movetype = A
anim = 3300
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -2000
facep2 = 1

[State 3300, juggle]
type = varset
trigger1 = !time && var(15)
var(14) = 0

[State 3300, Button]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3300, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, superlvl]
type = varadd
trigger1 = !time
var(15) = 1
[State 3300, supercount]
type = varadd
trigger1 = !time
var(16) = 1

[State 3300, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 3300, Snd]
type = playsnd
trigger1 = animelem = 2
value = 6, 13
channel = 0
[State 3300, superpausefx]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = 10, -84
supermovetime = 255
ownpal = 1
[State 3300, superpause]
type = superpause
trigger1 = animelem = 2
time = 55
movetime = 55
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 2
fvar(5) = 0

[State 3300, statetype]
type = statetypeset
trigger1 = animelemtime(3) >= 0
physics = N
[State 3300, Vel]
type = velset
trigger1 = animelemtime(3) >= 0
x = 6

[State 3300, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 106
[State 3300, Dust]
type = explod
trigger1 = animelem = 3
anim = 8103
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3300, strength2]
type = varset
trigger1 = 1
var(11) = (random < 125) || var(9)

[State 3300, Miss]
type = hitdef
trigger1 = animelemtime(3) >= 0 && !movecontact && !movereversed
attr = S, HT
hitflag = 

[State 3300, Hit]
type = hitdef
trigger1 = !var(38)
trigger1 = p2dist x >= 0 && p2bodydist x <= 27
trigger1 = animelemtime(3) >= 0 && !movecontact && !movereversed
attr = S, HT
hitflag = M-
priority = 6, Miss
damage = 0, 0
getpower = 0, 0
givepower = 0, 35
sparkno = -1
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := -60
hitsound = s0, 800
guardsound = s3, 0
yaccel = 0.5
fall = 1
fall.recover = 0
numhits = 0
p1stateno = ifelse(var(11), 3311, 3301)
p2facing = 1

[State 3300, End]
type = changestate
trigger1 = time >= 86
value = 3201


;--- HIT ---
[Statedef 3301]
type = S
physics = S
movetype = A
anim = 3301
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State Throw]
type = targetstate
trigger1 = !time
value = 3302

[State 3301, Pause]
type = pause
trigger1 = animelemtime(2) >= 0 && animtime < -1
time = 2
movetime = 2
[State 3301, Pause]
type = pause
trigger1 = animtime = -1
time = 0

[State 3301, Push]
type = playerpush
trigger1 = 1
value = 0
[State 3301, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3301, fadeout]
type = allpalfx
trigger1 = animelemtime(2) < 0
time = 1
add = -ceil(time * 8.53), -ceil(time * 8.53), -ceil(time * 8.53)
[State 3301, black]
type = envcolor
trigger1 = animelemtime(2) >= 0 && animtime < 0
time = 2
value = 0, 0, 0

[State 3301, Assert]
type = assertspecial
trigger1 = animelemtime(2) >= 0
flag = nobardisplay
[State 3301, Bind]
type = targetbind
trigger1 = numtarget
pos = 20 + (target, const(size.ground.front)), 0

[State 3301, hitadd]
type = hitadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
value = 1
[State 3301, hitcount]
type = varadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
var(13) = 1

[State 3301, damage]
type = targetlifeadd
triggerall = numtarget
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
value = ceil(ifelse(27 * fvar(11) < 7, -7, -27 * fvar(11)))
kill = 0
[State 3301, damage]
type = targetlifeadd
trigger1 = numtarget && animtime = -1
value = -1
kill = 1

[State 3301, givepower]
type = targetpoweradd
triggerall = numtarget
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
value = 36

[State 3301, HitSound]
type = playsnd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
value = 2, 2

[State 3301, Sparks]
type = explod
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
anim = 8030 + (random % 8)
sprpriority = 5
postype = p2
pos = 0, (target, const(size.mid.pos.y))
random = 60, 60
facing = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1
ontop = 1

[State 3301, Shake]
type = envshake
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
time = 6
freq = 120
ampl = -3

[State 3301, throw]
type = targetstate
trigger1 = !animtime && numtarget
value = 3303
[State 3301, End]
type = changestate
trigger1 = !animtime
value = 3305


;--- POSE ---
[Statedef 3305]
type = S
physics = S
ctrl = 0
anim = ifelse(var(11), 3306, 3305)
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3305, Snd]
type = playsnd
trigger1 = anim = 3305 && animelem = 1
value = 6, 12
channel = 0

[State 3305, Snd]
type = playsnd
trigger1 = anim = 3306 && animelem = 1
value = 7, 6

[State 3305, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 3302]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3302, Anim]
type = changeanim2
trigger1 = 1
value = 3302
elem = ifelse(const(size.head.pos.y) >= -100, 1, 2)


[Statedef 3303]
type = L
physics = C
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3303, Anim]
type = changeanim
trigger1 = anim != 5110
value = 5110

[State 3303, End]
type = selfstate
trigger1 = !alive
value = 5150

[State 3303, End]
type = selfstate
trigger1 = time >= 40 && alive
value = 5120


[Statedef 3304]
type = L
physics = C
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3304, Anim]
type = changeanim
trigger1 = anim != 5110
value = 5110

[State 3304, End]
type = selfstate
trigger1 = !alive
value = 5150

[State 3304, End]
type = selfstate
trigger1 = time >= 60 && alive
value = 5120


;--- HIT ---
[Statedef 3311]
type = S
physics = S
movetype = A
anim = 3311
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State Throw]
type = targetstate
trigger1 = !time
value = 3312

[State 3311, Push]
type = playerpush
trigger1 = 1
value = 0
[State 3311, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3311, fadeout]
type = allpalfx
trigger1 = animelemtime(2) < -1
time = 2
add = -ceil(time * 8.53), -ceil(time * 8.53), -ceil(time * 8.53)

[State 3311, Assert]
type = assertspecial
trigger1 = animelemtime(2) >= 0
flag = nobardisplay
flag2 = noFG
[State 3311, white]
type = bgpalfx
trigger1 = animelemtime(2) >= -1 && animelemtime(3) < -1
trigger2 = animelemtime(4) >= -1 && animelemtime(5) < -1
trigger3 = animelemtime(6) >= -1 && animelemtime(7) < -1
trigger4 = animelemtime(8) >= -1 && animelemtime(9) < -1
trigger5 = animelemtime(10) >= -1 && animelemtime(11) < -1
trigger6 = animelemtime(12) >= -1 && animelemtime(13) < -1
trigger7 = animelemtime(14) >= -1 && animelemtime(15) < -1
trigger8 = animelemtime(16) >= -1 && animelemtime(17) < -1
trigger9 = animelemtime(18) >= -1 && animelemtime(19) < -1
trigger10 = animelemtime(20) >= -1 && animelemtime(21) < -1
trigger11 = animelemtime(22) >= -1 && animelemtime(23) < -1
trigger12 = animelemtime(24) >= -1 && animelemtime(25) < -1
trigger13 = animelemtime(26) >= -1 && animelemtime(27) < -1
trigger14 = animelemtime(28) >= -1 && animelemtime(29) < -1
trigger15 = animelemtime(30) >= -1 && animelemtime(31) < -1
add = 255, 255, 255
time = 2

[State 3311, black]
type = bgpalfx
trigger1 = animelemtime(3) >= -1 && animelemtime(4) < -1
trigger2 = animelemtime(5) >= -1 && animelemtime(6) < -1
trigger3 = animelemtime(7) >= -1 && animelemtime(8) < -1
trigger4 = animelemtime(9) >= -1 && animelemtime(10) < -1
trigger5 = animelemtime(11) >= -1 && animelemtime(12) < -1
trigger6 = animelemtime(13) >= -1 && animelemtime(14) < -1
trigger7 = animelemtime(15) >= -1 && animelemtime(16) < -1
trigger8 = animelemtime(17) >= -1 && animelemtime(18) < -1
trigger9 = animelemtime(19) >= -1 && animelemtime(20) < -1
trigger10 = animelemtime(21) >= -1 && animelemtime(22) < -1
trigger11 = animelemtime(23) >= -1 && animelemtime(24) < -1
trigger12 = animelemtime(25) >= -1 && animelemtime(26) < -1
trigger13 = animelemtime(27) >= -1 && animelemtime(28) < -1
trigger14 = animelemtime(29) >= -1 && animelemtime(30) < -1
trigger15 = animelemtime(31) >= -1
add = -255, -255, -255
time = 2

[State 3311, Pos]
type = posadd
trigger1 = animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30
x = 72

[State 3311, Turn]
type = turn
trigger1 = animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30

[State 3311, Bind]
type = targetbind
trigger1 = numtarget
pos = 36, 0

[State 3311, Bind]
type = targetfacing
trigger1 = numtarget
value = -1

[State 3311, throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 10 || animelem = 12 || animelem = 16 || animelem = 18 || animelem = 20 || animelem = 30
value = 3313

[State 3311, throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 8 || animelem = 14 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28
value = 3314

[State 3311, hitadd]
type = hitadd
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30
value = 1

[State 3311, hitcount]
type = varadd
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30
var(13) = 1

[State 3311, damage]
type = targetlifeadd
triggerall = numtarget
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30
value = ceil(ifelse(27 * fvar(11) < 7, -7, -27 * fvar(11)))
kill = 0

[State 3311, damage]
type = targetlifeadd
trigger1 = numtarget && animtime = -1
value = -1
kill = 1

[State 3311, givepower]
type = targetpoweradd
triggerall = numtarget
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30
value = 36

[State 3311, HitSound]
type = playsnd
trigger1 = animelem = 2 || animelem = 4 || animelem = 10 || animelem = 12 || animelem = 18 || animelem = 20 || animelem = 26 || animelem = 30
value = 2, 2

[State 3311, HitSound]
type = playsnd
trigger1 = animelem = 6 || animelem = 8 || animelem = 14 || animelem = 16 || animelem = 22 || animelem = 24 || animelem = 28
value = 2, 5

[State 3311, Sparks]
type = explod
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30
anim = 8030 + (random % 8)
sprpriority = 5
postype = p1
pos = 36, -50
random = 20, 60
pausemovetime = -1
supermovetime = -1
ownpal = 1
ontop = 1

[State 3311, Shake]
type = envshake
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10 || animelem = 12 || animelem = 14 || animelem = 16
trigger2 = animelem = 18 || animelem = 20 || animelem = 22 || animelem = 24 || animelem = 26 || animelem = 28 || animelem = 30
time = 6
freq = 120
ampl = -3

[State 3311, throw]
type = targetstate
trigger1 = !animtime && numtarget
value = 3304

[State 3311, End]
type = changestate
trigger1 = !animtime
value = 3305


;--- TARGET ---
[Statedef 3312]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3312, Anim]
type = changeanim2
trigger1 = !time
value = 3312

[Statedef 3313]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3313, Anim]
type = changeanim2
trigger1 = !time
value = 3313


[Statedef 3314]
type = S
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3314, Anim]
type = changeanim2
trigger1 = !time
value = 3314
