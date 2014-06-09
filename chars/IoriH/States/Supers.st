; ______________
;| Iori by Hero |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===========================================================================================
;=====================================<SUPER STATES>========================================
;===========================================================================================

;=========<Ya Sakazuki>==========
[Statedef 3000]
type=S
physics=S
movetype=A
ctrl=0
anim=3000
velset=0,0
sprpriority=1
facep2=1
poweradd=-1000

[State 3100, Super Pause FX]
type=helper
trigger1= animelem=3
helpertype=normal
stateno=7800
ID=7800
name="Super Charge"
postype=p1
pos=-22,-83
ownpal=1
persistent=0
supermovetime=9999
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
facing=IfElse(facing,1,-1)

[State 3100, Super Pause]
type=superpause
trigger1= animelem=3
time=45
anim=-1
sound=s7,0
p2defmul=1
darken=0
movetime=45

[State 3100, nhb]
type=nothitby
trigger1= anim=3000 && time<51
time=1
value=SCA
ignorehitpause=1

[State 220, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 1000, width]
type=width
trigger1= 1
value=10,0

[State 0, Helper]
type = Helper
trigger1 = animelem= 3
helpertype = normal
name = "Intro Flame"
ID = 6001
stateno = 6001
pos = -24,-74
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5
supermovetime=45

[State 1000, Snd]
type=playsnd
trigger1= !time
value=4,0
channel=0

[State 0, ChangeState]
type = ChangeState
trigger1 = Time >= 50 && command!="holdx"&&command!="holdy"&&command!="holdz"
trigger2 = Time >= 120
value = 3001
;=========<Ya Sakazuki release>==========
[StateDef 3001]
type=S
physics=S
movetype=A
ctrl=0
anim=3001
velset=0,0
sprpriority=1

[State 1000, width]
type=width
trigger1= animelemtime(10)<0
value=30,0

[State 1000, KachouSen]
type=helper
trigger1= animelem=4
helpertype=normal
stateno=6150
ID=6150
name="YamiBarai"
postype=p1
pos=44,0
ownpal=1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 6111
ID = 6111
pos = -20,-5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 5
ontop = 1
ownpal = 1

[State 1000, Snd]
type=playsnd
trigger1= animelem=4
value=6,4

[State 1000, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;====================.-----------------------------------------.=============================
;===========================|       KOTOTSUKI YO CONNECTION P2        |=============================
;===========================.-----------------------------------------.=============================
[Statedef 3010]
movetype = H
physics = N
type = U

[State 3020, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 3020, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 3020, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim !=3010
value = 3010

[State 3020, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 3020, PalFX]
type = PalFX
trigger1 = AnimElemTime (1) > 0
time = 1
color = 32
mul=(enemynear,var(40)),(enemynear,var(41)),(enemynear,var(42))

[State 3020, LifeAdd]
type = LifeAdd
trigger1 = time%5 = 0
value = -2
kill = 1
absolute = 1

[State 3020, SelfState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = !Alive
trigger3 = enemynear,var(39)<0
value = 3011
;====================.-----------------------------------------.=============================
;===========================|       KOTOTSUKI YO CONNECTION P2        |=============================
;===========================.-----------------------------------------.=============================
[Statedef 3011]
movetype = H
physics = N
type = A

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3020, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 3020, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim !=3011
value = 3011

[State 3020, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 3020, SelfState]
type = SelfState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 5100
;=========<Tsumagushi>==========
[Statedef 3100]
type=S
physics=S
movetype=A
ctrl=0
anim=3100
velset=0,0
sprpriority=1
facep2=1
poweradd=-1000

[State 3100, Super Pause FX]
type=helper
trigger1= animelem=1
helpertype=normal
stateno=7800
ID=7800
name="Super Charge"
postype=p1
pos=7,-76
ownpal=1
persistent=0
supermovetime=9999
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
facing=IfElse(facing,1,-1)

[State 3100, Super Pause]
type=superpause
trigger1= animelem=1
time=45
anim=-1
sound=s7,0
p2defmul=1
darken=0
movetime=45

[State 3100, nhb]
type=nothitby
trigger1= anim=3100 && animelemtime(2)<0
time=1
value=SCA
ignorehitpause=1

[State 220, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 1000, width]
type=width
trigger1= 1
value=30,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S4,1
volume = 255
channel = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem =3||animelem=4||animelem=5||animelem=6
x = 12

[State 1000, End]
type=changestate
trigger1= !animtime
value=3110
;=========<Tsumagushi>==========
[Statedef 3110]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1410

[State 0, VarSet]
type = VarSet
trigger1 = PrevStateNo=3110
var(12)=0
ignorehitpause = 1
[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)=1
attr = S,NP,SP
slot = 7
stateno = 3110
time = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = PrevStateNo=3100&&!Time
x = 10
y = -5.4

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 1000, End]
type=changestate
trigger1= !animtime
value=3120
;=========<Tsumagushi>==========
[Statedef 3120]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1420

[State 0, VarSet]
type = VarSet
trigger1 = PrevStateNo=3120
var(12)=0
ignorehitpause = 1
[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)=1
attr = S,NP,SP
slot = 7
stateno = 3120
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 1000, End]
type=changestate
trigger1= !animtime
value=3130
;=========<Tsumagushi>==========
[Statedef 3130]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 3130

[State 0, VarSet]
type = VarSet
trigger1 = PrevStateNo=1430
var(12)=0
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)=1
attr = S,NP,SP
slot = 7
stateno = 3130
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,HT
damage = 30
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority= 4,Hit
pausetime = 1,14
sparkno = -1
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 32), var(23):= -87
sparkxy = -19+ 0 * (var(22) := 67),-82+ 0 * (var(23):= -82)
hitsound = s0,800
guardsound = s2,0
ground.type = Low
ground.slidetime = 17
ground.hittime = 17
guard.hittime = 17
guard.slidetime = 17
guard.ctrltime = 28
ground.velocity = 0
guard.velocity=0
air.type = High
air.velocity = -4.6,-6.5
air.hittime = 13
getpower= 0,0
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
fall=0
air.fall=1
air.fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill=0
p1stateno=3150

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 3140
;=========<Tsumagushi>==========
[Statedef 3140]
type=S
physics=S
movetype=I
ctrl=0
sprpriority=1
anim = 3140
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0,52

[State 52, Dust]
type = Explod
trigger1 = !time
anim = 7520
ID = 7520
sprpriority = -2
postype = p1
scale = .5*const(size.xscale),.5*const(size.yscale)
pos = 0,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "Flames"
ID = 6140
stateno = 6140
pos = 25,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3,2
volume = 255
channel = 0

[State 1000, End]
type=changestate
trigger1= !animtime
value=0
ctrl = 1
;=========<Tsumagushi>==========
[Statedef 3150]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 3130

[State 0, Width]
type = Width
trigger1 = 1
edge = 63,0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.8

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3170
ignorehitpause = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = 1
time = 1
pos = 60,-97
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 3160
;=========<Tsumagushi>==========
[Statedef 3160]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 3160

[State 0, Width]
type = Width
trigger1 = 1
edge = 63,0

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3180

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0,52

[State 52, Dust]
type = Explod
trigger1 = !time
anim = 7520
ID = 7520
sprpriority = -2
postype = p1
scale = .5*const(size.xscale),.5*const(size.yscale)
pos = 0,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "Flames"
ID = 6140
stateno = 6140
pos = 45,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 3120, EnvShake]
type = EnvShake
trigger1 = AnimElem=2
time = 15
freq = 60
ampl = -6
phase = 90

[State 0, Width]
type = Width
trigger1 = statetype=S
edge = 0,30

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 &&animelemtime(2)<0
pos = 76,-62
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2)>=0 &&animelemtime(3)<0
pos = 26,-5
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3)>=0 &&animelemtime(4)<0
pos = 34,-4
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4)>=0 &&animelemtime(6)<0
pos = 32,-8
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(6)>=0 &&animelemtime(7)<0
pos = 26,-24
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(7)>=0 &&animelemtime(8)<0
pos = 31,-89
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(8)>=0 &&animelemtime(9)<0
trigger2 = AnimElemTime(14)>=0 &&animelemtime(15)<0
trigger3 = AnimElemTime(20)>=0 &&animelemtime(21)<0
pos = 41,-141
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(9)>=0 &&animelemtime(10)<0
trigger2 = AnimElemTime(15)>=0 &&animelemtime(16)<0
pos = 18,-149
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(10)>=0 &&animelemtime(11)<0
trigger2 = AnimElemTime(16)>=0 &&animelemtime(17)<0
pos = -28,-135
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(11)>=0 &&animelemtime(12)<0
trigger2 = AnimElemTime(17)>=0 &&animelemtime(18)<0
pos = -30,-124
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(12)>=0 &&animelemtime(13)<0
trigger2 = AnimElemTime(18)>=0 &&animelemtime(19)<0
pos = -10,-107
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(13)>=0 &&animelemtime(14)<0
trigger2 = AnimElemTime(19)>=0 &&animelemtime(20)<0
pos = 13,-107
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(21)=1
pos = 69,-24
time = 1

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S4,2
volume = 255
channel = 0

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8) = 1
StateType = A
physics = N

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
y = -5.5

[State 1100, VelAdd]
type = Veladd
trigger1 =  AnimElemTime(20) >= 0
y = .45

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
helpertype = normal
name = "Front Flames"
ID = 6120
stateno = 6120
pos = 0,10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
helpertype = normal
name = "Bottom Flames"
ID = 6125
stateno = 6125
pos = 0,10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1120, Helper]
type = Helper
trigger1= animelemtime(20)>0 &&!numhelper(6180)
helpertype = normal
name = "P2 Body Flames"
ID = 6180
stateno = 6180
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 3120, Pause]
type = Pause
trigger1 = AnimElemTime(21) > 1 && AnimElemTime (22) < 0
trigger2 = AnimElemTime(23) > 1 && AnimElemTime (24) < 0
time = 2
movetime = 0
[State 3120, Pause]
type = Pause
trigger1 = AnimElemTime(23) > 1 && AnimElemTime (24) < 0
time = 3
movetime = 0
[State 3120, Pause]
type = Pause
trigger1 = AnimElemTime(24) > 1 && AnimElemTime (25) < 0
time = 1
movetime = 0

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Floor FX"
ID = 7000
stateno = 7000
pos = 22,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(20)> 0 && animelemtime(21)<4
anim = 6130
ID = 6130
pos = 30+random%120,-120+random%60
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop = 1

[State 3120, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 21
value = ceil(-66*fvar(1))
absolute = 1
kill = 0

[State 3120, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23
value = ceil(-66*fvar(1))
absolute = 1
kill = 1

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime (20) = 1
trigger2 = AnimElemTime (21) = 1
trigger3 = AnimElemTime (22) = 1
value = S6,0
volume = 255

[State 3120, HitAdd]
type = HitAdd
trigger1 = AnimElemTime (20) = 1
trigger2 = AnimElemTime (21) = 1
trigger3 = AnimElemTime (22) = 1
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 52
;=========<Tsumagushi>==========
[Statedef 3170]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3330, Turn]
type = Turn
trigger1 = enemynear,facing!=facing&&!Time
ignorehitpause = 1

[State 3130, SprPriority]
type = SprPriority
trigger1 = !Time
value = 2
ignorehitpause = 1

[State 3130, ChangeAnim2]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim != 3170
value = 3170
ignorehitpause = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
ignorehitpause = 1
;=========<Tsumagushi>==========
[Statedef 3180]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Animelem=2
statetype = L

[State 3330, Turn]
type = Turn
trigger1 = animelem = 6

[State 3130, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 3130, ChangeAnim2]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim != 3180
value = 3180

[State 3130, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
statetype = A

[State 3130, SprPriority]
type = SprPriority
trigger1 = Time = 42
trigger2 = Time = 54
value = -1

[State 3130, SprPriority]
type = SprPriority
trigger1 = !Time
trigger2 = Time = 48
trigger3 = Time = 60
value = 2

[State 3130, VelSet]
type = VelSet
trigger1 = AnimElemTime(11)=2
x = -8
y = -3

[State 3130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime (11) > 0
y = .5

[State 3130, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 3020, PalFX]
type = PalFX
trigger1 = AnimElemTime(11)>=2
time = 1
color = 32
mul=(enemynear,var(40)),(enemynear,var(41)),(enemynear,var(42))

[State 0, EnvShake]
type = EnvShake
trigger1= vel y > 0
trigger1= pos y > -vel y
time = 14
freq = 120
ampl = -4

[State 1380, SelfState]
type = SelfState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 5100
;=========<Ya Otome>==========
[Statedef 3200]
type=S
physics=N
movetype=A
ctrl=0
anim=3200
velset=0,0
sprpriority=1
facep2=1
poweradd=-1000

[State 3100, Super Pause FX]
type=helper
trigger1= animelem=2
helpertype=normal
stateno=7800
ID=7800
name="Super Charge"
postype=p1
pos=5,-111
ownpal=1
persistent=0
supermovetime=9999
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
facing=IfElse(facing,1,-1)

[State 3100, Super Pause]
type=superpause
trigger1= animelem=2
time=45
anim=-1
sound=s7,0
p2defmul=1
darken=0
movetime=45

[State 3100, nhb]
type=nothitby
trigger1= animelemtime(5)<0
time=1
value=SCA
ignorehitpause=1

[State 220, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S4,3
volume = 255
channel = 0

[State 0, VelAdd]
type = VelSet
trigger1 = animelemtime(5)>=0 && animelemtime(8)<0
x = 8.5

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,HT
damage = 0,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = 1,1
sparkno = -1
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 32), var(23):= -87
sparkxy = -19+ 0 * (var(22) := 53),-75+ 0 * (var(23):= -39)
hitsound = -1
guardsound = s2,0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0
guard.pausetime  = 2,2
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 19
air.type = High
air.velocity = 0,0
air.hittime = 13
getpower= 0,0
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
fall=0
air.fall=1
air.fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill=0
p1stateno=3210

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem=8
movetype = I

[State -2, Accel]
type = VelSet
trigger1 = animelemtime(8)=0
x = 16.46875

[State -2, Vel]
type = VelSet
trigger1 = animelemtime(8) > 0
x = (7.470703125*exp((-0.0645)*(animelemtime(8)-1)))

[State 1000, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=========<Tsumagushi>==========
[Statedef 3210]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=2
anim = 3210

[State 0, Width]
type = Width
trigger1 = 1
edge = 63,0

[State 0, TargetState]
type = TargetState
trigger1 = !Time
trigger2 = animelem = 4
trigger3 = animelem = 8
trigger4 = animelem = 15
trigger5 = animelem = 25
trigger6 = animelem = 32
trigger7 = animelem = 36
trigger8 = animelem = 46
value = 3230

[State 0, Explod]
type = Explod
trigger1 = !Time
trigger2 = animelem = 4
trigger3 = animelem = 8
trigger4 = animelem = 15
trigger5 = animelem = 25
trigger6 = animelem = 32
trigger7 = animelem = 36
trigger8 = animelem = 46
anim = 8050+(random%8)
ID = 8050
pos = 56,-58
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger2 = animelem = 4
trigger3 = animelem = 8
trigger4 = animelem = 15
trigger5 = animelem = 25
trigger6 = animelem = 32
trigger7 = animelem = 36
trigger8 = animelem = 46
value = S2,14
volume = 255

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S4,4
volume = 255
channel = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 4
trigger2 = animelem = 8
trigger3 = animelem = 15
trigger4 = animelem = 25
trigger5 = animelem = 32
trigger6 = animelem = 36
trigger7 = animelem = 46
value = ceil(-19*fvar(1))
kill = 0

[State 3120, HitAdd]
type = HitAdd
trigger1 = animelem = 4
trigger2 = animelem = 8
trigger3 = animelem = 15
trigger4 = animelem = 25
trigger5 = animelem = 32
trigger6 = animelem = 36
trigger7 = animelem = 46
value = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 &&animelemtime(50)<0
pos = 55,0
time = 1

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 50
value = 3235

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(50)>=0 &&animelemtime(58)<0
pos = 36,0
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 52
value = S0,800
volume = 255
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 53
value = S4,5
volume = 255
channel = 0

[State 1120, Helper]
type = Helper
trigger1= animelemtime(58)>0 &&!numhelper(6180)
helpertype = normal
name = "P2 Body Flames"
ID = 6180
stateno = 6180
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(58)=0
trigger2 = AnimElemTime(58)=2
anim = 6130
ID = 6130
pos = 30+random%50,-57-random%50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 58
time = 15
freq = 75
ampl = -8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 58
value = S5,0
volume = 255

[State 3120, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 58
value = ceil(-65*fvar(1))
kill = 1

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 58
value = 3236

[State 0, ChangeState]
type = ChangeState
trigger1= AnimElemTime(58)>4&&animelemtime(59)<6 && command = "Saika"&&!winko&&power>=1000
value = 3250

[State 0, ChangeState]
type = ChangeState
trigger1= !AnimTime
value = 0
ctrl = 1
;===========================.------------------------------------------.=============================
[Statedef 3230]
type = S
movetype = H
physics = N

[State 3230, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 3330, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
value = IfElse(random>500,3230,3231)

[State 3230, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;===========================.------------------------------------------.=============================
[Statedef 3235]
type = S
movetype = H
physics = N

[State 0, Turn]
type = Turn
trigger1 = !Time && enemynear, facing = facing
ignorehitpause = 1

[State 3230, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 3330, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
value = 3235

[State 3230, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;===========================.------------------------------------------.=============================
[Statedef 3236]
type = A
movetype = H
physics = N

[State 3330, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
value = 3236

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -2.6
y = -7.6

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3230, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 3020, PalFX]
type = PalFX
trigger1 = 1
time = 1
color = 32
mul=(enemynear,var(40)),(enemynear,var(41)),(enemynear,var(42))

[State 0, EnvShake]
type = EnvShake
trigger1= vel y > 0
trigger1= pos y > -vel y
time = 14
freq = 120
ampl = -4

[State 820, SelfState]
type = SelfState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 5100
;=========<Saika>==========
[Statedef 3250]
type=S
physics=S
movetype=A
ctrl=0
anim=3250
velset=0,0
sprpriority=1
poweradd=-1000

[State 3100, Super Pause FX]
type=helper
trigger1= animelem=2
helpertype=normal
stateno=7800
ID=7800
name="Super Charge"
postype=p1
pos=-12,-93
ownpal=1
persistent=0
supermovetime=9999
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
facing=IfElse(facing,1,-1)

[State 3100, Super Pause]
type=superpause
trigger1= animelem=2
time=45
anim=-1
sound=s7,0
p2defmul=1
darken=0
movetime=45

[State 3100, nhb]
type=nothitby
trigger1= animelemtime(3)<0
time=1
value=SCA
ignorehitpause=1

[State 220, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S4,6
volume = 255
channel = 0

[State 3100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nojugglecheck

[State 210, 1]
type = HitDef
trigger1 = !time
attr = S, HA
damage = 0
animtype = Hard
air.animtype = back
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 0,26
sparkno = s8050+(random%8)
sparkxy = -16, -64
hitsound = s2,14
guard.sparkno = -1 + 0 * (var(34):=8061)
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0
air.type = High
air.velocity = -4,-7.77564102564102564102564102563869
air.hittime = 13
air.juggle = 8
getpower = 0,0
givepower = 16,16
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
p1stateno=3260

[State 0, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Tsumagushi>==========
[Statedef 3260]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=2
anim = 3260

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3270

[State 0, Explod]
type = Explod
trigger1 = time = 36
trigger2 = time = 40
trigger3 = time = 46
trigger4 = time = 52
trigger5 = time = 62
anim = 8050+(random%8)
ID = 8050
pos = -10,-58-random%30
postype = p2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 36
trigger2 = time = 40
trigger3 = time = 46
trigger4 = time = 52
trigger5 = time = 62
value = S2,14
volume = 255

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 36
trigger2 = time = 40
trigger3 = time = 46
trigger4 = time = 52
trigger5 = time = 62
value = ceil(-10*fvar(1))
kill = 0

[State 3120, HitAdd]
type = HitAdd
trigger1 = time = 36
trigger2 = time = 40
trigger3 = time = 46
trigger4 = time = 52
trigger5 = time = 62
value = 1

[State 3000, EnvShake]
type = EnvShake
trigger1 = !time
trigger2 = time = 65
time = 20
freq = 180
ampl = -6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
value = S4,7
volume = 255
channel = 0

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(14)>0&&animelemtime(14)<=26
time = 2
mul = 256-((time-90)*9),256-((time-90)*9),256-((time-90)*9)

[State 0, PalFX]
type = PalFX
trigger1 = animelemtime(14)>26&&animelemTime(15)<0
time = 2
mul = 0,0,0

[State 1000, KachouSen]
type=helper
trigger1= animelem=18
helpertype=normal
stateno=6170
ID=6170
name="Pillar"
postype=p1
pos=38,10
ownpal=1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 0, ChangeState]
type = ChangeState
trigger1= !AnimTime
value = 0
ctrl = 1
;=====
[Statedef 3270]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3340, Anim 5050]
type = ChangeAnim
triggerall = anim = 5030
trigger1 = animtime = 0
value = 5050

[State 3020, PalFX]
type = PalFX
trigger1 = 1
time = 1
color = 32
mul=(enemynear,var(40)),(enemynear,var(41)),(enemynear,var(42))

[State 3340, Anim 5050]
type = ChangeState
trigger1 = HitShakeOver
value = 3271
;==
[Statedef 3271]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3340, Anim 5050]
type = ChangeAnim2
trigger1 = !time
value = 3270

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 13
y = -21

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 19
x = -13
y = -7

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 25
y = -21

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 31
x = -13
y = -7

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 33
x = -11
y = -7

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 35
x = -8
y = -6

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 66
y = -21

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 68
y = -18

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 70
y = -15

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 72
y = -14

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 74
y = -12

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 76
y = -10

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 78
y = -8

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 80
y = -8

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 82
y = -6

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 84
y = -5

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 86
y = -5

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 88
y = -4

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 90
y = -3

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 91
y = -3

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 92
y = -2

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 93
y = -2

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 94
y = -1

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 95
y = -1

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 96
y = -1

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 97
y = -1

[State 3151, PosAdd]
type = PosAdd
trigger1 = time = 99
y = -1

[State 3151, VelSet]
type = VelSet
trigger1 = time = 101
y = 0.6682891845703125

[State 3151, VelAdd]
type = VelAdd
trigger1 = time > 100
y = 0.625

[State 1207, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5051)
trigger1 = time = 76
value = 5051

[State 1207, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5051)
trigger1 = time = 76
value = 5050

[State 1207, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5061)
trigger1 = time = 89
value = 5061

[State 3020, PalFX]
type = PalFX
trigger1 = 1
time = 1
color = 32
mul=(enemynear,var(40)),(enemynear,var(41)),(enemynear,var(42))

[State 1000, 6]
type = SelfState
trigger1 = time > 90
trigger1 = Pos Y >= 0 && Vel Y >= 0
value = 5100
;===========================.------------------------------------------.=============================
[Statedef 3280]
type = A
movetype = H
physics = N

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 1207, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5050)
trigger1 = !time
value = 5050

[State 1207, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5052)
trigger1 = !time
value = 5052

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -2.6
y = -11.6

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3230, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 3020, PalFX]
type = PalFX
trigger1 = 1
time = 1
color = 32
mul=(enemynear,var(40)),(enemynear,var(41)),(enemynear,var(42))

[State 0, EnvShake]
type = EnvShake
trigger1= vel y > 0
trigger1= pos y > -vel y
time = 18
freq = 120
ampl = -5

[State 820, SelfState]
type = SelfState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 5100
;=========<MAX Tsumagushi>==========
[Statedef 3300]
type=S
physics=S
movetype=A
ctrl=0
anim=3300
velset=0,0
sprpriority=1
facep2=1
poweradd=-2000

[State 3100, Super Pause FX]
type=helper
trigger1= animelem=1
helpertype=normal
stateno=7810
ID=7810
name="Super Charge"
postype=p1
pos=7,-76
ownpal=1
persistent=0
supermovetime=9999
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
facing=IfElse(facing,1,-1)

[State 3100, Super Pause]
type=superpause
trigger1= animelem=1
time=53
anim=-1
sound=s7,0
p2defmul=1
darken=0
movetime=53

[State 3100, nhb]
type=nothitby
trigger1= anim=3100 && animelemtime(2)<0
time=1
value=SCA
ignorehitpause=1

[State 220, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 1000, width]
type=width
trigger1= 1
value=30,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S4,1
volume = 255
channel = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem =3||animelem=4||animelem=5||animelem=6
x = 12

[State 1000, End]
type=changestate
trigger1= !animtime
value=3310
;=========<Tsumagushi>==========
[Statedef 3310]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1410

[State 0, VarSet]
type = VarSet
trigger1 = PrevStateNo=3110
var(12)=0
[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)=1
attr = S,NP,SP
slot = 7
stateno = 3310
time = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = PrevStateNo=3300&&!Time
x = 10
y = -5.4

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 1000, End]
type=changestate
trigger1= !animtime
value=3320
;=========<Tsumagushi>==========
[Statedef 3320]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1420

[State 0, VarSet]
type = VarSet
trigger1 = PrevStateNo=3120
var(12)=0
ignorehitpause = 1
[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)=1
attr = S,NP,SP
slot = 7
stateno = 3320
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 1000, End]
type=changestate
trigger1= !animtime
value=3330
;=========<Tsumagushi>==========
[Statedef 3330]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 3130

[State 0, VarSet]
type = VarSet
trigger1 = PrevStateNo=1430
var(12)=0
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)=1
attr = S,NP,SP
slot = 7
stateno = 3330
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,HT
damage = IfElse(var(10)=1,88,IfElse(var(10)=2,54,40)),8
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority= 4,Hit
pausetime = 1,12
sparkno = -1
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 32), var(23):= -87
sparkxy = -19+ 0 * (var(22) := 67),-82+ 0 * (var(23):= -82)
hitsound = s0,800
guardsound = s2,0
ground.type = Low
ground.slidetime = 17
ground.hittime = 17
guard.hittime = 17
guard.slidetime = 17
guard.ctrltime = 28
ground.velocity = 0
guard.velocity=-11.4
air.type = High
air.velocity = -4.6,-6.5
air.hittime = 13
getpower= 0,0
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
fall=0
air.fall=1
air.fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill=0
p1stateno=3350

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 3340
;=========<Tsumagushi>==========
[Statedef 3340]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=1
anim = 3340

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0,52

[State 52, Dust]
type = Explod
trigger1 = !time
anim = 7520
ID = 7520
sprpriority = -2
postype = p1
scale = .5*const(size.xscale),.5*const(size.yscale)
pos = 0,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "Flames"
ID = 6140
stateno = 6140
pos = 45,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3,2
volume = 255
channel = 0

[State 1000, End]
type=changestate
trigger1= !animtime
value=0
ctrl = 1
;=========<Tsumagushi>==========
[Statedef 3350]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1430

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3170
ignorehitpause = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = 1
time = 1
pos = 60,-97
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 3360
;=========<Tsumagushi>==========
[Statedef 3360]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 3360

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 0, Width]
type = Width
trigger1 = statetype=S
edge = 0,30

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3180

[State 0, TargetState]
type = TargetState
trigger1 = animelem = 6
value = 3380

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 &&animelemtime(2)<0
pos = 76,-62
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2)>=0 &&animelemtime(3)<0
pos = 26,-5
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3)>=0 &&animelemtime(4)<0
pos = 34,-4
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4)>=0 &&animelemtime(6)<0
pos = 32,-8
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(6)>=0 &&animelemtime(7)<0
pos = 38,-55
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(7)>=0 &&animelemtime(8)<0
pos = 23,-51
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(8)>=0 &&animelemtime(9)<0
pos = 0,-41
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(9)>=0 &&animelemtime(10)<0
pos = -21,38
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = animelemtime(10)>=0 &&animelemtime(11)<0
pos = -41,-56
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = animelemtime(11)>0
pos = -40,-77
time = 1

[State 52, Dust]
type = Explod
trigger1 = !time
anim = 7520
ID = 7520
sprpriority = -2
postype = p1
scale = .5*const(size.xscale),.5*const(size.yscale)
pos = 0,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3120, EnvShake]
type = EnvShake
trigger1 = AnimElem=2
time = 15
freq = 120
ampl = -8
phase = 90

[State 0, Width]
type = Width
trigger1 = statetype=S
edge = 0,30

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem =8||animelem=9||animelem=10||animelem=11
x = 12

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Floor FX"
ID = 7000
stateno = 7000
pos = 22,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 1000, End]
type=changestate
trigger1= !animtime
value=3361
;=========<Tsumagushi>==========
[Statedef 3361]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1410

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3381

[State 3120, TargetBind]
type = TargetBind
trigger1 = 1
pos = -33,-94
time = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = 6
y = -4.4

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 1000, End]
type=changestate
trigger1= !animtime
value=3362
;=========<Tsumagushi>==========
[Statedef 3362]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1420

[State 3120, TargetBind]
type = TargetBind
trigger1 = 1
pos = 9,-116
time = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 1000, End]
type=changestate
trigger1= !animtime
value=3363
;=========<Tsumagushi>==========
[Statedef 3363]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1430

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3382

[State 3120, TargetBind]
type = TargetBind
trigger1 = 1
pos = 59,-103
time = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 3370
;=========<Tsumagushi>==========
[Statedef 3370]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 3160

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3180

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0,52

[State 52, Dust]
type = Explod
trigger1 = !time
anim = 7520
ID = 7520
sprpriority = -2
postype = p1
scale = .5*const(size.xscale),.5*const(size.yscale)
pos = 0,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "Flames"
ID = 6140
stateno = 6140
pos = 45,-20
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 3120, EnvShake]
type = EnvShake
trigger1 = AnimElem=2
time = 15
freq = 120
ampl = -8
phase = 90

[State 0, Width]
type = Width
trigger1 = statetype=S
edge = 0,30

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 &&animelemtime(2)<0
pos = 76,-62
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2)>=0 &&animelemtime(3)<0
pos = 26,-5
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3)>=0 &&animelemtime(4)<0
pos = 34,-4
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4)>=0 &&animelemtime(6)<0
pos = 32,-8
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(6)>=0 &&animelemtime(7)<0
pos = 26,-24
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(7)>=0 &&animelemtime(8)<0
pos = 31,-89
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(8)>=0 &&animelemtime(9)<0
trigger2 = AnimElemTime(14)>=0 &&animelemtime(15)<0
trigger3 = AnimElemTime(20)>=0 &&animelemtime(21)<0
pos = 41,-141
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(9)>=0 &&animelemtime(10)<0
trigger2 = AnimElemTime(15)>=0 &&animelemtime(16)<0
pos = 18,-149
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(10)>=0 &&animelemtime(11)<0
trigger2 = AnimElemTime(16)>=0 &&animelemtime(17)<0
pos = -28,-135
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(11)>=0 &&animelemtime(12)<0
trigger2 = AnimElemTime(17)>=0 &&animelemtime(18)<0
pos = -30,-124
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(12)>=0 &&animelemtime(13)<0
trigger2 = AnimElemTime(18)>=0 &&animelemtime(19)<0
pos = -10,-107
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(13)>=0 &&animelemtime(14)<0
trigger2 = AnimElemTime(19)>=0 &&animelemtime(20)<0
pos = 13,-107
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(21)=1
pos = 69,-24
time = 1

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S4,2
volume = 255
channel = 0

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8) = 1
StateType = A
physics = N

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
y = -5.5

[State 1100, VelAdd]
type = Veladd
trigger1 =  AnimElemTime(20) >= 0
y = .45

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
helpertype = normal
name = "Front Flames"
ID = 6120
stateno = 6120
pos = 0,10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
helpertype = normal
name = "Bottom Flames"
ID = 6125
stateno = 6125
pos = 0,10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1120, Helper]
type = Helper
trigger1= animelemtime(20)>0 &&!numhelper(6180)
helpertype = normal
name = "P2 Body Flames"
ID = 6180
stateno = 6180
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 3120, Pause]
type = Pause
trigger1 = AnimElemTime(21) > 1 && AnimElemTime (22) < 0
trigger2 = AnimElemTime(23) > 1 && AnimElemTime (24) < 0
time = 2
movetime = 0
[State 3120, Pause]
type = Pause
trigger1 = AnimElemTime(23) > 1 && AnimElemTime (24) < 0
time = 2
movetime = 0

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Floor FX"
ID = 7000
stateno = 7000
pos = 22,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElemTime(20)> 0 && animelemtime(21)<4
anim = 6130
ID = 6130
pos = 30+random%120,-120+random%60
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop = 1
[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 21
helpertype = normal
name = "Flash"
ID = 1234567
stateno = 1234567
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 999

[State 3120, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 21
value = -80
absolute = 1
kill = 0

[State 3120, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23
value = -90
absolute = 1
kill = 1

[State 3120, HitAdd]
type = HitAdd
trigger1 = AnimElemTime (20) = 1
trigger2 = AnimElemTime (21) = 1
trigger3 = AnimElemTime (22) = 1
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 52
;=========<Tsumagushi>==========
[Statedef 3380]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3130, SprPriority]
type = SprPriority
trigger1 = !Time
value = 2
ignorehitpause = 1

[State 3130, ChangeAnim2]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim != 3380
value = 3380
ignorehitpause = 1

[State 3130, SprPriority]
type = SprPriority
trigger1 = Time = 46
value = 0
ignorehitpause = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
ignorehitpause = 1
;=========<Tsumagushi>==========
[Statedef 3381]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3130, SprPriority]
type = SprPriority
trigger1 = !Time
value = 0
ignorehitpause = 1

[State 3130, ChangeAnim2]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim != 3381
value = 3381
ignorehitpause = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
ignorehitpause = 1
;=========<Tsumagushi>==========
[Statedef 3382]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 3130, SprPriority]
type = SprPriority
trigger1 = !Time
value = 0
ignorehitpause = 1

[State 3130, ChangeAnim2]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim != 3382
value = 3382
ignorehitpause = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
ignorehitpause = 1
;=========<Homurabotogi>==========
[Statedef 3400]
type=S
physics=S
movetype=A
ctrl=0
anim=3400
velset=0,0
sprpriority=1
facep2=1
poweradd=-2000

[State 3100, Super Pause FX]
type=helper
trigger1= animelem=1
helpertype=normal
stateno=7810
ID=7810
name="Super Charge"
postype=p1
pos=-4,-75
ownpal=1
persistent=0
supermovetime=9999
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
facing=IfElse(facing,1,-1)

[State 3100, Super Pause]
type=superpause
trigger1= animelem=1
time=53
anim=-1
sound=s7,0
p2defmul=1
darken=0
movetime=53

[State 3100, nhb]
type=nothitby
trigger1= anim=3100 && animelemtime(3)<0
time=1
value=SCA
ignorehitpause=1

[State 220, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = IfElse(8.5>p2dist x /20,8.5,p2dist x/20)
y = -6.4

[State 0, VelAdd]
type = VelAdd
trigger1 = animelemtime(3)>0
y = .6

[State 0, EnvShake]
type = EnvShake
trigger1= vel y > 0
trigger1= pos y > -vel y
time = 14
freq = 120
ampl = -3

[State 0, SelfState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 3410
;=========<Ya Otome>==========
[Statedef 3410]
type=S
physics=S
movetype=A
ctrl=0
anim=3410
velset=0,0
sprpriority=1

[State 220, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,HT
damage = 0,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag =
hitflag = MAF
priority= 4,Hit
pausetime = 1,1
sparkno = -1
guard.sparkno = -1 + 0 * (var(34) := 8061)
sparkxy = -16,-75
hitsound = s0,800
guardsound = s2,0
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = 0
guard.pausetime  = 2,2
guard.slidetime = 17
guard.hittime = 17
guard.ctrltime = 19
air.type = High
air.velocity = -4,-7.77564102564102564102564102563869
air.hittime = 13
getpower= 0,0
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
fall=0
air.fall=1
air.fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill=0
numhits = 0
p1stateno=3420

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem=3
movetype = I

[State 1000, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=========<Tsumagushi>==========
[Statedef 3420]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=0
anim = 3420

[State 0, Width]
type = Width
trigger1 = 1
edge = 63,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(4)<130
flag = nomusic
flag2 = timerfreeze
flag3 = nobardisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S5,1
volume = 255

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3430

[State 1100, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal
name = "Red"
ID = 7010
stateno = 7010
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(4)<32
time = 2
add = 0,-time*8,-time*8

[State 0, AllPalFX]
type = PalFX
trigger1 = animelemtime(4)<32
time = 2
add = 0,-time*8,-time*8

[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(4)>32&&animelemtime(4)<130
time = 2
mul = IfElse(256-(time-37)*8<=0,0,256-(time-37)*8),0,0

[State 0, AllPalFX]
type = PalFX
trigger1 = animelemtime(4)>32&&animelemtime(4)<130
time = 2
mul = IfElse(256-(time-37)*8<=0,0,256-(time-37)*8),0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S6,2
volume = 255

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4)=30
value = S4,7
volume = 255
channel = 0

[State 3120, HitAdd]
type = HitAdd
trigger1 = animelemtime(4)=134
value = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 &&animelemtime(2)<0
pos = 78,-55
time = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2)>=0 &&animelemtime(4)<134
pos = 73,-8
time = 1

[State 1100, Helper]
type = Helper
trigger1 = animelemtime(4)=130
helpertype = normal
name = "Flame Pillar"
ID = 6300
stateno = 6300
pos = 74,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1120, Helper]
type = Helper
trigger1= animelemtime(4)>134 &&!numhelper(6180)
helpertype = normal
name = "P2 Body Flames"
ID = 6180
stateno = 6180
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=134
anim = 6130
ID = 6130
pos = 95,-83
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop=1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=138
anim = 6130
ID = 6130
pos = 62,-103
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop=1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=145
anim = 6130
ID = 6130
pos = 98,-65
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop=1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=151
anim = 6130
ID = 6130
pos = 72,-123
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop=1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=156
anim = 6130
ID = 6130
pos = 45,-87
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop=1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=160
anim = 6130
ID = 6130
pos = 110,-54
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop=1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=134
trigger2 = animelemtime(4)=137
trigger3 = animelemtime(4)=140
trigger4 = animelemtime(4)=143
trigger5 = animelemtime(4)=147
trigger6 = animelemtime(4)=150
value = S5,0
volume = 255

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4)=162
anim = 6130
ID = 6130
pos = 95,-83
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 7
ontop=1
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelemtime(4)=134
time = 20
freq = 100
ampl = -9

[State 3120, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelemtime(4)=134
value = ceil(-355*fvar(1))
kill = 1

[State 0, TargetState]
type = TargetState
trigger1 = animelemtime(4)=134
value = 3440

[State 0, ChangeState]
type = ChangeState
trigger1= !AnimTime
value = 0
ctrl = 1
;===========================.------------------------------------------.=============================
[Statedef 3430]
type = S
movetype = H
physics = N

[State 3230, SprPriority]
type = SprPriority
trigger1 = !Time
value = 3

[State 3330, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
value = 3430

[State 3230, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;===========================.------------------------------------------.=============================
[Statedef 3440]
type = A
movetype = H
physics = N

[State 3330, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
value = 3440

[State 3330, ChangeAnim]
type= ChangeAnim
trigger1 = !Time&&SelfAnimExist(5052)
value = 5052

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -7.6
y = -11.6

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3230, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 3020, PalFX]
type = PalFX
trigger1 = 1
time = 1
color = 32
mul=(enemynear,var(40)),(enemynear,var(41)),(enemynear,var(42))

[State 0, EnvShake]
type = EnvShake
trigger1= vel y > 0
trigger1= pos y > -vel y
time = 14
freq = 120
ampl = -3

[State 820, SelfState]
type = SelfState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 5100
;=========<Chi No Bousou>==========
[Statedef 3500]
type=S
physics=S
movetype=I
ctrl=0
anim=3500
velset=0,0
sprpriority=1
facep2=1
poweradd=-3000

[State 3100, Super Pause FX]
type=helper
trigger1= animelem=2
helpertype=normal
stateno=7820
ID=7820
name="Super Charge"
postype=p1
pos=15,-73
ownpal=1
persistent=0
supermovetime=9999
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
facing=IfElse(facing,1,-1)

[State 3100, Super Pause]
type=superpause
trigger1= animelem=2
time=65
anim=-1
sound=s7,0
p2defmul=1
darken=0
movetime=65

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S4,8
volume = 255
channel = 0
ignorehitpause = 1

[State 3100, nhb]
type=nothitby
trigger1= animelemtime(3)<0
time=1
value=SCA
ignorehitpause=1

[State 220, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 =  animelemtime(3)>=0
value = SCA,AP
time = 1
ignorehitpause = 1
[State 0, HitBy]
type = HitBy
trigger1 = animelemtime(3)>=0
value = SCA,AA,AT
time = 1
ignorehitpause = 1

[State 765, reversal]
type=reversaldef
trigger1= animelemtime(3)>=0 && animelemtime(32)<0
reversal.attr=SCA,AA
p1stateno=3501
pausetime=0,0
sparkno=-1
numhits=0

[State 0, SelfState]
type = ChangeState
trigger1= !AnimTime
value = 0
ctrl=1
;=========<Aoi Hana 1º hit>==========
[StateDef 3501]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 0, AllPalFX]
type = AllPalFX
trigger1 = movehit
time = 10
mul = 0,0,0
ignorehitpause=1

[State 210, Hit]
type=hitdef
trigger1 = animelemTime(32)<0
attr = S,HT
damage = 0,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag =
hitflag = MAF
priority= 4,Hit
pausetime = 1,2
sparkno = -1
guard.sparkno = -1
guard.sparkxy = -1
sparkxy = -1
persistent=0
p2stateno=3520
numhits=0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(32)>=0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = Enemynear, stateno = 3520
value = 3510

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Tsumagushi>==========
[Statedef 3510]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=2
anim = 3510
facep2=1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(1)>=0 &&animelemtime(23)<0
flag = nobardisplay
flag1 = timerfreeze

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3520

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 7890
ID = 7890
pos = -180,-120
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 25
scale = 2,2
ownpal = 1
sprpriority=7
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 16
anim = 8050+(random%8)
ID = 8050
pos = 56,-58
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
ownpal = 1
sprpriority=7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 16
value = S2,14
volume = 255

[State 3120, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 16
value = S4,9
volume = 255
channel = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 16
value = -168
kill = 0

[State 3120, HitAdd]
type = HitAdd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 16
value = 1

[State 0, AllPalFX]
type = AllPalfx
trigger1 = animelemtime(2)<0
trigger2 = animelemtime(7)>=5 && animelemtime(8)<0
trigger3 = animelemtime(12)>=5 && animelemtime(13)<0
trigger4 = animelemtime(22)>=3 && animelemtime(23)<0
time = 1
mul = 0,0,0
ignorehitpause=1
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelemtime(2)>=0&&animelemtime(5)<0
time = 1
mul = (time-24)*42,0,0;(time-24)*42,(time-24)*42
ignorehitpause=1
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelemtime(6)>=0&&animelemtime(7)<5
time = 1
mul = 256-(time-33)*42,0,0;256-(time-33)*42,256-(time-33)*42
ignorehitpause=1

[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelemtime(8)>=0&&animelemtime(10)<0
time = 1
mul = (time-60)*42,0,0;(time-60)*42,(time-60)*42
ignorehitpause=1
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelemtime(11)>=0&&animelemtime(12)<5
time = 1
mul = 256-(time-70)*42,0,0;,256-(time-70)*42,256-(time-70)*42
ignorehitpause=1

[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelemtime(13)>=0&&animelemtime(16)<0
time = 1
mul = (time-93)*42,0,0;(time-95)*42,(time-95)*42
ignorehitpause=1
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelemtime(20)>=0&&animelemtime(22)<3
time = 1
mul = 256-(time-107)*42,0,0;256-(time-109)*42,256-(time-109)*42
ignorehitpause=1

[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelemtime(5)>=0&&animelemtime(6)<0
trigger2 = animelemtime(10)>=0&&animelemtime(11)<0
trigger3 = animelemtime(16)>=0&&animelemtime(20)<0
time = 1
mul = 256,0,0

[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(2)>=0&&animelemtime(5)<0
time = 1
mul = (time-24)*42,0,0;(time-24)*42,(time-24)*42
ignorehitpause=1
invertall = 1
[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(6)>=0&&animelemtime(7)<5
time = 1
mul = 256-(time-33)*42,0,0;256-(time-33)*42,256-(time-33)*42
ignorehitpause=1
invertall = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(8)>=0&&animelemtime(10)<0
time = 1
mul = (time-60)*42,0,0;(time-60)*42,(time-60)*42
ignorehitpause=1
invertall = 1
[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(11)>=0&&animelemtime(12)<5
time = 1
mul = 256-(time-70)*42,0,0;,256-(time-70)*42,256-(time-70)*42
ignorehitpause=1
invertall = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(13)>=0&&animelemtime(16)<0
time = 1
mul = (time-93)*42,0,0;(time-95)*42,(time-95)*42
ignorehitpause=1
invertall = 1
[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(20)>=0&&animelemtime(22)<3
time = 1
mul = 256-(time-107)*42,0,0;256-(time-109)*42,256-(time-109)*42
ignorehitpause=1
invertall = 1

[State 0, AllPalFX]
type = BGPalFX
trigger1 = animelemtime(5)>=0&&animelemtime(6)<0
trigger2 = animelemtime(10)>=0&&animelemtime(11)<0
trigger3 = animelemtime(16)>=0&&animelemtime(20)<0
time = 1
mul = 256,0,0
invertall = 1

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 &&animelemtime(23)<0
pos = 75,0
time = 1
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 23
value = S4,10
volume = 255
channel = 0

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 23
value = 3521

[State 3120, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 23
value = -1
kill = 1

[State 0, ChangeState]
type = ChangeState
trigger1= !AnimTime
value = 0
ctrl = 1
;===========================.------------------------------------------.=============================
[Statedef 3520]
type = S
movetype = H
physics = S

[State 3230, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = !Time
time = 0
ignorehitpause =1

[State 3330, ChangeAnim]
type= ChangeAnim2
trigger1 = Time =1
value = 3520

[State 3230, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;===========================.------------------------------------------.=============================
[Statedef 3521]
type = S
movetype = H
physics = S

[State 3230, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 3330, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
value = 3521

[State 3230, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 0, SelfState]
type = SelfState
trigger1 = !Alive
value = 5150

[State 0, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 5120
