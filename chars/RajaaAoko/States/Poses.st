; Aoko By RajaaBoy

;=========================================================================
; Lose Pose
;=========================================================================
[statedef 170]
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

; Shiki Tohno
[state 180, Victory Quote]
type = victoryquote
trigger1 = numenemy
trigger1 = enemy, name = "Shiki_Tohno" || enemy, name = "Tohno_Shiki" || enemy, name = "RajaaShiki"
value = 20

[state 180, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 180, Win]
type = changeState
trigger1 = !time
value = 181 + random % 3

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

[state 181, Animation Loop]
type = varset
trigger1 = !animelemtime(18)
var(0) = 3
persistent = 0

[state 181, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(18)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 12

[state 181, Special Effect]
type = assertspecial
trigger1 = time < 320
flag = roundnotover

[state 181, Voice]
type = playsnd
trigger1 = !animelemtime(5)
value = 180, 0
volumescale = 100
channel = 0

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

[state 182, Animation Loop]
type = varset
trigger1 = !animelemtime(18)
var(0) = 2
persistent = 0

[state 182, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(18)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 12

[state 182, Special Effect]
type = assertspecial
trigger1 = time < 320
flag = roundnotover

[state 182, Voice]
type = playsnd
trigger1 = !animelemtime(9)
value = 180, 1
volumescale = 100
channel = 0

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

[state 183, Animation Loop]
type = varset
trigger1 = !animelemtime(18)
var(0) = 2
persistent = 0

[state 183, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(18)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 12

[state 183, Special Effect]
type = assertspecial
trigger1 = time < 320
flag = roundnotover

[state 183, Voice]
type = playsnd
trigger1 = !animelemtime(9)
value = 180, 2
volumescale = 100
channel = 0

;=========================================================================
; Introduction Decider
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
value = 191 + random % 2

;=========================================================================
; Introduction 1
;=========================================================================
[Statedef 191]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 191, Detect Suitcase]
type = varset
trigger1 = !time
var(40) = 1

[state 191, Set Position]
type = posset
trigger1 = !time
y = 0

[state 191, Change Animation]
type = changeanim
trigger1 = !time
value = 191

[state 191, Animation Loop]
type = varset
trigger1 = !animelemtime(9)
var(0) = 1
persistent = 0

[state 191, Animation Loop]
type = changeanim
trigger1 = var(0) && !animelemtime(9)
trigger1 = var(0) := var(0) - 1
value = anim
elem = 2

[state 191, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 191, Voice]
type = playsnd
trigger1 = !animelemtime(1)
value = 190, random % 3
volumescale = 100
channel = 0

[state 191, suitcase]
type = helper
trigger1 = !animelemtime(11)
helpertype = normal
name = "suitcase"
ID = 8005
stateno = 8005
postype = p1
pos = 0, 0
ownpal = 1
keyctrl = 0
size.xscale = 1.0
size.yscale = 1.0

[state 191, End State]
type = changestate
trigger1 = !animtime
value = 0

;=========================================================================
; Introduction 2
;=========================================================================
[Statedef 192]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -2

[state 192, Change Animation]
type = changeanim
trigger1 = !time
value = 192

[state 192, Camera]
type = helper
trigger1 = !time
helpertype = normal
name = "Camera"
ID = 192
stateno = 9997
postype = p1
pos = 0, 0
facing = 1
ownpal = 1
keyctrl = 0

[state 192, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = noshadow

[state 192, Set Position]
type = posset
trigger1 = !time
x = gamewidth * facing
y = -24

[state 192, Turn]
type = turn
trigger1 = !time

[state 192, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[state 192, Set Velocity]
type = velset
trigger1 = time = 10
x = 20.0
y = -2.0

[state 192, Effect]
type = explod
trigger1 = time > 10
ID = 7000
anim = 7000
postype = p1
pos = 0, -48
bindtime = 1
random = 50, 40
vel = -3.5, 1.0
scale = 0.5, 0.5
ownpal = 1
sprpriority = -1
supermovetime = -1
pausemovetime = -1

[state 192, Sound]
type = playsnd
trigger1 = time = 5
value = 3, 0
volumescale = 100

[state 192, End State]
type = changestate
triggerall = time
trigger1 = time > 104
trigger2 = pos y <= -160
trigger3 = frontedgedist < -96
value = 193
ctrl = 0

;=========================================================================
; Introduction 2
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
x = helper(192), pos x
y = -(gameheight + 30)

[state 193, Change Animation]
type = changeanim
trigger1 = !time
value = 41
elem = 7

[state 193, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = noshadow

[state 193, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 193, Solidity]
type = playerpush
trigger1 = 1
value = 0

[state 193, Turn]
type = turn
trigger1 = !time

[state 193, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[state 193, Voice]
type = playsnd
trigger1 = screenpos y > gameheight / 2.0
value = 190, 2
volumescale = 100
channel = 0
persistent = 0

[state 193, Increment Velocity]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 193, Destroy]
type = removeexplod
trigger1 = screenpos y > gameheight / 2.0
ID = -1
persistent = 0

[state 193, End State]
type = changestate
trigger1 = pos y + vel y > 0
value = 194
ctrl = 0

;=========================================================================
; Introduction 2
;=========================================================================
[Statedef 194]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 0

[state 194, Set Position]
type = posset
trigger1 = !time
y = 0

[state 194, Change Animation]
type = changeanim
trigger1 = !time
value = 47

[state 194, Special Effect]
type = assertspecial
trigger1 = 1
flag = intro

[state 194, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[state 194, Solidity]
type = playerpush
trigger1 = 1
value = 0

[state 194, Sound]
type = playsnd
trigger1 = !time
value = 52, 0
volumescale = 100

[state 52, Land Smoke]
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

[state 194, End State]
type = changestate
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

[state 4100, ctrlset]
type = ctrlset
trigger1 = roundstate = 2 && time > 32
value = 1

[state 4100, Voice]
type = playsnd
trigger1 = !animelemtime(2)
value = 5000, 5
volumescale = 100
channel = 0

[state 4100, End State]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=========================================================================
; Suitcase - Held
;=========================================================================
[Statedef 8005]
type = A
movetype = I
physics = N
velset = 0, 0
sprpriority = 5

[state 8005, Change Animation]
type = changeanim
trigger1 = !time
value = 8005

[state 8005, Velocity]
type = veladd
trigger1 = pos y < 12
y = 0.1

[state 8005, End State]
type = changestate
trigger1 = pos y >= 12
trigger1 = vel y > 0
value = 8006

;=========================================================================
; Suitcase - Dropped
;=========================================================================
[Statedef 8006]
type = A
movetype = I
physics = N
velset = 0, 0
sprpriority = 5

[state 8006, Change Animation]
type = changeanim
trigger1 = !time
value = 8005

[state 8006, Set Position]
type = posset
trigger1 = !time
y = 12

[state 8006, Transparency]
type = varadd
trigger1 = time > 104
var(0) = 1

[state 8006, Transparency]
type = trans
trigger1 = var(0)
trans = addalpha
alpha = 256 - 16 * var(0), 16 * var(0)

[state 8006, Detect Suitcase]
type = parentvarset
trigger1 = var(0) > 16
var(40) = 0

[state 8006, Destroy]
type = destroyself
trigger1 = var(0) > 16