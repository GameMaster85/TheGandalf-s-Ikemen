; ______________________________
;| Guy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;===================================< EX SPECIAL STATES >======================================
;============================================================================================

;=========< HOUZANTOU >==========
[Statedef 1010]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = -1
juggle = ifelse((p2movetype = H && p2statetype = A), 7, 0)
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
trigger1 = animelemtime(9) >= 0 && animelemtime(11) < 0
player = 40, 0
[State 1010, spr]
type = sprpriority
trigger1 = animelemtime(8) >= 0
value = 1

[State 1010, Vel]
type = velset
trigger1 = animelem = 4 || animelem = 8
x = 12

[State 1010, snd]
type = playsnd
trigger1 = animelem = 9
value = 3, 3
channel = 0
[State 1010, snd]
type = playsnd
trigger1 = animelem = 9
value = 1, 3
channel = 1

[State 1010, snd]
type = playsnd
trigger1 = animelem = 8
value = 5, 0
[State 1010, dust]
type = explod
trigger1 = animelem = 9
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
pos = 45, 0
vel = 4, 0
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1010, hit]
type = hitdef
trigger1 = animelem = 9
ID = 1010
attr = S, SA
damage = 84, 11
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -58
hitsound = s2, 3
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -10, -5
air.type = High
air.velocity = -10, -5
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
getpower = 0
givepower = 36, 36
envshake.time = 14
envshake.ampl = 6
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 1010
forcestand = 1

[State 1010, Anim]
type = changeanim
trigger1 = movecontact = 1 && hitpausetime
trigger1 = animelemtime(9) >= 0 && animelemtime(10) <= 0
trigger1 = hitpausetime <= 10
value = 1010
elem = 10
ignorehitpause = 1

[State 1010, p2state]
type = targetstate
trigger1 = movehit && numtarget(1010)
trigger1 = (target(1010), stateno = 5000) || (target(1010), stateno = 5010) || (target(1010), stateno = 5020)
value = 1111010
ID = 1010
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< BUSHIN SENPUU KYAKU >=============================
[Statedef 1210]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = -500
juggle = 7
facep2 = 1
sprpriority = 1

[State 1210, ECreset]
type = palfx
trigger1 = var(20) > 0
trigger1 = var(20) := -1
time = 1
[State 1210, Strength]
type = varset
trigger1 = var(10) != 4
var(10) = 4

[State 1210, Anim]
type = changeanim
trigger1 = anim = 1200 && !animtime
value = 1210

[State 1210, NHB]
type = nothitby
trigger1 = anim = 1200
time = 1
value = SCA
ignorehitpause = 1

[State 1210, snd]
type = playsnd
trigger1 = anim = 1210 && animelem = 1
value = 3, 7
channel = 0

[State 1210, snd]
type = playsnd
trigger1 = anim = 1210 && animelem = 1
value = 0, 40
persistent = 0
[State 1210, dust]
type = helper
trigger1 = anim = 1210 && animelem = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1210, statetype]
type = statetypeset
trigger1 = anim = 1210
statetype = A
physics = N

[State 1200, Vel]
type = veladd
trigger1 = anim = 1210
x = -.33
y = 0.33
[State 1200, Vel]
type = velset
trigger1 = anim = 1210 && animelem = 1
x = 10
y = -8
[State 1200, Vel]
type = velset
trigger1 = anim = 1210 && animelemtime(19) >= 0
x = 0


[State 1210, spin]
type = playsnd
trigger1 = anim = 1210 && (animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14 || animelem = 18)
value = 1, 5
channel = 1

[State 1210, hit]
type = hitdef
trigger1 = anim = 1210 && (animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14 || animelem = 18)
attr = A, SA
damage = 28, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -65
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -6.5, -8
air.type = Low
air.velocity = -6.5, -7
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
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

[State 1210, hitb]
type = hitdef
trigger1 = anim = 1210 && (animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16)
attr = A, SA
damage = 28, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = s7020 + (random % 8)
guard.sparkno = s7001
sparkxy = -10, -65
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = 6.5, -7
air.type = Low
air.velocity = 6.5, -7
ground.cornerpush.veloff = 0
guard.velocity = -12.65
guard.cornerpush.veloff = 0;-17.2
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
airguard.velocity = ifelse(var(20), 4, 8), -1.5
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = anim = 1210 && animelemtime(19) >= 0
movetype = I
[State Land]
type = changestate
trigger1 = anim = 1210 && animelemtime(19) >= 0
trigger1 = pos y > -vel y
value = 52
