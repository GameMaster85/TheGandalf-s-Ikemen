; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;========================< GADOU KEN >=============================
[Statedef 1005]
type = S
physics = N
movetype = A
anim = 1005
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1007
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 60
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 5, 4))
y = 0

[State 1005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 7
persistent = 0
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(70 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -3, -3
air.fall = 1
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1
fall.recover = 1
fall.recovertime = 22

[State 1005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1005, End]
type = changestate
trigger1 = var(1) >= ifelse(var(10) = 3, 12, ifelse(var(10) = 2, 10, 8))
value = 1006
ignorehitpause = 1
[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1007
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[Statedef 1006]
type = A
physics = N
movetype = I
anim = 1006
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 1006, Vel]
type = velmul
trigger1 = 1
x = 0.8
[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime

[Statedef 1007]
type = A
physics = N
movetype = I
anim = 1007
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 1007, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1007, Snd]
type = playsnd
trigger1 = !time
value = 5, 1
ignorehitpause = 1
persistent = 0
[State 1007, End]
type = destroyself
trigger1 = !animtime


;========================< EX GADOU KEN >=============================
[Statedef 1015]
type = S
physics = N
movetype = A
anim = 1015
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1015, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1017
ignorehitpause = 1
[State 1015, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1015, Strength]
type = varset
trigger1 = !time
var(10) = 4
[State 1015, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1005, timevar]
type = varadd
trigger1 = time && var(1) < 15
var(1) = 1

[State 1015, Vel]
type = velset
trigger1 = 1
x = 7
y = 0

[State 1015, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1015, Shadows]
type = afterimage
trigger1 = !time && !prevstateno
time = 999
timegap = 1
framegap = 2
length = 5
palbright = 40, 20, 0
palmul = 0.75, 0.6, 0.5
palcontrast = 220, 140, 80
trans = add

[State 1015, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 7
channel = 1
persistent = 0
ignorehitpause = 1

[State 1015, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(105 * (root, fvar(12))), 7
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -3
ground.cornerpush.veloff = 0
air.velocity = -6, -3
guard.velocity = -10.52
getpower = 0
givepower = 36, 36
fall = 1
fall.recover = 1
fall.recovertime = 20
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.color = 32
palfx.sinadd = 80, 25, 0, 8
palfx.mul = 512, 256, 128
palfx.time = 32
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1

[State 1015, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1015, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1015, End]
type = changestate
trigger1 = var(1) >= 12
value = 1016
ignorehitpause = 1
[State 1015, End]
type = changestate
trigger1 = movecontact
value = 1017
ignorehitpause = 1
[State 1015, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[Statedef 1016]
type = A
physics = N
movetype = I
anim = 1016
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 1016, Vel]
type = velmul
trigger1 = 1
x = 0.8
[State 1016, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1016, End]
type = destroyself
trigger1 = !animtime

[Statedef 1017]
type = A
physics = N
movetype = I
anim = 1017
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 1017, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1017, Snd]
type = playsnd
trigger1 = !time
value = 5, 1
ignorehitpause = 1
persistent = 0
[State 1017, End]
type = destroyself
trigger1 = !animtime


;========================< PREMIUM SIGN >=============================
[Statedef 1305]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1305, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1306
ignorehitpause = 1
[State 1305, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1305, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1305, Anim]
type = changeanim
trigger1 = (anim != [1305, 1307])
value = 1304 + var(10)

[State 1305, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1305, Vel]
type = velset
trigger1 = !time
x = ifelse(var(10) = 3, 5, ifelse(var(10) = 2, 4.5, 4))
y = ifelse(var(10) = 3, 3, ifelse(var(10) = 2, -2, -1))
[State 1305, Accel]
type = veladd
trigger1 = vel y = [ -10, 10]
y = ifelse(var(10) = 3, -.25, ifelse(var(10) = 2, 0.13, 0.25))

[State 1305, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 4
persistent = 0
ignorehitpause = 1

[State 1305, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(28 * (root, fvar(12))), 7
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 0, 8
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 8
envshake.freq = 120
envshake.ampl = 2
sprpriority = 3
ID = 1305
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1

[State 1305, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1305, End]
type = changestate
trigger1 = movecontact
value = 1306
ignorehitpause = 1
[State 1305, End]
type = changestate
trigger1 = pos y >= 0
value = 1307
[State 1305, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[Statedef 1306]
type = A
physics = N
movetype = I
velset = -vel x, vel y
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1306, custom]
type = targetstate
triggerall = movecontact && numtarget
triggerall = !(target, ishelper) && !(target, alive)
trigger1 = (target, prevstateno = [5000, 5011])
trigger2 = (target, prevstateno = [130, 131]) || (target, prevstateno = [140, 141]) || (target, prevstateno = [150, 153])
value = 1111305
ID = 1305
ignorehitpause = 1

[State 1306, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -12.8 * time), ceil(12.8 * time)
[State 1306, Pos]
type = posset
trigger1 = pos y >= 0
y = 0
[State 1306, Vel]
type = velset
trigger1 = pos y >= 0
x = 0
y = 0
[State 1306, Anim]
type = changeanim
trigger1 = pos y >= 0
value = anim
elem = animelemno(0)
[State 1306, End]
type = destroyself
trigger1 = time >= 20

[Statedef 1307]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 3
movehitpersist = 1
[State 1307, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
[State 1307, Anim]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0)
[State 1307, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -12.8 * time), ceil(12.8 * time)
[State 1307, Pos]
type = posset
trigger1 = 1
y = 0
[State 1307, End]
type = destroyself
trigger1 = time >= 20


;========================< GADOU SHOUKOU KEN >=============================
[Statedef 1405]
type = S
physics = N
movetype = A
anim = 1405
ctrl = 0
velset = 0, 0
sprpriority = 4
juggle = 5

[State 1405, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1407
ignorehitpause = 1
[State 1405, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1405, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1405, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 1405, timevar]
type = varadd
trigger1 = time && var(1) < 25
var(1) = 1

[State 1405, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 4, ifelse(var(10) = 2, 3.5, 3))
y = 0

[State 1405, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1405, Shadows]
type = afterimage
trigger1 = !time && !prevstateno
time = 999
timegap = 1
framegap = 2
length = 5
palcontrast = 75, 20, 0
palmul = 0.75, 0.5, 0.25
trans = add

[State 1405, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 7
persistent = 0
ignorehitpause = 1

[State 1405, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(94 * (root, fvar(12))), 7
animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
ground.cornerpush.veloff = 0
air.velocity = -6, -6
guard.velocity = -10.52
fall = 1
fall.recover = 1
fall.recovertime = 20
getpower = ifelse(p2movetype = H, 72, 144) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.color = 32
palfx.sinadd = 80, 25, 0, 8
palfx.mul = 512, 256, 128
palfx.time = 30
sprpriority = 4
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = ifelse((root, var(20)), -4, -8), -1.5
forcestand = 1

[State 1405, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7020 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -(target, const(size.ground.front) -10) * facing + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1405, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7180) < 1
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1405, End]
type = changestate
trigger1 = var(1) >= ifelse(var(10) = 3, 18, ifelse(var(10) = 2, 14, 10))
value = 1406
ignorehitpause = 1
[State 1405, End]
type = changestate
trigger1 = movecontact
value = 1407
ignorehitpause = 1
[State 1405, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[Statedef 1406]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 1406, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
[State 1406, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1406, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -floor(time * 16), 256
[State 1406, Shrink]
type = angledraw
trigger1 = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
[State 1406, End]
type = destroyself
trigger1 = time > 16

[Statedef 1407]
type = A
physics = N
movetype = I
anim = 1407
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 1407, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1407, Snd]
type = playsnd
trigger1 = !time
value = 5, 1
ignorehitpause = 1
persistent = 0
[State 1407, End]
type = destroyself
trigger1 = !animtime


;========================< SHINKUU GADOU KEN >=============================
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 5, 3005, 3007)
ignorehitpause = 1
[State 3005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5
[State 3005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3005

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3005, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3005, Vel]
type = velset
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1), 1, 6)
y = 0

[State 3005, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 7
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(30 * (root, fvar(12))), 7
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4 * (var(2) < 5), 6
sparkno = -1
sparkxy = 0, 0
guard.sparkno = s7001
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(var(2) < 5, -10.52, -6), ifelse(var(2) < 5, 0, -4)
ground.cornerpush.veloff = 0
air.velocity = -6, -4
guard.velocity = -10.52
fall = (var(2) >= 5)
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
sprpriority = 4
yaccel = 0.5
forcestand = 1

[State 3005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7030 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -(target, const(size.ground.front) -10) * facing + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 3005, End]
type = changestate
trigger1 = var(1) >= 12
value = 3006
ignorehitpause = 1
[State 3005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 5, 3005, 3007)
ignorehitpause = 1
[State 3005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]

[Statedef 3006]
type = A
physics = N
movetype = I
anim = 3006
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 3006, Vel]
type = velmul
trigger1 = 1
x = 0.8
[State 3006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3006, End]
type = destroyself
trigger1 = !animtime

[Statedef 3007]
type = A
physics = N
movetype = I
anim = 3007
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 3007, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3007, Snd]
type = playsnd
trigger1 = !time
value = 5, 1
ignorehitpause = 1
persistent = 0
[State 3007, End]
type = destroyself
trigger1 = !animtime


;========================< SHINKUU GADOU KEN >=============================
[Statedef 3405]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3405, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1
[State 3405, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 8, 3405, 3407)
ignorehitpause = 1

[State 3405, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 6
[State 3405, Anim]
type = changeanim
trigger1 = anim != 3405
value = 3405

[State 3405, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
[State 3405, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3405, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3405, Vel]
type = velset
trigger1 = 1
x = 1.5
y = 0

[State 3405, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3405, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 7
channel = 1
persistent = 0
ignorehitpause = 1

[State 3405, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(30 * (root, fvar(12))), 5
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 12 * (var(2) < 8), 4
guard.pausetime = 4 * (var(2) < 8), 6
sparkno = -1
sparkxy = 0, 0
guard.sparkno = s7001
sparkno = -1
guard.sparkno = s7001
sparkxy = -10, 0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = ifelse(p2dist x >= 0, -1, -2), -4
ground.cornerpush.veloff = 0
air.velocity = ifelse(p2dist x >= 0, -1, -2), -4
guard.velocity = -10.52
fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
sprpriority = 4
forcestand = 1

[State 3405, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 7030 + (random % 8)
ID = 7000
sprpriority = 5
postype = left
pos = ceil((target, pos x) -(target, const(size.ground.front) -10) * facing + 160), ceil(screenpos y)
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 3405, End]
type = changestate
trigger1 = var(1) >= 90
value = 3406
ignorehitpause = 1
[State 3405, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 8, 3405, 3407)
ignorehitpause = 1
[State 3405, End]
type = destroyself
trigger1 = (facing = 1 && pos x >= 200) || (facing = -1 && pos x <= -200)

[Statedef 3406]
type = A
physics = N
movetype = I
anim = 3006
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 3406, Vel]
type = velmul
trigger1 = 1
x = 0.8
[State 3406, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3406, End]
type = destroyself
trigger1 = !animtime

[Statedef 3407]
type = A
physics = N
movetype = I
anim = 3007
velset = 0, 0
ctrl = 0
sprpriority = 4
movehitpersist = 1
[State 3407, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3407, Snd]
type = playsnd
trigger1 = !time
value = 5, 1
ignorehitpause = 1
persistent = 0
[State 3407, End]
type = destroyself
trigger1 = !animtime


;========================< SAIKYOU -RYUU BOUGYO >=============================
[Statedef 1505]
physics = N
velset = 0, 0
anim = 1505
[State 1505, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)
[State 1505, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
[State 1505, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1505
ignorehitpause = 1
[State 1505, bound]
type = screenbound
trigger1 = 1
value = 0
[State 1505, Push]
type = playerpush
trigger1 = 1
value = 1
[State 1505, Vel]
type = velset
trigger1 = !time && !prevstateno
x = ifelse(var(10) = 4, 40, 20)
[State 1505, Vel]
type = velmul
trigger1 = 1
x = 0.9
[State 1505, Snd]
type = playsnd
trigger1 = !time
value = 5, 2
[State 1505, Dust]
type = explod
trigger1 = (p2bodydist x = [ -5, 5]) && (enemynear, statetype != A) && !(time % 3)
anim = 7103
ID = 7103
sprpriority = 2
postype = p1
pos = 0, 0
scale = 1, 1
removetime = -2
ownpal = 1
[State 1505, End]
type = destroyself
trigger1 = time >= 20


;========================< OTOKO CHARGE >=============================
[Statedef 4006]
physics = N
velset = 0, 0
anim = 7500
sprpriority = 3
[State 4006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 4006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = floor(time * 2.13), 256
[State 4006, Shrink]
type = angledraw
trigger1 = 1
scale = 0.0125 * time, 0.0125 * time
[State 4006, Snd]
type = playsnd
trigger1 = !time
value = 5, 8

[State 4006, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 256 -floor(2.13 * time)
mul = (256 -floor(2.13 * time)), (256 -floor(2.13 * time)), (256 -floor(0.53 * time))
[State 4006, End]
type = destroyself
trigger1 = root, animelemtime(6) >= 0
trigger2 = root, stateno != 4001 || root, movetype != A


;========================< OTOKO PORTRAIT >=============================
[Statedef 4008]
physics = N
velset = 0, 0
anim = 4008
sprpriority = -5

[State 4008, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4008, palfx]
type = bgpalfx
trigger1 = 1
time = 2
mul = floor(8.53 * time), floor(8.53 * time), floor(8.53 * time)

[State 4008, Pos]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y - screenpos y)

[State 4008, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -floor(time * 8.53), 256

[State 4008, End]
type = destroyself
trigger1 = time >= 30


;========================< FLAMES >=============================
;--- ENEMY ---
[Statedef 7180]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7180, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7180, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p2
vel = -.2, -.75
pos = (enemynear, const(size.mid.pos.x)), ifelse((enemynear, statetype = L), 0, (enemynear, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7180, Pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = enemynear, ctrl
trigger2 = enemynear, movetype != H || enemynear, stateno = 5300
trigger3 = enemynear, statetype = L && (enemynear, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = !numenemy || time >= 120


;--- ENEMY ---
[Statedef 7181]
physics = N
velset = 0, 0
anim = 9741
sprpriority = 4
[State 7181, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7181, flames]
type = explod
trigger1 = 1
anim = 7180
ID = 7180
sprpriority = 3
postype = p1
vel = -.2, -.75
pos = (root, const(size.mid.pos.x)), ifelse((root, statetype = L), 0, (root, const(size.mid.pos.y) + 10))
random = 40, 40
scale = 0.5, 0.5
ownpal = 1
[State 7181, Pos]
type = posadd
trigger1 = 1
x = ceil(rootdist x)
y = ceil(rootdist y)
[State End]
type = destroyself
triggerall = numenemy
trigger1 = root, ctrl
trigger2 = root, movetype != H || root, stateno = 5300
trigger3 = root, statetype = L && (root, stateno != [5080, 5081])
[State End]
type = destroyself
trigger1 = time >= 120


;========================< POWER CHARGE >=============================
;--- MAIN FX ---
[Statedef 7240]
type = S
anim = 7240
velset = 0, 0
ctrl = 0

[State 7240, Bind]
type = bindtoroot
trigger1 = (root, stateno = 740) && (root, anim = 740)
pos = 2, 0
[State 7240, Snd]
type = playsnd
trigger1 = !time
value = 7, 4
channel = 0

[State 7240, Aura]
type = explod
trigger1 = !numexplod(7242)
ID = 7242
anim = 7242
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7242) && (root, power < 3000)
ID = 7242
scale = 0.5, 0.1 + .4 * (root, power / 3000.0)
[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7242) && (root, power >= 3000)
ID = 7242
scale = 0.5, 0.5

[State 7240, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7240, End]
type = stopsnd
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)
channel = 0
[State 7240, End]
type = removeexplod
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)
[State 7240, End]
type = destroyself
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)


;--- PARTICLES ---
[Statedef 7243]
type = S
anim = 9741
velset = 0, 0
ctrl = 0

[State 7243, Bind]
type = bindtoroot
trigger1 = !(time % 4)
pos = ceil(-78 + (random / 6.25)), ceil(24 -(random / 6.25))

[State 7243, Particle]
type = explod
trigger1 = (time % 4) = 1
anim = 7243
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x + 2) / 16.0), ((rootdist y -56) / 16.0)
scale = ifelse(random < 500, 0.5, -.5), ifelse(random < 500, 0.5, -.5)
removetime = 16
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 7243, End]
type = removeexplod
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)
[State 7243, End]
type = destroyself
trigger1 = (root, stateno != 740) || (root, anim != 740) || (root, movetype = H)


;========================< ZERO COUNTER CHARGE >=============================
[Statedef 7250]
physics = N
velset = 0, 0
anim = 9741

[State 7250, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 20
add = -255, -128, -64
sinadd = 255, 128, 64, 80
persistent = 0
[State 7250, palfx]
type = palfx
trigger1 = !time
time = 20
sinadd = -255, -255, -255, 80

[State 7250, thunder]
type = explod
trigger1 = !time
anim = 7250
ID = 7250
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
removetime = -2
supermovetime = 30
ownpal = 1
[State 7250, Circle]
type = explod
trigger1 = !time
anim = 7251
ID = 7251
sprpriority = 5
postype = p1
removetime = 20
supermovetime = 30

[State 7250, Shrink]
type = modifyexplod
trigger1 = numexplod(7251)
ID = 7251
scale = 0.2 + (0.09 * time), 0.2 + (0.09 * time)
[State 7250, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7250, End]
type = destroyself
trigger1 = time >= 20


;========================< ORIGINAL COMBO CHARGE >=============================
[Statedef 7260]
physics = N
velset = 0, 0
anim = 9741

[State 7260, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 30
add = -255, -255, -128
sinadd = 255, 255, 128, 120
[State 7260, palfx]
type = palfx
trigger1 = time = 20
time = 11
sinadd = -255, -255, -255, 40
persistent = 0

[State 7260, main]
type = explod
trigger1 = !time
anim = 7260
ID = 7260
sprpriority = 5
postype = p1
removetime = 20
supermovetime = 300
[State 7260, sphere]
type = explod
trigger1 = !time
anim = 7500
ID = 7261
sprpriority = 5
postype = p1
removetime = -1
supermovetime = 300
[State 7260, Circle]
type = explod
trigger1 = time = 20
anim = 7501
ID = 7262
sprpriority = 5
postype = p1
removetime = -1
supermovetime = 300

[State 7260, shrinkcircle]
type = modifyexplod
trigger1 = 1
ID = 7260
scale = 2 -(0.1 * time), 2 -(0.1 * time)
[State 7260, shrinkcircle]
type = modifyexplod
trigger1 = 1
ID = 7261
scale = 0.017 * time, 0.017 * time
[State 7260, shrinkcircle]
type = modifyexplod
trigger1 = time >= 20
ID = 7262
scale = 0.1 + (0.1 * (time -20)), 0.1 + (0.1 * (time -20))

[State 7260, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1
[State 7260, bound]
type = screenbound
trigger1 = 1
value = 0
[State 7260, Safety]
type = removeexplod
trigger1 = time >= 30
[State 6110, End]
type = destroyself
trigger1 = time >= 30


;========================< JUMP DUST >=============================
[Statedef 7100]
physics = N
velset = 0, 0
anim = 9741
[State 7100, Bind]
type = bindtoroot
trigger1 = time
[State 7100, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 7101
ID = 7100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
[State 7100, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
[State 7100, End]
type = destroyself
trigger1 = time >= 7


;========================< SUPER CHARGE >=============================
[Statedef 7500]
physics = N
velset = 0, 0
anim = 9741

[State 7500, Lv1]
type = bgpalfx
trigger1 = time <= 10 && root, var(10) = 5
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -floor(25.6 * time), 256 -floor(25.6 * time), 256
color = 256 -floor(25.6 * time)
[State 7500, Lv1]
type = bgpalfx
trigger1 = (time = [11, 39]) && root, var(10) = 5
time = 1
mul = 0, 0, 256
color = 0
[State 7500, Lv1]
type = bgpalfx
trigger1 = time >= 40 && root, var(10) = 5
time = 1
mul = ceil(51.2 * (time -40)), ceil(51.2 * (time -40)), 256
color = floor(51.2 * (time -40))

[State 7500, Lv2]
type = bgpalfx
trigger1 = time <= 15 && root, var(10) = 6
time = 1
add = 256 -ceil(17.07 * time), 256 -ceil(17.07 * time), 256 -ceil(17.07 * time)
mul = 256 -floor(17.07 * time), 256 -floor(17.07 * time), 256
color = 256 -floor(17.07 * time)
[State 7500, Lv2]
type = bgpalfx
trigger1 = (time = [16, 47]) && root, var(10) = 6
time = 1
mul = 0, 0, 256
color = 0
[State 7500, Lv2]
type = bgpalfx
trigger1 = time >= 48 && root, var(10) = 6
time = 1
mul = ceil(51.2 * (time -48)), ceil(51.2 * (time -48)), 256
color = floor(51.2 * (time -48))

[State 7500, Lv3]
type = bgpalfx
trigger1 = time <= 20 && root, var(10) = 7
time = 1
add = 256 -ceil(12.8 * time), 256 -ceil(12.8 * time), 256 -ceil(12.8 * time)
mul = 256 -floor(12.8 * time), 256 -floor(12.8 * time), 256 -floor(12.8 * time)
color = 256 -floor(12.8 * time)
[State 7500, Lv3]
type = bgpalfx
trigger1 = (time = [21, 54]) && root, var(10) = 7
time = 1
mul = 0, 0, 0
color = 0
[State 7500, Lv3]
type = bgpalfx
trigger1 = time >= 55 && root, var(10) = 7
time = 1
mul = ceil(51.2 * (time -55)), ceil(51.2 * (time -55)), ceil(51.2 * (time -55))
color = floor(51.2 * (time -55))

[State 7500, Spiral]
type = helper
trigger1 = !time && root, var(10) >= 6
helpertype = normal
stateno = 7509
ID = 7509
name = "Super Charge Spiral"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 7500, Main]
type = explod
trigger1 = !time
anim = 7500
ID = 7500
sprpriority = 5
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1
[State 7500, Large Circle]
type = explod
trigger1 = !time
anim = 7501
ID = 7501
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Portrait]
type = explod
trigger1 = time = 1 && root, var(10) = 7
anim = 7510
ID = 7510
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
sprpriority = -16
bindtime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = !time
anim = 7502
ID = 75021
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 7
anim = 7502
ID = 75022
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 14
anim = 7502
ID = 75023
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 21
anim = 7502
ID = 75024
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
[State 7500, Circle]
type = explod
trigger1 = time = 28
anim = 7502
ID = 75025
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(10) = 5
ID = 7500
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(10) = 6
ID = 7500
scale = 1.5 -(0.0283 * time), 1.5 -(0.0283 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = root, var(10) = 7
ID = 7500
scale = 1.5 -(0.025 * time), 1.5 -(0.025 * time)

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7501)
ID = 7501
scale = 0.25 + (0.075 * time), 0.25 + (0.075 * time)
trans = addalpha
alpha = ceil(256 -6.4 * time), 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && time < 8
ID = 7510
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5
trans = addalpha

alpha = (32 * time), 256
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && (time = [8, 50])
ID = 7510
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(7510) && time >= 50
ID = 7510
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120) + (40 * (time -50))
scale = 0.5 + (0.25 * (time -50)), 0.5 + (0.25 * (time -50))
trans = addalpha
alpha = 256 -ceil(25.6 * (time -50)), 256

[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75021)
ID = 75021
scale = 0.25 + (0.0375 * time), 0.25 + (0.0375 * time)
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75022)
ID = 75022
scale = 0.25 + (0.0375 * (time -7)), 0.25 + (0.0375 * (time -7))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75023)
ID = 75023
scale = 0.25 + (0.0375 * (time -14)), 0.25 + (0.0375 * (time -14))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75024)
ID = 75024
scale = 0.25 + (0.0375 * (time -21)), 0.25 + (0.0375 * (time -21))
[State 7500, Scale]
type = modifyexplod
trigger1 = numexplod(75025)
ID = 75025
scale = 0.25 + (0.0375 * (time -28)), 0.25 + (0.0375 * (time -28))

[State 7500, Safety]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
[State 7500, No bars]
type = assertspecial
trigger1 = root, var(10) = 7
flag = nobardisplay
flag2 = noFG

[State 7500, Safety]
type = removeexplod
trigger1 = root, var(10) = 5 && time >= 45
trigger2 = root, var(10) = 6 && time >= 53
trigger3 = time >= 60
[State 7500, End]
type = destroyself
trigger1 = root, var(10) = 5 && time >= 45
trigger2 = root, var(10) = 6 && time >= 53
trigger3 = time >= 60


;--- Spiral ---
[Statedef 7509]
physics = N
anim = 7509
sprpriority = 5
[State 7509, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7509, Spin]
type = angleset
trigger1 = !time
value = -15 * (random % 24)
[State 7509, Spin]
type = angleadd
trigger1 = 1
value = -15

[State 7509, Angle]
type = angledraw
trigger1 = root, var(10) = 6
scale = 1 -(time / 53.0), 1 -(time / 53.0)
[State 7509, Trans]
type = trans
trigger1 = root, var(10) = 6
trans = addalpha
alpha = floor(4.83 * time), 256

[State 7509, Angle]
type = angledraw
trigger1 = root, var(10) = 7
scale = 1 -(time / 60.0), 1 -(time / 60.0)
[State 7509, Trans]
type = trans
trigger1 = root, var(10) = 7
trans = addalpha
alpha = floor(4.267 * time), 256

[State 7509, End]
type = destroyself
trigger1 = root, var(10) = 6 && time >= 53
trigger2 = time >= 60


;========================< COUNTER F.X. >=============================
[Statedef 7400]
type = A
physics = N
anim = 9741

[State 7400, superchargebgpalfx]
type = allpalfx
trigger1 = !time
time = 8
add = 255, 255, 255
sinadd = -255, -255, -255, 32

[State 7400, slow]
type = pause
trigger1 = time < 8
time = 1

[State 7400, End]
type = destroyself
trigger1 = time >= 8


;========================< SUPER FINISH >=============================
[Statedef 7600]
type = A
velset = 0, 0
anim = 9741
[State 7600, Bind]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y -screenpos y) + 120

[State 7600, Snd]
type = playsnd
trigger1 = !time
value = 7, 7
channel = 1

[State 7600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 7600, Snd]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 7600, BG PalFX]
type = bgpalfx
trigger1 = time < 10
time = 1
mul = 0, 0, 0
[State 7600, BG PalFX]
type = bgpalfx
trigger1 = time = [10, 20]
time = 1
mul = (time -10) * 25, (time -10) * 25, (time -10) * 25

[State 7600, MvC]
type = explod
trigger1 = !time
anim = 7601
ID = 7601
ontop = 1
postype = left
pos = 0, 0
scale = 1, (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1

[State 7600, Fade]
type = modifyexplod
trigger1 = numexplod(7601)
ID = 7601
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 7600, Circle]
type = explod
trigger1 = !time
anim = 7600
ID = 7600
sprpriority = -255
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1

[State 7600, Scale]
type = modifyexplod
trigger1 = numexplod(7600)
ID = 7600
scale = (0.25 * time), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 -12.8 * time), 256

[State 7600, Safety]
type = removeexplod
trigger1 = time > 20 && numexplod
trigger2 = roundstate < 3
[State 7600, nobars]
type = assertspecial
trigger1 = time <= 20
flag = nobardisplay
flag2 = noFG
flag3 = globalnoshadow

[State 7600, End]
type = destroyself
trigger1 = roundstate < 3


;========================< SANDALS >=============================
[Statedef 6005]
type = A
physics = N
movetype = I
ctrl = 0
anim = 6005
velset = -2 + (random / 250.0), -7.5 -(random / 133.3)
sprpriority = 2
[State 6005, Vel]
type = velset
trigger1 = (vel y = (0, 2]) && pos y >= -2
y = 0
[State 6005, Pos]
type = posset
trigger1 = pos y >= 0 && !vel y
y = 0
[State 6005, Pos]
type = velmul
trigger1 = pos y >= 0 && !vel y && !pos y
x = 0.8
[State 6005, Dust]
type = explod
trigger1 = vel y > 0 && pos y >= -ceil(vel y) && time < 90
anim = 7104
ID = 7104
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
scale = 0.25, 0.25
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 6005, Vel]
type = veladd
trigger1 = 1
y = 0.35
[State 6005, Vel]
type = velmul
trigger1 = vel y > 0 && pos y >= -ceil(vel y)
x = -.5 + (random / 500.0)
y = -.66

[State 6005, spin]
type = angleadd
trigger1 = 1
value = -12
[State 6005, spin]
type = angledraw
trigger1 = 1
[State 6005, Fade]
type = trans
trigger1 = time >= 60
trans = addalpha
alpha = ceil(256 -4.27 * (time -60)), ceil(4.27 * (time -60))
[State 6005, End]
type = destroyself
trigger1 = time >= 120


;========================< CAMERA CONTROL >=============================
[Statedef 7650]
physics = N
velset = 0, 0
anim = 9741
[State 7650, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 7650, End]
type = destroyself
trigger1 = roundstate = 2
