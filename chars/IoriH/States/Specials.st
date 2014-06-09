; _____________
;| Iori by Hero |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯
;=============================================================================================
;=====================================<SPECIAL STATES>========================================
;=============================================================================================

;=========<Yami Barai>==========
[Statedef 1000]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
poweradd=72*(!var(15))
sprpriority=1
facep2=1
anim = 1000

[State 0, PalFX]
type = PalFX
triggerall = !Time
trigger1 = PrevStateNo = [200,499]
time = 4
add = 512,512,512
mul = 300,300,300
ignorehitpause = 1

[State 1000, strengthvar]
type=varset
trigger1= !time && AILevel<1
var(10)=ifelse(command="YamiBarai1",1,ifelse(command="YamiBarai2",2,3))

[State 1000, strengthvarAI]
type=varset
trigger1= !time && AILevel
var(10)= ifelse((p2movetype=H || random<500), 3, ifelse(random<500, 2, 1))

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1000+(1*var(10)=3)

[State 1000, width]
type=width
trigger1= animelemtime(6)=-1
value=30,0

[State 1000, KachouSen]
type=helper
trigger1= animelem=4
helpertype=normal
stateno=6100
ID=6100
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
value=3,4
channel=0

[State 1000, Snd]
type=playsnd
trigger1= animelem=4
value=6,4

[State 1000, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=========<Oniyaki>==========
[Statedef 1100]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
poweradd=72*(!var(15))
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)

[State 0, PalFX]
type = PalFX
triggerall = !Time
trigger1 = PrevStateNo = [200,499]
time = 4
add = 512,512,512
mul = 300,300,300
ignorehitpause = 1

[State 1000, strengthvar]
type=varset
trigger1= !time && AILevel<1
var(10)=ifelse(command="Oniyaki1",1,ifelse(command="Oniyaki2",2,3))

[State 1000, strengthvarAI]
type=varset
trigger1= !time && AILevel
var(10)= ifelse((p2movetype=H || random<500), 3, ifelse(random<500, 2, 1))

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1090+(10*var(10))

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3,5
volume = 255
channel = 0

[State 1100, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,4]
value = SCA
ignorehitpause = 1

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 1
StateType = A
physics = N

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
y = IfElse(var(10)=1,-5,IfElse(var(10)=2,-7,-9))

[State 1100, VelAdd]
type = Veladd
trigger1 = AnimElemTime(4) >= 2
y = .5

[State 1100, PosAdd]
type = PosAdd
trigger1 = Animelem=2
x = 16
[State 1100, PosAdd]
type = PosAdd
trigger1 =animelem=4
x = 32

[State 52, Dust]
type = Explod
trigger1 = animelem=4
anim = 7500
ID = 7500
sprpriority = -3
postype = p1
scale = .5*const(size.xscale),.5*const(size.yscale)
pos = 0,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 52, Dust]
type = Explod
trigger1 = animelemtime(4) = 3
trigger2 = animelemtime(4) = 6
trigger3 = animelemtime(4) = 9
anim = 7510
ID = 7510
sprpriority = -2
postype = p1
scale = .5*const(size.xscale),.5*const(size.yscale)
vel = 0,-.3
pos = 0,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Front Flames"
ID = 6120
stateno = 6120
pos = 3,10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Bottom Flames"
ID = 6125
stateno = 6125
pos = 3,10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1120, Helper]
type = Helper
trigger1= movehit&& numtarget &&!numhelper(6180)
trigger1= !(target,time) && target,movetype=H
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

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)) && prevstateno!=940
trigger1 = AnimElem = 2||Animelem=3
attr = S,SA
damage = IfElse(var(10)=1,88,IfElse(var(10)=2,54,68)),8
animtype = Light
air.animtype = Hard
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(12*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 41), var(23):= -57
sparkxy = -16+ 0 * (var(22) := 41),-48+ 0 * (var(23):= -57)
hitsound = s2,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2*fvar(6),IfElse(var(10)=1,-9.1,0)
guard.velocity = -11.17
air.type = Low
air.hittime = 18
air.velocity = -2,-10.8
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
envshake.time=14
envshake.freq=120
envshake.ampl=4
fall=var(10)=1
fall.recover = 0
air.fall=1
air.fall.recover=0
palfx.time = 50
palfx.color = 32
palfx.mul = var(40),var(41),var(42)
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent=0

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)) && prevstateno!=940
trigger1 = AnimElem = 4&&var(10)=3||(animelem=4||animelem=5)&&var(10)=2||(animelem=4||animelem=5)&&var(10)=1&&!MoveContact
attr = S,SA
damage = IfElse(var(10)=1,88,IfElse(var(10)=2,54,30)),8
animtype = Hard
air.animtype = Hard
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(12*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 38), var(23):= -88
sparkxy = -19+ 0 *(var(22) := 38) ,-70+ 0 * (var(23):= -88)
hitsound = s2,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2*fvar(6),IfElse(var(10)=3,-10.9,-9.1)
air.type = Low
air.hittime = 18
air.velocity = -2,IfElse(var(10)=3,-9.5,-8.1)
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
fall=1
fall.recover = 0
air.fall=1
air.fall.recover=0
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
envshake.time=14
envshake.freq=120
envshake.ampl=4
fall.recover = 0
palfx.time = 50
palfx.color = 32
palfx.mul = var(40),var(41),var(42)
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent=0

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)) && prevstateno!=940
trigger1 = (AnimElem = 5||Animelem=6)&&var(10)=3
attr = S,SA
damage = 19,8
animtype = Hard
air.animtype = Hard
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(12*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 32), var(23):= -87
sparkxy = -19+ 0 * (var(22) := 32),-75+ 0 * (var(23):= -87)
hitsound = s2,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2*fvar(6),-9.1
air.type = Low
air.hittime = 18
air.velocity = -2,-9.1
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
fall=1
fall.recover = 0
air.fall=1
air.fall.recover=0
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall.recover = 0
envshake.time=14
envshake.freq=120
envshake.ampl=4
palfx.time = 54
palfx.color = 32
palfx.mul = var(40),var(41),var(42)
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent=0

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)) && prevstateno=940
trigger1 = !Time
attr = S,SA
damage = 24,2
animtype = DiagUp
air.animtype = DiagUp
fall.animtype = DiagUp
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(12*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 32), var(23):= -87
sparkxy = -19+ 0 * (var(22) := 32),-75+ 0 * (var(23):= -87)
hitsound = s2,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -8,-10.1
air.type = Low
air.hittime = 18
air.velocity = -8,-9.1
getpower= 0,0
givepower = 36,36
kill=0
yaccel = .5
fall=1
fall.recover = 0
air.fall=1
air.fall.recover=0
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall.recover = 0
envshake.time=14
envshake.freq=120
envshake.ampl=4
palfx.time = 54
palfx.color = 32
palfx.mul = var(40),var(41),var(42)
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent=0

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemtime(7)>= 0
movetype = I

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 52
;=========<Aoi Hana 1º hit>==========
[StateDef 1200]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
poweradd=72*(!var(15))
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)

[State 0, PalFX]
type = PalFX
triggerall = !Time
trigger1 = PrevStateNo = [200,499]
time = 4
add = 512,512,512
mul = 300,300,300
ignorehitpause = 1

[State 1000, strengthvar]
type=varset
trigger1= !time && AILevel<1
var(10)=ifelse(command="AoiHana1",1,ifelse(command="AoiHana2",2,3))

[State 1000, strengthvarAI]
type=varset
trigger1= !time && AILevel
var(10)= ifelse((p2movetype=H || random<500), 3, ifelse(random<500, 2, 1))

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1199+var(10)

[State -2, Accel]
type = VelSet
trigger1 = time > 0 && animelemtime(2) < 0 && var(10)=1
x = (5.53125*exp((-0.0814)*(time-1)))

[State -2, Accel]
type = VelSet
trigger1 = time > 0 && animelemtime(2) < 0 && var(10)=2
x = (6.4531*exp((-0.0814)*(time-1)))

[State -2, Accel]
type = VelSet
trigger1 = time > 0 && animelemtime(2) < 0 && var(10)=3
x = (7.375*exp((-0.0814)*(time-1)))

[State -2, Vel]
type = VelSet
trigger1 = animelem = 2 && var(10)=1
x = 18.33

[State -2, Vel]
type = VelSet
trigger1 = animelem = 2 && var(10)=2
x = 18.425

[State -2, Vel]
type = VelSet
trigger1 = animelem = 2 && var(10)=3
x = 18.52

[State -2, Vel]
type = VelSet
trigger1 = animelemtime(2) >= 1 && animelemtime(3) < 1 && var(10)=1
x = (3.9949493408203125*exp((-0.0814)*(time-7)))

[State -2, Vel]
type = VelSet
trigger1 = animelemtime(2) >= 1 && animelemtime(3) < 1 && var(10)=2
x = (4.084068*exp((-0.0814)*(time-7)))

[State -2, Vel]
type = VelSet
trigger1 = animelemtime(2) >= 1 && animelemtime(3) < 1 && var(10)=3
x = (4.173187255859375*exp((-0.0814)*(time-8)))

[State -2, Vel]
type = VelSet
trigger1 = animelem = 4
x = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3,0
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1,3
volume = 255
channel = 1

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,SA
damage = 20,3
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(12*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 59), var(23):= -95
sparkxy = -19+ 0 * (var(22) := 59),-95+ 0 * (var(23):= -95)
hitsound = s2,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 17
ground.hittime = 25
ground.velocity = -11.1796875*fvar(6)
guard.velocity = -11.17
guard.ctrltime = 24
guard.hittime = 17
guard.slidetime = 17
air.type = High
air.hittime = 13
air.velocity = -4.6,-6.5
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall=0
fall.recover = 0
air.fall=1
air.fall.recover=0
envshake.time=14
envshake.freq=120
envshake.ampl=4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent=0

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(12)=0

[State 1000, ChangeState]
type = VarSet
trigger1 = Command = "AoiHana1" || Command = "AoiHana2" || Command = "AoiHana3" ||Command = "KototsukiIn1" || Command = "KototsukiIn2" || Command = "KototsukiIn3"
trigger1 = AnimElemTime(2)>=0
var(12)=ifelse(command="AoiHana1",1,ifelse(command="AoiHana2",2,IfElse(command="AoiHana3",3,4)))
ignorehitpause=1

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(5)>=1 && var(12)>0
triggerall = AILevel<1
value = IfElse(var(12)=4,1300,1210)

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElem = 5 && MoveContact
triggerall = AILevel
value = IfElse(random>500,1300,1210)

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemtime(6)>= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Aoi Hana 2º hit>==========
[StateDef 1210]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1209+var(12)

[State -2, Accel]
type = VelSet
trigger1 = time > 0 && animelemtime(4) < 0 && var(12)=1
x = (7.53125*exp((-0.0814)*(time-1)))

[State -2, Accel]
type = VelSet
trigger1 = time > 0 && animelemtime(4) < 0 && var(12)=2
x = (8.4531*exp((-0.0814)*(time-1)))

[State -2, Accel]
type = VelSet
trigger1 = time > 0 && animelemtime(4) < 0 && var(12)=3
x = (9.375*exp((-0.0814)*(time-1)))

[State -2, Accel]
type = VelSet
trigger1 = animelem = 4
x = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3,1
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1,3
volume = 255
channel = 1

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,SA
damage = 29,3
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(12*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 50), var(23):= -96
sparkxy = -19+ 0 *(var(22) := 50) ,-96+ 0 *(var(23):= -96 )
hitsound = s2,3
guardsound = s2,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -2.6*fvar(6),-7.5
guard.velocity = -11.17
guard.ctrltime = 24
guard.hittime = 17
guard.slidetime = 17
air.type = High
air.hittime = 13
air.velocity = -4.6,-6.5
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall=1
fall.recover = 0
air.fall=1
air.fall.recover=0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
envshake.time=14
envshake.freq=120
envshake.ampl=4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent=0

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(10)=0

[State 1000, ChangeState]
type = VarSet
trigger1 = Command = "AoiHana1" || Command = "AoiHana2" || Command = "AoiHana3"
trigger1 = AnimElemTime(2)>=0
var(10)=ifelse(command="AoiHana1",1,ifelse(command="AoiHana2",2,3))
ignorehitpause=1

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(5)>=1 && var(10)>0
triggerall = AILevel<1
value = 1220

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElem = 5 &&Movecontact
triggerall = AILevel
value = 1220

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemtime(6)>= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Aoi Hana 3º hit>==========
[StateDef 1220]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1219+var(10)

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3,3
volume = 255
channel = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
physics = N

[State 1101, VelSet]
type = VelSet
trigger1 = AnimElem = 3
y = IfElse(var(10)=1,-4,IfElse(var(10)=2,-4.7,-5.3))                ;14
x = 5.5

[State 1101, pos]
type = Veladd
trigger1 = AnimElemTime(3)>0
y = .625

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
attr = S,SA
damage = 78,8
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(12*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 54), var(23):= -70
sparkxy = -18+ 0 * (var(22) := 54),-70+ 0 * (var(23):= -70)
hitsound = s2,3
guardsound = s2,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -11.1796875*fvar(6)
guard.velocity = -7.17
guard.ctrltime = 24
guard.hittime = 17
guard.slidetime = 17
air.type = High
air.hittime = 13
air.velocity = -6,9
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall=1
fall.recover = 0
air.fall=1
air.fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-5
fall.envshake.freq=120
envshake.time=14
envshake.freq=120
envshake.ampl=4
persistent = 0

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = time>19
movetype = I

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 1290
;=========<Aoi Hana 2º hit>==========
[Statedef 1290]
type = S
physics = S
movetype= I
ctrl = 0
anim = 1290
velset = 0,0

[State 1290, PosSet]
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

[State 1290, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Kototsuki In Start>==========
[Statedef 1300]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
poweradd=72*(!var(15))
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)
anim = 1300

[State 0, PalFX]
type = PalFX
triggerall = !Time
trigger1 = PrevStateNo = [200,499]
time = 4
add = 512,512,512
mul = 300,300,300
ignorehitpause = 1

[State 1000, strengthvar]
type=varset
trigger1= !time && AILevel<1
var(10)=ifelse(command="KototsukiIn1",1,ifelse(command="KototsukiIn2",2,3))

[State 1000, strengthvarAI]
type=varset
trigger1= !time && AILevel
var(10)= ifelse((p2movetype=H || random<500), 3, ifelse(random<500, 2, 1))

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = S0,100
volume = 255

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3,6
volume = 255
channel = 0

[State 1400, VelSet]
type = VelSet
trigger1 = !Time
x = 8.5

[State 1300, ChangeState]
type = Changestate
trigger1 = P2BodyDist x <= 55
value = 1310

[State 1300, ChangeState]
type = Changestate
trigger1 = var(10)=1 && Time = 16
trigger2 = var(10)=2 && Time = 20
trigger3 = var(10)=3 && Time = 21
value = 1301
ctrl = 0
;=========<Kototsuki In End>==========
[Statedef 1301]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 1301

[State -2, Accel]
type = VelSet
trigger1 = !time
x = 15.7603302001953125

[State -2, Vel]
type = VelSet
trigger1 = time > 0
x = (6.2014617919921875*exp((-0.1576)*(time-1)))

[State 1310, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Kototsuki In near to P2>==========
[Statedef 1310]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=2
anim = 1310

[State -2, Accel]
type = VelSet
trigger1 = time < 2
x = (7.96875*exp((-0.0645)*(time)))

[State -2, Vel]
type = VelSet
trigger1 = time = 2
x = 19.0037841796875

[State -2, Vel]
type = VelSet
trigger1 = time > 2
x = (6.5660552978515625*exp((-0.0645)*(time-3)))

[State 1320, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,3
volume = 255
channel = 1

[State 1320, Hitdef]
type = HitDef
trigger1 = !Time
attr = S, SA
damage = 29,0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 1,1
sparkno = S8010 + (random%7)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 55), var(23):= -62
sparkxy = -10+ 0 * (var(22) := 55),-62+ 0 * (var(23):= -62)
hitsound = s2,3
guardsound = S2,0
ground.type = low
guard.pausetime = 5,10
ground.slidetime = 17
ground.hittime = 17
guard.hittime = 17
guard.slidetime = 17
guard.ctrltime = 24
ground.velocity = 0
guard.velocity = -11.1796875
air.type = High
air.velocity = -4,-7.77564102564102564102564102563869
air.hittime = 13
p1stateno = 1330
kill = 0

[State 1320, ChangeState]
type = ChangeState
trigger1 = AnimElem = 5 && MoveContact
value = 1320
ctrl = 0

[State 1320, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Kototsuki In second attemp>==========
[Statedef 1320]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=2
anim = 1320

[State 1330, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1,3
volume = 255
channel = 1

[State 1330, Hitdef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 0,0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 1,1
sparkno = S8010 + (random%7)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 73), var(23):= -86
sparkxy = -19+ 0 * (var(22) := 73), -86+ 0 * (var(23):= -86)
hitsound = s2,3
guardsound = S2,0
numhits = 1
ground.type = low
guard.pausetime = 5,10
ground.slidetime = 17
ground.hittime = 17
guard.hittime = 17
guard.slidetime = 17
guard.ctrltime = 24
ground.velocity = 0
guard.velocity = -6.1796875
air.type = High
air.velocity = -4,-7.77564102564102564102564102563869
air.hittime = 13
p1stateno = 1340
kill = 0

[State 1330, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Kototsuki In 1º hit connected>==========
[Statedef 1330]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 1330

[State 1340, TargetState]
type = TargetState
trigger1 = !Time
value = 1350

[State 1340, TargetState]
type = TargetState
trigger1 = AnimElem = 4
value = 1360

[State 1340, TargetState]
type = TargetState
trigger1 = AnimElemTime(7)= 3
value = 1370

[State 1340, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 && animelemtime(2)<0
pos =  75,-97
time = 1

[State 1340, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(2)>=0 && animelemtime(3)<0
pos = 74,-97
time = 1

[State 1340, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(3)>=0 && animelemtime(4)<0
pos = 77,-55
time = 1

[State 1340, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(4)>=0 && animelemtime(7)<3
pos = 71,-2
time = 1

[State 1330, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 7520
ID = 7520
pos = 70,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = -1

[State 1340, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 6130
ID = 6130
pos = 95,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 6

[State 1340, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 6130
ID = 6131
pos = 50,-21
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 6

[State 1340, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S3,7
volume = 255
channel = 0

[State 1340, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
value = S5,0
volume = 255

[State 1120, Helper]
type = Helper
trigger1= !numhelper(6180) && animelem = 7
helpertype = normal
name = "P2 Body Flames"
ID = 6181
stateno = 6181
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 1340, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 15
freq = 60
ampl = -6
phase = 90

[State 1340, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S1,3
volume = 255
channel = 1

[State 1340, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(7) = 3
value = 1

[State 1340, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(7) = 3
value = ceil(-97*fvar(1))
absolute = 1
kill = 1

[State 1340, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Kototsuki In 2º hit connected>==========
[Statedef 1340]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 1340

[State 1340, TargetState]
type = TargetState
trigger1 = !Time
value = 1360

[State 1340, TargetState]
type = TargetState
trigger1 = AnimElemTime(4)= 3
value = 1370

[State 1340, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 && animelemtime(4)<3
pos = 71,-2
time = 1

[State 1330, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 7520
ID = 7520
pos = 70,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = -1

[State 1340, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 6130
ID = 6130
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 6

[State 1340, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 6130
ID = 6131
pos = 20,-21
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 6

[State 1340, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S3,7
volume = 255
channel = 0

[State 1340, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
value = S5,0
volume = 255
channel = 1

[State 1120, Helper]
type = Helper
trigger1= !numhelper(6180) && animelem = 4
helpertype = normal
name = "P2 Body Flames"
ID = 6181
stateno = 6181
pos = 0,-57
postype = p2
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 1340, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
time = 15
freq = 60
ampl = -6
phase = 90

[State 1340, HitAdd]
type = HitAdd
trigger1 = AnimElemTime(4) = 3
value = 1

[State 1340, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 3
value = ceil(-97*fvar(1))
absolute = 1
kill = 1

[State 1340, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Kototsuki In - P2 State>==========
[Statedef 1350]
type = S
movetype = H
physics = N

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 1360, Turn]
type = Turn
trigger1 = !Time && facing = enemy, facing

[State 1360, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1360, SprPriority]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 1360, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim !=1350
value = 1350

[State 1360, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;=========<Kototsuki In - P2 State>==========
[Statedef 1360]
type = S
movetype = H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 1370, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1370, SprPriority]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 1370, ChangeAnim]
type= ChangeAnim2
trigger1 = Time = 0
triggerall = anim !=1360
value = 1360

[State 1370, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;=========<Kototsuki In - P2 State>==========
[Statedef 1365]
type = S
movetype = H
physics = N

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 11375, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime (2) < 0
value = SCA
time = 1

[State 1375, SprPriority]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 1375, ChangeAnim]
type= ChangeAnim2
trigger1 = Time = 0
triggerall = anim !=1360
value = 1360

[State 1375, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;=========<Kototsuki In - P2 State>==========
[Statedef 1370]
type = A
movetype = H
physics = N

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1

[State 1380, PosAdd]
type = PosAdd
trigger1 = !Time
y = -5

[State 1380, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 1380, ChangeAnim]
type= ChangeAnim2
trigger1 = !Time
triggerall = anim !=1370
value = 1370

[State 1380, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 1380, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -6.1
y = -7.8

[State 1380, VelAdd]
type = VelAdd
trigger1 = AnimElemTime (1) > 0
y = .5

[State 3020, PalFX]
type = PalFX
trigger1 = AnimElemTime (1) > 0
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

[State 1380, SelfState]
type = SelfState
trigger1= vel y > 0
trigger1= pos y > -vel y && AnimElemTime (1) > 0
value = 5100
;=========<Tsumagushi>==========
[Statedef 1400]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
poweradd=72*(!var(15))
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(12)=1

[State 0, PalFX]
type = PalFX
triggerall = !Time
trigger1 = PrevStateNo = [200,499]
time = 4
add = 512,512,512
mul = 300,300,300
ignorehitpause = 1

[State 1000, strengthvar]
type=varset
trigger1= !time && AILevel<1
var(10)=ifelse(command="Tsumagushi1",1,ifelse(command="Tsumagushi2",2,3))

[State 1000, strengthvarAI]
type=varset
trigger1= !time && AILevel
var(10)= ifelse((p2movetype=H || random<500), 3, ifelse(random<500, 2, 1))

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1399+(1*var(10))

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem =2||animelem=3||animelem=4||animelem=5
x = 12

[State 1000, End]
type=changestate
trigger1= !animtime
value=1410
;=========<Tsumagushi>==========
[Statedef 1410]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1410

[State 0, VarSet]
type = VarSet
trigger1 = PrevStateNo=1410
var(12)=0
ignorehitpause = 1
[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)=1
attr = S,NP,SP
slot = 7
stateno = 1410
time = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = PrevStateNo=1400&&!Time
x = 4+var(10)*.4
y = -2.5-var(10)*.7

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 1000, End]
type=changestate
trigger1= !animtime
value=1420
;=========<Tsumagushi>==========
[Statedef 1420]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1420

[State 0, VarSet]
type = VarSet
trigger1 = PrevStateNo=1420
var(12)=0
ignorehitpause = 1
[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)=1
attr = S,NP,SP
slot = 7
stateno = 1420
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 1000, End]
type=changestate
trigger1= !animtime
value=1430
;=========<Tsumagushi>==========
[Statedef 1430]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1430

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
stateno = 1430
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.5

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 1440
;=========<Tsumagushi>==========
[Statedef 1440]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 1439+var(10)

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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3,2
volume = 255
channel = 0

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

[State 1120, Helper]
type = Helper
trigger1= movehit&& numtarget &&!numhelper(6180)
trigger1= !(target,time) && target,movetype=H
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

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,SA
damage = IfElse(var(10)=1,69,IfElse(var(10)=2,89,111)),8
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(15*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 75), var(23):= -64
sparkxy = -16+ 0 *(var(22) := 75) ,-64+ 0 * (var(23):= -64)
hitsound = s2,3
guardsound = s2,0
ground.type = Low
guard.pausetime = 12,11
ground.slidetime = 17
ground.hittime = 17
guard.hittime = 17
guard.slidetime = 17
guard.ctrltime = 28
ground.velocity = -11.1796875
air.type = High
air.velocity = -4.6,-6.5
air.hittime = 13
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
fall=0
air.fall=1
air.fall.recover=0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
envshake.time=14
envshake.freq=120
envshake.ampl=4
palfx.time = 17
palfx.color = 32
palfx.mul = var(40),var(41),var(42)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent=0

[State 1000, End]
type=changestate
trigger1= !animtime
value=0
ctrl = 1
;=========<Kuzu Kaze>==========
[Statedef 1500]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
poweradd=72*(!var(15))
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)
anim = 1500

[State 0, PalFX]
type = PalFX
triggerall = !Time
trigger1 = PrevStateNo = [200,499]
time = 4
add = 512,512,512
mul = 300,300,300
ignorehitpause = 1

[State 800, Hitdef]
type = HitDef
trigger1 = !Time
trigger1= !var(4)
attr = S, ST
damage = 0,0
animtype = Heavy
guardflag =
hitflag = MAF
priority = 3,Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = s0,800
guardsound = S2,0
numhits = 0
ground.type = low
ground.slidetime = 1
ground.hittime = 1
ground.velocity = 0
air.velocity = 0
p1stateno = 1510
p1facing = 1
kill = 0
ID=800

[State 1000, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=========<KUZU KAZE CONNECTION>==========
[Statedef 1510]
type = S
movetype = A
physics = S
anim = 1510
ctrl = 0
velset = 0,0
sprpriority=1

[State 810, TargetState]
type = TargetState
trigger1 = !Time
value = 1520

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimelemTime(1)=1
time = 1
pos = 20,0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = S3,8
volume = 255
channel = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = S1,3
volume = 255

[State 0, Turn]
type = Turn
trigger1 = AnimElemTime(18)>1

[State 810, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Scorpion Deathlock P2 State>==========
[Statedef 1520]
type = S
movetype = H
physics = S

[State 0, Turn]
type = Turn
trigger1 = !Time && facing = enemynear, facing
ignorehitpause = 1

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause=1

[State 820, SprPriority]
type = SprPriority
trigger1 = !Time
value = 0
ignorehitpause=1
[State 820, SprPriority]
type = SprPriority
trigger1 = Time=30
value = 2
ignorehitpause=1

[State 820, ChangeAnim]
type= ChangeAnim2
trigger1 = Anim !=1520
value = 1520
ignorehitpause=1

[State 820, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 1401, Turn]
type = Turn
trigger1 = AnimElem = 7

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = -32

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
x = 8

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
x = 4

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = -4

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = -8

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = -12

[State 1402, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
x = -11.921875

[State 1402, VelMul]
type = VelMul
trigger1 = AnimElemTime(8) > 0
x = 0.8515625

[State 0, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1
