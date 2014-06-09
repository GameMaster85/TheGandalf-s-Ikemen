; Aoko By RajaaBoy

;=========================================================================
; Dodge
;=========================================================================
[StateDef 900]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = -1

[state 900, Set Position]
type = posset
trigger1 = !time
y = 0

[state 900, Change Animation]
type = changeanim
trigger1 = !time
value = 900

[state 900, Vulnerability]
type = hitby
trigger1 = 1
value = SCA,NT,ST,HT

[state 900, Solidity]
type = playerpush
trigger1 = 1
value = 0

[state 900, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 2, random % 6
volumescale = 100
channel = 0

[state 900, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 900, 0
volumescale = 100
channel = 1

[state 900, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Dodge - Forward
;=========================================================================
[Statedef 905]
type = S
physics = N
movetype = I
ctrl = 0
facep2 = 1
velset = vel x * (prevstateno = 100), 0
sprpriority = -1

[state 905, Change Animation]
type = changeanim
trigger1 = !time
value = 905

[state 905, Vulnerability]
type = hitby
trigger1 = animtime < -5
value = SCA, NT,ST,HT

[state 905, Solidity]
type = playerpush
trigger1 = animtime < -5
value = 0

[state 905, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 2, random % 6
volumescale = 100
channel = 0

[state 905, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 905, 0
volumescale = 100
channel = 1

[state 905, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
x = 5.5 + 1.75 * (prevstateno = 100)

[state 905, Set Velocity]
type = velset
trigger1 = !animelemtime(6)
x = 0.0

[state 905, Dash Smoke]
type = helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Dash Smoke"
ID = 6005
stateno = 6005
postype = P1
pos = 0, 0
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 905, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Dodge - Backward
;=========================================================================
[Statedef 910]
type = S
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = -1

[state 910, Change Animation]
type = changeanim
trigger1 = !time
value = 910

[state 910, Vulnerability]
type = hitby
trigger1 = animtime < -5
value = SCA, NT,ST,HT

[state 910, Solidity]
type = playerpush
trigger1 = animtime < -5
value = 0

[state 910, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 2, random % 6
volumescale = 100
channel = 0

[state 910, Sound]
type = playsnd
trigger1 = !animelemtime(3)
value = 905, 0
volumescale = 100
channel = 1

[state 910, Velocity]
type = velset
trigger1 = !animelemtime(2)
x = -5.5

[state 910, Velocity]
type = velset
trigger1 = !animelemtime(6)
x = 0.0

[state 910, Dash Smoke]
type = helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Dash Smoke"
ID = 6005
stateno = 6005
postype = P1
pos = 0, 0
facing = -1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 910, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Alpha Counter
;=========================================================================
[StateDef 915]
type = S
movetype = A
physics = N
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 915, Set Position]
type = posset
trigger1 = !time
y = 0

[state 915, Change Animation]
type = changeanim
trigger1 = !time
value = 915

[state 915, Add Power]
type = poweradd
trigger1 = !time
value = -1000

[state 915, Counter FX]
type = helper
trigger1 = !time
helpertype = normal
name = "Counter FX"
ID = 6015
stateno = 6015
postype = p1
pos = 24, -56
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 915, Super Pause]
type = superpause
trigger1 = !time
time = 24
movetime = 24
anim = -1
sound = -1
pos = 0, 0
p2defmul = 1
poweradd = 0
darken = 0
unhittable = 1

[state 915, Vulnerability]
type = nothitby
trigger1 = !time
value = SCA
time = 24

[state 915, Sound]
type = playsnd
trigger1 = !time
value = 915, 0
volumescale = 100

[state 915, Voice]
type = playsnd
trigger1 = !animelemtime(6)
value = 2, 2
volumescale = 100
channel = 0

[state 915, Sound]
type = playsnd
trigger1 = !animelemtime(6)
value = 1, 2
volumescale = 100
channel = 1

[state 915, Increment Velocity]
type = posadd
trigger1 = animelemtime(3) >= 0 && animelemtime(7) < 0
x = 3.90625 - 0.390625 * animelemtime(3)

[state 915, Width]
type = helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Width"
ID = 9998
stateno = 9998
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
keyctrl = 0
size.ground.front = 0
size.ground.back = 0

[state 915, Hit]
type = hitdef
trigger1 = !animelemtime(7)
attr = S, SA
damage = ceil(cond(56 * fvar(0) < 7, 7, 56 * fvar(0))), 12
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 15, 15
hitsound = -1 + 0 * (var(3) := 220)
guardsound = -1 + 0 * (var(4) := 0)
sparkno = -1 + 0 * (var(5) := 4)
guard.sparkno = -1 + 0 * (var(6) := 4)
sparkxy = 0 * (var(7) := 52), 0 * (var(8) := -85)
animtype = diagup
ground.type = low
air.animtype = diagup
air.type = low
ground.slidetime = 21 + 4 * var(9)
ground.hittime = 21 + 4 * var(9)
guard.slidetime = 21 + 4 * var(9)
guard.hittime = 21 + 4 * var(9)
air.hittime = 104
ground.velocity = -3.125, -8.7890625
guard.velocity = -3.125
air.velocity = -3.125, -8.7890625
airguard.velocity = -3.90625, -3.125
ground.cornerpush.veloff = 0.0
guard.cornerpush.veloff = 0.0
yaccel = 0.5859375
getpower = 0
givepower = 48, 48
envshake.time = 12
envshake.ampl = 6
fall = 1
fall.recover = 0
fall.recovertime = 96
fall.animtype = diagup
kill = 0

[state 915, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[state 915, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Power Charge
;=========================================================================
[Statedef 920]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 0

[state 920, Change Animation]
type = changeanim
trigger1 = !time
value = 920

[state 920, Animation Loop]
type = changeanim
trigger1 = !animelemtime(8)
value = anim
elem = 6

[state 920, Animation Loop]
type = changeanim
triggerall = !ailevel
triggerall = animelemtime(8) < 0
trigger1 = power >= powermax || power >= const(data.power)
trigger2 = command != "hold_y" || command != "hold_b"
value = anim
elem = 8

[state 920, Animation Loop]
type = changeanim
triggerall = ailevel
triggerall = animelemtime(8) < 0
trigger1 = power >= powermax || power >= const(data.power)
trigger2 = p2bodydist x < 75
trigger3 = p2bodydist x < 100 && p2movetype = A
trigger4 = enemy,numproj
trigger5 = inguarddist
value = anim
elem = 8

[state 920, Palette Effect]
type = palfx
trigger1 = numhelper(6020)
time = 1
add = 0, 0, ceil(128 + 128 * cos(gametime * pi / 4.0))

[state 920, Add Power]
type = poweradd
trigger1 = animelemtime(8) < 0
value = ceil(powermax / (powermax * 0.5) + time * 0.0625)

[state 920, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 920, 10
volumescale = 100
channel = 0

[state 920, Power Charge Effect]
type = helper
trigger1 = !numhelper(6020)
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(8) < 0
helpertype = normal
name = "Power Charge Effect"
ID = 6020
stateno = 6020
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 920, Control]
type = ctrlset
trigger1 = animelemtime(8) >= 0
value = 1
persistent = 0

[state 920, Stop Voice]
type = stopsnd
trigger1 = !animelemtime(8)
channel = 0

[state 920, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Parry - Stand
;=========================================================================
[StateDef 925]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 96
sprpriority = 2

[state 925, Change Animation]
type = changeanim
trigger1 = !time
value = 925

[state 925, Vulnerability]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[state 925, Pause]
type = pause
trigger1 = !time
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 925, Voice]
type = playsnd
trigger1 = !time
value = 2, random % 5
volumescale = 100
channel = 0

[state 925, Sound]
type = playsnd
trigger1 = !time
value = 925, 0
volumescale = 100
channel = 3

[state 925, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[state 925, Effect]
type = explod
trigger1 = !time
ID = 6025
anim = 6025
postype = p1
pos = ceil(72 * const(size.xscale)), ceil(-56 * const(size.yscale))
bindtime = 1
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 0.5, 0.5
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 925, Parry Skill]
type = helper
trigger1 = !time
helpertype = normal
name = "Parry Skill"
ID = 932
stateno = 932
postype = p1
pos = ceil(72 * const(size.xscale)), ceil(-56 * const(size.yscale))
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 925, Destroy Explod]
type = removeexplod
trigger1 = !animtime
ID = 6025

[state 925, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Parry - Crouch
;=========================================================================
[StateDef 926]
type = C
movetype = I
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = 96
sprpriority = 2

[state 926, Change Animation]
type = changeanim
trigger1 = !time
value = 926

[state 926, Vulnerability]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[state 926, Pause]
type = pause
trigger1 = !time
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 926, Voice]
type = playsnd
trigger1 = !time
value = 2, random % 5
volumescale = 100
channel = 0

[state 926, Sound]
type = playsnd
trigger1 = !time
value = 925, 0
volumescale = 100
channel = 3

[state 926, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[state 926, Effect]
type = explod
trigger1 = !time
ID = 6025
anim = 6025
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(-40 * const(size.yscale))
bindtime = 1
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 0.5, 0.5
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 926, Parry Skill]
type = helper
trigger1 = !time
helpertype = normal
name = "Parry Skill"
ID = 932
stateno = 932
postype = p1
pos = ceil(64 * const(size.xscale)), ceil(-40 * const(size.yscale))
facing = 1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 926, Destroy Explod]
type = removeexplod
trigger1 = !animtime
ID = 6025

[state 926, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; Parry - Air
;=========================================================================
[Statedef 927]
type = A
movetype = I
physics = N
ctrl = 0
facep2 = 1
velset = vel x, vel y
poweradd = 96
sprpriority = 2

[state 927, Change Animation]
type = changeanim
trigger1 = !time
value = 927

[state 927, Freeze Position]
type = posfreeze
trigger1 = 1
value = 1

[state 927, Vulnerability]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[state 927, Pause]
type = pause
trigger1 = !time
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 927, Voice]
type = playsnd
trigger1 = !time
value = 2, random % 5
volumescale = 100
channel = 0

[state 927, Sound]
type = playsnd
trigger1 = !time
value = 925, 0
volumescale = 100
channel = 3

[state 927, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[state 927, Effect]
type = explod
trigger1 = !time
ID = 6025
anim = 6025
postype = p1
pos = ceil(40 * const(size.xscale)), ceil(-40 * const(size.yscale))
bindtime = 1
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 0.5, 0.5
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 927, Destroy Explod]
type = removeexplod
trigger1 = !animtime
ID = 6025

[state 927, End State]
type = changestate
trigger1 = !animtime
value = 928

;=========================================================================
; Parry - Air Fall
;=========================================================================
[Statedef 928]
type = A
movetype = I
physics = N
ctrl = 1
sprpriority = 2

[state 928, Change Animation]
type = changeanim
trigger1 = !time
value = 928

[state 928, Set Velocity]
type = velset
trigger1 = !time
y = -3.125

[state 928, Increment Velocity]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 928, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Shield - Stand
;=========================================================================
[statedef 935]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 935, Change Animation]
type = changeanim
trigger1 = !time
value = 935

[state 935, Palette Effect]
type = palfx
trigger1 = animelemtime(3) < 0
trigger1 = numhelper(6030)
time = 2
add = ceil(128 + cos(time * pi / 8.0) * 128), ceil(128 + cos(time  * pi / 8.0) * 128), 0

[state 935, Voice]
type = playsnd
trigger1 = !time
value = 2, random % 3
volumescale = 100
channel = 0

[state 935, Sound]
type = playsnd
trigger1 = !time
value = 935, 0
volumescale = 100
channel = 3

[state 935, Shield Effect]
type = helper
trigger1 = !time
helpertype = normal
name = "Shield Effect"
ID = 6030
stateno = 6030
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 0.25
size.yscale = 0.25
; supermovetime = 65536
; pausemovetime = 65536

[state 935, Hit Override]
type = hitoverride
trigger1 = animelemtime(2) < 0
attr = SCA,AP
stateno = stateno + 5
slot = 0
time = 1

[state 935, Reversal]
type = reversaldef
trigger1 = animelemtime(2) < 0
reversal.attr = SCA,AA
pausetime = 0, 1
sparkno = -1
sparkxy = 0, 0
numhits = 0
p1stateno = stateno + 5

[state 935, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Shield - Crouch
;=========================================================================
[statedef 936]
type = C
movetype = I
physics = C
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 1

[state 936, Change Animation]
type = changeanim
trigger1 = !time
value = 936

[state 936, Palette Effect]
type = palfx
trigger1 = animelemtime(3) < 0
trigger1 = numhelper(6030)
time = 2
add = ceil(128 + cos(time * pi / 8.0) * 128), ceil(128 + cos(time * pi / 8.0) * 128), 0

[state 936, Voice]
type = playsnd
trigger1 = !time
value = 2, random % 3
volumescale = 100
channel = 0

[state 936, Sound]
type = playsnd
trigger1 = !time
value = 935, 0
volumescale = 100
channel = 3

[state 936, Shield Effect]
type = helper
trigger1 = !time
helpertype = normal
name = "Shield Effect"
ID = 6030
stateno = 6030
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 0.25
size.yscale = 0.25
; supermovetime = 65536
; pausemovetime = 65536

[state 936, Hit Override]
type = hitoverride
trigger1 = animelemtime(2) < 0
attr = SCA,AP
stateno = stateno + 5
slot = 0
time = 1

[state 936, Reversal]
type = reversaldef
trigger1 = animelemtime(2 )< 0
reversal.attr = SC,AA
pausetime = 0, 1
sparkno = -1
sparkxy = 0, 0
numhits = 0
p1stateno = stateno + 5

[state 936, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; Shield - Air
;=========================================================================
[statedef 937]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 1

[state 937, Change Animation]
type = changeanim
trigger1 = !time
value = 937

[state 937, Palette Effect]
type = palfx
trigger1 = animelemtime(3) < 0
trigger1 = numhelper(6030)
time = 2
add = ceil(128 + cos(time * pi / 8.0) * 128), ceil(128 + cos(time * pi / 8.0) * 128), 0

[state 937, Voice]
type = playsnd
trigger1 = !time
value = 2, random % 3
volumescale = 100
channel = 0

[state 937, Sound]
type = playsnd
trigger1 = !time
value = 935, 0
volumescale = 100
channel = 3

[state 937, Increment Velocity]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 937, Shield Effect]
type = helper
trigger1 = !time
helpertype = normal
name = "Shield Effect"
ID = 6030
stateno = 6030
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 0.25
size.yscale = 0.25
; supermovetime = 65536
; pausemovetime = 65536

[state 937, Hit Override]
type = hitoverride
trigger1 = animelemtime(2) < 0
attr = SCA,AP
stateno = stateno + 5
slot = 0
time = 1

[state 937, Reversal]
type = reversaldef
trigger1 = animelemtime(2) < 0
reversal.attr = SCA,AA
pausetime = 0, 1
sparkno = -1
sparkxy = 0, 0
p1stateno = stateno + 5

[state 937, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Shield - Endure - S
;=========================================================================
[statedef 940]
type = S
movetype = I
physics = S
ctrl = 0
sprpriority = 1

[state 940, Change Animation]
type = changeanim
trigger1 = !time
value = 940

[state 940, Add Power]
type = poweradd
trigger1 = !time
value = 96

[state 940, Pause]
type = pause
trigger1 = !time
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 940, Palette Effect]
type = palfx
trigger1 = animelemtime(2) < 0
time = 2
add = 0, 0, ceil(256 + cos(time * pi / 4.0) * 256)

[state 940, Special Effect]
type = assertspecial
trigger1 = 1
flag = nowalk

[state 940, Freeze Position]
type = posfreeze
trigger1 = animelemtime(2) < 0
value = 1

[state 940, Voice]
type = playsnd
trigger1 = !time
value = 1700, random % 3
volumescale = 100
channel = 0

[state 940, Sound]
type = playsnd
trigger1 = !time
value = 925, 0
volumescale = 100
channel = 3

[state 940, Control]
type = ctrlset
trigger1 = !animelemtime(2)
value = 1

[state 940, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Shield - Endure - C
;=========================================================================
[statedef 941]
type = C
movetype = I
physics = C
ctrl = 0
sprpriority = 1

[state 941, Change Animation]
type = changeanim
trigger1 = !time
value = 941

[state 941, Add Power]
type = poweradd
trigger1 = !time
value = 96

[state 941, Pause]
type = pause
trigger1 = !time
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 941, Palette Effect]
type = palfx
trigger1 = animelemtime(2) < 0
time = 2
add = 0, 0, ceil(256 + cos(time * pi / 4.0) * 256)

[state 941, Special Effect]
type = assertspecial
trigger1 = 1
flag = nowalk

[state 941, Freeze Position]
type = posfreeze
trigger1 = animelemtime(2) < 0
value = 1

[state 941, Voice]
type = playsnd
trigger1 = !time
value = 1700, random % 3
volumescale = 100
channel = 0

[state 941, Sound]
type = playsnd
trigger1 = !time
value = 925, 0
volumescale = 100
channel = 3

[state 941, Control]
type = ctrlset
trigger1 = !animelemtime(2)
value = 1

[state 941, End State]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;=========================================================================
; Shield - Endure - A
;=========================================================================
[statedef 942]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 1

[state 942, Change Animation]
type = changeanim
trigger1 = !time
value = 942

[state 942, Add Power]
type = poweradd
trigger1 = !time
value = 96

[state 942, Pause]
type = pause
trigger1 = !time
time = 16
movetime = 16
endcmdbuftime = 16
pausebg = 0

[state 942, Palette Effect]
type = palfx
trigger1 = animelemtime(2) < 0
time = 2
add = 0, 0, ceil(256 + cos(time * pi / 4.0) * 256)

[state 942, Freeze Position]
type = posfreeze
trigger1 = animelemtime(2) < 0
value = 1

[state 942, Voice]
type = playsnd
trigger1 = !time
value = 1700, random % 3
volumescale = 100
channel = 0

[state 942, Sound]
type = playsnd
trigger1 = !time
value = 925, 0
volumescale = 100
channel = 3

[state 942, Set Velocity]
type = velset
trigger1 = !animelemtime(2)
y = -6.0

[state 942, Increment Velocity]
type = veladd
trigger1 = animelemtime(2) > 0
y = const(movement.yaccel)

[state 942, Control]
type = ctrlset
trigger1 = !animelemtime(2)
value = 1

[state 942, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52

;=========================================================================
; Air Jump
;=========================================================================
[Statedef 945]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 945, Jump Direction]
type = varset
trigger1 = !ailevel
sysvar(1) = cond(command = "holdfwd", 1, cond(command = "holdback", -1, 0))

[state 945, Jump Direction]
type = varset
trigger1 = ailevel
sysvar(1) = cond(p2movetype = A || frontedgebodydist <= 16, -1, cond(p2movetype != A || backedgebodydist <= 16 || numtarget || random < 250, 1, 0))

[state 945, Jump Direction]
type = varset
trigger1 = p2dist x < 0
trigger1 = sysvar(1)
trigger1 = !time
sysvar(1) = sysvar(1) * -1

[state 945, Long, Low, and High Jumps]
type = varset
trigger1 = !time
var(1) = 0

[state 945, Turn]
type = turn
trigger1 = p2dist x < 0
trigger1 = !time

[state 945, Sound]
type = playsnd
trigger1 = !time
value = 40, 0
volumescale = 100

[state 945, Set Velocity]
type = velset
trigger1 = !time
x = cond(sysvar(1) = 0, 0.0, cond(sysvar(1) = 1, 2.734375, -2.5390625))
y = -9.765625

[state 945, Land Smoke]
type = helper
trigger1 = !time
helpertype = normal
name = "Land Smoke"
ID = 6010
stateno = 6010
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 945, End State]
type = changestate
trigger1 = !time
value = 50
ctrl = 1

;=========================================================================
; Air Dash
;=========================================================================
[Statedef 950]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 950, Dash Direction]
type = varset
trigger1 = !ailevel
trigger1 = !time
sysvar(1) = cond(command = "FF", 1, -1)

[state 950, Dash Direction]
type = varset
trigger1 = ailevel
trigger1 = !time
sysvar(1) = cond(p2movetype = A && backedgebodydist > 16 && prevstateno = 100 && !numtarget, -1, 1)

[state 950, Change Animation]
type = changeanim
trigger1 = !time
value = cond(sysvar(1) = 1, 950, 951)

[state 950, Sound]
type = playsnd
trigger1 = !animelemtime(2)
value = 100, 3
volumescale = 100

[state 950, Set Velocity]
type = velset
trigger1 = sysvar(1) = 1
trigger1 = !animelemtime(2)
x = 7.8125

[state 950, Set Velocity]
type = velset
trigger1 = sysvar(1) = 1
trigger1 = !animelemtime(6)
x = 2.5390625

[state 950, Increment Velocity]
type = veladd
trigger1 = sysvar(1) = 1
trigger1 = animelemtime(6) > 0
y = 0.5859375

[state 950, Set Velocity]
type = velset
trigger1 = sysvar(1) = -1
trigger1 = !animelemtime(2)
x = -3.7109375
y = -7.03125

[state 950, IncrementVelocity]
type = veladd
trigger1 = sysvar(1) = -1
trigger1 = animelemtime(2) > 0
y = 0.5859375

[state 950, Air Dash Smoke]
type = helper
trigger1 = !animelemtime(2)
helpertype = normal
name = "Air Dash Smoke"
ID = 952
stateno = 952
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0
supermovetime = 65536
pausemovetime = 65536

[state 950, Control]
type = ctrlset
trigger1 = !ctrl
trigger1 = time > 8
value = 1

[state 950, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 52
ctrl = 0

;=========================================================================
; Wall - Shake
;=========================================================================
[statedef 990]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 990, Destroy Explod]
type = removeexplod
trigger1 = ishelper

[state 990, Destroy Helper]
type = destroyself
trigger1 = ishelper

[state 990, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = cond((gethitvar(groundtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 990, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030

[state 990, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && selfanimexist(5047 + gethitvar(animtype))
value = 5047 + gethitvar(animtype)

[state 990, Change Animation]
type = changeanim
trigger1 = !hitshakeover
value = anim

[state 990, Change Animation]
type = changeanim2
trigger1 = hitshakeover
value = 990
persistent = 0

[state 990, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 990, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 990, Solidity]
type = playerpush
trigger1 = 1
value = 0

[state 990, Set Velocity]
type = velset
trigger1 = hitshakeover
x = gethitvar(xvel) * facing
y = gethitvar(yvel)
persistent = 0

[state 990, Set Velocity]
type = velset
triggerall = hitshakeover
trigger1 = gethitvar(chainid) = -1
x = -10.9375
y = 0.0
persistent = 0

[state 990, Increment Velocity]
type = veladd
triggerall = hitshakeover
trigger1 = gethitvar(chainid) = -1
y = gethitvar(yaccel) * 0.5859375

[state 990, Set Velocity]
type = velset
triggerall = !alive
triggerall = hitshakeover
trigger1 = gethitvar(chainid) = 3225
y = 0.0

[state 990, Ground Recovery]
type = selfstate
trigger1 = alive 
trigger1 = hitshakeover && vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
value = 5200

[state 990, Air Recovery]
type = selfstate
trigger1 = alive
trigger1 = hitshakeover
trigger1 = canrecover
trigger1 = command = "recovery"
value = 5210

[state 990, End State]
type = changestate
trigger1 = hitshakeover
trigger1 = cond(vel x > 0, frontedgebodydist <= 0, backedgebodydist <= 0)
value = 991
ctrl = 0

[state 990, Own State]
type = selfstate
trigger1 = hitshakeover && vel y > 0
trigger1 = pos y + vel y > 0
value = 5100

[state 990, Own State]
type = selfstate
trigger1 = hitshakeover
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Wall - Impact
;=========================================================================
[statedef 991]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 991, Change Animation]
type = changeanim2
trigger1 = !time
value = 991

[state 991, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 991, Solidity]
type = playerpush
trigger1 = 1
value = 0

[state 991, Turn]
type = turn
trigger1 = backedgedist < frontedgedist
trigger1 = !animtime

[state 991, Sound]
type = playsnd
trigger1 = !time
value = f7, 2
volumescale = 100

[state 991, Shake]
type = envshake
trigger1 = !time
time = 10
ampl = 10

[state 991, Increment Position]
type = posadd
trigger1 = !time
x = const(size.ground.back)

[state 991, Set Velocity]
type = velset
triggerall = !animtime
trigger1 = gethitvar(chainid) = 3225
x = -0.9765625
y = -8.59375

[state 991, Effect]
type = null ; explod
trigger1 = backedgedist < frontedgedist
trigger1 = !time
anim = f72
postype = back
pos = 0, ceil(screenpos y + const(size.mid.pos.y))
facing = 1
bindtime = 2
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 991, Effect]
type = null ; explod
trigger1 = frontedgedist < backedgedist
trigger1 = !time
anim = f72
postype = front
pos = 0, ceil(screenpos y + const(size.mid.pos.y))
facing = -facing
bindtime = 2
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 991, Air Recovery]
type = selfstate
trigger1 = time
trigger1 = alive
trigger1 = canrecover
trigger1 = command = "recovery"
value = 5210

[state 991, End State]
type = changestate
trigger1 = !animtime
value = 992
ctrl = 0

[state 991, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Wall - Fall
;=========================================================================
[Statedef 992]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = -1

[state 992, Change Animation]
type = changeanim2
trigger1 = !time
value = 990

[state 992, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1

[state 992, Increment Velocity]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 992, Shake]
type = envshake
trigger1 = pos y + vel y > 0
time = 10
ampl = 10

[state 992, Ground Recovery]
type = selfstate
trigger1 = alive
trigger1 = vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
value = 5200

[state 992, Air Recovery]
type = selfstate
trigger1 = alive
trigger1 = canrecover
trigger1 = command = "recovery"
value = 5210

[state 992, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100

[state 992, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 300
value = 5050

;=========================================================================
; Floor - Shake
;=========================================================================
[statedef 995]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[state 995, Destroy Explod]
type = removeexplod
trigger1 = ishelper

[state 995, Destroy Helper]
type = destroyself
trigger1 = ishelper

[state 995, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = cond((gethitvar(groundtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 995, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030

[state 995, Change Animation]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && selfanimexist(5047 + gethitvar(animtype))
value = 5047 + gethitvar(animtype)

[state 995, Change Animation]
type = changeanim
trigger1 = !hitshakeover
value = anim

[state 995, Change Animation]
type = changeanim2
trigger1 = hitshakeover
value = 990
persistent = 0

[state 995, Change Animation]
type = changeanim
trigger1 = selfanimexist(5061)
trigger1 = hitshakeover
value = 5061
persistent = 0

[state 995, Set Hit Fall]
type = hitfallset
trigger1 = !time
value = 1

[state 995, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 1

[state 995, Solidity]
type = playerpush
trigger1 = 1
value = 0

[state 995, Set Velocity]
type = velset
trigger1 = hitshakeover
x = gethitvar(xvel) * facing
y = gethitvar(yvel)
persistent = 0

[state 995, Increment Velocity]
type = veladd
triggerall = hitshakeover
trigger1 = gethitvar(chainid) = 650
trigger2 = gethitvar(chainid) = 710
trigger3 = gethitvar(chainid) = 1000
y = gethitvar(yaccel)

[state 995, Ground Recovery]
type = selfstate
triggerall = time
triggerall = alive
triggerall = vel y > 0
triggerall = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = gethitvar(fall.recover)
triggerall = command = "recovery"
trigger1 = 1 ; gethitvar(chainid) = -1
value = 5200

[state 995, End State]
type = changestate
trigger1 = hitshakeover
trigger1 = pos y + vel y > 0
value = 996

[state 995, Own State]
type = selfstate
trigger1 = hitshakeover
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Floor - Impact
;=========================================================================
[Statedef 996]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = -1

[state 996, Set Position]
type = posset
trigger1 = !time
y = 0

[state 996, Change Animation]
type = changeanim2
trigger1 = !time
value = 996

[state 996, Change Animation]
type = changeanim
trigger1 = selfanimexist(5100)
trigger1 = !time
value = 5100

[state 996, Sound]
type = playsnd
trigger1 = !time
value = f7, 2
volumescale = 100

[state 996, Shake]
type = envshake
trigger1 = !time
time = 10
ampl = -10

[state 996, Increment Position]
type = posadd
trigger1 = !animtime
trigger2 = time >= 7
y = -pos y

[state 996, Set Velocity]
type = velset
trigger1 = !time
y = 0.0

[state 996, Set Velocity]
type = velset
triggerall = !animtime || time >= 7
trigger1 = gethitvar(chainid) = 710 || gethitvar(chainid) = 1000
x = -2.734375
y = -10.9375

[state 996, Set Velocity]
type = velset
triggerall = !animtime || time >= 7
trigger1 = gethitvar(chainid) = 650
y = -12.109375

[state 996, Effect]
type = null ; explod
trigger1 = !time
anim = f62
postype = p1
pos = 0, 0
bindtime = 1
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 1.0, 1.0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 996, End State]
type = changestate
trigger1 = !animtime || time >= 7
value = 997

[state 996, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 100
value = 5050

;=========================================================================
; Floor - Fall
;=========================================================================
[Statedef 997]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = -1

[state 997, Change Animation]
type = changeanim2
trigger1 = !time
value = 990

[state 997, Increment Velocity]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 997, Ground Recovery]
type = selfstate
trigger1 = alive
trigger1 = vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
value = 5200

[state 997, Air Recovery]
type = selfstate
trigger1 = alive
trigger1 = vel y > 1
trigger1 = canrecover
trigger1 = command = "recovery"
value = 5210

[state 997, Own State]
type = selfstate
trigger1 = pos y + vel y > 0
value = 5100

[state 997, Own State]
type = selfstate
trigger1 = !gethitvar(isbound)
trigger1 = time > 300
value = 5050