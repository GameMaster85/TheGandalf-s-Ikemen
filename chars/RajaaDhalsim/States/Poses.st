; Dhalsim By RajaaBoy

;=========================================================================
; Lose Pose
;=========================================================================
[Statedef 170]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 170, Set Position]
type = posset
trigger1 = !time
y = 0

[state 170, Change Animation]
type = changeanim
trigger1 = !time
value = 170

[state 170, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

;=========================================================================
; Win Pose Decider
;=========================================================================
[statedef 180]
type = S
movetype = I
physics = S
velset = 0, 0
sprpriority = 2

[state 180, Set Position]
type = posset
trigger1 = !time
y = 0

[state 180, Victory Quote]
type = victoryquote
trigger1 = !time
value = 1 + random % 12

[state 180, Victory Quote]
type = victoryquote
trigger1 = numenemy
trigger1 = enemy,name = "Ryu" || enemy,name = "cvsryu" || enemy,name = "svcryu" || enemy,name = "RajaaRyu"
value = 20

[state 180, Victory Quote]
type = victoryquote
trigger1 = numenemy
trigger1 = enemy,name = "Cammy" || enemy,name = "cvscammy" || enemy,name = "RajaaCammy"
value = 21

[state 180, Victory Quote]
type = victoryquote
triggerall = numenemy
trigger1 = enemy,name = "Akuma" || enemy,name = "cvsakuma" || enemy,name = "RajaaAkuma"
trigger2 = enemy,name = "Shin Akuma" || enemy,name = "cvsshinakuma" || enemy,name = "RajaaShinAkuma"
trigger3 = enemy,name = "Gouki" || enemy,name = "cvsgouki" || enemy,name = "RajaaGouki"
trigger4 = enemy,name = "Shin Gouki" || enemy,name = "cvsshingouki" || enemy,name = "RajaaGoukiAkuma"
value = 22

[state 180,Victory_Quote]
type = victoryquote
triggerall = numenemy
trigger1 = enemy,name = "Rose" || enemy,name = "cvsrose" || enemy,name = "RajaaRose"
value = 23

[state 180, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 180, End State]
type = changeState
trigger1 = !time
value = 181 + random % 5

;=========================================================================
; Win Pose 1
;=========================================================================
[Statedef 181]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 181, Set Position]
type = posset
trigger1 = !time
y = 0

[state 181, Change Animation]
type = changeanim
trigger1 = !time
value = 181

[state 181, Special Effect]
type = assertspecial
trigger1 = time = [0, 240]
flag = roundnotover

[state 181, Voice]
type = playsnd
trigger1 = !animelemtime(5)
trigger1 = random < 500
value = 4100, 0
volumescale = 100
channel = 0

[state 181, Set Velocity]
type = velset
trigger1 = animelemtime(6) >= 0
x = 0.0
y = -1.0 * cos(time * pi / 24)

;=========================================================================
; Win Pose 2
;=========================================================================
[Statedef 182]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 182, Set Position]
type = posset
trigger1 = !time
y = 0

[state 182, Change Animation]
type = changeanim
trigger1 = !time
value = 182

[state 182, Special Effect]
type = assertspecial
trigger1 = time = [0, 240]
flag = roundnotover

[state 180, Voice]
type = playsnd
trigger1 = !animelemtime(6)
value = 180, 0
volumescale = 100
channel = 0
loop = 1

[state 182, Set Velocity]
type = velset
trigger1 = animelemtime(6) >= 0
x = 0.0
y = -1.0 * cos(time * pi / 24)

;=========================================================================
; Win Pose 3
;=========================================================================
[Statedef 183]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 183, Set Position]
type = posset
trigger1 = !time
y = 0

[state 183, Change Animation]
type = changeanim
trigger1 = !time
value = 183

[state 183, Special Effect]
type = assertspecial
trigger1 = time = [0, 240]
flag = roundnotover

[state 183, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 180, 0
volumescale = 100
channel = 0
loop = 1

;=========================================================================
; Win Pose 4
;=========================================================================
[Statedef 184]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 184, Set Position]
type = posset
trigger1 = !time
y = 0

[state 184, Change Animation]
type = changeanim
trigger1 = !time
value = 184

[state 184, Special Effect]
type = assertspecial
trigger1 = time = [0, 240]
flag = roundnotover

[state 184, Voice]
type = PlaySnd
trigger1 = !animelemtime(3)
value = 190, 1
volumescale = 100
channel = 0

[state 184, Increment Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3)
x = -8.0

;=========================================================================
; Win Pose 5
;=========================================================================
[Statedef 185]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 185, Set Position]
type = posset
trigger1 = !time
y = 0

[state 185, Change Animation]
type = changeanim
trigger1 = !time
value = 185

[state 184, Special Effect]
type = assertspecial
trigger1 = time = [0, 240]
flag = roundnotover

[state 185, Voice]
type = playsnd
trigger1 = !animelemtime(3)
value = 180, 1
volumescale = 100
channel = 0

;=========================================================================
; Intro Pose Decider
;=========================================================================
[Statedef 190]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 190, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 190, End State]
type = changestate
trigger1 = !time
value = 191 +  random % 3

;=========================================================================
; Intro Pose 1
;=========================================================================
[Statedef 191]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 191, Set Position]
type = posset
trigger1 = !time
y = 0

[state 191, Change Animation]
type = changeanim
trigger1 = !time
value = 191

[state 191, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 191, Voice]
type = playsnd
trigger1 = animelemtime(1) = 15
value = 190, 0
volumescale = 100
channel = 0

[state 191, Sound]
type = playsnd
trigger1 = !animelemtime(5)
value = 1, 2
volumescale = 100

[state 191, Turban]
type = helper
trigger1 = !animelemtime(5)
name = "Turban"
ID = 4110
stateno = 4110
postype = p1
pos = -40, -40
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 191, End State]
type = changestate
trigger1 = !animtime
value = 0

;=========================================================================
; Intro Pose 2
;=========================================================================
[Statedef 192]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 192, Set Position]
type = posset
trigger1 = !time
y = 0

[state 192, Change Animation]
type = changeanim
trigger1 = !time
value = 192

[state 192, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 192, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 190, 1
volumescale = 100
channel = 0

[state 192, End State]
type = changestate
trigger1 = !animtime
value = 0

;=========================================================================
; Intro Pose 3
;=========================================================================
[Statedef 193]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 193, Set Position]
type = posset
trigger1 = !time
y = -56

[state 193, Change Animation]
type = changeanim
trigger1 = !time
value = 193

[state 193, Change Animation]
type = changeanim
trigger1 = pos y + vel y > 0
value = 57
persistent = 0

[state 193, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 193, Transparency]
type = trans
trigger1 = anim = 193
trigger1 = animelemno(0) = [2, 3]
trans = addalpha
alpha = 16 * animelemtime(2), 256 - 16 * animelemtime(2)

[state 193, Sound]
type = playsnd
trigger1 = anim = 193
trigger1 = !animelemtime(2)
value = 3, 3
volumescale = 100
channel = 4

[state 193, Increment Velocity]
type = veladd
trigger1 = anim = 193
trigger1 = animelemtime(7) >= 0
y = const(movement.yaccel)

[state 193, Set Velocity]
type = velset
trigger1 = anim = 57
x = 0.0
y = 0.0
persistent = 0

[state 193, Set Position]
type = posset
trigger1 = anim = 57
y = 0
persistent = 0

[state 193, End State]
type = changestate
trigger1 = anim = 57
trigger1 = !animtime
value = 0

;=========================================================================
; Taunt
;=========================================================================
[Statedef 4100]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 4100, Change Animation]
type = changeanim
trigger1 = !time
value = 4100

[state 4100, Increment Position]
type = posadd
trigger1 = !animelemtime(2) || !animelemtime(3)
trigger2 = !animelemtime(6) || !animelemtime(7)
x = cond(animelemtime(6) < 0, -8.0, 8.0)

[state 4100, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 4100,0
volumescale = 100
channel = 0

[state 4100, Control]
type = ctrlset
trigger1 = roundstate = 2
trigger1 = time > 32
value = 1

[state 4100, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Taunt (Airborne)
;=========================================================================
[Statedef 4105]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = 2

[state 4105, Change Animation]
type = changeanim
trigger1 = !time
value = 4105

[state 4105, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 4100,0
volumescale = 100
channel = 0

[state 4105, Multiply Velocity]
type = velmul
trigger1 = animelemtime(6) < 0
x = 0.9
y = 0.9

[state 4105, Increment Velocity]
type = veladd
trigger1 = animelemtime(6) >= 0
y = 0.1

[state 4105, Increment Velocity]
type = veladd
trigger1 = command = "holdfwd" || command = "holdback"
x = 0.1 * command = "holdfwd" - 0.1 * command = "holdback"

[state 4105, Multiply Velocity]
type = velmul
trigger1 = command != "holdfwd" && command != "holdback"
x = 0.97

[state 4105, End State]
type = changestate
trigger1 = pos y >= 0
value = 52
ctrl = 1

;=========================================================================
; Turban
;=========================================================================
[Statedef 4110]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 4110, Change Animation]
type = changeanim
trigger1 = !time
value = 4110

[state 4110, Prioirty]
type = sprpriority
trigger1 = !animelemtime(3)
value = -1

[state 4110, Set Velocity]
type = velset
trigger1 = !time
x = -1.15
y = 1.155

[state 4110, Set Velocity]
type = velset
trigger1 = 1
x = -1.0 * cos(time * pi / 16)

[state 4110, Transparency]
type = trans
trigger1 = animelemtime(3) >= 0
trans = addalpha
alpha = 256 - 16 * animelemtime(3), 16 * animelemtime(3)

[state 4110, Destroy Helper]
type = destroyself
trigger1 = animelemtime(3) > 16