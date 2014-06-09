; _______________________________
;| Yuri by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;========================< KOUOU KEN >=============================
[Statedef 1005]
type = S
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

[State 1005, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)
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

[State 1005, Vel]
type = velset
trigger1 = !time && !prevstateno
x = ifelse(var(10) = 2, 10, ifelse(var(10) = 1, 7, 4))
y = 0
[State 1005, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 1005, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = (var(18) := 1)
ignorehitpause = 1
[State 1005, hitcount]
type = parentvaradd
trigger1 = movehit && numtarget
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1005, juggle]
type = parentvaradd
trigger1 = movehit && numtarget
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 1005, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)

[State 1005, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8490
ID = 8490
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0
[State 1005, counterflag]
type = varset
trigger1 = 1
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
damage = ceil(ifelse(fvar(11) * (62 + (7 * var(10)) -(7 * animelemtime(4) >= 0)) < 7, 7, fvar(11) * (62 + (7 * var(10)) -(7 * animelemtime(4) >= 0)))), 8 + (var(10) -animelemtime(4) >= 0)
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -3, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -3, -6
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
fall.recover = !(root, var(20))
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
forcestand = 1

[State 1005, hit -]
type = hitdef
trigger1 = root, var(14) >= 1
attr = S, SP
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (62 + (7 * var(10)) -(7 * animelemtime(4) >= 0)) < 7, 7, fvar(11) * (62 + (7 * var(10)) -(7 * animelemtime(4) >= 0)))), 8 + (var(10) -animelemtime(4) >= 0)
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -3, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -3, -6
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
fall.recover = !(root, var(20))
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
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
trigger1 = !animtime


[Statedef 1006]
type = S
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 4
[State 1006, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1
[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1006, End]
type = destroyself
trigger1 = !animtime


;========================< EX KOUOU KEN >=============================
[Statedef 1025]
type = S
movetype = A
ctrl = 0
sprpriority = 4

[State 1025, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1006
ignorehitpause = 1
[State 1025, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1025, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)
[State 1025, Anim]
type = changeanim
trigger1 = anim != 1025
value = 1025
[State 1025, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1025, Vel]
type = velset
trigger1 = !time && !prevstateno
x = 18
y = 0
[State 1025, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 1025, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = (var(18) := 1)
ignorehitpause = 1
[State 1025, hitcount]
type = parentvaradd
trigger1 = movehit && numtarget
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1025, juggle]
type = parentvaradd
trigger1 = movehit && numtarget
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 1025, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8490
ID = 8490
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0
[State 1025, counterflag]
type = varset
trigger1 = 1
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1025, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)
[State 1005, dampener]
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
damage = ceil(ifelse((fvar(11) * ifelse(animelemtime(4) >= 0, 92, 100)) < 7, 7, (fvar(11) * ifelse(animelemtime(4) >= 0, 92, 100)))), ceil(fvar(11) * (11 + var(10)))
getpower = 0, 0
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -3, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -3, -6
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
forcestand = 1

[State 1025, hit -]
type = hitdef
trigger1 = root, var(14) >= 2
attr = S, SP
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse((fvar(11) * ifelse(animelemtime(4) >= 0, 92, 100)) < 7, 7, (fvar(11) * ifelse(animelemtime(4) >= 0, 92, 100)))), ceil(fvar(11) * (11 + var(10)))
getpower = 0, 0
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -3, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -3, -6
air.cornerpush.veloff = 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
forcestand = 1

[State 1025, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1025, End]
type = changestate
trigger1 = movecontact
value = 1006
ignorehitpause = 1
[State 1025, End]
type = destroyself
trigger1 = !animtime


;========================< RAIOU KEN >=============================
[Statedef 1255]
type = A
movetype = A
ctrl = 0
sprpriority = 4

[State 1255, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1256
ignorehitpause = 1
[State 1255, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1255, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)
[State 1255, Anim]
type = changeanim
trigger1 = anim != 1255
value = 1255
[State 1255, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1255, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 2, 6, ifelse(var(10) = 1, 4.5, 3))
y = ifelse(var(10) = 2, 6, ifelse(var(10) = 1, 4.5, 3))

[State 1255, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = (var(18) := 1)
ignorehitpause = 1
[State 1255, hitcount]
type = parentvaradd
trigger1 = movehit && numtarget
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1255, juggle]
type = parentvaradd
trigger1 = movehit && numtarget
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 1255, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8490
ID = 8490
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0
[State 1255, counterflag]
type = varset
trigger1 = 1
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1255, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)
[State 1255, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 1255, Hit]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (55 + (7 * var(10))) < 7, 7, fvar(11) * (62 + (7 * var(10))))), 7 + var(10)
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.hittime = 18
air.velocity = -5, 1.5
air.cornerpush.veloff = 0
down.velocity = 0, 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !(root, var(20))
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
forcestand = 1

[State 1255, hit -]
type = hitdef
trigger1 = root, var(14) >= 1
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (55 + (7 * var(10))) < 7, 7, fvar(11) * (62 + (7 * var(10))))), 7 + var(10)
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.hittime = 18
air.velocity = -5, 1.5
air.cornerpush.veloff = 0
down.velocity = 0, 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !(root, var(20))
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
forcestand = 1

[State 1255, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1255, End]
type = changestate
trigger1 = movecontact
value = 1256
ignorehitpause = 1
[State 1255, End]
type = changestate
trigger1 = pos y >= 0
value = 1257
ignorehitpause = 1

[State 1255, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


[Statedef 1256]
type = A
movetype = I
anim = 1256
ctrl = 0
velset = 0, 0
sprpriority = 4
[State 1256, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1256, End]
type = destroyself
trigger1 = !animtime


[Statedef 1258]
type = A
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = 4
[State 1258, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1
[State 1258, Fade]
type = trans
trigger1 = 1
trans = addalpha
alpha = (256 -16 * time), 256
[State 1258, Shrink]
type = angledraw
trigger1 = 1
scale = 1 -(time * 0.0625), 1 -(time * 0.0625)
[State 1258, End]
type = destroyself
trigger1 = time >= 16


;--- HIT FLOOR ---
[Statedef 1257]
type = C
movetype = A
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 1257, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1256
ignorehitpause = 1
[State 1257, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1
[State 1257, NHB]
type = nothitby
trigger1 = movecontact || movereversed
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1257, Anim]
type = changeanim
trigger1 = anim != 1257
value = 1257
[State 1257, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1257, Snd]
type = playsnd
trigger1 = !time && prevstateno != 1257
value = 2, 6
[State 1257, Snd]
type = playsnd
trigger1 = !time && prevstateno != 1257
value = 3, 0
[State 1257, Dust]
type = explod
trigger1 = !time && prevstateno != 1257
anim = 8104
sprpriority = -3
postype = p1
pos = 0, 0
scale = 0.25, 0.25
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1257, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 1257, Pos]
type = posset
trigger1 = 1
y = 0

[State 1257, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = (var(18) := 1)
ignorehitpause = 1
[State 1257, hitcount]
type = parentvaradd
trigger1 = movehit && numtarget
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1257, juggle]
type = parentvaradd
trigger1 = movehit && numtarget
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 1257, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8490
ID = 8490
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0
[State 1257, counterflag]
type = varset
trigger1 = 1
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1257, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)
[State 1257, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 1257, Hit]
type = hitdef
trigger1 = !movecontact && !movereversed
attr = S, SP
hitflag = MAFD
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.hittime = 18
air.velocity = -3, -3
air.cornerpush.veloff = 0
down.velocity = 0, 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !(root, var(20))
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
forcestand = 1

[State 1257, hit -]
type = hitdef
trigger1 = (root, var(14) >= 1) || (root, var(17))
trigger1 = !movecontact && !movereversed
attr = S, SP
hitflag = MA
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -8, 0
ground.cornerpush.veloff = 0
air.hittime = 18
air.velocity = -3, -3
air.cornerpush.veloff = 0
down.velocity = 0, 0
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !(root, var(20))
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
forcestand = 1

[State 1257, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y) -46
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1257, End]
type = destroyself
trigger1 = !animtime


;========================< HAOU SHOUKOU KEN >=============================
[Statedef 3005]
type = S
movetype = A
ctrl = 0
sprpriority = 4

[State 3005, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
slot = 0
stateno = ifelse(var(0) < 3, 3005, 3006)
ignorehitpause = 1
[State 3005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 3005, Button]
type = varset
trigger1 = var(10) != 4
var(10) = 4
[State 3005, Button]
type = varset
trigger1 = !time && !prevstateno
var(11) = root, var(11)
[State 3005, Anim]
type = changeanim
trigger1 = anim != 3005
value = 3005

[State 3005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(11) = 2, 7, ifelse(var(11) = 1, 5.5, 4)) * (time >= 1 || !var(0))
y = 0

[State 3005, numhit]
type = varadd
trigger1 = !time
var(0) = 1
[State 3005, timevar]
type = varadd
trigger1 = 1
var(1) = 1
ignorehitpause = 1

[State 3005, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = (var(18) := 1)
ignorehitpause = 1
[State 3005, hitcount]
type = parentvaradd
trigger1 = movehit && numtarget
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 3005, juggle]
type = parentvaradd
trigger1 = movehit && numtarget
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 3005, Scale]
type = angledraw
trigger1 = var(1) <= 5
scale = 0.2 * var(1), 0.2 * var(1)
ignorehitpause = 1
[State 3005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8490
ID = 8490
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0
[State 3005, counterflag]
type = varset
trigger1 = 1
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

[State 3005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2, 6
channel = 1
persistent = 0
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
attr = S, HP
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 8 * (root, var(15) <= 1)
getpower = 0, 0
givepower = 36, 36
pausetime = 4 * (var(0) < 3), 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = -1
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -4.5, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -4.5, -6
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = 0
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
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
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 3005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(0) < 3, 3005, 3006)
ignorehitpause = 1
[State 3005, End]
type = destroyself
trigger1 = pos x != [ -200, 200]


[Statedef 3006]
type = A
movetype = I
anim = 3006
ctrl = 0
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
trigger1 = !animtime


;========================< SAIFA >=============================
[Statedef 1305]
type = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1305, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AT
time = -1
slot = 0
stateno = 1306
ignorehitpause = 1
[State 1305, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, HP
time = -1
slot = 1
stateno = 1306
ignorehitpause = 1
[State 1305, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AP
time = -1
slot = 2
stateno = ifelse(var(55), 1306, 1308)
ignorehitpause = 1

[State 1305, nothitby]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1
[State 1305, HB]
type = hitby
trigger1 = !var(55) && (time % 2)
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1305, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)
[State 1305, Anim]
type = changeanim
trigger1 = anim != 1305
value = 1305
[State 1305, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1305, Bind]
type = bindtoroot
trigger1 = 1
pos = 62, -80

[State 1305, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = (var(18) := 1)
ignorehitpause = 1
[State 1305, hitcount]
type = parentvaradd
trigger1 = movehit && numtarget
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1305, juggle]
type = parentvaradd
trigger1 = movehit && numtarget
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 1305, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8490
ID = 8490
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0
[State 1305, counterflag]
type = varset
trigger1 = 1
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1305, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 1305, Hit]
type = hitdef
trigger1 = !var(55)
ID = 1305
attr = S, SP
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (76 + 7 * var(10)) < 7, 7, fvar(11) * (76 + 7 * var(10)))), (9 + var(10))
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -4, -8
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -4, -8
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
p2stateno = 1340
forcestand = 1

[State 1305, hit -]
type = hitdef
trigger1 = root, var(14) >= 1
trigger1 = !var(55)
ID = 1305
attr = S, SP
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (76 + 7 * var(10)) < 7, 7, fvar(11) * (76 + 7 * var(10)))), (9 + var(10))
getpower = ifelse(!(root, var(13)), 144, 72) * !(root, var(20)), 36 * !(root, var(20))
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -4, -8
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -4, -8
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
p2stateno = 1340
forcestand = 1

[State 1305, nohit]
type = hitdef
trigger1 = var(55)
attr = S, SP
hitflag = 
sparkxy = -10, 0

[State 1305, Reversal]
type = reversaldef
trigger1 = !var(55) && (time % 2)
reversal.attr = SCA, NP, SP
priority = 4, Hit
p1stateno = 1308
p2stateno = 1340
sparkno = -1
pausetime = 0, 0
numhits = 0
p1sprpriority = 4

[State 1305, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1305, End]
type = changestate
trigger1 = movecontact
trigger2 = root, stateno != 1300 || (root, anim != [1300, 1302]) || root, movetype = H
trigger3 = (root, anim = [1300, 1302]) && (root, animelemtime(5) < 0 || root, animelemtime(10) >= 0)
value = 1306
ignorehitpause = 1


[Statedef 1306]
type = A
movetype = I
anim = 9741
ctrl = 0
velset = 0, 0
sprpriority = 4
[State 1306, End]
type = destroyself
trigger1 = root, stateno != 1300 || (root, anim != [1300, 1302]) || root, movetype = H
trigger2 = (root, anim = [1300, 1302]) && root, animelemtime(5) < 0


;--- Reflect ---
[Statedef 1308]
type = A
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1308, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1
[State 1308, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1308, reflected]
type = helper
trigger1 = !time
trigger1 = var(55) := 1
helpertype = normal
stateno = 1330
ID = 1330
name = "Random Projectile"
postype = p1
pos = 37, 0
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1308, End]
type = changestate
trigger1 = 1
value = 1305


;========================< EX SAIFA >=============================
[Statedef 1325]
type = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1325, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AT
time = -1
slot = 0
stateno = 1326
ignorehitpause = 1
[State 1325, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AP
time = -1
slot = 1
stateno = ifelse(var(55), 1326, 1328)
ignorehitpause = 1

[State 1325, nothitby]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1
[State 1325, HB]
type = hitby
trigger1 = !var(55) && (time % 2)
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1325, Anim]
type = changeanim
trigger1 = anim != 1305
value = 1305
[State 1325, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1325, Bind]
type = bindtoroot
trigger1 = 1
pos = 62, -80

[State 1325, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(18) = (var(18) := 1)
ignorehitpause = 1
[State 1325, hitcount]
type = parentvaradd
trigger1 = movehit && numtarget
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1325, juggle]
type = parentvaradd
trigger1 = movehit && numtarget
var(14) = 1
ignorehitpause = 1
persistent = 0

[State 1325, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8490
ID = 8490
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
persistent = 0
[State 1325, counterflag]
type = varset
trigger1 = 1
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1325, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 1325, Hit]
type = hitdef
trigger1 = !var(55)
ID = 1325
attr = S, SP
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 110 < 7, 7, fvar(11) * 110)), 14
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -4, -8
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -4, -8
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
p2stateno = 1340
forcestand = 1

[State 1325, hit -]
type = hitdef
trigger1 = root, var(14) >= 2
trigger1 = !var(55)
ID = 1325
attr = S, SP
hitflag = MA
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 110 < 7, 7, fvar(11) * 110)), 14
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -4, -8
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -4, -8
air.cornerpush.veloff = 0
guard.velocity = -11
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p1sprpriority = 4
p2stateno = 1340
forcestand = 1

[State 1325, nohit]
type = hitdef
trigger1 = var(55)
attr = S, SP
hitflag = 
sparkxy = -10, 0

[State 1325, Reversal]
type = reversaldef
trigger1 = !var(55) && (time % 2)
reversal.attr = SCA, NP, SP, HP
priority = 4, Hit
p1stateno = 1328
p2stateno = 1340
sparkno = -1
pausetime = 0, 0
numhits = 0
p1sprpriority = 4

[State 1325, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1325, End]
type = changestate
trigger1 = movecontact
trigger2 = root, stateno != 1320 || root, anim != 1320 || root, movetype = H
trigger3 = root, anim = 1320 && (root, animelemtime(5) < 0 || root, animelemtime(10) >= 0)
value = 1326
ignorehitpause = 1


[Statedef 1326]
type = A
movetype = I
anim = 9741
ctrl = 0
velset = 0, 0
sprpriority = 4
[State 1326, End]
type = destroyself
trigger1 = root, stateno != 1320 || root, anim != 1320 || root, movetype = H
trigger2 = root, anim = 1320 && root, animelemtime(5) < 0


;--- Reflect ---
[Statedef 1328]
type = A
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1328, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1
[State 1328, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1328, reflected]
type = helper
trigger1 = !time
trigger1 = var(55) := 1
helpertype = normal
stateno = 1330
ID = 1330
name = "Random Projectile"
postype = p1
pos = 37, 0
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1328, End]
type = changestate
trigger1 = 1
value = 1325


;========================< RANDOM PROJECTILE >=============================
[Statedef 1330]
type = S
movetype = A
ctrl = 0
sprpriority = 4

[State 1330, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1331
ignorehitpause = 1
[State 1330, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1330, Anim]
type = changeanim
trigger1 = anim != 1330
value = 1330
[State 1330, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1330, Flash]
type = palfx
trigger1 = 1
time = 1
color = 0
mul = ceil(512+ cos(gametime / 8.0 * pi) * 256), ceil(512 + sin(gametime / 8.0 * pi) * 256), ceil(512 -cos(gametime / 8.0 * pi) * 256)

[State 1330, Vel]
type = velset
trigger1 = 1
x = 4.5
y = 0

[State 1330, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)

[State 1330, Hit]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 80, 10
getpower = 0, 0
givepower = 36, 36
pausetime = 0, 10
sparkno = -1
guard.sparkno = s8001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -11, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.hittime = 18
air.velocity = -4, -4
air.cornerpush.veloff = 0
guard.velocity = -11
airguard.velocity = -6, -1
airguard.ctrltime = 16
yaccel = 0.5
fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p1sprpriority = 4
forcestand = 1

[State 1330, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 8020 + (random % 8)
sprpriority = 5
postype = left
pos = ceil((target, pos x) -((target, const(size.ground.front) -10) * facing) + 160), ceil(screenpos y)
facing = -1
ownpal = 1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
persistent = 0

[State 1330, End]
type = changestate
trigger1 = movecontact
value = 1331
ignorehitpause = 1
[State 1330, End]
type = destroyself
trigger1 = frontedgedist < -160 || backedgedist < -160
ignorehitpause = 1


[Statedef 1331]
type = S
movetype = I
anim = 1331
ctrl = 0
velset = 0, 0
sprpriority = 4
[State 1331, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1
[State 1331, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1331, Flash]
type = palfx
trigger1 = 1
time = 1
color = 0
mul = ceil(512+ cos(gametime / 8.0 * pi) * 256), ceil(512 + sin(gametime / 8.0 * pi) * 256), ceil(512 -cos(gametime / 8.0 * pi) * 256)
[State 1331, End]
type = destroyself
trigger1 = !animtime


;========================< REFLECTED HELPER >=============================
[Statedef 1340]
type = S
movetype = A
ctrl = 0
sprpriority = 4
hitdefpersist = 1

[State 1340, nothelper]
type = selfstate
trigger1 = !ishelper
value = 5000
ignorehitpause = 1
[State 1340, nothelperprojectile]
type = selfstate
trigger1 = !(hitdefattr = SCA, NP, SP, HP)
value = prevstateno
ignorehitpause = 1

[State 1340, removefx]
type = removeexplod
trigger1 = numexplod
ignorehitpause = 1
[State 1340, End]
type = destroyself
trigger1 = 1
ignorehitpause = 1


;========================< KOUOU KEN CHARGE >=============================
[Statedef 1004]
type = A
velset = 0, 0
anim = 1004
sprpriority = 3

[State 1004, Bind]
type = bindtoroot
trigger1 = 1
[State 1004, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1004, Anim]
type = changeanim
trigger1 = ((root, anim = [1000, 1002]) || root, anim = 1020) && root, animelemtime(3) < 0
trigger1 = animelemtime(3) >= 0
value = 1004
elem = 3
[State 1004, Anim]
type = changeanim
trigger1 = ((root, anim = [1000, 1002]) || root, anim = 1020) && root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
value = 1004
elem = 4
[State 1004, Anim]
type = changeanim
trigger1 = ((root, anim = [1000, 1002]) || root, anim = 1020) && root, animelemtime(4) >= 0 && animelemtime(5) < 0
value = 1004
elem = 5

[State 1004, End]
type = destroyself
trigger1 = !animtime || root, movetype = H
trigger2 = root, stateno != 1000 || (root, anim != [1000, 1002])
trigger2 = root, stateno != 1020 || root, anim != 1020
trigger3 = ((root, anim = [1000, 1002]) || root, anim = 1020) && root, animelemtime(2) < 0


;========================< RAIOU KEN CHARGE >=============================
[Statedef 1204]
type = A
velset = 0, 0
anim = 1204
sprpriority = 3

[State 1204, Bind]
type = bindtoroot
trigger1 = (root, anim = [1200, 1202]) || root, anim = 1220
[State 1204, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1204, Anim]
type = changeanim
triggerall = animelemtime(3) >= 0
trigger1 = (root, anim = [1200, 1201]) && root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
trigger2 = root, anim = 1202 && root, animelemtime(12) >= 0 && root, animelemtime(13) < 0
trigger3 = root, anim = 1220 && root, animelemtime(12) >= 0 && root, animelemtime(13) < 0
value = 1204
elem = 3
[State 1204, Anim]
type = changeanim
trigger1 = (root, anim = [1200, 1201]) && root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
trigger2 = root, anim = 1202 && root, animelemtime(13) >= 0 && root, animelemtime(14) < 0
trigger3 = root, anim = 1220 && root, animelemtime(13) >= 0 && root, animelemtime(14) < 0
value = 1204
elem = 4
[State 1204, Anim]
type = changeanim
trigger1 = (root, anim = [1200, 1201]) && root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
trigger2 = root, anim = 1202 && root, animelemtime(14) >= 0 && root, animelemtime(15) < 0
trigger3 = root, anim = 1220 && root, animelemtime(14) >= 0 && root, animelemtime(15) < 0
value = 1204
elem = 5
[State 1204, Anim]
type = changeanim
triggerall = animelemtime(6) < 0
trigger1 = (root, anim = [1200, 1201]) && root, animelemtime(7) >= 0
trigger2 = root, anim = 1202 && root, animelemtime(15) >= 0
trigger3 = root, anim = 1220 && root, animelemtime(15) >= 0
value = 1204
elem = 6

[State 1204, End]
type = destroyself
trigger1 = animelemtime(14) >= 0
trigger2 = animelemtime(6) < 0
trigger2 = root, movetype = H || (root, stateno != [1200, 1220]) || (root, anim != [1200, 1220])


[Statedef 1254]
type = A
velset = 0, 0
anim = 1254
sprpriority = 3

[State 1254, Bind]
type = bindtoroot
trigger1 = 1
[State 1254, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1254, Anim]
type = changeanim
trigger1 = root, anim = 1250 && root, animelemtime(2) < 0
trigger1 = animelemtime(3) >= 0
value = 1254
elem = 3
[State 1254, Anim]
type = changeanim
trigger1 = root, anim = 1250 && root, animelemtime(3) >= 0 && animelemtime(4) < 0
value = 1254
elem = 4
[State 1254, Anim]
type = changeanim
trigger1 = root, anim = 1250 && root, animelemtime(4) >= 0 && animelemtime(5) < 0
value = 1254
elem = 5

[State 1254, End]
type = destroyself
trigger1 = !animtime || root, movetype = H
trigger2 = root, stateno != 1250 || root, anim != 1250


;========================< SHOUKOU KEN CHARGE >=============================
[Statedef 3004]
type = A
velset = 0, 0
anim = 3004
sprpriority = 3

[State 3004, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3004, Bind]
type = bindtoroot
trigger1 = root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
pos = -20, -55
[State 3004, Bind]
type = bindtoroot
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
pos = -30, -59
[State 3004, Bind]
type = bindtoroot
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
pos = -2, -60

[State 3004, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 3000 || root, anim != 3000
trigger3 = root, anim = 3000 && (root, animelemtime(4) < 0 || root, animelemtime(7) >= 0)


;========================< DENJIN CHARGE >=============================
[Statedef 3024]
type = A
velset = 0, 0
anim = 3024
sprpriority = 3

[State 3024, Scale]
type = angledraw
trigger1 = root, var(11) < 168
scale = 0.33 + (0.00399 * root, var(11)), 0.33 + (0.00399 * root, var(11))
[State 3024, Scale]
type = angledraw
trigger1 = root, var(11) >= 168
scale = 1, 1

[State 3024, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3024, Bind]
type = bindtoroot
trigger1 = root, anim = 3020 && root, animelemtime(3) >= 0
pos = -20, -55

[State 3024, Bind]
type = bindtoroot
trigger1 = root, anim = 3021 && root, animelemtime(2) < 0
pos = -30, -59
[State 3024, Bind]
type = bindtoroot
trigger1 = root, anim = 3021
trigger1 = root, animelemtime(2) >= 0 && root, animelemtime(3) < 0
pos = -2, -60

[State 3024, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 3020 || (root, anim != [3020, 3021])
trigger3 = (root, anim = 3020 && root, animelemtime(3) < 0) || (root, anim = 3021 && root, animelemtime(3) >= 0)


;========================< BISHI >=============================
[Statedef 1613]
type = A
velset = 0, 0
anim = 1613
sprpriority = 5
[State 1613, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
[State 1613, Turn]
type = turn
trigger1 = facing = -1

[State 1613, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.036 * time), 0.25 + (0.036 * time)
[State 1613, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -18.29 * time), ceil(18.29 * time)

[State 1613, End]
type = destroyself
trigger1 = time >= 14


;====================< POWER CHARGE >====================
;--- MAIN FX ---
[Statedef 8230]
type = S
anim = 9741
velset = 0, 0
ctrl = 0

[State 8230, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = -12, 0
[State 8230, Snd]
type = playsnd
trigger1 = !time
value = 0, 730
channel = 0

[State 8230, Dust]
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
[State 8230, Aura]
type = explod
trigger1 = !numexplod(8230)
ID = 8230
anim = 8230
sprpriority = 3
postype = p1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8230, FX]
type = modifyexplod
trigger1 = numexplod(8230) && (root, power < 3000)
ID = 8230
scale = 0.5, 0.1 + .00013 * (root, power)
[State 8230, FX]
type = modifyexplod
trigger1 = numexplod(8230) && (root, power >= 3000)
ID = 8230
scale = 0.5, 0.5

[State 8230, End]
type = removeexplod
trigger1 = root, stateno != 730
[State 8230, End]
type = stopsnd
trigger1 = root, stateno != 730
channel = 0
[State 8230, End]
type = destroyself
trigger1 = root, stateno != 730


;--- PARTICLES ---
[Statedef 8232]
type = S
anim = 9741
velset = 0, 0
ctrl = 0

[State 8232, Bind]
type = bindtoroot
trigger1 = !(time % 8)
pos = ceil(-185 + (random / 3.125)), ceil(97 -(random / 3.125))

[State 8232, Particle]
type = explod
trigger1 = (time % 8) = 1
anim = 8232
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x -25) / 32.0), ((rootdist y -63) / 32.0)
scale = ifelse(random < 500, 0.5, -.5), ifelse(random < 500, 0.5, -.5)
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8232, End]
type = removeexplod
trigger1 = root, stateno != 730
[State 8232, End]
type = destroyself
trigger1 = root, stateno != 730


;========================< EXCEL COMBO CHARGE >=============================
[Statedef 8300]
type = A
velset = 0, 0
anim = 9741
[State 8300, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 8300, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 35
add = -255, -128, -128
sinadd = 255, 128, 128, 140

[State 8300, FX]
type = explod
trigger1 = !time
anim = 8300
ID = 8300
sprpriority = 5
postype = p1
removetime = 20
supermovetime = -1
[State 8300, FX]
type = explod
trigger1 = time = 15
anim = 8301
ID = 8301
sprpriority = 5
postype = p1
supermovetime = -1
[State 8300, FX]
type = explod
trigger1 = !time
anim = 8302
ID = 8302
sprpriority = 5
postype = p1
removetime = 15
supermovetime = -1
[State 8300, logo]
type = explod
trigger1 = !time
anim = 8303
ID = 8303
sprpriority = -5
postype = p1
facing = facing
supermovetime = -1

[State 8300, Scale]
type = modifyexplod
trigger1 = numexplod(8300)
ID = 8300
scale = 0.02 * time, 0.02 * time
[State 8300, Scale]
type = modifyexplod
trigger1 = numexplod(8300) && time >= 15
ID = 8300
scale = 0.02 * time, 0.02 * time
trans = addalpha
alpha = ceil(256 -(51.2 * (time -15))), 256

[State 8300, Scale]
type = modifyexplod
trigger1 = numexplod(8301)
ID = 8301
scale = 0.1 + (0.1 * (time -15)), 0.1 + (0.1 * (time -15))
trans = addalpha
alpha = ceil(256 -(25.6 * (time -15))), 256

[State 8300, Scale]
type = modifyexplod
trigger1 = numexplod(8302)
ID = 8302
scale = 2 -(0.133 * time), 2 -(0.133 * time)

[State 8300, Scale]
type = modifyexplod
trigger1 = numexplod(8303)
ID = 8303
scale = 0.0385 * time, 0.0385 * time
trans = addalpha
alpha = ifelse(time < 15, ceil(17.1 * time), ceil(256 -23.3 * (time -15))), 256

[State 8300, Safety]
type = removeexplod
trigger1 = time >= 26
[State 8300, End]
type = destroyself
trigger1 = time >= 30


;========================< EXCEL TIMER >=============================
[Statedef 8305]
physics = N
velset = 0, 0
anim = 9741
[State 8305, Turn]
type = turn
trigger1 = facing = -1

[State 8305, back]
type = explod
trigger1 = !numexplod(8306)
anim = 8306
ID = 8306
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
[State 8395, front]
type = explod
trigger1 = !numexplod(8307)
anim = 8307
ID = 8307
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
[State 8305, frame]
type = explod
trigger1 = !numexplod(8305)
anim = 8305
ID = 8305
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8305, Scale]
type = modifyexplod
trigger1 = numexplod(8307)
ID = 8307
scale = (root, var(20)) / 180.0, 1

[State 8305, Bind]
type = bindtoroot
trigger1 = 1
pos = 20 * (root, facing), 4
time = -1
[State 8305, Safety]
type = removeexplod
trigger1 = (root, var(20) <= 0)
[State 8305, End]
type = destroyself
trigger1 = (root, var(20) <= 0)


;========================< RECOVER FX >=============================
[Statedef 8400]
type = A
velset = 0, 0
anim = 8400
sprpriority = 5
[State 8400, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8400, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)
[State 8400, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -17.1 * time), 256

[State 8400, End]
type = destroyself
trigger1 = time >= 15


;========================< COUNTER FX >=============================
[Statedef 8490]
type = A
velset = 0, 0
anim = 9741
[State 8490, Reset]
type = parentvarset
trigger1 = !time
trigger1 = playerIDexist(parent, ID)
var(9) = 0

[State 8490, Circle]
type = explod
trigger1 = !numexplod(8490)
anim = 8490
ID = 8490
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8490, Scale]
type = modifyexplod
trigger1 = numexplod(8490)
ID = 8490
scale = 0.25 + (0.075 * time), 0.25 + (0.075 * time)
trans = addalpha
alpha = ceil(256 -(25.6 * time)), 256

[State 8490, Safety]
type = removeexplod
trigger1 = time >= 10
[State 8490, End]
type = destroyself
trigger1 = time >= 10


;========================< SUPERCHARGE >=============================
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5
[State 8500, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8500, levelvar]
type = varset
trigger1 = !time
var(0) = ifelse((root, var(10) = 6), 2, ifelse((root, var(10) = 5), 1, 0))
[State 8500, colorvar]
type = varset
trigger1 = !time
var(1) = ifelse(var(0) != 0, 0, ifelse((root, var(15) >= 3), 2, ifelse((root, var(15) >= 2), 1, 0)))

[State 8500, ray angle]
type = varset
trigger1 = !time
var(2) = (random % 360)

[State 8500, rays]
type = helper
trigger1 = !time && (var(0) = 1 || var(0) = 2)
helpertype = normal
stateno = 8550
ID = 8550
name = "Super Charge"
postype = p1
size.xscale = 1
size.yscale = 1
supermovetime = 255
ownpal = 1
[State 8500, rays]
type = helper
trigger1 = !time && (var(0) = 1 || var(0) = 2)
helpertype = normal
stateno = 8550
ID = 8551
name = "Super Charge"
postype = p1
size.xscale = 1
size.yscale = 1
supermovetime = 255
ownpal = 1
[State 8500, rays]
type = helper
trigger1 = !time && (var(0) = 1 || var(0) = 2)
helpertype = normal
stateno = 8550
ID = 8552
name = "Super Charge"
postype = p1
size.xscale = 1
size.yscale = 1
supermovetime = 255
ownpal = 1

[State 8500, Lv1 / Lv2 blue]
type = bgpalfx
trigger1 = time <= 10 && var(0) = 0 && var(1) = 0
trigger2 = time <= 10 && (var(0) = 1 || var(0) = 2)
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256
color = 256 -ceil(25.6 * time)
[State 8500, Lv1 / Lv2 blue]
type = bgpalfx
trigger1 = time >= 11 && var(0) = 0 && var(1) = 0
trigger2 = time >= 11 && (var(0) = 1 || var(0) = 2)
time = 1
mul = 0, 0, 256
color = 0

[State 8500, Lv1 blue]
type = bgpalfx
trigger1 = time >= 40 && var(0) = 0 && var(1) = 0
time = 1
mul = ceil(51.2 * (time -40)), ceil(51.2 * (time -40)), 256
color = ceil(51.2 * (time -40))
[State 8500, Lv2 blue]
type = bgpalfx
trigger1 = time >= 50 && var(0) = 1
time = 1
mul = ceil(51.2 * (time -50)), ceil(51.2 * (time -50)), 256
color = ceil(51.2 * (time -50))

[State 8500, Lv3 blue]
type = bgpalfx
trigger1 = time <= 10 && var(0) = 2
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
color = 256 -ceil(25.6 * time)
[State 8500, Lv3 blue]
type = bgpalfx
trigger1 = time >= 11 && var(0) = 2
time = 1
mul = 0, 0, 0
color = 0
[State 8500, Lv3 blue]
type = bgpalfx
trigger1 = time >= 60 && var(0) = 2
time = 1
mul = ceil(51.2 * (time -60)), ceil(51.2 * (time -60)), ceil(51.2 * (time -60))
color = ceil(51.2 * (time -60))

[State 8500, Lv1 green]
type = bgpalfx
trigger1 = time <= 10 && var(0) = 0 && var(1) = 1
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -ceil(25.6 * time), 256, 256 -ceil(25.6 * time)
color = 256 -ceil(25.6 * time)
[State 8500, Lv1 green]
type = bgpalfx
trigger1 = time >= 11 && var(0) = 0 && var(1) = 1
time = 1
mul = 0, 256, 0
color = 0
[State 8500, Lv1 green]
type = bgpalfx
trigger1 = time >= 40 && var(0) = 0 && var(1) = 1
time = 1
mul = ceil(51.2 * (time -40)), 256, ceil(51.2 * (time -40))
color = ceil(51.2 * (time -40))

[State 8500, Lv1 red]
type = bgpalfx
trigger1 = time <= 10 && var(0) = 0 && var(1) = 2
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256, 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
color = 256 -ceil(25.6 * time)
[State 8500, Lv1 red]
type = bgpalfx
trigger1 = time >= 11 && var(0) = 0 && var(1) = 2
time = 1
mul = 256, 0, 0
color = 0
[State 8500, Lv1 red]
type = bgpalfx
trigger1 = time >= 40 && var(0) = 0 && var(1) = 2
time = 1
mul = 256, ceil(51.2 * (time -40)), ceil(51.2 * (time -40))
color = ceil(51.2 * (time -40))

[State 8500, Anim]
type = changeanim
trigger1 = !time
value = 8500 + 10 * var(1)
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
trigger1 = var(0) = 0
scale = 1.5 -(0.0375 * time), 1.5 -(0.0375 * time)
[State 8500, Scale]
type = angledraw
trigger1 = var(0) = 1
scale = 1.5 -(0.03 * time), 1.5 -(0.03 * time)
[State 8500, Scale]
type = angledraw
trigger1 = var(0) = 2
scale = 1.5 -(0.025 * time), 1.5 -(0.025 * time)
[State 8500, Scale]
type = angledraw
trigger1 = var(0) = 0 && time >= 41
trigger2 = var(0) = 1 && time >= 51
trigger3 = var(0) = 2 && time >= 61
scale = 0, 0

[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8500, Circle]
type = explod
trigger1 = !time
anim = 8501 + 10 * var(1)
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

[State 8500, Portrait]
type = explod
trigger1 = !time && var(0) = 2
anim = 8560
ID = 8560
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
sprpriority = -16
bindtime = -1
pausemovetime = -1
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(8560) && time < 8
ID = 8560
postype = back
pos = -160 + (40 * time), floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5
trans = addalpha
alpha = (32 * time), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(8560) && (time = [8, 50])
ID = 8560
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(8560) && time >= 50
ID = 8560
postype = back
pos = 160 + (2 * (time -50)), floor((1.3333333 * gameheight / gamewidth) * 120) + (24 * (time -50))
scale = 0.5 + (0.25 * (time -50)), 0.5 + (0.25 * (time -50))
trans = addalpha
alpha = 256 -ceil(25.6 * (time -50)), 256

[State 8500, Circle]
type = explod
trigger1 = time = 4
anim = 8502 + 10 * var(1)
ID = 85021
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 8
anim = 8502 + 10 * var(1)
ID = 85022
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 12
anim = 8502 + 10 * var(1)
ID = 85023
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 16
anim = 8502 + 10 * var(1)
ID = 85024
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 20
anim = 8502 + 10 * var(1)
ID = 85025
sprpriority = 5
postype = p1
supermovetime = -1
[State 8500, Circle]
type = explod
trigger1 = time = 24
anim = 8502 + 10 * var(1)
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

[State 8500, Assert]
type = assertspecial
trigger1 = var(0) = 2
flag = nobardisplay
[State 8500, Safety]
type = removeexplod
trigger1 = var(0) = 0 && time >= 41
trigger2 = var(0) = 1 && time >= 51
trigger3 = time >= 61
[State 8500, End]
type = destroyself
trigger1 = var(0) = 0 && time >= 45
trigger2 = var(0) = 1 && time >= 55
trigger3 = time >= 61


;--- RAYS OF LIGHT ---
[Statedef 8550]
type = A
velset = 0, 0
anim = 8550
sprpriority = 5
[State 8550, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8550, levelvar]
type = varset
trigger1 = !time
var(0) = parent, var(0)

[State 8550, Rotate]
type = angleset
trigger1 = !time
value = ifelse(ishelper(8552), 120, ifelse(ishelper(8551), 240, 0)) + parent, var(2)
[State 8550, Rotate]
type = angleadd
trigger1 = 1
value = -2
[State 8550, Scale]
type = angledraw
trigger1 = var(0) = 1
scale = 1.5 -(0.03 * time), ifelse(time >= 20, 0.5, 0.025 * time)
[State 8550, Scale]
type = angledraw
trigger1 = var(0) = 2
scale = 1.5 -(0.025 * time), ifelse(time >= 20, 0.5, 0.025 * time)

[State 8550, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
[State 8550, Trans]
type = trans
trigger1 = var(0) = 1 && time >= 40
trans = addalpha
alpha = ceil(256 -25.6 * (time -40)), 256
[State 8550, Trans]
type = trans
trigger1 = var(0) = 2 && time >= 50
trans = addalpha
alpha = ceil(256 -25.6 * (time -50)), 256

[State 8550, End]
type = destroyself
trigger1 = var(0) = 1 && time >= 50
trigger2 = time >= 60


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
[Statedef 8250]
type = S
anim = 9741
velset = 0, 0

[State 8250, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
add = ceil(-255 + 17.1 * time), ceil(-128 + 8.5 * time), ceil(-32 + 2.1 * time)
color = 17 * time

[State 8250, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8250, thunder]
type = explod
trigger1 = !time
anim = 8250
ID = 8250
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 8250, Circle]
type = explod
trigger1 = !time
anim = 8251
ID = 8251
sprpriority = 3
postype = p1
removetime = 15
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8250, Circle]
type = modifyexplod
trigger1 = numexplod(8251)
ID = 8251
scale = 0.2 + (0.12 * time), 0.2 + (0.12 * time)
trans = addalpha
alpha = (256 -17 * time), 256

[State 8250, No Shadow]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow
[State 8250, End]
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

[State 8600, movename]
type = varset
trigger1 = !time && (root, var(23) = 3000)
var(0) = 1
[State 8600, movename]
type = varset
trigger1 = !time && (root, var(23) = 3100)
var(0) = 2
[State 8600, movename]
type = varset
trigger1 = !time && (root, var(23) = [3200, 3210])
var(0) = 3
[State 8600, movename]
type = varset
trigger1 = !time && (root, var(23) = [3220, 3230])
var(0) = 4
[State 8600, movename]
type = varset
trigger1 = !time && (root, var(23) = [3300, 3311])
var(0) = 5

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
scale = 1, 1
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
[State 8600, End]
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
