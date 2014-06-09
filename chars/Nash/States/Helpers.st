; _______________________________
;| Nash by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;========================< SONIC BOOM >=============================
[Statedef 1005]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1006
ignorehitpause = 1
[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = anim != 1005
value = 1005
[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)
[State 1005, Vel]
type = velset
trigger1 = !time && !prevstateno
x = ifelse(var(10) = 2, 5, ifelse(var(10) = 1, 4, 3))
y = 0

[State 1005, hitcount]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1005, juggle]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 1005, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger1 = root, stateno = 1000
var(18) = 1
ignorehitpause = 1
[State 1005, projcontact]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = 1
ignorehitpause = 1

[State 1005, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State 1005, counterflag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1005, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)
[State 1005, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (42 + 7 * var(10)) < 7, 7, fvar(11) * (42 + 7 * var(10)))), 7
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 1, ceil(12 / ((root, var(20) > 0) + 1.0))
guard.pausetime = 1, ceil(12 / ((root, var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 12
airguard.ctrltime = 16
ground.velocity = -12.75 / ((root, var(20) > 0) + 1.0), 0
guard.velocity = -12.75 / ((root, var(20) > 0) + 1.0)
air.velocity = -6.25 / ((root, var(20) > 0) + 1.0), -5.9
airguard.velocity = -7.5 / ((root, var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !(root, var(20))
fall.recovertime = 38
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p1sprpriority = 4
forcestand = 1

[State 1005, hit -]
type = hitdef
trigger1 = root, var(14) >= 1
attr = S, SP
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (42 + 7 * var(10)) < 7, 7, fvar(11) * (42 + 7 * var(10)))), 7
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 1, ceil(12 / ((root, var(20) > 0) + 1.0))
guard.pausetime = 1, ceil(12 / ((root, var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 12
airguard.ctrltime = 16
ground.velocity = -12.75 / ((root, var(20) > 0) + 1.0), 0
guard.velocity = -12.75 / ((root, var(20) > 0) + 1.0)
air.velocity = -6.25 / ((root, var(20) > 0) + 1.0), -5.9
airguard.velocity = -7.5 / ((root, var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !(root, var(20))
fall.recovertime = 38
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p1sprpriority = 4
forcestand = 1

[State 1005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = facing
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1006
ignorehitpause = 1
[State 1005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


[Statedef 1006]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1006
velset = 0, 0
sprpriority = 4
[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime


;========================< EX SONIC BOOM >=============================
[Statedef 1025]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1025, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = ifelse(var(0) < 2, 1025, 1026)
ignorehitpause = 1
[State 1025, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1025, Anim]
type = changeanim
trigger1 = anim != 1005
value = 1005
[State 1025, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1025, Vel]
type = velset
trigger1 = !time && !prevstateno
x = 7.5
y = 0

[State 1025, numhit]
type = varadd
trigger1 = !time
var(0) = 1

[State 1025, hitcount]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1025, juggle]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 1025, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger1 = root, stateno = 1020
var(18) = 1
ignorehitpause = 1
[State 1025, projcontact]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = 1
ignorehitpause = 1

[State 1025, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State 1025, counterflag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1025, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)
[State 1025, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 1025, Hit]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 12
guard.pausetime = 4, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 12
airguard.ctrltime = 16
ground.velocity = -5.45, -6.65
guard.velocity = -12.75
air.velocity = -5.45, -6.65
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 38
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = -1
guardsound = -1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p1sprpriority = 4
forcestand = 1

[State 1025, hit -]
type = hitdef
trigger1 = root, var(14) >= (var(0) + 1)
attr = S, SP
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 12
guard.pausetime = 4, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 12
airguard.ctrltime = 16
ground.velocity = -5.45, -6.65
guard.velocity = -12.75
air.velocity = -5.45, -6.65
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 38
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = -1
guardsound = -1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p1sprpriority = 4
forcestand = 1

[State 1025, hitsound]
type = playsnd
trigger1 = movecontact && hitpausetime = 3
value = ifelse(moveguarded, 3, 2), ifelse(moveguarded, 0, 6)
channel = 2
ignorehitpause = 1
[State 1025, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = facing
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1025, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(0) < 2, 1025, 1026)
ignorehitpause = 1
[State 1025, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


[Statedef 1026]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1006
velset = 0, 0
sprpriority = 4
[State 1026, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1026, End]
type = destroyself
trigger1 = !animtime


;========================< EX SOMMERSAULT SHELL >=============================
[Statedef 1125]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1125, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1126
ignorehitpause = 1
[State 1125, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1125, Anim]
type = changeanim
trigger1 = anim != 1125
value = 1125
[State 1125, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1125, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)
[State 1125, Vel];40 degrees
type = velset
trigger1 = !time && !prevstateno
x = 8;7.7
y = -8;-9.2

[State 1125, timevar]
type = varadd
trigger1 = 1
var(1) = 1
ignorehitpause = 1

[State 1125, hitcount]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1125, juggle]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(14) = 1
ignorehitpause = 1
persistent = 0
[State 1125, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger1 = root, stateno = 1120
var(18) = (var(18) := 1)
ignorehitpause = 1

[State 1125, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State 1125, counterflag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1125, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)
[State 1125, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 1125, Hit]
type = hitdef
trigger1 = !movecontact
attr = A, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 22 < 7, 7, fvar(11) * 22)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 1, 12
guard.pausetime = 1, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 12
airguard.ctrltime = 16
ground.velocity = -12.75, 0
guard.velocity = -12.75
air.velocity = -6.25, -7.5
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 54
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p1sprpriority = 4
forcestand = 1

[State 1125, hit -]
type = hitdef
trigger1 = root, var(14) >= 3
trigger1 = !movecontact
attr = A, SP
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 1, 12
guard.pausetime = 1, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 12
airguard.ctrltime = 16
ground.velocity = -12.75, 0
guard.velocity = -12.75
air.velocity = -6.25, -5.9
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 54
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p1sprpriority = 4
forcestand = 1

[State 1125, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = facing
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1125, End]
type = changestate
trigger1 = movecontact
value = 1126
ignorehitpause = 1
[State 1125, End]
type = changestate
trigger1 = var(1) >= 10
value = 1127
[State 1125, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


[Statedef 1126]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1126
velset = 0, 0
sprpriority = 4
[State 1126, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1126, End]
type = destroyself
trigger1 = !animtime


[Statedef 1127]
type = A
physics = N
movetype = I
sprpriority = 4
[State 1127, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1
[State 1127, Shrink]
type = angledraw
trigger1 = 1
scale = 1 -(time * 0.1), 1 -(time * 0.1)
[State 1127, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -(25 * time), 256
ignorehitpause = 1
[State 1127, End]
type = velmul
trigger1 = 1
x = 0.75
y = 0.75
[State 1127, End]
type = destroyself
trigger1 = time >= 10


;========================< SONIC BREAK >=============================
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3006
ignorehitpause = 1
[State 3005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 3005, Anim]
type = changeanim
trigger1 = anim != 1005
value = 1005
[State 3005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, Button]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 3005, Vel]
type = velset
trigger1 = !time && !prevstateno
x = 5.54;6.66
y = 0

[State 3005, hitcount]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 3005, juggle]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(14) = 1
ignorehitpause = 1
persistent = 0
[State 3005, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger1 = root, stateno = 3000
var(18) = (var(18) := 1)
ignorehitpause = 1
[State 3005, movehitvar]
type = varset
trigger1 = numhelper(3005)
trigger1 = helper(3005), var(18)
var(18) = 1

[State 3005, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State 3005, counterflag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 3005, unguardable]
type = assertspecial
trigger1 = root, var(17) > 0
flag = unguardable
ignorehitpause = 1
[State 3005, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)

[State 3005, dampener]
type = varset
trigger1 = !time && !prevstateno
fvar(10) = root, fvar(10)
ignorehitpause = 1
[State 3005, dampener]
type = varset
trigger1 = 1
fvar(11) = (fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7 * (root, var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 1, 12
guard.pausetime = 1, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 13
airguard.ctrltime = 16
ground.velocity = -12.75 / ((root, var(20) > 0) + 1.0), 0
guard.velocity = -12.75 / ((root, var(20) > 0) + 1.0)
air.velocity = -6.5, -5.9
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p1sprpriority = 4
forcestand = 1

[State 3005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8030 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = facing
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 3005, End]
type = changestate
trigger1 = movecontact
value = 3006
ignorehitpause = 1
[State 3005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


[Statedef 3006]
type = A
physics = N
movetype = I
ctrl = 0
anim = 3006
velset = 0, 0
sprpriority = 4
[State 3006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3006, End]
type = destroyself
trigger1 = time >= 30
trigger2 = animelemtime(9) >= 0 && !numtarget


;========================< SONIC BLADE >=============================
[Statedef 3605]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 1

[State 3605, Anim]
type = changeanim
trigger1 = (anim != [3605, 3606])
value = 3605
[State 3605, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3605, Bind]
type = bindtoroot
trigger1 = anim = 3605 && animelemtime(7) < 0
trigger1 = root, stateno = 3600 && root, movetype != H
trigger1 = root, animelemtime(21) < 0
pos = 0, -75

[State 3605, Anim]
type = changeanim
trigger1 = anim = 3605 && animelemtime(10) >= 0
trigger1 = movecontact && numtarget
value = 3606

[State 3605, Vel]
type = velset
trigger1 = anim = 3605
x = 6
y = 0
[State 3606, Vel]
type = velmul
trigger1 = anim = 3606
x = 0.85
y = 0.85

[State 3605, hitcount]
type = parentvaradd
trigger1 = movehit = 1 && numtarget && hitpausetime = 1
trigger1 = !(target, ishelper)
var(13) = 1
ignorehitpause = 1
[State 3605, juggle]
type = parentvaradd
trigger1 = movehit = 1 && numtarget && hitpausetime = 1
trigger1 = !(target, ishelper)
var(14) = 1
ignorehitpause = 1
[State 3605, projcontact]
type = parentvarset
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, ishelper)
trigger1 = root, stateno = 3600
var(18) = (var(18) := 1)
ignorehitpause = 1

[State 3605, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State 3605, counterflag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 3605, unguardable]
type = assertspecial
trigger1 = root, var(17) > 0
flag = unguardable
ignorehitpause = 1

[State 3605, dampener]
type = varset
trigger1 = !time && !prevstateno
fvar(10) = root, fvar(10)
ignorehitpause = 1
[State 3605, dampener]
type = varset
trigger1 = 1
fvar(11) = (fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 3605, Hit]
type = hitdef
trigger1 = anim = 3605 && animelem = 7
trigger2 = anim = 3606
trigger2 = (animelem = 1 || animelem = 5 || animelem = 9 || animelem = 13 || animelem = 17 || animelem = 21 || animelem = 25 || animelem = 29)
attr = S, HP
hitflag = MAFP
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 6 * (root, var(15) <= 3)
getpower = 0, 0
givepower = 36, 36
pausetime = 2, 12
guard.pausetime = 2, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 13
ground.velocity = 0, 0
guard.velocity = -12.75
air.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = -1
guardsound = -1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
guard.dist = 320
p1sprpriority = 1
forcestand = 1

[State 3605, Hit]
type = hitdef
trigger1 = anim = 3606 && animelem = 29
attr = S, HP
hitflag = MAFP
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 8 * (root, var(15) <= 3)
getpower = 0, 0
givepower = 36, 36
pausetime = 2, 12
guard.pausetime = 2, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 13
ground.velocity = -6, -6
guard.velocity = -12.75
air.velocity = -6, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = -1
guardsound = -1
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
guard.dist = 320
p1sprpriority = 1
forcestand = 1

[State 3605, hitsound]
type = playsnd
trigger1 = movecontact && hitpausetime = 1
value = ifelse(moveguarded, 3, 2), ifelse(moveguarded, 0, 7)
channel = 2
ignorehitpause = 1
[State 3605, Sparks]
type = explod
trigger1 = movehit = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8030 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -40) * facing) + 160), ceil(screenpos y)
facing = facing
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State 3605, End]
type = destroyself
trigger1 = !animtime
trigger2 = anim = 3605 && animelemtime(7) < 0
trigger2 = root, movetype = H


;========================< 0..... >=============================
[Statedef 3705]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 3705, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3706
ignorehitpause = 1
[State 3705, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 3705, Anim]
type = changeanim
trigger1 = anim != 3705
value = 3705
[State 3705, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3705, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)
[State 3705, Vel]
type = velset
trigger1 = !time && !prevstateno
x = 4
y = 4

[State 3705, hitcount]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 3705, juggle]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(14) = 1
ignorehitpause = 1
persistent = 0
[State 3705, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger1 = root, stateno = 3700
var(18) = (var(18) := 1)
ignorehitpause = 1

[State 3705, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State 3705, counterflag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 3705, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)
[State 3705, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 3705, Hit]
type = hitdef
trigger1 = !movecontact
attr = A, HP
hitflag = MAF
guardflag = H
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7 * (root, var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 1, 12
guard.pausetime = 1, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 12
airguard.ctrltime = 16
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -5.67, -6.67
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p1sprpriority = 4
forcestand = 1

[State 3705, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = facing
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 3705, End]
type = changestate
trigger1 = movecontact
value = 3706
ignorehitpause = 1
[State 3705, End]
type = changestate
trigger1 = pos y >= 0
value = 3707
[State 3705, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


[Statedef 3706]
type = A
physics = N
movetype = I
ctrl = 0
anim = 3706
velset = 0, 0
sprpriority = 4
[State 3706, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3706, End]
type = destroyself
trigger1 = !animtime


[Statedef 3707]
type = A
physics = N
movetype = I
ctrl = 0
anim = 3706
velset = 0, 0
sprpriority = 4
[State 3707, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3707, Pos]
type = posset
trigger1 = pos y > 0
y = 0
[State 3707, Snd]
type = playsnd
trigger1 = !time
value = 2, 6
volume = -128
[State 3707, Snd]
type = playsnd
trigger1 = !time
value = 3, 0
volume = -128
[State 3706, End]
type = destroyself
trigger1 = !animtime


;========================< SONIC BOOM FX >=============================
[Statedef 1010]
type = A
velset = 0, 0
anim = 1010
sprpriority = 3

[State 1010, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1000 || root, anim != 1000
trigger2 = root, stateno != 1020 || root, anim != 1020
trigger2 = root, stateno != 3000 || (root, anim != [3000, 3002])
trigger2 = root, stateno != 3200 || root, anim != 3200
trigger2 = root, stateno != 3600 || root, anim != 3600
trigger3 = (root, anim = 1000 || root, anim = 1020) && (root, animelemtime(3) < 0 || root, animelemtime(6) >= 0)
trigger4 = (root, anim = [3000, 3002]) && (root, animelemtime(2) < 0 || root, animelemtime(5) >= 0)
trigger5 = root, anim = 3200 && (root, animelemtime(23) < 0 || root, animelemtime(26) >= 0)
trigger6 = root, anim = 3600 && (root, animelemtime(6) < 0 || root, animelemtime(9) >= 0)

[State 1010, Bind]
type = bindtoroot
trigger1 = 1
[State 1010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1010, Anim]
type = changeanim
trigger1 = (root, anim = 1000 || root, anim = 1020) && root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
trigger2 = root, anim = 3000 && root, animelemtime(2) >= 0 && root, animelemtime(3) < 0
value = 1010
elem = 1
[State 1010, Anim]
type = changeanim
trigger1 = (root, anim = 1000 || root, anim = 1020) && root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
trigger2 = root, anim = 3000 && root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
value = 1010
elem = 2
[State 1010, Anim]
type = changeanim
trigger1 = (root, anim = 1000 || root, anim = 1020) && root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
trigger2 = root, anim = 3000 && root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
value = 1010
elem = 3

[State 1010, Anim]
type = changeanim
trigger1 = root, anim = 3001 && root, animelemtime(2) >= 0 && root, animelemtime(3) < 0
trigger2 = root, anim = 3600 && root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 1010
elem = 4
[State 1010, Anim]
type = changeanim
trigger1 = root, anim = 3001 && root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
trigger2 = root, anim = 3600 && root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
value = 1010
elem = 5
[State 1010, Anim]
type = changeanim
trigger1 = root, anim = 3001 && root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
trigger2 = root, anim = 3600 && root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
value = 1010
elem = 6

[State 1010, Anim]
type = changeanim
trigger1 = root, anim = 3002 && root, animelemtime(2) >= 0 && root, animelemtime(3) < 0
trigger2 = root, anim = 3200 && root, animelemtime(23) >= 0 && root, animelemtime(24) < 0
value = 1010
elem = 7
[State 1010, Anim]
type = changeanim
trigger1 = root, anim = 3002 && root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
trigger2 = root, anim = 3200 && root, animelemtime(24) >= 0 && root, animelemtime(25) < 0
value = 1010
elem = 8
[State 1010, Anim]
type = changeanim
trigger1 = root, anim = 3002 && root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
trigger2 = root, anim = 3200 && root, animelemtime(25) >= 0 && root, animelemtime(26) < 0
value = 1010
elem = 9


;========================< SOMMERSAULT FX >=============================
[Statedef 1105]
type = A
velset = 0, 0
anim = 1105
sprpriority = 3

[State 1105, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1100 || (root, anim != [1100, 1102])
trigger2 = root, stateno != 1120 || root, anim != 1120
trigger2 = root, stateno != 3100 || root, anim != 3100
trigger2 = root, stateno != 3500 || root, anim != 3500
trigger3 = (root, anim = [1100, 1101])
trigger3 = root, animelemtime(3) < 0 || root, animelemtime(6) >= 0
trigger4 = root, anim = 1102 || root, anim = 1120
trigger4 = root, animelemtime(3) < 0 || root, animelemtime(9) >= 0

[State 1105, End]
type = destroyself
triggerall = root, anim = 3100
trigger1 = root, animelemtime(4) < 0 || root, animelemtime(34) >= 0
trigger2 = root, animelemtime(10) >= 0 && root, animelemtime(16) < 0
trigger3 = root, animelemtime(22) >= 0 && root, animelemtime(28) < 0
[State 1105, End]
type = destroyself
triggerall = root, anim = 3500
trigger1 = root, animelemtime(5) < 0 || root, animelemtime(18) >= 0
trigger2 = root, animelemtime(8) >= 0 && root, animelemtime(12) < 0

[State 1105, Bind]
type = bindtoroot
trigger1 = 1
[State 1105, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [1100, 1102]) || root, anim = 1120)
trigger1 = root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [1100, 1102]) || root, anim = 1120)
trigger1 = root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [1100, 1102]) || root, anim = 1120)
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 1102 || root, anim = 1120
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 1102 || root, anim = 1120
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 1102 || root, anim = 1120
trigger1 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
value = 1105
elem = 6

[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3100
trigger1 = (root, animelemtime(4) >= 0 && root, animelemtime(5) < 0)
trigger2 = (root, animelemtime(16) >= 0 && root, animelemtime(17) < 0)
trigger3 = (root, animelemtime(28) >= 0 && root, animelemtime(29) < 0)
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3100
trigger1 = (root, animelemtime(5) >= 0 && root, animelemtime(6) < 0)
trigger2 = (root, animelemtime(17) >= 0 && root, animelemtime(18) < 0)
trigger3 = (root, animelemtime(29) >= 0 && root, animelemtime(30) < 0)
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3100
trigger1 = (root, animelemtime(6) >= 0 && root, animelemtime(7) < 0)
trigger2 = (root, animelemtime(18) >= 0 && root, animelemtime(19) < 0)
trigger3 = (root, animelemtime(30) >= 0 && root, animelemtime(31) < 0)
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3100
trigger1 = (root, animelemtime(7) >= 0 && root, animelemtime(8) < 0)
trigger2 = (root, animelemtime(19) >= 0 && root, animelemtime(20) < 0)
trigger3 = (root, animelemtime(31) >= 0 && root, animelemtime(32) < 0)
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3100
trigger1 = (root, animelemtime(8) >= 0 && root, animelemtime(9) < 0)
trigger2 = (root, animelemtime(20) >= 0 && root, animelemtime(21) < 0)
trigger3 = (root, animelemtime(32) >= 0 && root, animelemtime(33) < 0)
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3100
trigger1 = (root, animelemtime(9) >= 0 && root, animelemtime(10) < 0)
trigger2 = (root, animelemtime(21) >= 0 && root, animelemtime(22) < 0)
trigger3 = (root, animelemtime(33) >= 0 && root, animelemtime(34) < 0)
value = 1105
elem = 6

[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3500
trigger1 = (root, animelemtime(5) >= 0 && root, animelemtime(6) < 0)
trigger2 = (root, animelemtime(12) >= 0 && root, animelemtime(13) < 0)
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3500
trigger1 = (root, animelemtime(6) >= 0 && root, animelemtime(7) < 0)
trigger2 = (root, animelemtime(13) >= 0 && root, animelemtime(14) < 0)
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3500
trigger1 = (root, animelemtime(7) >= 0 && root, animelemtime(8) < 0)
trigger2 = (root, animelemtime(14) >= 0 && root, animelemtime(15) < 0)
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 3500
trigger1 = (root, animelemtime(15) >= 0 && root, animelemtime(16) < 0)
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 3500
trigger1 = (root, animelemtime(16) >= 0 && root, animelemtime(17) < 0)
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 3500
trigger1 = (root, animelemtime(17) >= 0 && root, animelemtime(18) < 0)
value = 1105
elem = 6


;========================< MOONSAULT FX >=============================
[Statedef 1205]
type = A
velset = 0, 0
anim = 1205
sprpriority = 3

[State 1205, Bind]
type = bindtoroot
trigger1 = 1
[State 1205, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1205, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1200 || (root, anim != [1200, 1202])
trigger2 = root, stateno != 1220 || root, anim != 1220
trigger2 = root, stateno != 3700 || root, anim != 3700
trigger3 = (root, anim = [1200, 1202]) || root, anim = 1220
trigger3 = root, animelemtime(5) < 0 || root, animelemtime(8) >= 0
trigger4 = root, anim = 3700
trigger4 = root, animelemtime(7) < 0 || (root, animelemtime(10) >= 0 && root, animelemtime(15) < 0) || root, animelemtime(18) >= 0

[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [1200, 1202]) || root, anim = 1220)
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
value = 1205
elem = 1
[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [1200, 1202]) || root, anim = 1220)
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 1205
elem = 2
[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [1200, 1202]) || root, anim = 1220)
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
value = 1205
elem = 3

[State 1205, Anim]
type = changeanim
triggerall = root, anim = 3700
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
trigger2 = root, animelemtime(15) >= 0 && root, animelemtime(16) < 0
value = 1205
elem = 1
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 3700
trigger1 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
trigger2 = root, animelemtime(16) >= 0 && root, animelemtime(17) < 0
value = 1205
elem = 2
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 3700
trigger1 = root, animelemtime(9) >= 0 && root, animelemtime(10) < 0
trigger2 = root, animelemtime(17) >= 0 && root, animelemtime(18) < 0
value = 1205
elem = 3


;========================< WARP FX >=============================
[Statedef 1305]
type = A
velset = 0, 0
anim = 1305
sprpriority = -1

[State 1305, End]
type = destroyself
trigger1 = root, movetype = H
trigger1 = root, stateno != 1300 || (root, anim != [1300, 1302])
trigger2 = root, anim = 1000 && (root, animelemtime(2) < 0 || root, animelemtime(3) >= 0)
trigger3 = (root, anim = [1300, 1302]) && (root, animelemtime(2) < 0 || root, animelemtime(3) >= 0)
[State 1305, Bind]
type = bindtoroot
trigger1 = 1

[State 1305, Anim]
type = changeanim
trigger1 = !time
value = 1305
elem = ifelse((root, anim = 1300), 5, ifelse((root, anim = 1301), 3, 1))
[State 1305, Anim]
type = changeanim
trigger1 = animelemtime(7) >= 0
value = 1305
elem = 7


;====================< HARRIER >====================
[Statedef 6000]
type = A
physics = N
anim = 6000
velset = 0, 5
ctrl = 0
sprpriority = -255
[State 6000, Angle]
type = varadd
trigger1 = vel y <= 0 && var(0) <= 60
var(0) = 1
[State 6000, Angle]
type = angledraw
trigger1 = 1
value = var(0)
scale = (0.25 + .015 * time), (0.25 + .015 * time)
[State 6000, Vel]
type = veladd
trigger1 = animelemtime(2) >= 0
x = -.1
y = -.25
[State 6000, Snd]
type = playsnd
trigger1 = time = 5
value = 7, 3
[State 6000, Shake]
type = envshake
trigger1 = !(time % 6) && time < 100
time = 6
ampl = 3
freq = 90
[State 6000, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
[State 6000, End]
type = destroyself
trigger1 = time >= 190
trigger1 = (pos x != [ -312, 312]) || (screenpos y != [ -34, 75])

[Statedef 6001]
type = A
physics = N
anim = 6001
velset = 5, -1
ctrl = 0
sprpriority = -255
[State 6001, Pos]
type = posset
trigger1 = !time
x = -205 * facing
y = -112
[State 6001, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
[State 6001, End]
type = destroyself
trigger1 = time >= 60
trigger1 = (pos x != [ -210, 210]) || (screenpos y != [0, 240])


;====================< SHADOW DISTORTION >====================
[Statedef 6010]
type = A
physics = N
anim = 9741
sprpriority = 2
ctrl = 0

[State 6010, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 6010, Bind]
type = bindtoroot
trigger1 = 1
;pos = cos(time / 60.0 * pi) * 2, sin(time / 30.0 * pi) * 2
pos = -1 + (random % 3), -1 + (random % 3)
facing = 1
[State 6010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 128
ignorehitpause = 1

[State 6010, Anim]
type = varset
trigger1 = !(root, hitpausetime)
var(0) = (root, anim)
[State 6010, Anim]
type = varset
trigger1 = !(root, hitpausetime)
var(1) = (root, animelemno(0))

[State 6010, Anim]
type = changeanim
trigger1 = gametime <= root, var(58)
value = var(0)
elem = var(1)

[State 6010, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 6010, custom]
type = assertspecial
trigger1 = gametime > root, var(58)
flag = invisible
[State 6010, custom]
type = changeanim
trigger1 = gametime > root, var(58)
value = 9741


;========================< RECOVER FX >=============================
[Statedef 8200]
type = A
velset = 0, 0
anim = 8200
sprpriority = 5
[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)
[State 8200, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -17.1 * time), 256

[State 8200, End]
type = destroyself
trigger1 = time >= 15


;========================< COUNTER FX >=============================
[Statedef 8290]
type = A
velset = 0, 0
anim = 9741
[State 8290, Reset]
type = parentvarset
trigger1 = !time
trigger1 = playerIDexist(parent, ID)
var(9) = 0

[State 8290, Circle]
type = explod
trigger1 = !numexplod(8290)
anim = 8290
ID = 8290
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8290, Scale]
type = modifyexplod
trigger1 = numexplod(8290)
ID = 8290
scale = 0.2 + (0.08 * time), 0.2 + (0.08 * time)
trans = addalpha
alpha = ceil(256 -(25.6 * time)), 256

[State 8290, Safety]
type = removeexplod
trigger1 = time >= 10
[State 8290, End]
type = destroyself
trigger1 = time >= 10


;====================< POWER CHARGE >====================
;--- MAIN FX ---
[Statedef 8330]
type = S
anim = 9741
velset = 0, 0
ctrl = 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = 0, 0
[State 8330, Snd]
type = playsnd
trigger1 = !time
value = 0, 730
channel = 0

[State 8330, Aura]
type = explod
trigger1 = !numexplod(8330)
ID = 8330
anim = 8330
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8330, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8104
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && (root, power < 3000)
ID = 8330
scale = 0.5, 0.1 + .00013 * (root, power)
[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && (root, power >= 3000)
ID = 8330
scale = 0.5, 0.5

[State 8330, End]
type = removeexplod
trigger1 = root, stateno != 730
[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
channel = 0
[State 8330, End]
type = destroyself
trigger1 = root, stateno != 730


;--- PARTICLES ---
[Statedef 8332]
type = S
anim = 9741
velset = 0, 0
ctrl = 0

[State 8332, Bind]
type = bindtoroot
trigger1 = !(time % 8)
pos = ceil(-161 + (random / 3.125)), ceil(73 -(random / 3.125))

[State 8332, Particle]
type = explod
trigger1 = (time % 8) = 1
anim = 8332
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x -1) / 32.0), ((rootdist y -73) / 32.0)
scale = ifelse(random < 500, 0.5, -.5), ifelse(random < 500, 0.5, -.5)
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8332, End]
type = removeexplod
trigger1 = root, stateno != 730
[State 8332, End]
type = destroyself
trigger1 = root, stateno != 730


;========================< EXCEL COMBO CHARGE >=============================
[Statedef 8400]
type = A
velset = 0, 0
anim = 9741
[State 8400, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 35
add = -255, -128, -128
sinadd = 255, 128, 128, 140

[State 8400, FX]
type = explod
trigger1 = !time
anim = 8400
ID = 8400
sprpriority = 5
postype = p1
removetime = 20
supermovetime = -1
[State 8400, FX]
type = explod
trigger1 = time = 15
anim = 8401
ID = 8401
sprpriority = 5
postype = p1
supermovetime = -1
[State 8400, FX]
type = explod
trigger1 = !time
anim = 8402
ID = 8402
sprpriority = 5
postype = p1
removetime = 15
supermovetime = -1
[State 8400, logo]
type = explod
trigger1 = !time
anim = 8403
ID = 8403
sprpriority = -5
postype = p1
facing = facing
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8400)
ID = 8400
scale = 0.02 * time, 0.02 * time
[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8400) && time >= 15
ID = 8400
scale = 0.02 * time, 0.02 * time
trans = addalpha
alpha = ceil(256 -(51.2 * (time -15))), 256

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8401)
ID = 8401
scale = 0.1 + (0.1 * (time -15)), 0.1 + (0.1 * (time -15))
trans = addalpha
alpha = ceil(256 -(25.6 * (time -15))), 256

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8402)
ID = 8402
scale = 2 -(0.133 * time), 2 -(0.133 * time)

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8403)
ID = 8403
scale = 0.0385 * time, 0.0385 * time
trans = addalpha
alpha = ifelse(time < 15, ceil(17.1 * time), ceil(256 -23.3 * (time -15))), 256

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26
[State 8400, End]
type = destroyself
trigger1 = time >= 30


;========================< EXCEL TIMER >=============================
[Statedef 8405]
physics = N
velset = 0, 0
anim = 9741
[State 8405, Turn]
type = turn
trigger1 = facing = -1

[State 8405, back]
type = explod
trigger1 = !numexplod(8406)
anim = 8406
ID = 8406
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
[State 8495, front]
type = explod
trigger1 = !numexplod(8407)
anim = 8407
ID = 8407
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
[State 8405, frame]
type = explod
trigger1 = !numexplod(8405)
anim = 8405
ID = 8405
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8405, Scale]
type = modifyexplod
trigger1 = numexplod(8407)
ID = 8407
scale = (root, var(20)) / 180.0, 1

[State 8405, Bind]
type = bindtoroot
trigger1 = 1
pos = 20 * (root, facing), 4
time = -1
[State 8405, Safety]
type = removeexplod
trigger1 = (root, var(20) <= 0)
[State 8405, End]
type = destroyself
trigger1 = (root, var(20) <= 0)


;========================< SUPER CHARGE >=============================
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5
[State 8500, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8500, level]
type = varset
trigger1 = !time
var(0) = ifelse((root, var(15) >= 3), 2, ifelse((root, var(15) <= 1), 0, 1))
[State 8500, time]
type = varset
trigger1 = !time
var(1) = ifelse((root, var(10) = 2), 60, ifelse((root, var(10) = 1), 50, 40))

[State 8500, Lv1 blue]
type = bgpalfx
trigger1 = time <= 10 && var(0) = 0
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256
color = 256 -ceil(25.6 * time)
[State 8500, Lv1 blue]
type = bgpalfx
trigger1 = time >= 11 && var(0) = 0
time = 1
mul = 0, 0, 256
color = 0
[State 8500, Lv1 blue]
type = bgpalfx
trigger1 = time >= var(1) && var(0) = 0
time = 1
mul = ceil(51.2 * (time -var(1))), ceil(51.2 * (time -var(1))), 256
color = ceil(51.2 * (time -var(1)))

[State 8500, Lv2 magenta]
type = bgpalfx
trigger1 = time <= 10 && var(0) = 1
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256, 256 -ceil(25.6 * time), 256 -ceil(12.8 * time)
color = 256 -ceil(25.6 * time)
[State 8500, Lv2 magenta]
type = bgpalfx
trigger1 = time >= 11 && var(0) = 1
time = 1
mul = 256, 0, 128
color = 0
[State 8500, Lv2 magenta]
type = bgpalfx
trigger1 = time >= var(1) && var(0) = 1
time = 1
mul = 256, ceil(51.2 * (time -var(1))), 128 + ceil(25.6 * (time -var(1)))
color = ceil(51.2 * (time -var(1)))

[State 8500, Lv3 fire]
type = bgpalfx
trigger1 = time <= 10 && var(0) = 2
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256, 256 -ceil(19.2 * time), 256 -ceil(25.6 * time)
color = 256 -ceil(25.6 * time)
[State 8500, Lv3 fire]
type = bgpalfx
trigger1 = time >= 11 && var(0) = 2
time = 1
mul = 256, 64, 0
color = 0
[State 8500, Lv3 fire]
type = bgpalfx
trigger1 = time >= var(1) && var(0) = 2
time = 1
mul = 256, 64 + ceil(38.4 * (time -var(1))), ceil(51.2 * (time -var(1)))
color = ceil(51.2 * (time -var(1)))

[State 8500, Anim]
type = changeanim
trigger1 = !time
value = 8500 + 10 * var(0)
[State 8500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)
[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8500, Scale]
type = angledraw
trigger1 = time < var(1)
scale = 1.5 -1.5 * ((time * 1.0) / var(1)), 1.5 -1.5 * ((time * 1.0) / var(1))
[State 8500, Scale]
type = angledraw
trigger1 = time >= var(1)
scale = 0, 0

[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8500, Circle]
type = explod
trigger1 = !time
anim = 8501 + 10 * var(0)
ID = 8501
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(8501)
ID = 8501
scale = 0.25 + (0.075 * time), 0.25 + (0.075 * time)
trans = addalpha
alpha = ceil(256 -6.4 * time), 256

[State 8500, Circle]
type = explod
trigger1 = time = 4
anim = 8502 + 10 * var(0)
ID = 85021
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 8
anim = 8502 + 10 * var(0)
ID = 85022
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 12
anim = 8502 + 10 * var(0)
ID = 85023
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 16
anim = 8502 + 10 * var(0)
ID = 85024
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 20
anim = 8502 + 10 * var(0)
ID = 85025
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 24
anim = 8502 + 10 * var(0)
ID = 85026
sprpriority = 5
postype = p1
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(85021)
ID = 85021
scale = 0.25 + ((time -4) * 0.0313), 0.25 + ((time -4) * 0.0313)
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(85022)
ID = 85022
scale = 0.25 + ((time -8) * 0.0313), 0.25 + ((time -8) * 0.0313)
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(85023)
ID = 85023
scale = 0.25 + ((time -12) * 0.0313), 0.25 + ((time -12) * 0.0313)
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(85024)
ID = 85024
scale = 0.25 + ((time -16) * 0.0313), 0.25 + ((time -16) * 0.0313)
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(85025)
ID = 85025
scale = 0.25 + ((time -20) * 0.0313), 0.25 + ((time -20) * 0.0313)
[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(85026)
ID = 85026
scale = 0.25 + ((time -24) * 0.0313), 0.25 + ((time -24) * 0.0313)

[State 8500, Safety]
type = removeexplod
trigger1 = time >= (var(1) + 1)
[State 8500, End]
type = destroyself
trigger1 = time >= (var(1) + 5)


;========================< JUMP DUST >=============================
[Statedef 8100]
type = S
velset = 0, 0
anim = 9741
[State 8100, Bind]
type = bindtoroot
trigger1 = time
[State 8100, Dust]
type = explod
trigger1 = !time
anim = 8100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 8101
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8100, End]
type = destroyself
trigger1 = time >= 7


;====================< ZERO COUNTER CHARGE >====================
[Statedef 8350]
type = S
anim = 9741
velset = 0, 0

[State 8350, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
add = ceil(-255 + 17.1 * time), ceil(-128 + 8.5 * time), ceil(-32 + 2.1 * time)
color = 17 * time

[State 8350, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
supermovetime = -1
ownpal = 1
[State 8350, thunder]
type = explod
trigger1 = !time
anim = 8350
ID = 8350
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1
[State 8350, Circle]
type = explod
trigger1 = !time
anim = 8351
ID = 8351
sprpriority = 3
postype = p1
removetime = 15
supermovetime = -1
ownpal = 1

[State 8350, Circle]
type = modifyexplod
trigger1 = numexplod(8351)
ID = 8351
scale = 0.2 + (0.12 * time), 0.2 + (0.12 * time)
trans = addalpha
alpha = (256 -17 * time), 256

[State 8350, No Shadow]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow
[State 8350, End]
type = destroyself
trigger1 = time >= 15


;========================< SUPER FINISH >=============================
[Statedef 8600]
type = A
velset = 0, 0
anim = 9741

[State 8600, Bind]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y -screenpos y) + 120

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 0, 8600
channel = 1

[State 8600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8600, Snd]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 10
time = 1
mul = 0, 0, 0
[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [10, 20]
time = 1
mul = (time -10) * 25, (time -10) * 25, (time -10) * 25

[State 8600, MvC]
type = explod
trigger1 = !time
anim = 8600
ID = 8600
sprpriority = 5
postype = left
pos = 0, 0
scale = 1, (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8600)
ID = 8600
scale = 1, 1
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 8600, Circle]
type = explod
trigger1 = !time
anim = 8601
ID = 8601
sprpriority = -5
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
under = 1

[State 8600, Shrink]
type = modifyexplod
trigger1 = numexplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 -12.8 * time), 256

[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3000)
var(0) = 1
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3100)
var(0) = 2
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3200)
trigger2 = !time && (root, var(23) = [3300, 3301])
var(0) = 3
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = [3402, 3403])
var(0) = 5
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3500)
var(0) = 6
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3600)
var(0) = 7
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3700)
var(0) = 8

[State 8600, Text]
type = explod
trigger1 = !time
anim = 8610 + var(0)
ID = 8610
sprpriority = 5
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = (1.3333333 * gameheight / gamewidth), (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
ontop = 1
[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8610)
ID = 8610
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 8600, Safety]
type = removeexplod
trigger1 = time > 20 && numexplod
trigger2 = roundstate < 3
[State 8600, nobars]
type = assertspecial
trigger1 = time <= 20
flag = nobardisplay
flag2 = noFG
[State 8600, End]
type = destroyself
trigger1 = roundstate < 3


;========================< EXCEL FINISH >=============================
[Statedef 8650]
type = A
velset = 0, 0
anim = 9741

[State 8650, Bind]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y -screenpos y) + 120

[State 8650, Sound]
type = playsnd
trigger1 = !time
value = 0, 8600
channel = 1

[State 8650, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8650, Snd]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 8650, BG PalFX]
type = bgpalfx
trigger1 = time < 10
time = 1
mul = 0, 0, 0
[State 8650, BG PalFX]
type = bgpalfx
trigger1 = time = [10, 20]
time = 1
mul = (time -10) * 25, (time -10) * 25, (time -10) * 25

[State 8650, MvC]
type = explod
trigger1 = !time
anim = 8650
ID = 8650
sprpriority = 5
postype = left
pos = 0, 0
scale = 1, (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8650, Fade]
type = modifyexplod
trigger1 = numexplod(8650)
ID = 8650
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 8650, Circle]
type = explod
trigger1 = !time
anim = 8651
ID = 8651
sprpriority = -5
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
under = 1

[State 8650, Shrink]
type = modifyexplod
trigger1 = numexplod(8651)
ID = 8651
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 -12.8 * time), 256

[State 8650, Text]
type = explod
trigger1 = !time
anim = 8403
ID = 8502
sprpriority = -5
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.75 * (1.3333333 * gameheight / gamewidth), 0.75 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
under = 1

[State 8650, Fade]
type = modifyexplod
trigger1 = numexplod(8502)
ID = 8502
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 8650, Safety]
type = removeexplod
trigger1 = time > 20 && numexplod
trigger2 = roundstate < 3
[State 8650, nobars]
type = assertspecial
trigger1 = time <= 20
flag = nobardisplay
flag2 = noFG
[State 8650, End]
type = destroyself
trigger1 = roundstate < 3


;========================< CAMERA CONTROL >=============================
[Statedef 8999]
type = S
velset = 0, 0
anim = 9741
[State 8999, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
[State 8999, End]
type = destroyself
trigger1 = roundstate = 2
