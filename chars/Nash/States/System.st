; _______________________________
;| Nash by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< SYSTEM STATES >========================================
;==============================================================================================

;====================< STANDING >====================
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 0, Gone]
type = removeexplod
trigger1 = ishelper
[State 0, Gone]
type = destroyself
trigger1 = ishelper

[State 0, Anim]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && !animtime
value = 0

[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050

[State 0, Skywalker]
type = changestate
triggerall = pos y < 0
trigger1 = !numenemy
trigger2 = numenemy = 1
trigger2 = (enemy, name = "M -NES Game 1" + enemy, name = "M -NES Game 2" + enemy, name = "M -GB Game 1" + enemy, authorname = "Bane84") < 2
trigger3 = numenemy >= 2
trigger3 = (enemy(0), name = "M -NES Game 1" + enemy(0), name = "M -NES Game 2" + enemy(0), name = "M -GB Game 1" + enemy(0), authorname = "Bane84") < 2
trigger3 = (enemy(1), name = "M -NES Game 1" + enemy(1), name = "M -NES Game 2" + enemy(1), name = "M -GB Game 1" + enemy(1), authorname = "Bane84") < 2
value = 50


;====================< CROUCHING >====================
[Statedef 10]
type = C
physics = C
movetype = I
velset = 0, 0
sprpriority = 0
[State 10, Anim]
type = changeanim
trigger1 = !time && anim = 12
value = 10
elem = 3 -animelemno(0)
[State 10, Anim]
type = changeanim
trigger1 = anim != 10
value = 10
[State 10, End]
type = changestate
trigger1 = !animtime
value = 11

[Statedef 11]
type = C
physics = C
movetype = I
anim = 11
velset = 0, 0
sprpriority = 0
[State 11, Anim]
type = changeanim
trigger1 = anim = 6 && !animtime
value = 11

[Statedef 12]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0
[State 12, Anim]
type = changeanim
trigger1 = !time && anim = 10
value = 12
elem = 3 -animelemno(0)
[State 12, Anim]
type = changeanim
trigger1 = anim != 12
value = 12
[State 12, End]
type = changestate
trigger1 = command = "holddown" && command != "holdup"
value = 10
[State 12, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< WALKING >====================
[Statedef 20]
type = S
physics = S
movetype = I
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, Vel]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21


;====================< JUMPING >====================
[Statedef 40]
type = S
physics = S
movetype = I
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 40, direction]
type = varset
trigger1 = !AIlevel
sysvar(1) = ifelse(!time, 0, ifelse(command = "holdfwd", 1, ifelse(command = "holdback", -1, sysvar(1))))
[State 40, direction]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))

[State 40, highjump]
type = varset
trigger1 = !time && !AIlevel
var(3) = ifelse(command = "highjump", 3, 0)
[State 40, highjump]
type = varset
trigger1 = !time && AIlevel
var(3) = ifelse((p2bodydist x >= 160 || random < 100), 3, 0)

[State 40, lowjump]
type = varset
trigger1 = !AIlevel && command != "holdup" && (var(3) != [1, 2])
var(3) = ifelse((var(3) = 3 && sysvar(1)), 2, 1)
[State 40, lowjump]
type = varset
trigger1 = AIlevel && (var(3) != [1, 2])
trigger1 = (enemynear, statetype = C) && random < 500
var(3) = ifelse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Dust]
type = helper
trigger1 = !animtime
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 40, vel normal]
type = velset
trigger1 = !animtime
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, vel short]
type = velset
trigger1 = !animtime && var(3) = 1
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, vel medium]
type = velset
trigger1 = !animtime && var(3) = 2
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, vel long]
type = velset
trigger1 = !animtime && var(3) = 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifelse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, vel run]
type = velset
trigger1 = !animtime && prevstateno = 100 && sysvar(1) = 1
trigger1 = var(3) := ifelse((var(3) = 1 || var(3) = 2), 2, 3)
x = const(velocity.runjump.fwd.x)

[State 40, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1


[Statedef 50]
type = A
physics = N
movetype = I
sprpriority = 1

[State 50, Anim]
type = changeanim
trigger1 = !time
value = ifelse(!vel x, 41, ifelse(vel x > 0, 42, 43)) + 10 * (var(3) = [1, 2])
persistent = 0
[State 50, Snd]
type = playsnd
trigger1 = !time
value = 0, ifelse((var(3) = [2, 3]), 41, 40)

[State 50, No Guard]
type = assertspecial
trigger1 = var(3) = [1, 2]
flag = noairguard

[State 50, Grounded Frame]
type = posfreeze
trigger1 = time < 1 && prevstateno = 40
value = 1
[State 50, Accel]
type = gravity
trigger1 = time >= 1 || prevstateno != 40

[State 50, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


[Statedef 51]
type = A
physics = N
movetype = I
sprpriority = 1
[State 51, Accel]
type = gravity
trigger1 = 1
[State 51, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


[Statedef 52]
type = S
physics = S
movetype = I
anim = 47
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 52, anim 57]
type = changeanim
trigger1 = !time && (var(3) = 1 || var(3) = 2)
trigger1 = (prevstateno = [600, 699])
value = 57

[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, Ctrl]
type = ctrlset
trigger1 = !time && (prevstateno != [600, 699])
trigger2 = time = 1 && anim != 57
value = 1
[State 52, Guard]
type = changestate
trigger1 = ctrl && command = "holdback"
trigger1 = inguarddist && (prevstateno != [600, 699])
value = 120

[State 52, No Walk]
type = assertspecial
trigger1 = anim != 5
flag = nowalk

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 52, Turn]
type = changeanim
trigger1 = ctrl && p2dist x < 0
trigger1 = anim != 5
value = 5
[State 52, Turn]
type = turn
trigger1 = anim = 5 && animelem = 1

[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================< RUN >===========================
[Statedef 100]
type = A
physics = N
movetype = I
anim = 100
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 100, Vel]
type = velmul
trigger1 = 1
x = 0.95
[State 100, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.fwd.x)

[State 100, step]
type = playsnd
trigger1 = animelem = 2
value = 0, 100
[State 100, Dust]
type = explod
trigger1 = animelem = 2
anim = 8103
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 100, End]
type = changestate
trigger1 = !animtime
value = 101


;--- STOP ---
[Statedef 101]
type = S
physics = S
movetype = I
anim = 101
ctrl = 1
velset = 0, 0
sprpriority = 1
[State 101, Snd]
type = playsnd
trigger1 = !time
value = 0, 101
[State 101, End]
type = changestate
trigger1 = !animtime
value = ifelse(command = "holddown", 10, 0)
ctrl = 1


;========================< BACK DASH >==========================
[Statedef 105]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 105, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 105
[State 105, Dust]
type = explod
trigger1 = animelemtime(2) = -1
anim = 8103
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 105, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)
[State 105, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.6

[State 105, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 106


;--- LAND ---
[Statedef 106]
type = S
physics = S
ctrl = 0
anim = 106
velset = 0, 0
[State 106, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 106, Pos]
type = posset
trigger1 = 1
y = 0
[State 106, Snd]
type = playsnd
trigger1 = !time
value = 0, 53
[State 106, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 106, Ctrl]
type = ctrlset
trigger1 = time >= 2
value = 1
[State 106, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;====================< PARRY >====================
;--- STANDING ---
[Statedef 700]
type = S
physics = S
movetype = I
anim = 700
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 700, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 700, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0

[State 700, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 700, No walking]
type = varset
trigger1 = 1
var(26) = 7

[State 700, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = !time
value = 4, 0
channel = 0
[State 700, Snd]
type = playsnd
trigger1 = !time
value = 0, 700

[State 700, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15
[State 700, Spark]
type = explod
trigger1 = !time
anim = 8300
sprpriority = 5
postype = p1
pos = ceil(19 * const(size.xscale)), ceil(-64 * const(size.yscale))
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1
[State 700, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[State 700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- CROUCHING ---
[Statedef 701]
type = C
physics = C
movetype = I
anim = 701
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 701, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 701, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0

[State 701, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 701, No walking]
type = varset
trigger1 = 1
var(26) = 7

[State 701, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = !time
value = 4, 0
channel = 0
[State 701, Snd]
type = playsnd
trigger1 = !time
value = 0, 700

[State 701, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15
[State 701, Spark]
type = explod
trigger1 = !time
anim = 8300
sprpriority = 5
postype = p1
pos = ceil(24 * const(size.xscale)), ceil(-33 * const(size.yscale))
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1
[State 701, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[State 701, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;--- JUMPING ---
[Statedef 702]
type = A
physics = N
movetype = I
anim = 702
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 702, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 702, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 702, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 702, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = !time
value = 4, 0
channel = 0
[State 702, Snd]
type = playsnd
trigger1 = !time
value = 0, 700

[State 702, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15
[State 702, Spark]
type = explod
trigger1 = !time
anim = 8300
sprpriority = 5
postype = p1
pos = ceil(24 * const(size.xscale)), ceil(-75 * const(size.yscale))
pausemovetime = -1
supermovetime = -1
scale = 0.5, 0.5
ownpal = 1
[State 702, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[State 702, End]
type = changestate
trigger1 = !animtime
value = 703
ctrl = 1

[Statedef 703]
type = A
physics = N
movetype = I
anim = 703
ctrl = 1
[State 703, Vel]
type = velset
trigger1 = !time
x = ifelse(vel x > 2, 2, ifelse(vel x < -2, -2, vel x))
y = ifelse(vel y < -2, vel y, -2)
[State 703, Accel]
type = gravity
trigger1 = 1
[State 703, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;--- HELPER ---
[Statedef 705]
type = A
physics = N
movetype = I
anim = ifelse(root, statetype = C, 706, ifelse(root, statetype = A, 707, 705))
velset = 0, 0
ctrl = 0
[State 705, NHB]
type = nothitby
trigger1 = 1
value = SCA
[State 705, Bind]
type = bindtoroot
trigger1 = 1
time = -1

[State 705, Anim]
type = changeanim
triggerall = !time
trigger1 = !(root, AIlevel) && root, command = "down"
trigger2 = root, AIlevel && (root, statetype != A) && p2statetype = C
value = 706
[State 705, Anim]
type = changeanim
triggerall = !time
trigger1 = !(root, AIlevel) && root, command = "fwd"
trigger2 = root, AIlevel && anim != 706
value = ifelse((root, statetype = A), 707, 705)
[State 705, Anim]
type = changeanim
trigger1 = anim = 705 || anim = 707
value = ifelse((root, statetype = A), 707, 705)

[State 705, Disable]
type = varset
trigger1 = time >= ifelse((root, statetype = A), 7, 8)
trigger2 = facing != (root, facing)
trigger3 = !(root, ctrl)
trigger3 = (root, stateno != [700, 702]) && (root, stateno != 5120)
var(0) = 1
[State 705, Disable]
type = varset
triggerall = !(root, AIlevel)
trigger1 = (root, command = "holdback")
trigger2 = time < 4 && (root, command = "holdfwd" + root, command = "holddown") > 1
trigger3 = time >= 4 && (root, command = "holdfwd" || root, command = "holddown")
trigger4 = time >= 1 && (((anim = 705 || anim = 707) && root, command = "fwd") || (anim = 706 && root, command = "down"))
var(0) = 1
[State 705, Disable]
type = changeanim
trigger1 = var(0) = 1
value = 9741

[State 705, Standing /air]
type = reversaldef
trigger1 = !var(0) && (anim = 705 || anim = 707)
trigger1 = (root, stateno != 5120) || !(root, animtime)
reversal.attr = SCA, AA
p1stateno = 706
pausetime = 0, 0
sparkno = -1
numhits = 0

[State 705, Crouching]
type = reversaldef
trigger1 = !var(0) && anim = 706
reversal.attr = SC, AA
p1stateno = 706
pausetime = 0, 0
sparkno = -1
numhits = 0

[State 705, Disable]
type = reversaldef
trigger1 = var(0) = 1
reversal.attr = 
pausetime = 0, 0
sparkno = -1
numhits = 0

[State 705, End]
type = destroyself
trigger1 = time >= 18
trigger2 = (root, movetype != I)
trigger3 = !(root, ctrl) && (root, stateno != [700, 702]) && (root, stateno != 5120)
trigger4 = (root, stateno = [700, 702]) && (root, time <= 1)


;--- Success ---
[Statedef 706]
movetype = I
ctrl = 0
[State 706, Disable]
type = varset
trigger1 = 1
var(0) = 1
[State 706, End]
type = destroyself
trigger1 = root, stateno = [700, 702]
trigger2 = time >= 2


;====================< DODGE >====================
[Statedef 710]
type = S
physics = S
movetype = I
anim = 710
ctrl = 0
velset = 0, 0
sprpriority = -2

[State 710, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1
value = 4, 5
channel = 0
[State 710, Snd]
type = playsnd
trigger1 = animelem = 1
value = 1, 3

[State 710, Push]
type = playerpush
trigger1 = 1
value = 0
[State 710, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1

[State 710, Attack]
type = changestate
trigger1 = !AIlevel && (time = [15, 25])
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifelse((command = "x" || command = "y" || command = "z"), 221, 240)
[State 710, Attack]
type = changestate
trigger1 = AIlevel && (time = [15, 25]) && numenemy
trigger1 = (enemynear, movetype != A) && (p2bodydist x = [ -60, 60]) && (p2dist y >= -60)
value = ifelse(random < 500, 221, 240)

[State 710, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;====================< FORWARD ROLL >====================
[Statedef 720]
type = S
physics = N
movetype = I
anim = 720
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 720, Push]
type = playerpush
trigger1 = 1
value = 0
[State 720, HB]
type = hitby
trigger1 = animelemtime(6) < 0
value = SCA, AT
time = 1

[State 720, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 6)
channel = 0
[State 720, Snd]
type = playsnd
trigger1 = animelem = 1
value = 0, 105

[State 720, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(6) < 0
x = 6.95
[State 720, Vel]
type = velset
trigger1 = animelemtime(6) >= 0
x = 0

[State 720, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========< POWER CHARGE >==========
[Statedef 730]
type = S
physics = S
movetype = I
anim = 730
velset = 0, 0
ctrl = 0

[State 730, Power]
type = poweradd
triggerall = power < const(data.power) && power < powermax
trigger1 = !AIlevel && (command = "holdb" && command = "holdy")
trigger2 = AIlevel
value = 2 + ifelse(time < 60, 0, (time -60) / 10)

[State 730, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = !time
value = 4, 3
channel = 0
[State 730, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 730, FX]
type = helper
trigger1 = !numhelper(8330)
helpertype = normal
stateno = 8330
ID = 8330
name = "Power Charge"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1
[State 730, FX]
type = helper
trigger1 = !numhelper(8332)
helpertype = normal
stateno = 8332
ID = 8332
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 730, End]
type = changestate
trigger1 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger2 = !AIlevel && (command != "holdb" || command != "holdy")
trigger3 = AIlevel && (inguarddist || p2movetype = A || p2bodydist x <= 120)
value = 731
ctrl = 1

;--- END ---
[Statedef 731]
type = S
physics = S
movetype = I
anim = 731
velset = 0, 0
ctrl = 1
[State 731, Snd]
type = stopsnd
trigger1 = !var(1)
trigger1 = !time
channel = 0
[State 730, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = !time && power >= const(data.power)
value = 5, 4
channel = 0
persistent = 0
[State 730, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;====================< ZERO COUNTER >====================
[Statedef 750]
type = S
physics = S
movetype = I
anim = 750
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State 750, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = (command = "bdk")
ignorehitpause = 1
[State 750, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse((p2statetype = A), 0, ifelse((p2statetype = C), 1, ifelse(random < 500, 0, 1)))
ignorehitpause = 1

[State 750, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 750, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 750, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = !time
value = 4, 0
channel = 0

[State 750, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8350
ID = 8350
name = "Zero Counter"
postype = p1
pos = ceil(57 * const(size.xscale)), ceil(-56 * const(size.yscale))
supermovetime = 255
ownpal = 1
[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 15
movetime = 15
p2defmul = 1
anim = -1
sound = s0, 750
darken = 0

[State 750, End]
type = changestate
trigger1 = time >= 15
value = ifelse(var(10) = 1, 2950, 2900)


;====================< CUSTOM COMBO >====================
;--- GROUND ---
[Statedef 900]
type = S
physics = S
movetype = A
anim = 900
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 900, NHB]
type = nothitby
trigger1 = !time
value = SCA
time = 38
[State 900, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 900, Var]
type = varset
trigger1 = time >= 4
var(20) = 180

[State 900, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 30

[State 900, Super Pause FX]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8400
ID = 8400
name = "Excel Charge"
postype = p1
pos = ceil(7 * const(size.xscale)), ceil(-93 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 900, Super Pause]
type = superpause
trigger1 = time = 4
time = 30
movetime = 30
anim = -1
sound = s0, 900
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 900, Shadows]
type = afterimage
trigger1 = !animtime
time = 2
timegap = 1
framegap = 4
length = 13
palbright = 0, 0, 0
palcontrast = 64, 128, 192
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State 900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- AIR ---
[Statedef 905]
type = A
physics = N
movetype = A
anim = 905
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 905, NHB]
type = nothitby
trigger1 = !time
value = SCA
time = 38
[State 905, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 905, Var]
type = varset
trigger1 = time >= 4
var(20) = 180

[State 905, unguardable]
type = varset
trigger1 = time = 4 && numenemy
trigger1 = (enemynear, stateno != [120, 155])
var(17) = 30

[State 905, Super Pause FX]
type = helper
trigger1 = time = 4
helpertype = normal
stateno = 8400
ID = 8400
name = "Excel Charge"
postype = p1
pos = ceil(1 * const(size.xscale)), ceil(-76 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 905, Super Pause]
type = superpause
trigger1 = time = 4
time = 30
movetime = 30
anim = -1
sound = s0, 900
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = time = 4
fvar(5) = 0

[State 905, Shadows]
type = afterimage
trigger1 = !animtime
time = 2
timegap = 1
framegap = 4
length = 13
palbright = 0, 0, 0
palcontrast = 64, 128, 192
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State 905, End]
type = changestate
trigger1 = !animtime
value = 906
ctrl = 1


[Statedef 906]
type = A
physics = N
movetype = I
anim = 906
ctrl = 1
[State 906, Accel]
type = gravity
trigger1 = 1
[State 906, Land]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 52


;==========< FALL RECOVERY >==========
[Statedef 5200]
type = A
movetype = H
physics = N
[State 5200, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050
[State 5200, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)
[State 5200, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 10
value = 5201

[Statedef 5201]
type = S
movetype = I
physics = N
anim = 5200
ctrl = 0
facep2 = 1

[State 5201, Pos]
type = posset
trigger1 = 1
y = 0
[State 5201, Vel]
type = velset
trigger1 = !time
x = -8
y = 0
[State 5201, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 5201, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = !time
value = 4, 0
channel = 0
[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 0, 5200

[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10
[State 5201, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-18 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5201, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- AIR ---
[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 5210, Accel]
type = veladd
trigger1 = 1
y = 0.6

[State 5210, Vel]
type = velset
trigger1 = !time
x = ifelse((command = "holdfwd" && command != "holdback"), 4, ifelse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 5210, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = !time
value = 4, 0
channel = 0

[State 5210, Snd]
type = playsnd
trigger1 = !time
value = 0, 5200

[State 5210, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5210, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-74 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5210, NHB]
type = nothitby
trigger1 = time < 14
value = SCA
time = 1

[State 5210, Ctrl]
type = ctrlset
trigger1 = time >= 14
value = 1

[State 5210, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;==========< TARGET SAFE FALL >==========
[Statedef 5205]
type = A
physics = N
movetype = H

[State 5205, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 5205, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5205, Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 5205, Air]
type = selfstate
trigger1 = time >= 60
value = 5210


;==========< RECOVERY ROLL >==========
[Statedef 5220]
type = A
movetype = H
physics = N
[State 5220, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050
[State 5220, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)
[State 5220, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 10
value = 5221

[Statedef 5221]
type = S
movetype = I
physics = N
anim = 5220
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 5221, Push]
type = playerpush
trigger1 = 1
value = 0

[State 5221, Pos]
type = posset
trigger1 = 1
y = 0
[State 5221, Vel]
type = velset
trigger1 = time = 9
x = 7.66

[State 5221, End]
type = changestate
trigger1 = time >= 27 && command != "holdfwd"
trigger2 = time >= 45
value = 11
ctrl = 1


;===================< GUARD >================
;--- START ---
[Statedef 120]
type = U
physics = U
anim = 120 + (statetype = C) + (statetype = A) * 2
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 120, Vel]
type = velset
trigger1 = !time && statetype != A
x = 0
y = 0
[State 120, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 120, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 120, End]
type = changestate
trigger1 = !animtime || AIlevel
value = 130 + (statetype = C) + (statetype = A) * 2
[State 120, Stop]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- STAND GUARD (guarding) ---
[Statedef 130]
type = S
physics = S
[State 130, Anim]
type = changeanim
trigger1 = anim != 130
value = 130
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 130, High to Low]
type = changestate
trigger1 = !AIlevel && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype = C)
value = 131
[State 130, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140
[State 130, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
value = 0, 52
[State 130, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1


;--- CROUCH GUARD (guarding) ---
[Statedef 131]
type = C
physics = C
[State 131, Anim]
type = changeanim
trigger1 = anim != 131
value = 131
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 131, Low to High]
type = changestate
trigger1 = !AIlevel && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype != C)
value = 130
[State 131, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- AIR GUARD (guarding) ---
[Statedef 132]
type = A
physics = N
[State 132, Anim]
type = changeanim
trigger1 = anim != 132
value = 132
[State 132, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 132, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)
[State 132, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 132, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 132, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 132, End]
type = changestate
trigger1 = sysvar(0)
value = 52
[State 132, stop guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140


;--- GUARD (end) ---
[Statedef 140]
type = U
physics = U
ctrl = 1
[State 140, Anim]
type = changeanim
trigger1 = !time
value = 140 + (statetype = C) + (statetype = A) * 2
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 140, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 140, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 140, End]
type = changestate
trigger1 = !animtime
value = (statetype = C) * 11 + (statetype = A) * 51

;--- SGUARDHIT (shaking) ---
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0
[State 150, Anim]
type = changeanim
trigger1 = 1
value = 150
[State 150, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 150, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 150, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S

;--- SGUARDHIT2 (knocked back) ---
[Statedef 151]
type = S
movetype = H
physics = S
anim = 150
[State 151, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 151, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 151, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 151, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 151, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 151, End]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1

;--- CGUARDHIT (shaking) ---
[Statedef 152]
type = C
movetype = H
physics = N
velset = 0, 0
[State 152, Anim]
type = changeanim
trigger1 = 1
value = 151
[State 152, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 152, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 152, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S

;--- CGUARDHIT2 (knocked back) ---
[Statedef 153]
type = C
movetype = H
physics = C
anim = 151
[State 153, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 153, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 153, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 153, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 153, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 153, End]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1

;--- AGUARDHIT (shaking) ---
[Statedef 154]
type = A
movetype = H
physics = N
velset = 0, 0
[State 154, Anim]
type = changeanim
trigger1 = 1
value = 152
[State 154, End]
type = changestate
trigger1 = hitshakeover
value = 155

;--- AGUARDHIT2 (knocked away) ---
[Statedef 155]
type = A
movetype = H
physics = N
anim = 152
[State 155, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 155, Vel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 155, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 155, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)
[State 155, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 155, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State 155, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130

[State 155, roll]
type = varset
trigger1 = !time
var(0) = 0
[State 155, roll]
type = varset
trigger1 = vel y > -1 && alive
trigger1 = !AIlevel && command = "2k"
var(0) = 1

[State 155, End]
type = changestate
trigger1 = sysvar(0)
value = ifelse(var(0), 5221, 52)


;==========< CHEAP K.O. >==========
[Statedef 5130]
type = S
movetype = H
physics = S
anim = 5130
[State 5130, NHB]
type = nothitby
trigger1 = !alive
value = SCA
[State 5130, KO snd]
type = assertspecial
trigger1 = 1
flag = nokosnd
[State 5130, Pos]
type = posset
trigger1 = 1
y = 0

[State 5130, KO snd]
type = stopsnd
trigger1 = !time && !alive
channel = 0
[State 5130, KO snd]
type = playsnd
trigger1 = animelem = 2 && !alive
value = 11, 1

[State 5130, End]
type = changestate
trigger1 = !animtime
value = 5131

[Statedef 5131]
type = C
movetype = H
physics = C
anim = 5131
[State 5131, NHB]
type = nothitby
trigger1 = !alive
value = SCA
[State 5131, KO snd]
type = assertspecial
trigger1 = 1
flag = nokosnd
[State 5131, Pos]
type = posset
trigger1 = 1
y = 0
[State 5131, posfix]
type = posadd
trigger1 = animelem = 2
x = ceil(-20 * const(size.xscale))
[State 5131, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = L

[State 5131, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 5100
[State 5131, Dust]
type = explod
trigger1 = animelem = 3
anim = 8104
sprpriority = -3
postype = p1
pos = ceil(8 * const(size.xscale)), 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 5131, End]
type = changestate
trigger1 = !animtime
value = ifelse(alive, 5110, 5150)


;====================< LOSE >====================
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0, 0
[State 170, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1


;====================< DRAW GAME >====================
[Statedef 175]
type = S
ctrl = 0
velset = 0, 0
[State 175, switch]
type = changestate
trigger1 = !time && !selfanimexist(175)
value = 170
[State 175, Anim]
type = changeanim
trigger1 = !time
value = 175
[State 175, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1


;====================< CONTINUE? >====================
[Statedef 5500]
type = S
anim = 5300
velset = 0, 0
ctrl = 0
[State 5500, Anim]
type = changeanim
trigger1 = !time
value = 5500


;====================< INITIALIZE >====================
[Statedef 5900]
type = S
[State 5900, varreset]
type = varrangeset
trigger1 = !roundsexisted
value = 0
[State 5900, varreset]
type = varrangeset
trigger1 = !roundsexisted
fvalue = 0

[State 5900, Palette]
type = remappal
trigger1 = 1
source = 1, 1
dest = 1, palno

[State 5900, Mode]
type = varset
trigger1 = 1
var(1) = (palno = [7, 12])

[State 5900, shadow intro]
type = changestate
trigger1 = roundno = 1 && var(1)
value = 194

[State 5900, vs Guile]
type = changestate
triggerall = numenemy && !var(1)
triggerall = roundno = 1 || (!(enemy, roundsexisted) && !(teammode = simul) && !(enemy, teammode = simul))
trigger1 = enemy, name = "Guile" || enemy, name = "cvsguile"
trigger2 = enemy, name = "SF2Guile" || enemy, name = "William F. Guile"
value = 6910

[State 5900, vs Shin Gouki]
type = changestate
trigger1 = numenemy && !var(1)
trigger1 = !roundsexisted && !(enemy, roundsexisted)
trigger1 = !(teammode = simul) && !(enemy, teammode = simul)
trigger1 = enemy, name = "Shin Gouki" && enemy, authorname = "Phantom.of.the.Server"
value = 6913

[State 5900, vs Vega]
type = changestate
triggerall = numenemy && !roundsexisted && !var(1)
trigger1 = (enemy, name = "Vega") && (enemy, authorname = "Phantom.of.the.Server")
trigger2 = (enemy, name = "cvsvega") && ((enemy, authorname = "Warusaki3") || (enemy, authorname = "Gargoyle"))
trigger3 = (enemy, name = "M.Bison") && (enemy, authorname = "N -Mario")
trigger4 = enemy, name = "[Necromancer's] M. Bison"
trigger5 = (enemy, name = "M. Bison") && (enemy, authorname = "VK, Updated by Terry Kuo, adapted by Tenebrous")
trigger6 = (enemy, name = "CvSBison") && (enemy, authorname = "Team Kai (Saiai and Koga)")
value = 6913

[State 5900, turnsintro]
type = changestate
trigger1 = teammode = turns
trigger1 = !roundsexisted && roundno >= 2
value = 6900

[State 5900, jokeintro]
type = changestate
trigger1 = roundno = 1
trigger1 = command = "holdup" || random < 5
value = 6911
[State 5900, intro]
type = changestate
trigger1 = roundno = 1
value = 190 + (random % 2)
[State 5900, End]
type = changestate
trigger1 = 1
value = 0


;====================< INTRO 1 >====================
[Statedef 190]
type = S
physics = S
anim = 190
[State 190, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 190, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< INTRO 2 >====================
[Statedef 191]
type = S
physics = S
anim = 191
[State 191, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 191, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< SHADOW INTRO >====================
[Statedef 194]
type = S
physics = S
anim = 194
[State 194, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 194, palfx]
type = palfx
trigger1 = animelemtime(3) < 0
time = 1
add = -255, -255, -255
[State 194, palfx]
type = palfx
trigger1 = animelemtime(3) = -1
time = 16
add = -255, -255, -255
sinadd = 255, 255, 255, 64

[State 194, Snd]
type = playsnd
trigger1 = animelem = 2
value = 7, 4
[State 194, FX]
type = explod
trigger1 = animelem = 2
anim = 1307
ID = 1307
postype = p1
scale = const(size.xscale), const(size.yscale)
ownpal = 1

[State 194, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 5
[State 194, FX]
type = explod
trigger1 = animelem = 5
anim = 6005
postype = p1
pos = ceil(7 * const(size.xscale)), ceil(-93 * const(size.yscale))
sprpriority = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 194, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< TURNS INTRO >====================
[Statedef 6900]
type = A
anim = 6900
velset = 0, 0
ctrl = 0
[State 6900, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6900, bound]
type = screenbound
trigger1 = 1
value = 0
[State 6900, Camera]
type = helper
trigger1 = !numhelper(8999)
helpertype = normal
stateno = 8999
ID = 8999
name = "Camera"
postype = p1

[State 6900, Pos]
type = posset
trigger1 = !time
x = (-320 + abs(pos x)) * facing

[State 6900, Vel]
type = velset
trigger1 = !time
x = (helper(8999), rootdist x) / -40.0
y = -10.25
[State 6900, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 6900, End]
type = changestate
trigger1 = time && vel y > 0 && pos y >= 0
value = 6901


;--- LAND ---
[Statedef 6901]
type = S
physics = S
anim = 6901
velset = 0, 0
[State 6901, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6901, Pos]
type = posset
trigger1 = 1
x = ceil(helper(8999), pos x)

[State 6901, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 6901, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 6901, End]
type = changestate
trigger1 = !animtime
value = 6902


;====================< TURNS INTRO 1 >====================
[Statedef 6902]
type = S
physics = S
anim = 6902
[State 6902, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 6900, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 4
value = 5, ifelse(random < 500, 5, 4)
channel = 0
[State 6902, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< INTRO vs GUILE >====================
[Statedef 6910]
type = S
physics = S
anim = 6910
[State 6910, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6910, Snd]
type = playsnd
trigger1 = animelem = 7
value = 1, 0

[State 6910, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< JOKE INTRO >====================
[Statedef 6911]
type = A
physics = N
anim = 6911
velset = 0, 0
ctrl = 0
[State 6911, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 6911, bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0
[State 6911, Pos]
type = posadd
trigger1 = !time
y = -640
[State 6911, Vel]
type = velset
trigger1 = !time
y = 4
[State 6911, Accel]
type = veladd
trigger1 = 1
y = 0.25
[State 6911, Snd]
type = playsnd
trigger1 = time = 10
value = 11, 0
channel = 0
[State 6911, End]
type = changestate
trigger1 = time && pos y >= -vel y
value = 6912


;--- HIT GROUND ---
[Statedef 6912]
type = L
physics = C
anim = 6912
velset = 0, 0
[State 6912, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 6912, Pos]
type = posset
trigger1 = !time
y = 0

[State 6912, Snd]
type = playsnd
trigger1 = !time
value = 5000, 4
channel = 0
[State 6912, Snd]
type = playsnd
trigger1 = !time
value = 0, 5100
[State 6912, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 6912, Shake]
type = envshake
trigger1 = !time
time = 16
ampl = 4

[State 6912, statetype]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = S
physics = S
[State 6912, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< INTRO vs VEGA >====================
[Statedef 6913]
type = A
physics = N
anim = 6913
velset = 0, 0
ctrl = 0
[State 6913, intro]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nobardisplay
[State 6913, bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0
[State 6913, harrier]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6000
ID = 6000
name = "Harrier"
postype = p1
pos = 0, -216
size.xscale = 1
size.yscale = 1
ownpal = 1
[State 6913, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = ceil(pos y -screenpos y)
[State 6913, Vel]
type = velset
trigger1 = animelem = 2
y = 4
[State 6913, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.25
[State 6913, End]
type = changestate
trigger1 = time && pos y >= -vel y
value = 6914


;--- LAND ---
[Statedef 6914]
type = S
physics = S
anim = 6914
velset = 0, 0
[State 6914, intro]
type = assertspecial
trigger1 = 1
flag = intro
[State 6914, Pos]
type = posset
trigger1 = !time
y = 0

[State 6914, Snd]
type = playsnd
trigger1 = animelem = 16
value = 5, 4
channel = 0
[State 6914, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 6914, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 6914, End]
type = changestate
trigger1 = !animtime
value = 0


;====================< WIN POSE DECIDER >====================
[Statedef 180]
type = S
ctrl = 0

[State 180, Quote]
type = victoryquote
trigger1 = 1
value = 1 + (random % 11)

[State 180, Quote]
type = victoryquote
triggerall = numenemy
trigger1 = enemy, name = "Guile"
trigger2 = enemy, name = "cvsguile" || enemy, name = "svcguile"
value = 50

[State 180, Quote]
type = victoryquote
triggerall = numenemy
trigger1 = enemynear, name = "Vega" && enemynear, authorname = "Phantom.of.the.Server"
trigger2 = enemynear, name = "cvsvega" && (enemynear, authorname = "Warusaki3" || enemynear, authorname = "Gargoyle")
trigger3 = enemynear, name = "M.Bison" && enemynear, authorname = "N -Mario"
trigger4 = enemynear, name = "M. Bison" && enemynear, authorname = "VK, Updated by Terry Kuo, adapted by Tenebrous"
trigger5 = enemynear, name = "CvSBison" && enemynear, authorname = "Team Kai (Saiai and Koga)"
value = 51

[State 180, win]
type = changestate
trigger1 = var(1) && matchover
value = 189

[State 180, win]
type = changestate
trigger1 = command = "holdx" || command = "holdy" || command = "holdz"
value = ifelse(command = "holdz", 183, ifelse(command = "holdy", 182, 181))
[State 180, win]
type = changestate
trigger1 = command = "holda" || command = "holdb" || command = "holdc"
value = ifelse(command = "holdc", 181, ifelse(command = "holdb", 181, 184))

[State 180, win]
type = changestate
trigger1 = 1
value = 181 + (random % 4)


;====================< WIN 1 >====================
[Statedef 181]
type = S
physics = S
anim = 181
ctrl = 0
[State 181, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover


;====================< WIN 2 >====================
[Statedef 182]
type = S
physics = S
anim = 182
ctrl = 0
[State 182, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover
[State 182, spr]
type = sprpriority
trigger1 = animelemtime(3) >= 0
value = -1
[State 182, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 5
value = 5, 6
channel = 0


;====================< WIN 3 >====================
[Statedef 183]
type = S
physics = S
anim = 183
ctrl = 0
[State 183, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover
[State 183, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 12
value = 5, ifelse(random < 500, 5, 4)
channel = 0


;====================< WIN 4 >====================
[Statedef 184]
type = S
physics = S
anim = 184
ctrl = 0
[State 184, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover
[State 184, Snd]
type = playsnd
trigger1 = animelem = 14
value = 5, ifelse(random < 500, 5, 4)
channel = 0


;====================< WIN SHADOW >====================
[Statedef 189]
type = S
physics = S
anim = 189
ctrl = 0
[State 189, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[State 189, palfx]
type = palfx
trigger1 = animelemtime(8) = -10
time = 10
sinadd = -255, -255, -255, 40
[State 189, Snd]
type = playsnd
trigger1 = animelem = 8
value = 7, 4
[State 189, FX]
type = explod
trigger1 = animelem = 8
anim = 1306
sprpriority = 0
postype = p1
scale = const(size.xscale), const(size.yscale)
ownpal = 1


;====================< TAUNT >====================
[Statedef 195]
type = S
physics = S
movetype = I
anim = 195
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 195, Snd]
type = playsnd
trigger1 = animelem = 14
value = 5, ifelse(random < 500, 5, 4)
channel = 0
[State 195, Anim]
type = changeanim
trigger1 = !animelemtime(13)
trigger1 = command = "holdstart"
value = 195
elem = 10
[State 195, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[Statedef 196]
type = S
physics = S
movetype = I
anim = 196
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 196, Snd]
type = playsnd
trigger1 = !var(1)
trigger1 = animelem = 12
value = 5, ifelse(random < 500, 5, 4)
channel = 0
[State 196, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;===========================================================================
;===============================< -2 STATES >=================================
;===========================================================================
[Statedef -2]

[State -2, AI Charge Back]
type = varadd
trigger1 = AIlevel
var(55) = 1
[State -2, AI Charge Back]
type = varset
trigger1 = !AIlevel
trigger2 = time = 1
trigger2 = stateno = [1000, 4999]
trigger3 = time >= 3
trigger3 = stateno = 0 || (stateno = 20 && vel x > 0) || (stateno = [700, 702])
trigger4 = (stateno = 40 && sysvar(1) != -1)
var(55) = 0

[State -2, AI Charge Down]
type = varadd
trigger1 = AIlevel
var(56) = 1
[State -2, AI Charge Down]
type = varset
trigger1 = !AIlevel
trigger2 = time = 1
trigger2 = stateno = [1000, 4999]
trigger3 = time >= 3
trigger3 = stateno = 0 || stateno = 20 || (stateno = [700, 702])
trigger4 = stateno = 40
trigger5 = (stateno = [120, 155]) && statetype != C
var(56) = 0

[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1

[State -2, P2 Safe Fall]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, command = "recovery"
trigger1 = target, pos y >= -48 && target, vel y > 0
trigger1 = target, alive && target, hitfall && target, gethitvar(fall.recover)
trigger1 = target, stateno = 5030 || target, stateno = 5035 || target, stateno = 5050 || target, stateno = 5071
value = 5205
ignorehitpause = 1

[State -2, Prevent Guard]
type = assertspecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) -1)
flag = unguardable
ignorehitpause = 1

[State -2, Counter FX]
type = helper
trigger1 = movehit && var(9) && numenemy
trigger1 = (enemynear, movetype = H)
trigger1 = !(hitdefattr = SCA, AT)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) + var(21)) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y) + var(22)
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State -2, Counter Flag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Juggle Count]
type = varadd
trigger1 = movehit = 1
trigger1 = !(hitdefattr = SCA, AT)
var(14) = 1
[State -2, Juggle Reset Single]
type = varset
triggerall = numenemy = 1 && var(14)
trigger1 = (enemy, statetype != A) && (enemy, stateno != [5100, 5109]) && (enemy, time >= 1)
trigger2 = (enemy, movetype != H) || (enemy, stateno = [120, 155]) || (enemy, ctrl)
var(14) = 0
ignorehitpause = 1
[State -2, Juggle Reset Simul]
type = varset
triggerall = numenemy >= 2 && var(14)
trigger1 = (enemynear(0), statetype != A) && (enemynear(0), time >= 1)
trigger2 = (enemynear(0), movetype != H) || (enemynear(0), stateno = [120, 155]) || (enemynear(0), ctrl)
trigger3 = (enemynear(1), statetype != A) && (enemynear(0), time >= 1)
trigger4 = (enemynear(1), movetype != H) || (enemynear(0), stateno = [120, 155]) || (enemynear(0), ctrl)
var(14) = 0
ignorehitpause = 1
[State -2, Free Juggling]
type = varset
trigger1 = roundstate != 2
var(14) = 0
ignorehitpause = 1

[State -2, Hitcount]
type = varadd
trigger1 = movehit = 1
var(13) = 1
[State -2, Hitcount Reset]
type = varset
trigger1 = numenemy && var(13)
trigger1 = (enemynear, movetype != H) && (enemynear, stateno != 5300)
var(13) = 0
ignorehitpause = 1

[State -2, Super Level Reset]
type = varset
trigger1 = (stateno != [3000, 4999]) || movetype = H
var(15) = 0
ignorehitpause = 1
[State -2, Super Count Reset]
type = varset
trigger1 = var(16) && numenemy && !numhelper(3000) && !numhelper(3600) && !numhelper(3700)
trigger1 = (stateno != [3000, 4999]) || movetype = H
trigger1 = (enemynear, movetype != H) && (enemynear, stateno != [120, 155])
var(16) = 0
ignorehitpause = 1

[State -2, Excel End]
type = varset
trigger1 = var(20) < 0 || roundstate != 2 || movetype = H
var(20) = 0
ignorehitpause = 1
[State -2, Excel Timer]
type = varadd
trigger1 = var(20) > 0
var(20) = -1
ignorehitpause = 1
[State -2, Excel Juggle]
type = assertspecial
trigger1 = var(20) > 0
trigger1 = var(14) := 0
trigger2 = roundstate != 2
flag = nojugglecheck
ignorehitpause = 1
[State -2, Excel Asserts]
type = assertspecial
trigger1 = var(20) > 0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1
[State -2, Excel PalFX]
type = palfx
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignorehitpause = 1
[State -2, Excel PalFX]
type = palfx
trigger1 = (var(20) = [1, 60])
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignorehitpause = 1
[State -2, Excel Timer]
type = helper
trigger1 = !numhelper(8405) && var(20) > 0
helpertype = normal
stateno = 8405
ID = 8405
name = "Excel Timer"
postype = p1
ownpal = 1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5000, 5120])
var(38) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, stateno = [150, 155]
trigger2 = (enemynear, stateno = 51 || enemynear, stateno = 140) && (enemynear, prevstateno = [150, 155])
trigger3 = enemynear, movetype = H && enemynear, statetype != A && !var(20)
trigger4 = (enemynear, stateno = [5020, 5040]) && enemynear, hitfall = 0
trigger5 = enemynear, stateno = 40 && enemynear, prevstateno != 52 && (enemynear, anim != [0, 29])
var(38) = 1
ignorehitpause = 1

[State -2, Dampener]
type = varset
trigger1 = 1
fvar(10) = ifelse(var(13) < 6, 24, ifelse(var(13) >= 23, 1, 29 -var(13))) / 24.0
ignorehitpause = 1
[State -2, Dampener - Custom Combo]
type = varset
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifelse(var(13) >= 10, 10, var(13))) / 10.0
ignorehitpause = 1
[State -2, Dampener - Custom Combo Limiter]
type = varset
trigger1 = var(20)
trigger1 = stateno = 255
fvar(10) = ifelse(var(13), 0, 0.72)
ignorehitpause = 1
[State -2, Dampener Supers]
type = varset
trigger1 = (stateno = [3000, 4999])
fvar(10) = ifelse(var(16) >= 3, 0.25, (1 - var(16) * 0.25))
ignorehitpause = 1
[State -2, Dampener Limit]
type = varset
trigger1 = fvar(10) < 0
fvar(10) = 0
ignorehitpause = 1

[State -2, Root Dampener]
type = varset
trigger1 = 1
fvar(11) = fvar(10) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1

[State -2, Shadow9000]
type = playerpush
trigger1 = palno = 9
trigger1 = stateno = [0, 105]
value = 0
ignorehitpause = 1
[State -2, Shadow9000]
type = helper
trigger1 = palno = 9
trigger1 = !numhelper(6010)
helpertype = normal
stateno = 6010
ID = 6010
name = "Shadow FX"
postype = p1
supermovetime = 65535
ownpal = 1
[State -2, Shadow9000]
type = sprpriority
trigger1 = palno = 9
value = -1

[State -2, Debug]
type = displaytoclipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d"
params = AIlevel, fvar(11), var(13), var(14)
ignorehitpause = 1

[State -2, Debug]
type = appendtoclipboard
trigger1 = 1
text = "\nBy PotS - http://www.mugenguild.com/pots/"
ignorehitpause = 1


;===========================================================================
;===============================< -3 STATES >=================================
;===========================================================================
[Statedef -3]

[State -3, Gametime Var]
type = varset
trigger1 = 1
var(58) = gametime
ignorehitpause = 1

[State -3, ProjContact Reset]
type = varset
triggerall = var(18)
trigger1 = (stateno != [1000, 1020]) && stateno != 1120 && stateno != 3000 && stateno != 3600 && stateno != 3700
trigger2 = stateno = 1000 && animelemtime(5) < 0
trigger3 = stateno = 1120 && animelemtime(4) < 0
trigger4 = stateno = 3000 && anim = 3000 && animelemtime(3) < 0
trigger5 = stateno = 3600 && animelemtime(4) < 0
trigger6 = stateno = 3700 && animelemtime(7) < 0
var(18) = 0

[State -3, Chain Reset]
type = varset
trigger1 = 1
var(6) = 0
ignorehitpause = 1
[State -3, Chain Check]
type = varset
trigger1 = var(20) && (stateno = [200, 699]) && movecontact
trigger2 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact || var(18))
var(6) = 1
ignorehitpause = 1

[State -3, Cancel Reset]
type = varset
trigger1 = 1
var(7) = 0
ignorehitpause = 1
[State -3, Cancel Check]
type = varset
trigger1 = var(20) && (stateno = [200, 699])
trigger2 = var(20) && (stateno = [1000, 2999]) && (movecontact || var(18))
trigger3 = (stateno = [200, 699]) && time <= 2
trigger4 = stateno = 200 || stateno = 400 || stateno = 430
trigger5 = (stateno = 211 || stateno = 221 || stateno = 600) && animelemtime(3) < 0
trigger6 = (stateno = 221 || stateno = 410 || stateno = 610) && animelemtime(4) < 0
var(7) = 1
ignorehitpause = 1

[State -3, Super Cancel Reset]
type = varset
trigger1 = 1
var(8) = 0
ignorehitpause = 1
[State -3, Super Cancel Check]
type = varset
trigger1 = var(20) && (stateno = [200, 699])
trigger2 = var(20) && (stateno = [1000, 2999]) && (movecontact || var(18))
trigger3 = (stateno = [200, 699]) && time <= 2
trigger4 = stateno = 200 || stateno = 400 || stateno = 430
trigger5 = (stateno = 211 || stateno = 221 || stateno = 420 || stateno = 440 || stateno = 450 || stateno = 600) && (animelemtime(3) < 0 || (movecontact = [1, 8]))
trigger6 = (stateno = 210 || stateno = 221 || stateno = 241 || stateno = 410 || stateno = 610) && (animelemtime(4) < 0 || (movecontact = [1, 8]))
trigger7 = (stateno = 1000 || stateno = 1020) && var(18)
trigger8 = (stateno = 1100 || stateno = 1120) && statetype != A && movecontact
trigger9 = (stateno = 3100 || stateno = 3200 || stateno = 3301 || stateno = 3500 || stateno = 3701) && movecontact
trigger10 = (stateno = 3000 || stateno = 3600) && var(18)
var(8) = 1
ignorehitpause = 1

[State -3, Parry Detection]
type = helper
triggerall = roundstate = 2 && !numhelper(705) && !var(20)
triggerall = (movetype = I && ctrl) || (stateno = [700, 702]) || stateno = 5120
triggerall = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AIlevel
trigger1 = !AIlevel && (statetype = S || statetype = C || stateno = 5120) && (command = "fwd" || command = "down")
trigger2 = !AIlevel && statetype = A && (var(3) != 1 && var(3) != 2) && command = "fwd"
trigger3 = AIlevel && (stateno != [700, 702]) && inguarddist && random < 50
trigger4 = AIlevel && (stateno = [700, 702]) && time = 14 && random < 667
helpertype = normal
stateno = 705
ID = 705
name = "Parry Detection"
postype = p1
pausemovetime = 65535
supermovetime = 65535
[State -3, Parry Attacks]
type = changestate
trigger1 = (stateno != [700, 702]) && numhelper(705)
trigger1 = helper(705), stateno = 706
value = ifelse((helper(705), anim = 707), 702, ifelse((helper(705), anim = 706), 701, 700))
ignorehitpause = 1

[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [700, 702]) && numhelper(705)
trigger1 = !(helper(705), var(0)) && (helper(705), anim = 705)
attr = SA, AP
stateno = 700
slot = 0
time = 1
ignorehitpause = 1
[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [700, 702]) && numhelper(705)
trigger1 = !(helper(705), var(0)) && (helper(705), anim = 706)
attr = C, AP
stateno = 701
slot = 0
time = 1
ignorehitpause = 1
[State -3, Parry Projectiles]
type = hitoverride
trigger1 = (stateno != [700, 702]) && numhelper(705)
trigger1 = !(helper(705), var(0)) && (helper(705), anim = 707)
attr = SCA, AP
stateno = 702
slot = 0
time = 1
ignorehitpause = 1

[State -3, NoWalk after Parry]
type = assertspecial
trigger1 = var(26)
trigger1 = var(26) := (var(26) -1)
flag = nowalk

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1
[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)
[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Afterimage]
type = afterimage
triggerall = time = 1 && !var(20)
trigger1 = stateno = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (stateno = [710, 725])
time = 2
timegap = 1
framegap = 4
length = 9
palbright = 0, 0, 0
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
trans = add1

[State -3, ExFX]
type = varadd
trigger1 = var(25) > 0
var(25) = -1
[State -3, ExFX]
type = varset
trigger1 = (stateno != [1000, 2999]) || movetype = H
var(25) = 0

[State -3, Ex Afterimage]
type = afterimage
trigger1 = time = 1
trigger1 = (stateno = [1000, 2999]) && var(25)
time = 2
timegap = 1
framegap = 1
length = 8
palbright = 32, 32, 0
palcontrast = 128, 128, 128
paladd = -10, -10, -10
palmul = 1.1, 1, 0.5
trans = add
ignorehitpause = 1
[State -3, Ex Flash]
type = palfx
trigger1 = (stateno = [1000, 2999]) && var(25)
time = 1
add = 32 + ceil(sin(gametime / 3.0 * pi) * 32), 32 + ceil(sin(gametime / 3.0 * pi) * 32), 0
mul = 320, 320, 192
ignorehitpause = 1

[State -3, Super Afterimage]
type = afterimage
trigger1 = stateno = 3000 && time = 4
trigger2 = stateno = 3100 && time = 4
trigger3 = stateno = 3200 && time = 4
trigger4 = stateno = 3300 && time = 4
trigger5 = stateno = 3400 && time = 4
trigger6 = stateno = 3500 && time = 3
trigger7 = stateno = 3600 && time = 4
trigger8 = stateno = 3700 && time = 4
time = 2
timegap = 1
framegap = 10
length = 21
palbright = 0, 0, 0
palcontrast = ifelse(var(15) <= 1, 128, ifelse(var(15) >= 3, 160, 32)), ifelse(var(15) <= 1, 128, ifelse(var(15) >= 3, 32, 32)), ifelse(var(15) <= 1, 128, ifelse(var(15) >= 3, 32, 160))
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
trans = add1

[State -3, Afterimage Persist]
type = afterimagetime
trigger1 = stateno = 50 || (stateno = [600, 650])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = (stateno = [710, 725]) || var(20)
trigger3 = (stateno = [1000, 2999]) && var(25)
trigger4 = (stateno = [3000, 4999])
time = 2
[State -3, Afterimage Off]
type = afterimagetime
trigger1 = time <= 1
trigger1 = stateno = 3000 || stateno = 3100 || stateno = 3200 || stateno = 3300 || stateno = 3400 || stateno = 3500 || stateno = 3600 || stateno = 3700
trigger2 = stateno = [3401, 3403]
time = 0

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A && movetype != H && numenemy = 1
triggerall = p2bodydist x = [ -(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)) , 0]
trigger1 = p2statetype = S
trigger1 = p2dist y >= (enemynear, const(size.height) - 26)
trigger2 = p2statetype = C
trigger2 = p2dist y >= (enemynear, const(size.height) - 59)
trigger3 = p2statetype = L
trigger3 = p2dist y >= 12
value = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < (250 * (AIlevel ** 2 / 64.0))
value = 5000, (random % 5)
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value = 5000, (random % 5)
channel = 0
ignorehitpause = 1

[State -3, Cheap KO]
type = changestate
trigger1 = !alive && (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5130
ignorehitpause = 1

[State -3, KO Snd]
type = assertspecial
trigger1 = (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
flag = nokosnd
ignorehitpause = 1

[State -3, Custom Combo Finish]
type = helper
triggerall = winKO && var(20)
triggerall = roundstate = 3 && !numhelper(8600)
trigger1 = movehit = [1, 4]
trigger2 = numhelper(1000)
trigger2 = helper(1000), var(18)
trigger3 = numhelper(1020)
trigger3 = helper(1020), var(18)
trigger4 = stateno = 810 && (animelemtime(6) = [0, 1])
trigger5 = stateno = 820 && animelemtime(11) >= 0 && animelemtime(19) < 0
trigger6 = stateno = 821 && (animelemtime(3) = [0, 1])
trigger7 = stateno = 861 && time <= 1
trigger8 = stateno = 870 && (animelemtime(4) = [0, 1])
helpertype = normal
stateno = 8650
ID = 8600
name = "Excel Finish"
postype = left
pos = 160, -120
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -3, Super Finish]
type = helper
triggerall = winKO
triggerall = roundstate = 3 && !numhelper(8600)
trigger1 = movehit = 1 && (stateno = [3000, 4999])
trigger1 = var(23) := stateno
trigger2 = numhelper(3000)
trigger2 = var(18) || (helper(3000), var(18))
trigger2 = var(23) := 3000
trigger3 = numhelper(3600) && var(18)
trigger3 = var(23) := 3600
trigger4 = numhelper(3700) && var(18)
trigger4 = var(23) := 3700
helpertype = normal
stateno = 8600
ID = 8600
name = "Super Finish"
postype = left
pos = 160, -120
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
