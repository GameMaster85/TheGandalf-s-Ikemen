; Dhalsim By RajaaBoy

;=========================================================================
; Parry - Detect
;=========================================================================
[Statedef 930]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 930, Detect]
type = varset
trigger1 = !time
var(0) = -1

[state 930, Detect]
type = varset
trigger1 = !root,ailevel
trigger1 = !time
trigger1 = root,command = "fwd"
trigger1 = root,statetype != A
var(0) = 0

[state 930, Detect]
type = varset
trigger1 = !root,ailevel
trigger1 = !time
trigger1 = root,command = "down"
trigger1 = root,statetype != A
var(0) = 1

[state 930, Detect]
type = varset
trigger1 = !root,ailevel
trigger1 = !time
trigger1 = root,command = "fwd"
trigger1 = root,statetype = A
var(0) = 2

[state 930, Detect]
type = varset
trigger1 = root,ailevel
trigger1 = !time
trigger1 = root,statetype != A
var(0) = 0

[state 930, Detect]
type = varset
trigger1 = root,ailevel
trigger1 = !time
trigger1 = root,statetype != A
trigger1 = p2statetype = C
var(0) = 1

[state 930, Detect]
type = varset
trigger1 = root,ailevel
trigger1 = !time
trigger1 = root,statetype = A
var(0) = 2

[state 930, Detect]
type = varset
trigger1 = var(0) = 0 || var(0) = 2
var(0) = cond(root,statetype = A, 2, 0)

[state 930, Destroy Helper]
type = varset
trigger1 = time >= 8
trigger2 = facing != root,facing
trigger3 = root,stateno != [925, 927]
trigger3 = !root,ctrl
trigger4 = root,movetype != I
var(1) = 1

[state 930, Destroy Helper]
type = varset
triggerall = !root,ailevel
trigger1 = root,command = "back" || root,command = "holdback"
trigger2 = time <= 3
trigger2 = root,command = "holdfwd" && parent,command = "holddown"
trigger3 = time > 3
trigger3 = root,command = "holdfwd" || root,command = "holddown"
trigger4 = time
trigger4 = var(0) = 0 || var(0) = 2
trigger4 = root,command = "fwd"
trigger5 = time
trigger5 = var(0) = 1
trigger5 = root,command = "down"
var(1) = 1

[state 930, Change Animation]
type = changeanim
trigger1 = !var(1)
trigger1 = anim != stateno
value = stateno

[state 930, Change Animation]
type = changeanim
trigger1 = var(1)
value = 9999

[state 930, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 930, Root Bind]
type = bindtoroot
trigger1 = var(0) = 0
pos = const(size.ground.front) * 0.5, const(size.mid.pos.y) + (const(size.head.pos.y) - const(size.mid.pos.y)) * 0.5

[state 930, Root Bind]
type = bindtoroot
trigger1 = var(0) = 1
pos = const(size.ground.front) * 0.5, -32

[state 930, Root Bind]
type = bindtoroot
trigger1 = var(0) = 2
pos = const(size.ground.front) * 0.5, const(size.mid.pos.y) + (const(size.head.pos.y) - const(size.mid.pos.y)) * 0.25

[state 930, Attack Distance]
type = attackdist
trigger1 = 1
value = 0

[state 930, Reversal]
type = reversaldef
trigger1 = !var(1)
trigger1 = var(0) = 0 || var(0) = 2
reversal.attr = SCA,AA
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
numhits = 0
p1stateno = 931

[state 930, Reversal]
type = reversaldef
trigger1 = !var(1)
trigger1 = var(0) = 1
reversal.attr = SC,AA
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
numhits = 0
p1stateno = 931

[state 930, Reversal]
type = reversaldef
trigger1 = var(1)
reversal.attr = 
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
numhits = 0

[state 930, Destroy Helper]
type = destroyself
trigger1 = time > 18
trigger2 = !animtime
trigger3 = root,stateno != [925, 927]
trigger3 = !root,ctrl
trigger4 = root,movetype != I
trigger5 = root,time <= 1
trigger5 = root,stateno = [925, 927]

;=========================================================================
; Parry - Activated
;=========================================================================
[Statedef 931]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 931, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 931, Reversal]
type = reversaldef
trigger1 = 1
reversal.attr = 
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
numhits = 0

[state 931, Destroy Helper]
type = destroyself
trigger1 = root,stateno = [925, 927]
trigger2 = time > 1

;=========================================================================
; Parry - Skill
;=========================================================================
[Statedef 932]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 932, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 932, Set State Type]
type = statetypeset
trigger1 = parent,statetype = S
trigger1 = !time
statetype = S

[state 932, Set State Type]
type = statetypeset
trigger1 = parent,statetype = C
trigger1 = !time
statetype = C

[state 932, Set State Type]
type = statetypeset
trigger1 = parent,statetype = A
trigger1 = !time
statetype = A

[state 932, Parry Skill]
type = null
trigger1 = !time
trigger1 = var(0) := 23
trigger2 = var(0)
trigger2 = var(0) := var(0) -1

[state 932, Destroy Helper]
type = destroyself
trigger1 = !var(0)
trigger2 = time
trigger2 = root,numhelper(932) > 1
trigger3 = root,stateno != [925, 927]
trigger3 = !root,ctrl

;=========================================================================
; Air Dash Smoke
;=========================================================================
[Statedef 952]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 952, Change Animation]
type = changeanim
trigger1 = !time
value = 6010

[state 952, Get Parent Animation]
type = varset
trigger1 = !time
sysvar(1) = parent,sysvar(1)

[state 952, Parent Bind]
type = bindtoparent
trigger1 = !time
pos = 0, parent,const(size.mid.pos.y)

[state 952, Angle]
type = angledraw
trigger1 = var(0) := var(0) + 1
scale = 0.1, 0.2 + (var(0) * 0.035)

[state 952, Transparency]
type= trans
trigger1 = var(0)
trans = addalpha
alpha = 256 - (16 * var(0)), 256

[state 952, Set Velocity]
type = velset
trigger1 = sysvar(1)
x = cond(sysvar(1) = 1, -6.640625, 6.640625) * (0.9 ** time)

[state 952, Destroy Helper]
type = destroyself
trigger1 = time > 16

;=========================================================================
; Jump Smoke
;=========================================================================
[Statedef 6000]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 6000, Change Animation]
type = changeanim
trigger1 = anim != 6000
value = 6000

[state 6000, Angle]
type = null ; varset
trigger1 = time <= 1 && parentdist x
fvar(0) = atan((parentdist y + 56) / parentdist x) * (180.0 / pi)

[state 6000, Angle]
type = angledraw
trigger1 = 1
value = fvar(0)
scale = 0.125 + 0.046875 * time, 0.125 + 0.01171875 * time

[state 6000, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 22 * time, 256

[state 6000, Effect]
type = explod
trigger1 = time <= 6 && time % 3 = 0
ID = 2 + (time / 3)
anim = 6005
postype = left
pos = ceil(parent,screenpos x), ceil(parent,screenpos y)
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = 0.0, -1.171875 + 0.87890625 * (root,var(1) = [4, 5])
ownpal = 0
scale = 0.1, 0.1
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6000, Modify Effext]
type = modifyexplod
trigger1 = numexplod(2)
scale = 0.05 + 0.00390625 * time, 0.05 + 0.00390625 * time
trans = addalpha
alpha = 256 - 16 * time, 256
ID = 2

[state 6000, Modify Effext]
type = modifyexplod
trigger1 = numexplod(3)
scale = 0.05 + 0.00390625 * (time - 3), 0.05 + 0.00390625 * (time - 3)
trans = addalpha
alpha = 256 - 16 * (time - 3), 256
ID = 3

[state 6000, Modify Effext]
type = modifyexplod
trigger1 = numexplod(4)
scale = 0.05 + 0.00390625 * (time - 6), 0.05 + 0.00390625 * (time - 6)
trans = addalpha
alpha = 256 - 16 * (time - 6), 256
ID = 4

[state 6000, Destroy]
type = removeexplod
trigger1 = time > 22

[state 6000, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; Dash Smoke
;=========================================================================
[Statedef 6005]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 6005, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6005, Effect]
type = explod
trigger1 = time <= 6 && time % 3 = 0
ID = 2 + (time / 3)
anim = 6005
postype = p1
pos = 0, 0
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = -3.125 - ((1 + random % 64) / 64.0), -1.171875 - ((1 + random % 64) / 32.0)
ownpal = 0
scale = 0.15, 0.15
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6005, Modify Effext]
type = modifyexplod
trigger1 = numexplod(2)
scale = 0.15 + 0.009375 * time, 0.15 + 0.009375 * time
trans = addalpha
alpha = 256 - 16 * time, 256
ID = 2

[state 6005, Modify Effext]
type = modifyexplod
trigger1 = numexplod(3)
scale = 0.15 + 0.009375 * (time - 3), 0.15 + 0.009375 * (time - 3)
trans = addalpha
alpha = 256 - 16 * (time - 3), 256
ID = 3

[state 6005, Modify Effext]
type = modifyexplod
trigger1 = numexplod(4)
scale = 0.15 + 0.009375 * (time - 6), 0.15 + 0.009375 * (time - 6)
trans = addalpha
alpha = 256 - 16 * (time - 6), 256
ID = 4

[state 6005, Destroy]
type = removeexplod
trigger1 = time > 22

[state 6005, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; Skid Smoke
;=========================================================================
[Statedef 6006]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 6006, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6006, Parent Bind]
type = null
trigger1 = !time
trigger1 = fvar(0) := -parentdist x || fvar(1) := -parentdist y

[state 6006, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = fvar(0), fvar(1)

[state 6006, Effect]
type = explod
trigger1 = time <= 6 && time % 3 = 0
ID = 2 + (time / 3)
anim = 6005
postype = p1
pos = 0, 0
bindtime = 1
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = 2.34375 + ((1 + random % 64) / 64.0), -0.5859375 - ((1 + random % 64) / 32.0)
accel = 0.03125, 0.03125
ownpal = 0
scale = 0.075, 0.075
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6006, Modify Effext]
type = modifyexplod
trigger1 = numexplod(2)
scale = 0.075 + 0.0046875 * time, 0.075 + 0.0046875 * time
trans = addalpha
alpha = 256 - 16 * time, 256
ID = 2

[state 6006, Modify Effext]
type = modifyexplod
trigger1 = numexplod(3)
scale = 0.075 + 0.0046875 * (time - 3), 0.075 + 0.0046875 * (time - 3)
trans = addalpha
alpha = 256 - 16 * (time - 3), 256
ID = 3

[state 6006, Modify Effext]
type = modifyexplod
trigger1 = numexplod(4)
scale = 0.15 + 0.0046875 * (time - 6), 0.15 + 0.0046875 * (time - 6)
trans = addalpha
alpha = 256 - 16 * (time - 6), 256
ID = 4

[state 6006, Destroy]
type = removeexplod
trigger1 = time > 22

[state 6006, Destroy]
type = destroyself
trigger1 = !numexplod

;=========================================================================
; Land Smoke
;=========================================================================
[Statedef 6010]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 1

[state 6010, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6010, Effect]
type = explod
trigger1 = !time
ID = 6010
anim = 6010
postype = p1
pos = 0, 2
bindtime = 1
ownpal = 1
sprpriority = -5
supermovetime = -1
pausemovetime = -1

[state 6010, Modify Effect]
type = modifyexplod
trigger1 = numexplod(6010)
scale = 0.25 + 0.035 * time, 0.05
trans = addalpha
alpha = 256 - 22 * time, 256
ID = 6010

[state 6010, Destroy]
type = removeexplod
trigger1 = time > 12

[state 6010, Destroy]
type = destroyself
trigger1 = time > 12

;=========================================================================
; Guard Counter Effect
;=========================================================================
[StateDef 6015]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6015, Change Animation]
type = changeanim
trigger1 = anim != 6015
value = 6015

[state 6015, Special Effects]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6015, Angle]
type = angledraw
trigger1 = 1
value = 8 * time
scale = 2.0 - 0.08333333333333333333333333333333 * time, 2.0 - 0.08333333333333333333333333333333 * time

[state 6015, Transparency]
type = trans
trigger1 = 1
trans = add

[state 6015, Destroy Explod]
type = removeexplod
trigger1 = time > 24

[state 6015, Destroy Helper]
type = destroyself
trigger1 = time > 24

;=========================================================================
; Power Charge Helper
;=========================================================================
[Statedef 6020]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -4

[state 6020, Change Animation]
type = changeanim
trigger1 = anim != 6020
value = 6020

[state 6020, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 0, 4

[state 6020, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6020, Angle]
type = angledraw
trigger1 = 1
scale = 0.25 + 0.05 * abs(cos(time * pi / 6.0)), 0.05

[state 6020, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(0 + 256 * abs(cos(time * pi / 6.0))), 256

[state 6020, Sound]
type = playsnd
trigger1 = !time
value = 920, 0
channel = 1

[state 6020, Effect]
type = explod
trigger1 = !numexplod(6020)
ID = 6020
anim = 6020
postype = p1
pos = 0, 0
bindtime = -1
removetime = -1
ownpal = 0
scale = 0.25, 0.05
sprpriority = -4
supermovetime = -1
pausemovetime = -1

[state 6020, Effect]
type = explod
trigger1 = 1 ; time % 2 = 0
ID = 6021
anim = 6021
postype = p1
pos = 0, 0
bindtime = 1
removetime = 7 + ceil(power * 0.009)
random = 104, 0
velocity = 0.0, -1.0 - (random % 5)
accel = 0, -0.002 * (random % 16)
ownpal = 0
scale = 0.05, 0.05
sprpriority = cond(random < 500, -3, 3)
supermovetime = -1
pausemovetime = -1

[state 6020, Stop Sound]
type = stopsnd
trigger1 = root,stateno != 920 || root,anim != 920
trigger2 = root,animelemtime(6) >= 0
trigger3 = root,movetype = H || !root,var(39)
channel = 1

[state 6020, Destroy Helper]
type = removeexplod
trigger1 = root,stateno != 920 || root,anim != 920
trigger2 = root,animelemtime(6) >= 0
trigger3 = root,movetype = H || !root,var(39)
ID = 6020

[state 6020, Destroy Helper]
type = destroySelf
trigger1 = root,stateno != 920 || root,anim != 920
trigger2 = root,animelemtime(6) >= 0
trigger3 = root,movetype = H || !root,var(39)

;=========================================================================
; Shield - Field
;=========================================================================
[Statedef 6030]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 6030, Change Animation]
type = changeanim
trigger1 = !time
value = 6030

[state 6030, Root State]
type = varset
trigger1 = root,stateno != [935, 937]
var(0) = 1
persistent = 0

[state 6030, Set State Type]
type = statetypeset
trigger1 = root,statetype = S
statetype = S

[state 6030, Set State Type]
type = statetypeset
trigger1 = root,statetype = C
statetype = C

[state 6030, Set State Type]
type = statetypeset
trigger1 = root,statetype = A
statetype = A

[state 6030, Root Bind]
type = bindtoroot
trigger1 = root,stateno = 935
trigger1 = root,animelemtime(3) < 0
trigger1 = !var(0)
pos = 80, -64

[state 6030,roop]
type = bindtoroot
trigger1 = root,stateno = 936
trigger1 = root,animelemtime(3) < 0
trigger1 = !var(0)
pos = 48, -48

[state 6030,roop]
type = bindtoroot
trigger1 = root,stateno = 937
trigger1 = root,animelemtime(3) < 0
trigger1 = !var(0)
pos = 48, -80

[state 6030, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6030, Angle]
type = angledraw
trigger1 = time <= 14
value = 9 * time
scale = fvar(0) := cos(time * pi / 8.0), cos(time * pi / 8.0)

[state 6030, Angle]
type = angledraw
trigger1 = time > 14
trigger1 = var(1) := var(1) + 1
value = 9 * time
scale = fvar(0) + (0.1875 * var(1)), fvar(0) + (0.1875 * var(1))

[state 6030, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (32 * var(1)), 256

[state 6030, End State]
type = changestate
trigger1 = root,stateno = [940, 942]
trigger1 = root,time <= 1
value = 6031

[state 6030, Destroy Helper]
type = destroyself
trigger1 = time > 22
trigger2 = root,movetype = H
trigger3 = !root,var(39)

;=========================================================================
; Shield - Nullify
;=========================================================================
[Statedef 6031]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 2

[state 6031, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6031, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[state 6031, Effect]
type = explod
trigger1 = !time
ID = 6025
anim = 6025
postype = left
pos = ceil(screenpos x), ceil(screenpos y)
facing = facing
bindtime = 1
random = 0, 0
velocity = 0.0, 0.0
accel = 0.0, 0.0
ownpal = 1
scale = 0.5, 0.5
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6031, Destroy Helper]
type = destroyself
trigger1 = root,stateno = [940, 942]
trigger2 = time > 1

;=========================================================================
; Edge Effect
;=========================================================================
[StateDef 6035]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6035, Change Animation]
type = changeanim
trigger1 = anim != 6035
value = 6035

[state 6035, Special Effects]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6035, Angle]
type = angleset
trigger1 = 1
value = 30 * (random % 12)

[state 6035, Angle]
type = angledraw
trigger1 = 1
scale = 0.125 * time, 0.125 * time

[state 6035, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * time, 256

[state 6035, Sound]
type = playsnd
trigger1 = !time
value = 1, 4
volumescale = 100

[state 6035, Shake]
type = envshake
trigger1 = !time
time = 10
ampl = 10 - 20 * (root,stateno = 205)

[state 6035, Destroy Explod]
type = removeexplod
trigger1 = time > 8

[state 6035, Destroy Helper]
type = destroyself
trigger1 = time > 8

;=========================================================================
; Hitspark - Base
;=========================================================================
[Statedef 6100]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

; Var(5)'s values:
; 1 - Light Hit
; 2 - Medium Hit
; 3 - Hard Hit
; 4 - Special Hit
; 5 - Super Hit
[state 6100, Angle, Palette]
type = null
trigger1 = !time
trigger1 = var(0) := random % 12 || var(5) := parent,var(5)

[state 6100, Destroy Helper]
type = destroyself
trigger1 = var(5) < 0

[state 6100, Palette]
type = remappal
trigger1 = !time
source = 6100, 0
dest = 6100, cond((var(5) = [1, 3]), 1, cond(var(5) = 4, 2, 3))

[state 6100, Change Animation]
type = changeanim
trigger1 = !time
value = 6100

[state 6100, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6100, Turn]
type = turn
trigger1 = !time && random < 496

[state 6100, Scale]
type = varset
trigger1 = !time
fvar(0) = (0.125 + 0.025 * var(5)) / 16.0

[state 6100, Angle]
type = angledraw
trigger1 = 1
value = 30 * var(0)
scale = (0.125 + 0.025 * var(5)) - fvar(0) * time, (0.125 + 0.025 * var(5)) - fvar(0) * time

[state 6100, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 6100, Particles]
type = explod
trigger1 = !time
anim = 6103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)

[state 6100, Particles]
type = explod
trigger1 = !time
anim = 6103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)

[state 6100, Particles]
type = explod
trigger1 = !time
anim = 6103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)

[state 6100, Particles]
type = explod
trigger1 = !time
anim = 6103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)

[state 6100, Particles]
type = explod
trigger1 = !time
anim = 6103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)

[state 6100, Particles]
type = explod
trigger1 = !time
anim = 6103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)

[state 6100, Particles]
type = explod
trigger1 = !time
anim = 6103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)

[state 6100, Particles]
type = explod
trigger1 = !time
anim = 6103
postype = p1
pos = var(1) := cond(random < 496, 4 + random % 12, -4 - random % 12), var(2) := cond(random < 496, 4 + random % 12, -4 - random % 12)
facing = cond(random < 496, 1, -1)
vfacing = cond(random < 496, 1, -1)
vel = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3), cond(var(2) > 0, 0.0 + random % 5, 0.0 - random % 5)

[state 6100, Particles]
type = modifyexplod
trigger1 = numexplod && !time
ownpal = 0
removetime = 20
scale = 0.125 + 0.025 * var(5), 0.125 + 0.025 * var(5)
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6100, Particles]
type = modifyexplod
trigger1 = numexplod
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 6100, Streaks]
type = helper
trigger1 = !time
name = "Streaks"
stateno = 6101
ID = 6101
postype = p1
ownpal = 0
keyctrl = 0
pausemovetime = 65536
supermovetime = 65536

[state 6100, Surface]
type = helper
trigger1 = !time
name = "Surface"
stateno = 6102
ID = 6102
postype = p1
ownpal = 0
keyctrl = 0
pausemovetime = 65536
supermovetime = 65536

[state 6100, Destroy Helper]
type = destroyself
trigger1 = time > 20

;=========================================================================
; Hitspark - Streaks
;=========================================================================
[Statedef 6101]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6101, Angle, Palette]
type = null
trigger1 = !time
trigger1 = var(0) := random % 12 || var(5) := parent,var(5)

[state 6101, Change Animation]
type = changeanim
trigger1 = !time
value = 6101

[state 6101, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6101, Turn]
type = turn
trigger1 = !time && random < 496

[state 6101, Scale]
type = varset
trigger1 = !time
fvar(0) = (0.125 + 0.025 * var(5)) / 16.0

[state 6101, Angle]
type = angledraw
trigger1 = 1
value = 30 * var(0)
scale = (0.125 + 0.025 * var(5)) + fvar(0) * time, (0.125 + 0.025 * var(5)) + fvar(0) * time

[state 6101, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 6101, Destroy Helper]
type = destroyself
trigger1 = time > 20

;=========================================================================
; Hitspark - Surface
;=========================================================================
[Statedef 6102]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6102, Angle, Palette]
type = null
trigger1 = !time
trigger1 = var(5) := parent,var(5)

[state 6102, Change Animation]
type = changeanim
trigger1 = !time
value = 6102

[state 6102, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6102, Turn]
type = turn
trigger1 = !time && random < 496

[state 6102, Angle]
type = angledraw
trigger1 = 1
value = 30 * time
scale = (0.125 + 0.025 * var(5)) + fvar(0) * time, (0.125 + 0.025 * var(5)) + fvar(0) * time

[state 6102, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 6102, Destroy Helper]
type = destroyself
trigger1 = time > 20

;=========================================================================
; Hitspark - Star
;=========================================================================
[Statedef 6103]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6103, Angle, Palette]
type = null
trigger1 = !time
trigger1 = var(5) := parent,var(5)

[state 6103, Change Animation]
type = changeanim
trigger1 = !time
value = 6103

[state 6103, Bind to Parent]
type = bindtoparent
trigger1 = !time
pos = var(0) := cond(random < 496, 4 + random % 4, -4 - random % 4), var(1) := cond(random < 496, 4 + random % 4, -4 - random % 4)

[state 6103, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6103, Angle]
type = angledraw
trigger1 = 1
value = 30 * time
scale = 0.125 + 0.025 * var(5), 0.125 + 0.025 * var(5)

[state 6103, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 6103, Set Velocity]
type = velset
trigger1 = !time
x = cond(var(0) > 0, 2.0 + random % 3, -2.0 - random % 3)
y = cond(var(1) > 0, 2.0 + random % 3, -2.0 - random % 3)

[state 6103, Destroy Helper]
type = destroyself
trigger1 = time > 20

;=========================================================================
; Guardspark
;=========================================================================
[Statedef 6105]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

; Var(6)'s values:
; 1 - Light Hit
; 2 - Medium Hit
; 3 - Hard Hit
; 4 - Special Hit
; 5 - Super Hit
[state 6105, Palette]
type = varset
trigger1 = !time
var(6) = parent,var(6)

[state 6105, Destroy Helper]
type = destroyself
trigger1 = var(6) < 0

[state 6105, Palette]
type = remappal
trigger1 = !time
source = 6100, 0
dest = 6100, cond((var(6) = [1, 3]), 1, cond(var(6) = 4, 2, 3))

[state 6105, Change Animation]
type = changeanim
trigger1 = !time
value = 6105

[state 6105, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6105, Scale]
type = varset
trigger1 = !time
fvar(0) = (0.05 + 0.05 * var(6)) / 8.0

[state 6105, Angle]
type = angledraw
trigger1 = 1
scale = (0.05 + 0.05 * var(6)) + fvar(0) * time, (0.05 + 0.05 * var(6)) + fvar(0) * time

[state 6105, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * time, 256

[state 6105, Destroy Helper]
type = destroyself
trigger1 = time > 8

;=========================================================================
; Reprisal
;=========================================================================
[Statedef 6110]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6110, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6110, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6110, Effect]
type = explod
trigger1 = teamside = 1
trigger1 = !time
trigger1 = var(0) := -64
anim = 6110 + 1 * (root,stateno = [925, 927]) + 2 * (root,stateno = [940, 942])
ID = 0
postype = left
facing = 1
removetime = -1
bindtime = -1
ontop = 1
ownpal = 1
pausemovetime = -1
supermovetime = -1

[state 6110, Modify Effect]
type = modifyexplod
trigger1 = numexplod(0)
trigger1 = var(0) < 48
trigger1 = var(0) := var(0) + 24
postype = left
pos = var(0), ceil((1.33 * gameheight / gamewidth) * 63)
facing = 1
scale = 0.3, 0.3
ID = 0

[state 6110, Modify Effect]
type = modifyexplod
trigger1 = numexplod(0)
trigger1 = var(0) >= 48
trigger1 = var(1) < 16
trigger1 = var(1) := var(1) + 1
postype = left
pos = var(0) + var(1), ceil((1.33 * gameheight / gamewidth) * 63)
facing = 1
scale = 0.3, 0.3
ID = 0

[state 6110, Modify Effect]
type = modifyexplod
trigger1 = numexplod(0)
trigger1 = var(0) >= 48
trigger1 = var(1) >= 16
trigger1 = var(2) := var(2) + 1
postype = left
pos = var(0) + var(1) + var(2), ceil((1.33 * gameheight / gamewidth) * 63)
facing = 1
scale = 0.3, 0.3
trans = addalpha
alpha = 256 - (16 * var(2)), (16 * var(2))
ID = 0

[state 6110, Effect]
type = explod
trigger1 = teamside = 2
trigger1 = !time
trigger1 = var(0) := -64
anim = 6110 + 3 * (root,stateno = [925, 927]) + 4 * (root,stateno = [940, 942])
ID = 1
postype = right
facing = 1
removetime = -1
bindtime = -1
ontop = 1
ownpal = 1
pausemovetime = -1
supermovetime = -1

[state 6110, Modify Effect]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = var(0) < 48
trigger1 = var(0) := var(0) + 24
postype = right
pos = -var(0), ceil((1.33 * gameheight / gamewidth) * 63)
facing = 1
scale = 0.3, 0.3
ID = 1

[state 6110, Modify Effect]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = var(0) >= 48
trigger1 = var(1) < 16
trigger1 = var(1) := var(1) + 1
postype = right
pos = -var(0) - var(1),ceil((1.33 * gameheight / gamewidth) * 63)
facing = 1
scale = 0.3, 0.3
ID = 1

[state 6110, Modify Effect]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = var(0) >= 48
trigger1 = var(1) >= 16
trigger1 = var(2) := var(2) + 1
postype = right
pos = -var(0) - var(1) - var(2), ceil((1.33 * gameheight / gamewidth) * 63)
facing = 1
scale = 0.3, 0.3
trans = addalpha
alpha = 256 - (16 * var(2)),(16 * var(2))
ID = 1

[state 6110, Destroy]
type = removeexplod
trigger1 = !numexplod
trigger2 = var(2) > 16
trigger3 = time
trigger3 = root,numhelper(6110) > 1

[state 6110, Destroy]
type = destroyself
trigger1 = !numexplod
trigger2 = var(2) > 16
trigger3 = time
trigger3 = root,numhelper(6110) > 1

;=========================================================================
; Super Base
;=========================================================================
[StateDef 6200]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 6200, Root State]
type = null
trigger1 = !time
trigger1 = var(0) := parent,stateno || var(1) := 48 + 16 * (var(0) = 3800) || var(22) := parent,var(22) + (var(0) = 3800)

[state 6200, Position X and Position Y]
type = null
triggerall = !time
trigger1 = var(0) = 3000 || var(0) = 3600 || var(0) = 3800
trigger1 = var(2) := -32 || var(3) := -104
trigger2 = var(0) = 3100
trigger2 = var(2) := -56 || var(3) := -40
trigger3 = var(0) = 3300
trigger3 = var(2) := 0 || var(3) := -72
trigger4 = var(0) = 3400
trigger4 = var(2) := 48 || var(3) := -42
trigger5 = var(0) = 3500
trigger5 = var(2) := 24 || var(3) := -56
trigger6 = var(0) = 3700
trigger6 = var(2) := -8 || var(3) := -112

[state 6200, Palette]
type = remappal
trigger1 = !time
source = 6200, 0
dest = 6200, var(22)

[state 6200, Change Animation]
type = changeanim
trigger1 = !time
value = 6200

[state 6200, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = var(2), var(3)

[state 6200, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6200, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 6200, Angle]
type = angledraw
trigger1 = 1
scale = 1.0 - (1.0 / var(1)) * time, 1.0 - (1.0 / var(1)) * time

[state 6200, Angle]
type = angleadd
trigger1 = 1
value = 9

[state 6200, Transparency]
type = trans
trigger1 = time <= ceil(var(1) * 0.5)
trans = add

[state 6200, Transparency]
type = trans
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(0) := (256.0 / (var(1) * 0.5))
trans = addalpha
alpha = 256 - floor(fvar(0) * (time - (var(1) * 0.5))), 256

[state 6200, Background Effect]
type = bgpalfx
trigger1 = var(22) = 1
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = floor(256 - fvar(1) * time), floor(256 - fvar(1) * time), 256
add = 0, 0, 0
color = floor(256 - fvar(2) * time)
invertall = 0

[state 6200, Background Effect]
type = bgpalfx
trigger1 = var(22) = 1
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = ceil(0 + fvar(1) * (time - var(1) * 0.5)), ceil(0 + fvar(1) * (time - var(1) * 0.5)), 256
add = 0, 0, 0
color = ceil(fvar(2) * (time - var(1) * 0.5))
invertall = 0

[state 6200, Background Effect]
type = bgpalfx
trigger1 = var(22) = 2
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = floor(256 - fvar(1) * time), 256, floor(256 - fvar(1) * time)
add = 0, 0, 0
color = floor(256 - fvar(2) * time)
invertall = 0

[state 6200, Background Effect]
type = bgpalfx
trigger1 = var(22) = 2
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = ceil(0 + fvar(1) * (time - var(1) * 0.5)), 256, ceil(0 + fvar(1) * (time - var(1) * 0.5))
add = 0, 0, 0
color = ceil(fvar(2) * (time - var(1) * 0.5))
invertall = 0

[state 6200, Background Effect]
type = bgpalfx
trigger1 = var(22) = 3
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = 256, floor(256 - fvar(1) * time), 256
add = 0, 0, 0
color = floor(256 - fvar(2) * time)
invertall = 0

[state 6200, Background Effect]
type = bgpalfx
trigger1 = var(22) = 3
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = 256, ceil(0 + fvar(1) * (time - var(1) * 0.5)), 256
add = 0, 0, 0
color = ceil(fvar(2) * (time - var(1) * 0.5))
invertall = 0

[state 6200, Background Effect]
type = bgpalfx
trigger1 = var(22) = 4
trigger1 = time <= ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = 256, floor(256 - fvar(1) * 0.5 * time), floor(256 - fvar(1) * time)
add = 0, 0, 0
color = floor(256 - fvar(2) * time)
invertall = 0

[state 6200, Background Effect]
type = bgpalfx
trigger1 = var(22) = 4
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(1) := (256.0 / (var(1) * 0.5)) || fvar(2) := (256.0 / (var(1) * 0.5))
time = 1
mul = 256,  ceil(128 + fvar(1) * 0.5 * (time - var(1) * 0.5)), ceil(0 + fvar(1) * (time - var(1) * 0.5))
add = 0, 0, 0
color = ceil(fvar(2) * (time - var(1) * 0.5))
invertall = 0

[state 6200, Sound]
type = playsnd
trigger1 = !time
value = 6200, 0
volumescale = 100

[state 6200, Super Effect]
type = helper
trigger1 = !time
name = "Super Effect"
ID = 6201
stateno = 6201
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 65536
pausemovetime = 65536

[state 6200, Super Effect]
type = helper
trigger1 = time = ceil(var(1) * 0.0)
trigger2 = time = ceil(var(1) * 0.2)
trigger3 = time = ceil(var(1) * 0.4)
trigger4 = time = ceil(var(1) * 0.6)
name = "Super Effect"
ID = 6202
stateno = 6202
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 65536
pausemovetime = 65536

[state 6200, Super Effect]
type = helper
trigger1 = time = ceil(var(1) * 0.0)
trigger2 = time = ceil(var(1) * 0.2)
trigger3 = time = ceil(var(1) * 0.4)
trigger4 = time = ceil(var(1) * 0.6)
name = "Super Effect"
ID = 6203
stateno = 6203
postype = p1
ownpal = 0
keyctrl = 0
supermovetime = 65536
pausemovetime = 65536

[state 6200, Destroy Helper]
type = destroyself
trigger1 = time >= var(1) || root,stateno != var(0)
trigger2 = root,movetype = H || !root,var(39) || numhelper(6200) > 1

;=========================================================================
; Super Swirl
;=========================================================================
[StateDef 6201]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 6201, Root State]
type = null
trigger1 = !time
trigger1 = var(0) := parent,var(0) || var(1) := parent,var(1) || var(22) := parent,var(22)

[state 6201, Position X and Position Y]
type = null
trigger1 = !time
trigger1 = var(2) := parent,var(2) || var(3) := parent,var(3)

[state 6201, Change Animation]
type = changeanim
trigger1 = !time
value = 6201

[state 6201, Parent Bind]
type = bindtoparent
trigger1 = numhelper(6200)
pos = 0, 0

[state 6201, Root Bind]
type = bindtoroot
trigger1 = !numhelper(6200)
pos = var(2), var(3)

[state 6201, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6201, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 6201, Angle]
type = angledraw
trigger1 = 1
scale = 1.0 - (1.0 / var(1)) * time, 1.0 - (1.0 / var(1)) * time

[state 6201, Angle]
type = angleadd
trigger1 = 1
value = -12

[state 6201, Transparency]
type = trans
trigger1 = time <= ceil(var(1) * 0.5)
trans = add

[state 6201, Transparency]
type = trans
trigger1 = time > ceil(var(1) * 0.5)
trigger1 = fvar(0) := (256.0 / (var(1) * 0.5))
trans = addalpha
alpha = 256 - floor(fvar(0) * (time - (var(1) * 0.5))), 256

[state 6201, Destroy Helper]
type = destroyself
trigger1 = time >= var(1)

;=========================================================================
; Super Cross
;=========================================================================
[StateDef 6202]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 6202, Root State]
type = null
trigger1 = !time
trigger1 = var(0) := parent,var(0) || var(1) := parent,var(1) || var(22) := parent,var(22)

[state 6202, Position X, Position Y, Angle]
type = null
trigger1 = !time
trigger1 = var(2) := parent,var(2) || var(3) := parent,var(3) || var(4) := 1 + random % 12

[state 6202, Change Animation]
type = changeanim
trigger1 = !time
value = 6202

[state 6202, Parent Bind]
type = bindtoparent
trigger1 = numhelper(6200)
pos = 0, 0

[state 6202, Root Bind]
type = bindtoroot
trigger1 = !numhelper(6200)
pos = var(2), var(3)

[state 6202, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6202, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 6202, Angle]
type = angledraw
trigger1 = 1
value = 30 * var(4)
scale = 0.5 + 0.046875 * time, 0.5 + 0.046875 * time

[state 6202, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - cond(time <= 8, 8, 16) * time, 256

[state 6202, Destroy Helper]
type = destroyself
trigger1 = time > 32

;=========================================================================
; Super Ring
;=========================================================================
[StateDef 6203]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 65536

[state 6203, Root State]
type = null
trigger1 = !time
trigger1 = var(0) := parent,var(0) || var(1) := parent,var(1) || var(22) := parent,var(22)

[state 6203, Position X, Position Y, Angle]
type = null
trigger1 = !time
trigger1 = var(2) := parent,var(2) || var(3) := parent,var(3) || var(4) := 1 + random % 12

[state 6203, Change Animation]
type = changeanim
trigger1 = !time
value = 6203

[state 6203, Parent Bind]
type = bindtoparent
trigger1 = numhelper(6200)
pos = 0, 0

[state 6203, Root Bind]
type = bindtoroot
trigger1 = !numhelper(6200)
pos = var(2), var(3)

[state 6203, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6203, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA

[state 6203, Angle]
type = angledraw
trigger1 = 1
value = 30 * var(4)
scale = 0.5 + 0.03125 * time, 0.5 + 0.03125 * time

[state 6203, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 16 * time, 256

[state 6203, Destroy Helper]
type = destroyself
trigger1 = time > 16

;=========================================================================
; Super Finish
;=========================================================================
[StateDef 6210]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -65536

[state 6210, Palette]
type = remappal
triggerall = time % 2 = 0
trigger1 = var(0) >= 12
trigger1 = var(0) := 1
trigger2 = var(0) := var(0) + 1
source = 6210, 0
dest = 6210, var(0)

[state 6210, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6210, Pause]
type = pause
trigger1 = !time
time = 36
movetime = 36

[state 6210, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = nomusic
flag3 = nobardisplay

[state 6210, Special Effect]
type = assertspecial
trigger1 = time <= 36
flag = nofg

[state 6210, Sound]
type = playsnd
trigger1 = !time
value = 6210, 0
volumescale = 100

[state 6210, Shake]
type = envshake
trigger1 = !time
time = 0

[state 6210, Effect]
type = explod
trigger1 = !time
anim = 6210
ID = 6210
postype = left
pos = 160, ceil((1.33 * gameheight / gamewidth) * 120)
bindtime = -1
facing = 1
ownpal = 0
sprpriority = -65536
pausemovetime = -1
supermovetime = -1

[state 6210, Destroy Explod]
type = removeexplod
trigger1 = time > 36 || roundstate < 3

[state 6210, Destroy Helper]
type = destroyself
trigger1 = roundstate < 3

;=========================================================================
; Wall/Ground Hit Effect
;=========================================================================
[Statedef 6300]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6300, Change Animation]
type = changeanim
trigger1 = !time
value = 6300

[state 6300, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6300, Angle]
type = angledraw
trigger1 = ishelper(6301)
value = -90

[state 6300, Transparency]
type = trans
trigger1 = ishelper(6301)
trans = addalpha
alpha = 256, 256

[state 6300, Destroy Helper]
type = destroyself
trigger1 = !animtime

;=========================================================================
; Fire
;=========================================================================
[Statedef 6305]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 5

[state 6305, Change Animation]
type = changeanim
trigger1 = anim != 9999
value = 9999

[state 6305, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 6305, Target ID]
type = varset
trigger1 = !time
var(38) = parent,var(38)

[state 6305, Set Position]
type = posset
trigger1 = playeridexist(var(38))
x = ceil(playerid(var(38)),pos x)
y = ceil(playerid(var(38)),pos y + playerid(var(38)),const(size.mid.pos.y))

[state 6305, Set Position]
type = posset
trigger1 = playeridexist(var(38))
trigger1 = playerid(var(38)),statetype = L
x = ceil(playerid(var(38)),pos x)
y = ceil(playerid(var(38)),pos y) - 20

[state 6305, Turn]
type = turn
trigger1 = playeridexist(var(38))
trigger1 = facing != (playerid(var(38)),facing)

[state 6305, Effect]
type = explod
trigger1 = playeridexist(var(38))
trigger1 = time % 1 = 0
anim = 6305
ID = 6305
postype = p1
pos = 0, 0
random = 50, 50
facing = cond(random < 500, 1, -1)
vfacing = cond(random < 500, 1, -1)
removetime = -2
bindtime = 1
scale = 0.3, 0.3
ownpal = 0
sprpriority = 5
supermovetime = -1
pausemovetime = -1

[state 6305, Destroy Helper]
type = destroyself
trigger1 = time > 600
trigger2 = !playeridexist(var(38))

[state 6305, Destroy Helper]
type = destroyself
triggerall = playeridexist(var(38))
trigger1 = playerid(var(38)),ctrl
trigger2 = playerid(var(38)),movetype != H || playerid(var(38)),stateno = 5300
trigger3 = playerid(var(38)),statetype = L && playerid(var(38)),stateno != [5080, 5081]

;=========================================================================
; Energy
;=========================================================================
[Statedef 7000]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = 4

[state 7000, Level, Parent State, Parent Animation Element(For Synch(10))]
type = null
trigger1 = !time
trigger1 = var(0) := parent,stateno || var(1) := parent,anim || var(22) := parent,var(22) || var(23) := parent,animelemno(0) - 1

[state 7000, Anim(2), Pos X(3), Pos Y(4), Bind(5), Palette(6), Priority(7), Hitpause(8/9), Synch(10)]
type = null
triggerall = !time

; Blank
trigger1 = ishelper(-1)
trigger1 = var(2) := -1 || var(3) := 0 || var(4) := 0 || var(5) := 1 || var(6) := 0 || var(7) := 0 || var(8) := -1 || var(10) := -1

; Destroy on Hit
[state 7000, Destroy]
type = destroyself
trigger1 = parent,movetype = H 
trigger1 = var(2) != -1

; Destroy at Beginning of State
[state 7000, Destroy]
type = destroyself
trigger1 = parent,time <= 1 && time >= 1
trigger1 = var(2) != -1

; Destroy at end of Animation
[state 7000, Destroy]
type = destroyself
trigger1 = !animtime
trigger1 = var(2) != -1

; Destroy on State or Anim Change
[state 7000, Destroy]
type = destroyself
trigger1 = var(0) != parent,stateno || var(1) != parent,anim
trigger1 = var(2) != -1

; Destroy on Custom State
[state 7000, Destroy]
type = destroyself
trigger1 = !root,var(39)
trigger1 = var(2) != -1

[state 7000, Palette]
type = remappal
trigger1 = var(6) >= 0
source = 7000, 0
dest = 7000, var(6)
persistent = 0

[state 7000, Parent Bind]
type = bindtoparent
trigger1 = parent,stateno = var(0)
trigger1 = cond(var(5) > 0, 1, !time)
pos = var(3) + parent,vel x, var(4)

[state 7000, Change Animation]
type = changeanim
trigger1 = !time
value = var(2)

[state 7000, Synchronization]
type = changeanim
trigger1 = var(0) = parent,stateno && var(1) = parent,anim
trigger1 = var(10) > 0
trigger1 = animelemtime(animelemno(0) + 1) < 0
value = var(2)
elem = parent,animelemno(0) - var(23)

[state 7000, Special Effect]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 7000, Priority]
type = sprpriority
trigger1 = 1
value = var(7)

[state 7000, Hitpause]
type = varset
trigger1 = var(8) > 0
trigger1 = !parent,hitpausetime
var(9) = animelemno(0)

[state 7000, Hitpause]
type = changeanim
trigger1 = var(8) > 0
trigger1 = parent,hitpausetime
value = anim
elem = var(9)

;=========================================================================
; Width Helper
;=========================================================================
[Statedef 9998]
type = U
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -5

[state 9998, Change Animation]
type = changeanim
trigger1 = root,var(39)
value = root,anim
elem = root,animelemno(0)

[state 9998, Special Effect]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[state 9998, Root Bind]
type = bindtoroot
trigger1 = 1
pos = 0, 0

[state 9998, Vulnerability]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[state 9998, Vulnerability]
type = nothitby
trigger1 = 1
value2 = SCA
time = -1

[state 9998, Set State Type]
type = statetypeset
trigger1 = root,statetype = S
statetype = S

[state 9998, Set State Type]
type = statetypeset
trigger1 = root,statetype = C
statetype = C

[state 9998, Set State Type]
type = statetypeset
trigger1 = root,statetype = A
statetype = A

[state 9998, Turn]
type= turn
trigger1 = facing != root,facing

[state 9998, Solidity]
type = playerpush
trigger1 = 1
value = 1

[state 9998, Width]
type = varset
trigger1 = 1
var(0) = 0

[state 9998, Width]
type = width
trigger1 = root,anim = 255
trigger1 = root,animelemno(0) = [4, 7]
player = var(0) := 40, 0

[state 9998, Width]
type = width
trigger1 = root,anim = 3000
trigger1 = root,animelemno(0) = [4, 5]
player = var(0) := 56, 0

[state 9998, Width]
type = width
trigger1 = root,anim = 3600 || root,anim = 3800
trigger1 = root,animelemno(0) = [4, 5]
player = var(0) := 40, 0

[state 9998, Width]
type = varset
trigger1 = !root,var(39)
var(0) = 0

[state 9998, Destroy Helper]
type = destroyself
trigger1 = !var(0)
trigger2 = !root,var(39)

;=========================================================================
; Death Helper
;=========================================================================
[Statedef 9999]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -5

[state 9999, Change Animation]
type = changeanim
trigger1 = !time
value = 9999

[state 9999, Voice]
type = playsnd
trigger1 = !time
value = cond(root,anim = 5950 || root,stateno = 5950, 5950, 5150), 0

[state 9999, Destroy Helper]
type = destroyself
trigger1 = root,alive