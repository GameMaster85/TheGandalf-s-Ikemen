; _______________________________
;| Nash by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;======================================< SUPER STATES >========================================
;============================================================================================

;======================< SONIC BREAK >========================
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

[State 3000, Button]
type = varset
trigger1 = var(10) != 0
var(10) = 0

[State 3000, super cancels]
type = varadd
triggerall = !time
trigger1 = (prevstateno = [1000, 4999]) || (enemynear, movetype = H && enemynear, statetype != L)
trigger1 = (prevstateno != [200, 699]) || var(16)
trigger2 = var(20)
var(16) = ifelse(var(15), var(15), 1)
[State 3000, super level]
type = varadd
trigger1 = !time
var(15) = 1

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
trigger1 = anim = 3000 && animelemtime(3) < 0
time = 1
value = SCA

[State 3000, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(-52 * const(size.xscale)), ceil(-75 * const(size.yscale))
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

[State 3000, shadow]
type = playsnd
trigger1 = !time && var(1)
value = 7, 5
[State 3000, shadow]
type = explod
trigger1 = !time && var(1)
anim = 6005
postype = p1
pos = ceil(6 * const(size.xscale)), ceil(-86 * const(size.yscale))
sprpriority = 2
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3000, Anim]
type = changeanim
triggerall = (anim = [3000, 3002]) && animelemtime(4) >= 0 && animelemtime(6) < 0
trigger1 = !AIlevel && (command = "x" || command = "y" || command = "z")
trigger2 = AIlevel
value = anim + 1

[State 3000, width]
type = width
trigger1 = anim = 3000 && animelemtime(2) >= 0 && animelemtime(8) < 0
trigger2 = anim = 3001 && animelemtime(8) < 0
trigger3 = anim = 3002 && animelemtime(2) >= 0 && animelemtime(7) < 0
trigger4 = anim = 3003 && animelemtime(4) >= 0 && animelemtime(6) < 0
player = ceil(ifelse(anim = 3000, 23, ifelse(anim = 3001, 40, 77)) * const(size.xscale)), 0

[State 3000, Snd]
type = playsnd
triggerall = !var(1)
trigger1 = (anim = [3000, 3002]) && animelem = 2
trigger2 = anim = 3003 && animelem = 3
value = 5, 1
channel = 0
[State 3000, FX]
type = helper
trigger1 = !numhelper(1010)
trigger1 = (anim = [3000, 3002]) && animelem = 2
helpertype = normal
stateno = 1010
ID = 1010
name = "Sonic Boom FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3000, Sonic Boom]
type = helper
trigger1 = (anim = [3000, 3002]) && animelem = 3
trigger2 = anim = 3003 && animelem = 4
helpertype = normal
stateno = 3005
ID = 3000
name = "Sonic Boom"
postype = p1
pos = ceil(ifelse(anim = 3000, 47, ifelse(anim = 3001, 64, 101)) * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3000, Snd]
type = playsnd
trigger1 = (anim = [3000, 3002]) && animelem = 3
trigger2 = anim = 3003 && animelem = 4
value = 7, 0

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3003 && animelem = 8
value = 0, 52

[State 3000, End]
type = changestate
trigger1 = !animtime
value = ifelse(anim = 3003, 11, 0)
ctrl = 1


;======================< SOMMERSAULT JUSTICE >========================
[Statedef 3100]
type = S
physics = N
movetype = A
anim = 3100
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -2000
facep2 = 1

[State 3100, Button]
type = varset
trigger1 = var(10) != 1
var(10) = 1

[State 3100, super cancels]
type = varadd
triggerall = !time
trigger1 = (prevstateno = [1000, 4999]) || (enemynear, movetype = H && enemynear, statetype != L)
trigger1 = (prevstateno != [200, 699]) || var(16)
trigger2 = var(20)
var(16) = ifelse(var(15), var(15), 1)
[State 3100, super level]
type = varadd
trigger1 = !time
var(15) = 2

[State 3100, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 55
[State 3100, NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
time = 1
value = SCA

[State 3100, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(20 * const(size.xscale)), ceil(-24 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3100, superpause]
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

[State 3100, shadow]
type = playsnd
trigger1 = !time && var(1)
value = 7, 5
[State 3100, shadow]
type = explod
trigger1 = !time && var(1)
anim = 6005
postype = p1
pos = ceil(-13 * const(size.xscale)), ceil(-51 * const(size.yscale))
sprpriority = 2
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3100, Vel]
type = velmul
trigger1 = animelemtime(26) < 0
x = 0.85
[State 3100, Vel]
type = velset
trigger1 = animelem = 5 || animelem = 17
x = 6

[State 3100, Vel]
type = velmul
trigger1 = animelemtime(29) >= 0
x = 0.95
[State 3100, Accel]
type = veladd
trigger1 = animelemtime(29) >= 0
y = 0.675
[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(29) >= 0
statetype = A

[State 3100, Vel]
type = velset
trigger1 = animelem = 29
x = 12
y = -12
[State 3100, Vel]
type = velset
trigger1 = animelem = 35
x = 0

[State 3100, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 4 || animelem = 16 || animelem = 28
value = 5, ifelse((animelem = 28), 3, 2)
channel = 0
[State 3100, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 16 || animelem = 28
value = 7, 1
freqmul = ifelse((animelem = 28), 0.9, 1)

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 29
value = 0, 41
[State 3100, Dust]
type = helper
trigger1 = animelem = 29
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3100, FX]
type = helper
trigger1 = !numhelper(1105)
trigger1 = animelem = 4 || animelem = 16 || animelem = 28
helpertype = normal
stateno = 1105
ID = 1105
name = "Sommersault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 4 || animelem = 5 || animelem = 16 || animelem = 17
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -3.22, -9.88
ground.cornerpush.veloff = 0;-10
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(ifelse((animelem = 5 || animelem = 17), -70, -30) * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 6 || animelem = 18
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -3.22, -9.88
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-110 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 28
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -2.5, -9.85
guard.velocity = 0
air.velocity = -2.5, -9.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-30 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 29 || animelem = 30
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 32 < 7, 7, fvar(11) * 32)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -2.5, -9.85
guard.velocity = 0
air.velocity = -2.5, -9.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(ifelse((animelem = 29), -57, -84) * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 31
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 32 < 7, 7, fvar(11) * 32)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -7, -6.1
guard.velocity = 0
air.velocity = -7, -6.1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-110 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(33) >= 0
movetype = I
[State 3100, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 3103


;--- LAND ---
[Statedef 3103]
type = S
physics = S
ctrl = 0
anim = 3103
velset = 0, 0
movehitpersist = 1
[State 3103, Pos]
type = posset
trigger1 = 1
y = 0
[State 3103, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 3103, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;======================< CROSSFIRE BLITZ >========================
[Statedef 3200]
type = S
physics = N
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3200, Button]
type = varset
trigger1 = var(10) != 0
var(10) = 0

[State 3200, super cancels]
type = varadd
triggerall = !time
trigger1 = (prevstateno = [1000, 4999]) || (enemynear, movetype = H && enemynear, statetype != L)
trigger1 = (prevstateno != [200, 699]) || var(16)
trigger2 = var(20)
var(16) = ifelse(var(15), var(15), 1)
[State 3200, super level]
type = varadd
trigger1 = !time
var(15) = 1

[State 3200, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 43
[State 3200, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
time = 1
value = SCA

[State 3200, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(-29 * const(size.xscale)), ceil(-18 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3200, superpause]
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

[State 3200, shadow]
type = playsnd
trigger1 = !time && var(1)
value = 7, 5
[State 3200, shadow]
type = explod
trigger1 = !time && var(1)
anim = 6005
postype = p1
pos = ceil(-1 * const(size.xscale)), ceil(-82 * const(size.yscale))
sprpriority = 2
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3200, Vel]
type = velset
trigger1 = animelem = 2
x = 2.5
[State 3200, Vel]
type = velset
trigger1 = animelem = 22
x = 0

[State 3200, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 3 || animelem = 8 || animelem = 14
value = 4, 1
channel = 0
[State 3200, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 20
value = 4, 0
channel = 0
[State 3200, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 23
value = 4, 4
channel = 0

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 8 || animelem = 14
value = 1, 5
channel = 1
[State 3200, Snd]
type = playsnd
trigger1 = animelem = 20 || animelem = 23
value = 1, 2
channel = 1

[State 3200, FX]
type = helper
trigger1 = !numhelper(1010) && animelem = 23
helpertype = normal
stateno = 1010
ID = 1010
name = "Sonic Boom FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3200, Hit]
type = hitdef
trigger1 = animelem = 9 || animelem = 15
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = -5.75, 0
guard.velocity = -5.75
air.velocity = -5.15, -6.7
ground.cornerpush.veloff = 0;-10
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(ifelse((animelem = 15), -64, -86) * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3200, Hit]
type = hitdef
trigger1 = animelem = 4 || animelem = 20
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = -5.75, 0
guard.velocity = -5.75
air.velocity = -5.15, -6.7
ground.cornerpush.veloff = 0;-10
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(ifelse((animelem = 20), -68, -32) * const(size.yscale))
hitsound = s2, ifelse((animelem = 20), 2, 5)
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3200, Hit]
type = hitdef
trigger1 = animelem = 24
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 4, 4
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 12
ground.velocity = -6.25, -5.83
guard.velocity = -5.75
air.velocity = -6.25, -5.83
ground.cornerpush.veloff = 0;-10
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-75 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3200, Type]
type = statetypeset
trigger1 = animelemtime(26) >= 0
movetype = I
[State 3200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< CROSSFIRE BLITZ II >========================
[Statedef 3300]
type = S
physics = N
movetype = A
anim = 3300
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -2000
facep2 = 1

[State 3300, Button]
type = varset
trigger1 = var(10) != 1
var(10) = 1

[State 3300, super cancels]
type = varadd
triggerall = !time
trigger1 = (prevstateno = [1000, 4999]) || (enemynear, movetype = H && enemynear, statetype != L)
trigger1 = (prevstateno != [200, 699]) || var(16)
trigger2 = var(20)
var(16) = ifelse(var(15), var(15), 1)
[State 3300, super level]
type = varadd
trigger1 = !time
var(15) = 2

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
trigger1 = animelemtime(4) < 2
time = 1
value = SCA

[State 3300, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = time = 4
value = 4, 3
channel = 0
[State 3300, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(-1 * const(size.xscale)), ceil(-82 * const(size.yscale))
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

[State 3300, shadow]
type = playsnd
trigger1 = !time && var(1)
value = 7, 5
[State 3300, shadow]
type = explod
trigger1 = !time && var(1)
anim = 6005
postype = p1
pos = ceil(7 * const(size.xscale)), ceil(-85 * const(size.yscale))
sprpriority = 2
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3300, Vel]
type = velmul
trigger1 = animelemtime(4) >= 0
x = 0.9
[State 3300, Vel]
type = velset
trigger1 = animelem = 4
x = 16
[State 3300, Vel]
type = velset
trigger1 = animelem = 9
x = 0

[State 3300, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 106
[State 3300, Dust]
type = explod
trigger1 = animelem = 4
anim = 8103
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3300, Hit]
type = hitdef
trigger1 = animelem = 4
ID = 3300
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 0, 0
getpower = 0, 0
givepower = 36, 36
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = -5.75
air.velocity = 0, 0
ground.cornerpush.veloff = 0;-10
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-50 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
kill = 0
forcestand = 1

[State 3300, p1state]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = movehit || movereversed
value = 3301
[State 3300, blocked]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
trigger1 = moveguarded
value = 3300
elem = 7

[State 3300, Type]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
[State 3300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- --CONNECTED -----
[Statedef 3301]
type = S
physics = N
movetype = A
anim = 3301
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3301, p2state]
type = targetstate
trigger1 = !time && numtarget(3300)
value = 3302
ID = 3300
[State 3301, Bind]
type = targetbind
trigger1 = !time && numtarget(3300)
pos = 64, 0
ID = 3300

[State 3301, Vel]
type = velset
trigger1 = animelem = 1
x = 4
[State 3301, Vel]
type = velset
trigger1 = animelem = 27
x = 0

[State 3301, Vel]
type = velset
trigger1 = animelem = 31
x = 4.5
y = -6
[State 3100, Accel]
type = veladd
trigger1 = animelemtime(31) >= 0
y = 0.5
[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(31) >= 0
statetype = A

[State 3301, Snd]
type = playsnd
triggerall = !var(1)
trigger1 = animelem = 2 || animelem = 4 || animelem = 7
trigger2 = animelem = 12 || animelem = 18 || animelem = 21
value = 4, (random % 4)
channel = 0
[State 3301, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 27
value = 4, 5
channel = 0
[State 3301, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 32
value = 4, 4
channel = 0

[State 3301, Snd]
type = playsnd
trigger1 = animelem = 2 || animelem = 4 || animelem = 18 || animelem = 21 || animelem = 27
value = 1, 2
channel = 1
[State 3301, Snd]
type = playsnd
trigger1 = animelem = 7 || animelem = 12 || animelem = 32
value = 1, 5
channel = 1

[State 3301, Snd]
type = playsnd
trigger1 = animelem = 25
value = 0, 100
[State 3301, Dust]
type = explod
trigger1 = animelem = 25
anim = 8103
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 3301, Snd]
type = playsnd
trigger1 = animelem = 31
value = 0, 40
[State 3301, Dust]
type = helper
trigger1 = animelem = 31
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3301, Hit]
type = hitdef
trigger1 = animelem = 2 || animelem = 5 || animelem = 18 || animelem = 22
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = -5.75
air.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-50 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
kill = (numtarget != numenemy)
forcestand = 1

[State 3301, Hit]
type = hitdef
trigger1 = animelem = 8 || animelem = 13
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = -5.75
air.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 0
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-50 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
kill = (numtarget != numenemy)
forcestand = 1

[State 3301, Hit]
type = hitdef
trigger1 = animelem = 27
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = -4, -7
guard.velocity = -12.75
air.velocity = -4, -7
ground.cornerpush.veloff = 0;-17.25
guard.cornerpush.veloff = 0;-17.25
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -20, var(22) := ceil(-68 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
kill = (numtarget != numenemy)
forcestand = 1

[State 3301, Hit]
type = hitdef
trigger1 = animelem = 32
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7 * (var(15) <= 2)
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = -10, -5
guard.velocity = -12.75
air.velocity = -10, -2.5
ground.cornerpush.veloff = 0;-24.5
guard.cornerpush.veloff = 0;-24.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-68 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3301, Type]
type = statetypeset
trigger1 = animelemtime(33) >= 0
movetype = I
[State 3301, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 3303


;--- --TARGET -----
[Statedef 3302]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0
[State 3302, Pos]
type = posset
trigger1 = 1
y = 0
[State 3302, fall]
type = hitfallset
trigger1 = 1
value = 0
[State 3302, End]
type = selfstate
trigger1 = 1
value = 5000


;--- LAND ---
[Statedef 3303]
type = S
physics = S
ctrl = 0
anim = 3303
velset = 0, 0
movehitpersist = 1
[State 3303, Pos]
type = posset
trigger1 = 1
y = 0
[State 3303, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3303, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 3303, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< FINAL MISSION >========================
[Statedef 3400]
type = S
physics = N
movetype = A
anim = 3400
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -3000
facep2 = 1

[State 3400, Button]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 3400, super cancels]
type = varadd
triggerall = !time
trigger1 = (prevstateno = [1000, 4999]) || (enemynear, movetype = H && enemynear, statetype != L)
trigger1 = (prevstateno != [200, 699]) || var(16)
trigger2 = var(20)
var(16) = ifelse(var(15), var(15), 1)
[State 3400, super level]
type = varadd
trigger1 = !time
var(15) = 3

[State 3400, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 67
[State 3400, NHB]
type = nothitby
trigger1 = animelemtime(8) < 1
time = 1
value = SCA

[State 3400, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(31 * const(size.xscale)), ceil(-54 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3400, superpause]
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

[State 3400, shadow]
type = playsnd
trigger1 = !time && var(1)
value = 7, 5
[State 3400, shadow]
type = explod
trigger1 = !time && var(1)
anim = 6005
postype = p1
pos = ceil(9 * const(size.xscale)), ceil(-75 * const(size.yscale))
sprpriority = 2
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3400, Vel]
type = velmul
trigger1 = 1
x = 0.925
[State 3400, Vel]
type = velset
trigger1 = animelem = 4
x = 16
[State 3400, Vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 3400, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 106
[State 3400, Dust]
type = explod
trigger1 = animelem = 4
anim = 8103
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3400, close]
type = changeanim
trigger1 = animelemtime(4) >= 1 && animelemtime(8) < 0
trigger1 = animelemtime(animelemno(0)) >= 1
trigger1 = p2bodydist x <= 5 && p2dist x >= 0
value = 3400
elem = animelemno(0) + 1

[State 3400, Hit]
type = hitdef
trigger1 = animelem = 8
ID = 3400
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getpower = 0, 0
givepower = 36, 36
pausetime = 24, 24
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-78 * const(size.yscale))
hitsound = s2, 2
guardsound = s3, 0
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 10
ground.velocity = -12.75, 0
guard.velocity = -12.75
air.velocity = -7.4, -5.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-24.5
air.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120; 10
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
forcestand = 1
hitonce = 1
kill = 0

[State 3400, p2state]
type = targetstate
trigger1 = animelemtime(8) >= 0 && animelemtime(10) < 0
trigger1 = movehit && numtarget(3400)
ID = 3400
value = 3405
ignorehitpause = 1
[State 3400, p1state]
type = changestate
trigger1 = animelemtime(8) >= 0 && animelemtime(10) < 0
trigger1 = movehit && numtarget(3400)
value = 3401
ignorehitpause = 1

[State 3400, Type]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
[State 3400, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- --JUMP -----
[Statedef 3401]
type = A
physics = N
movetype = A
anim = 3401
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3401, Camera]
type = screenbound
trigger1 = 0;animelemtime(8) >= 0
value = 1
movecamera = 1, 0

[State 3401, black]
type = palfx
trigger1 = !time
time = 10
sinadd = -255, -255, -255, 40
[State 3401, black]
type = palfx
trigger1 = time >= 10
time = 1
mul = 0, 0, 0

[State 3401, FX]
type = playsnd
trigger1 = animelem = 2
value = 7, 4
[State 3401, FX]
type = explod
trigger1 = animelem = 2
anim = 3416
postype = p1
sprpriority = 1
scale = const(size.xscale), const(size.yscale)
ownpal = 1

[State 3401, Vel]
type = velset
trigger1 = animelem = 2
y = -12

[State 3401, black]
type = allpalfx
trigger1 = animelem = 3
time = 10
sinadd = -255, -255, -255, 40

[State 3401, End]
type = changestate
trigger1 = !animtime
value = 3402


;--- --SPARKS -----
[Statedef 3402]
type = A
physics = N
movetype = A
anim = 9741
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3402, throw]
type = targetstate
trigger1 = !time && numtarget(3400)
ID = 3400
value = 3406

[State 3402, Pos]
type = posset
trigger1 = 1
x = -const(size.ground.front) * facing
y = -240
[State 3402, Bind]
type = targetbind
trigger1 = numtarget(3400)
pos = 20 + (target(3400), const(size.ground.front) + const(size.ground.back)), 0
ID = 3400

[State 3402, Pause]
type = pause
trigger1 = time < 54
time = 2
movetime = 2
[State 3402, Pause]
type = pause
trigger1 = time = 54
time = 0
[State 3402, black]
type = envcolor
trigger1 = time < 54
time = 2
value = 0, 0, 0

[State 3402, Assert]
type = assertspecial
trigger1 = 1
flag = nobardisplay

[State 3402, hitadd]
type = hitadd
trigger1 = (time = [0, 48]) && !(time % 4)
value = 1
[State 3402, hitcount]
type = varadd
trigger1 = (time = [0, 48]) && !(time % 4)
var(13) = 1

[State 3402, damage];472
type = targetlifeadd
trigger1 = numtarget(3400)
trigger1 = (time = [0, 48]) && !(time % 4)
ID = 3400
value = ceil(ifelse(21 * fvar(11) < 7, -7, -21 * fvar(11)))
kill = 0
[State 3402, givepower]
type = targetpoweradd
trigger1 = numtarget(3400)
trigger1 = (time = [0, 48]) && !(time % 4)
ID = 3400
value = 36

[State 3402, HitSound]
type = playsnd
trigger1 = (time = [0, 48]) && !(time % 4)
value = 2, 2
channel = 2
[State 3402, Sparks]
type = explod
trigger1 = (time = [0, 48]) && !(time % 4)
anim = 8030 + (random % 8)
sprpriority = 5
postype = left
pos = 160, 120
random = 160, 120
;bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1
ontop = 1

[State 3402, Shake]
type = envshake
trigger1 = (time = [0, 48]) && !(time % 4)
time = 18
freq = 120
ampl = 6

[State 3402, End]
type = changestate
trigger1 = time >= 54
value = 3403


;--- --TAUNT -----
[Statedef 3403]
type = S
physics = N
movetype = A
anim = 3403
ctrl = 0
velset = 0, 0
sprpriority = 1
movehitpersist = 1

[State 3403, Pos]
type = posset
trigger1 = !time
y = 0
[State 3403, throw]
type = targetstate
trigger1 = !time && numtarget(3400)
ID = 3400
value = 3407

[State 3403, Snd]
type = playsnd
trigger1 = numtarget(3400)
trigger1 = (target(3400), stateno = 3408) && (target, time) = 1
value = 0, 5101
[State 3403, explosion]
type = explod
trigger1 = numtarget(3400)
trigger1 = (target(3400), stateno = 3408) && (target, time) = 1
anim = 3415
sprpriority = 1
postype = left
pos = 160 + ceil(target(3400), pos x), ceil(target(3400), screenpos y) -40
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 3403, Dust]
type = explod
trigger1 = numtarget(3400)
trigger1 = (target(3400), stateno = 3408) && (target, time) = 1
anim = 8110
sprpriority = -3
postype = left
pos = 160 + ceil(target(3400), pos x), ceil(target(3400), screenpos y)
facing = facing
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

;[State 3403, Anim]
;type = changeanim
;trigger1 = numtarget(3400)
;trigger1 = animelemtime(14) >= 0 && animelemtime(15) < 0
;value = 3403
;elem = 14

[State 3403, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 3405]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3405, nothitby]
type = nothitby
trigger1 = 1
value = SCA
ignorehitpause = 1
[State 3405, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 3405, Anim]
type = changeanim
trigger1 = !hitshakeover
value = 5012
ignorehitpause = 1

[State 3405, Anim]
type = changeanim
trigger1 = hitshakeover
value = ifelse(selfanimexist(5250), 5250, ifelse(selfanimexist(5051), 5051, 5030))
persistent = 0

[State 3405, fall]
type = hitfallset
trigger1 = !hitfall
value = 1
ignorehitpause = 1

[State 3405, Vel]
type = veladd
trigger1 = hitshakeover
y = 0.5
[State 3405, Vel]
type = velset
trigger1 = hitshakeover
y = -16
persistent = 0

[State 3405, Safety]
type = selfstate
trigger1 = pos y > -vel y
value = 5100


[Statedef 3406]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0
[State 3406, nothitby]
type = nothitby
trigger1 = 1
value = SCA
ignorehitpause = 1
[State 3406, Anim]
type = changeanim2
trigger1 = !time
value = 9741
[State 3406, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0


[Statedef 3407]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0
[State 3407, Anim]
type = changeanim2
trigger1 = !time
value = 3407
[State 3407, Pos]
type = posset
trigger1 = !time
y = -384
[State 3407, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0
[State 3407, Vel]
type = veladd
trigger1 = 1
y = 0.5
[State 3407, Vel]
type = velset
trigger1 = !time
y = 4
[State 3407, End]
type = changestate
trigger1 = pos y > -vel y
value = 3408


;--- Target Hit Floor ---
[Statedef 3408]
type = L
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 3408, damage]
type = lifeadd
trigger1 = !time
value = -80
kill = 1

[State 3408, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)

[State 3408, Pos]
type = posset
trigger1 = !time
y = 0
[State 3408, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 120
ampl = 6

[State 3408, End]
type = changestate
trigger1 = (anim = [5100, 5101]) && !animtime
trigger2 = time >= 12
value = 3409


;--- Target Bounce ---
[Statedef 3409]
type = L
movetype = H
physics = N
[State 3409, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3409, Anim]
type = changeanim
triggerall = !time
trigger1 = anim != [5101, 5109]
trigger2 = !selfanimexist(5160 + (anim % 10))
value = 5160

[State 3409, Anim]
type = changeanim
trigger1 = !time
trigger1 = (anim = [5101, 5109]) && selfanimexist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 3409, Vel]
type = hitfallvel
trigger1 = !time

[State 3409, Vel]
type = veladd
trigger1 = 1
y = 0.4

[State 3409, Pos]
type = posset
trigger1 = !time
y = 20

[State 3409, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 12
value = 3410


;--- Target Lie down ---
[Statedef 3410]
type = L
movetype = H
physics = N
[State 3410, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3410, Anim]
type = changeanim
trigger1 = anim = [5081, 5089]
trigger1 = selfanimexist(5110 + (anim % 10))
value = 5110 + (anim % 10)

[State 3410, Anim]
type = changeanim
triggerall = !time
triggerall = anim != [5110, 5119]
trigger1 = anim != [5161, 5169]
trigger2 = !selfanimexist(5170 + (anim % 10))
value = 5170

[State 3410, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim != [5110, 5119]
trigger1 = anim = [5161, 5169]
trigger1 = selfanimexist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 3410, Pos]
type = posset
trigger1 = 1
y = 0

[State 3410, Var]
type = varset
trigger1 = !time
trigger1 = gethitvar(fall.yvel)
sysvar(1) = floor(vel y)

[State 3410, FX]
type = fallenvshake
trigger1 = !time
[State 3410, FX]
type = playsnd
trigger1 = !time && !sysvar(0)
value = f7, (sysvar(1) > 5) + (sysvar(1) > 14)
[State 3410, FX]
type = gamemakeanim
trigger1 = !time && !sysvar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 3410, Vel]
type = velset
trigger1 = !time
y = 0

[State 3410, Anim]
type = changeanim
trigger1 = !animtime || sysvar(0)
trigger1 = (anim = [5171, 5179]) && selfanimexist(5110 + (anim % 10))
value = 5110 + (anim % 10)
[State 3410, Anim]
type = changeanim
trigger1 = anim != [5111, 5119]
trigger1 = !animtime || sysvar(0)
value = 5110
[State 3410, Anim]
type = changeanim
trigger1 = !alive
trigger1 = !animtime || sysvar(0) || (anim = [5110, 5119])
value = 5150

[State 3410, Var]
type = varset
trigger1 = !time
sysvar(0) = 0

[State 3410, Vel]
type = velmul
trigger1 = 1
x = 0.85

[State 3410, End]
type = selfstate
trigger1 = !alive
value = 5150
[State 3410, End]
type = selfstate
trigger1 = time >= 38
value = 5120


;======================< REVERSED SOMMERSAULT >========================
[Statedef 3500]
type = S
physics = N
movetype = A
anim = 3500
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3500, Button]
type = varset
trigger1 = var(10) != 0
var(10) = 0

[State 3500, super cancels]
type = varadd
triggerall = !time
trigger1 = (prevstateno = [1000, 4999]) || (enemynear, movetype = H && enemynear, statetype != L)
trigger1 = (prevstateno != [200, 699]) || var(16)
trigger2 = var(20)
var(16) = ifelse(var(15), var(15), 1)
[State 3500, super level]
type = varadd
trigger1 = !time
var(15) = 1

[State 3500, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, unguardable]
type = varset
trigger1 = time = 3 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 43
[State 3500, NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
time = 1
value = SCA

[State 3500, superpausefx]
type = helper
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(-29 * const(size.xscale)), ceil(-14 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3500, superpause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
p2defmul = 1
unhittable = 1
anim = -1
sound = s0, 8500
darken = 0

[State Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3500, shadow]
type = playsnd
trigger1 = !time && var(1)
value = 7, 5
[State 3500, shadow]
type = explod
trigger1 = !time && var(1)
anim = 6005
postype = p1
pos = ceil(15 * const(size.xscale)), ceil(-85 * const(size.yscale))
sprpriority = 2
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3500, Accel]
type = velmul
trigger1 = animelemtime(18) < 0
x = 0.9
y = 0.9
[State 3500, Accel]
type = veladd
trigger1 = animelemtime(18) >= 0
y = 0.5
[State 3500, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A

[State 3500, Vel]
type = velset
trigger1 = animelem = 6
x = 12
y = -12
[State 3500, Vel]
type = velset
trigger1 = vel y > 0
x = 0

[State 3500, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 5 || animelem = 12
value = 4, ifelse((animelem = 12), 2, 0)
channel = 0
[State 3500, Snd]
type = playsnd
trigger1 = animelem = 5 || animelem = 12
value = 7, 1
freqmul = ifelse((animelem = 5), 1.1, 1)

[State 3500, Snd]
type = playsnd
trigger1 = animelem = 6
value = 0, 41
[State 3500, Dust]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3500, FX]
type = helper
trigger1 = !numhelper(1105)
trigger1 = animelem = 5 || animelem = 12
helpertype = normal
stateno = 1105
ID = 1105
name = "Sommersault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3500, Hit]
type = hitdef
trigger1 = animelem = 5
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -3, -12
guard.velocity = 0
air.velocity = -3, -8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(ifelse((animelem = 6 || animelem = 14), -60, -30) * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3500, Hit]
type = hitdef
trigger1 = animelem = 6 || animelem = 12 || animelem = 14
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -3, -12
guard.velocity = 0
air.velocity = -3, -8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(ifelse((animelem = 6 || animelem = 14), -60, -30) * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3500, Hit]
type = hitdef
trigger1 = animelem = 7 || animelem = 15
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = -3, -12
guard.velocity = 0
air.velocity = -3, -8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-90 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3500, Type]
type = statetypeset
trigger1 = animelemtime(17) >= 0
movetype = I
[State 3500, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 3503


;--- LAND ---
[Statedef 3503]
type = S
physics = S
ctrl = 0
anim = 3503
velset = 0, 0
movehitpersist = 1
[State 3503, Pos]
type = posset
trigger1 = 1
y = 0
[State 3503, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3503, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 3503, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;======================< SONIC BLADE >========================
[Statedef 3600]
type = S
physics = S
movetype = A
anim = 3600
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -3000
facep2 = 1

[State 3600, Button]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 3600, super cancels]
type = varadd
triggerall = !time
trigger1 = (prevstateno = [1000, 4999]) || (enemynear, movetype = H && enemynear, statetype != L)
trigger1 = (prevstateno != [200, 699]) || var(16)
trigger2 = var(20)
var(16) = ifelse(var(15), var(15), 1)
[State 3600, super level]
type = varadd
trigger1 = !time
var(15) = 3

[State 3600, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3600, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 67
[State 3600, NHB]
type = nothitby
trigger1 = animelemtime(22) < 0
time = 1
value = SCA

[State 3600, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(-24 * const(size.xscale)), ceil(-76 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3600, superpause]
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

[State 3600, shadow]
type = playsnd
trigger1 = !time && var(1)
value = 7, 5
[State 3600, shadow]
type = explod
trigger1 = !time && var(1)
anim = 6005
postype = p1
pos = ceil(65 * const(size.xscale)), ceil(-85 * const(size.yscale))
sprpriority = 2
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3600, width]
type = width
trigger1 = animelemtime(18) >= -1 && animelemtime(19) < -1
player = ceil(40 * const(size.yscale))
[State 3600, width]
type = width
trigger1 = animelemtime(19) >= -1 && animelemtime(20) < -1
player = ceil(20 * const(size.yscale))
[State 3600, width]
type = width
trigger1 = animelemtime(20) >= -1 && animelemtime(21) < -1
player = ceil(2 * const(size.yscale))

[State 3600, Pos]
type = posadd
trigger1 = animelem = 18 || animelem = 19 || animelem = 20
x = ceil(ifelse((animelem = 18), 40, ifelse((animelem = 19), 20, 2)) * const(size.xscale))

[State 3600, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 2
value = 4, 3
channel = 0
[State 3600, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 17
value = 4, 4
channel = 0

[State 3600, FX]
type = helper
trigger1 = animelem = 21
helpertype = normal
stateno = 1010
ID = 1010
name = "Sonic Boom FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3600, Snd]
type = playsnd
trigger1 = animelem = 21
value = 7, 2

[State 3600, Sonic Blade]
type = helper
trigger1 = animelem = 19
helpertype = normal
stateno = 3605
ID = 3600
name = "Sonic Blade"
postype = p1
pos = 0, -75
size.xscale = 0.5
size.yscale = 0.5
supermovetime = 5
ownpal = 1

[State 3600, Anim]
type = changeanim
triggerall = animelemtime(26) >= 0 && animelemtime(27) < 0
trigger1 = numhelper(3600)
trigger1 = helper(3600), stateno = 3605
value = 3600
elem = 24
[State 3600, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< MOONSAULT STRIKE >========================
[Statedef 3700]
type = A
physics = N
movetype = A
anim = 3700
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000

[State 3700, Button]
type = varset
trigger1 = var(10) != 0
var(10) = 0

[State 3700, super cancels]
type = varadd
triggerall = !time
trigger1 = (prevstateno = [1000, 4999]) || (enemynear, movetype = H && enemynear, statetype != L)
trigger1 = (prevstateno != [200, 699]) || var(16)
trigger2 = var(20)
var(16) = ifelse(var(15), var(15), 1)
[State 3700, super level]
type = varadd
trigger1 = !time
var(15) = 1

[State 3700, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3700, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 43
[State 3700, NHB]
type = nothitby
trigger1 = animelemtime(7) < 0
time = 1
value = SCA

[State 3700, superpausefx]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = ceil(-6 * const(size.xscale)), ceil(-94 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 3700, superpause]
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

[State 3700, shadow]
type = playsnd
trigger1 = !time && var(1)
value = 7, 5
[State 3700, shadow]
type = explod
trigger1 = !time && var(1)
anim = 6005
postype = p1
pos = ceil(-6 * const(size.xscale)), ceil(-94 * const(size.yscale))
sprpriority = 2
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3700, Vel]
type = velset
trigger1 = animelemtime(14) < 0
x = 0
y = 0

[State 3700, Accel]
type = veladd
trigger1 = animelemtime(14) >= 0
y = ifelse(vel y >= 10, 0.5, 1)
[State 3700, Vel]
type = velset
trigger1 = animelem = 14
x = 6

[State 3700, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 7 || animelem = 13
value = 4, ifelse((animelem = 13), 4, 6)
channel = 0
[State 3700, Snd]
type = playsnd
trigger1 = animelem = 7 || animelem = 15
value = 7, 1
freqmul = ifelse((animelem = 15), 1.1, 1)

[State 3700, Sommersault Shell]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 3705
ID = 3700
name = "Sommersault Shell"
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(-24 * const(size.yscale))
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 3700, FX]
type = helper
trigger1 = !numhelper(1205)
trigger1 = animelem = 7 || animelem = 15
helpertype = normal
stateno = 1205
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3700, Hit]
type = hitdef
trigger1 = animelem = 7 || animelem = 9 || animelem = 15
attr = A, HA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 43 < 7, 7, fvar(11) * 43)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 12
guard.pausetime = 4, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 13
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -5.67, -6.67
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(ifelse((animelem = 9), -20, -60) * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3700, Hit]
type = hitdef
trigger1 = animelem = 17
ID = 3700
attr = A, HA
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 41 < 7, 7, fvar(11) * 41)), 7 * (var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 20
air.hittime = 13
ground.velocity = -12.75, 0
guard.velocity = -12.75
air.velocity = -5.67, -6.67
ground.cornerpush.veloff = 0;-24.5
guard.cornerpush.veloff = 0;-24.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
sparkno = s8030 + (random % 8)
guard.sparkno = s8001
sparkxy = var(21) := -10, var(22) := ceil(-20 * const(size.yscale))
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3700, p2state]
type = targetstate
trigger1 = movehit && numtarget(3700)
trigger1 = !(target, time) && (target(3700), stateno = [5000, 5010])
value = 7070
ID = 3700
ignorehitpause = 1

[State 3700, Type]
type = statetypeset
trigger1 = animelemtime(18) >= 0
movetype = I
[State 3700, End]
type = changestate
trigger1 = animelemtime(16) >= 0
trigger1 = vel y > 0 && pos y >= 0
value = 3701


;--- LAND ---
[Statedef 3701]
type = S
physics = S
ctrl = 0
anim = 3701
velset = 0, 0
movehitpersist = 1
[State 3701, Pos]
type = posset
trigger1 = 1
y = 0
[State 3701, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3701, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 3701, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
