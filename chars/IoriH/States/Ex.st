; _____________
;| Iori by Hero |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯
;=============================================================================================
;=====================================<EX-SPECIAL STATES>========================================
;=============================================================================================

;=========<Ex Yami Barai>==========
[Statedef 11000]
type=S
physics=S
movetype=A
anim=1001
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1
facep2=1

[State 3000, Charge]
type=helper
trigger1=!Time
helpertype=normal
stateno=7660
ID=7660
name="Fx"
postype=p1
pos = -20,-95
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

[State 1000, width]
type=width
trigger1= animelemtime(6)=-1
value=30,0

[State 1000, Yami Barai]
type=helper
trigger1= animelem=4
helpertype=normal
stateno=16100
ID=16100
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
;=========<Ex Oniyaki>==========
[Statedef 11100]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)
anim=11100

[State 3000, Charge]
type=helper
trigger1=!Time
helpertype=normal
stateno=7660
ID=7660
name="Fx"
postype=p1
pos = 13,-37
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

[State 1000, width]
type=width
trigger1= animelemtime(6)=-1
value=30,0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3,5
volume = 255
channel = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S6,0
volume = 255
channel = 1

[State 1100, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,8]
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
y = -9

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 1
y = -7

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
trigger1=AnimElem = 4
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
trigger1=AnimElem = 4
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

[State 1100, Helper]
type = Helper
trigger1=AnimElem = 8
helpertype = normal
name = "Front Flames"
ID = 6120
stateno = 6120
pos = 10,-10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1100, Helper]
type = Helper
trigger1=AnimElem = 8
helpertype = normal
name = "Bottom Flames"
ID = 6125
stateno = 6125
pos = 10,-10
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
trigger1 = AnimElem = 2||Animelem=3
attr = S,SA
damage = 68,6
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(9*fvar(6)),floor(9*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 41), var(23):= -57
sparkxy = -16+ 0 * (var(22) := 41),-48+ 0 * (var(23):= -57)
hitsound = s2,9
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2*fvar(6),0
guard.velocity = -11.17
air.type = Low
air.hittime = 18
air.velocity = -2,-10.8
getpower= 0,0
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall=0
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
palfx.time = 50
palfx.color = 32
palfx.mul = var(40),var(41),var(42)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
persistent=0

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = AnimElem = 4
attr = S,SA
damage = 30,6
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(9*fvar(6)),floor(9*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 38), var(23):= -88
sparkxy = -19+ 0 *(var(22) := 38) ,-70+ 0 * (var(23):= -88)
hitsound = s2,9
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 0*fvar(6),-10.8
air.type = Low
air.hittime = 18
air.velocity = 0,-10.7
getpower= 0,0
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
palfx.time = 56
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
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = (AnimElem = 5||Animelem=6)
attr = S,SA
damage = 19,6
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(9*fvar(6)),floor(9*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 32), var(23):= -87
sparkxy = -19+ 0 * (var(22) := 32),-75+ 0 * (var(23):= -87)
hitsound = s2,9
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = .5*fvar(6),-10.8
air.type = Low
air.hittime = 18
air.velocity = .5,-10.7
getpower= 0,0
givepower = 36,36
yaccel = .5
envshake.time=14
envshake.freq=120
envshake.ampl=4
fall=1
fall.recover = 0
air.fall=1
air.fall.recover=0
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall.recover = 0
palfx.time = 64
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
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = (AnimElem = 9||Animelem=10||Animelem=11)
attr = S,SA
damage = 39,6
animtype = DiagUp
air.animtype = DiagUp
fall.animtype = DiagUp
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(9*fvar(6)),floor(9*fvar(6))
sparkno = S8010+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 32), var(23):= -87
sparkxy = -19+ 0 * (var(22) := 32),-75+ 0 * (var(23):= -87)
hitsound = s2,9
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2*fvar(6),-10.8
air.type = Low
air.hittime = 18
air.velocity = -2,-7.2
getpower= 0,0
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
palfx.time = 56
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
trigger1 = AnimElemtime(12)>= 0
movetype = I

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 52
;=========<EXAoi Hana 1º hit>==========
[StateDef 11200]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)
anim = 1202

[State 3000, Charge]
type=helper
trigger1=!Time
helpertype=normal
stateno=7660
ID=7660
name="Fx"
postype=p1
pos = 36,-55
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

[State -2, Accel]
type = VelSet
trigger1 = time > 0 && animelemtime(2) < 0
x = (7.375*exp((-0.0814)*(time-1)))

[State -2, Vel]
type = VelSet
trigger1 = animelem = 2
x = 18.52

[State -2, Vel]
type = VelSet
trigger1 = animelemtime(2) >= 1 && animelemtime(3) < 1
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
damage = 30,4
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
getpower= 0,0
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
trigger1 = Command = "ExAoiHana" || command = "ExKototsukiIn"
trigger1 = AnimElemTime(2)>=0
var(12)=IfElse(Command = "ExAoiHana",1,2)
ignorehitpause=1

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(5)>=1 && var(12)>0
triggerall = AILevel<1
value = IfElse(var(12)=1,11210,11300)

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElem = 5 && MoveHit
triggerall = AILevel
value = 11300

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElem = 5 && MoveContact
triggerall = AILevel
value = 11210

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemtime(6)>= 0
movetype = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<EX Aoi Hana 2º hit>==========
[StateDef 11210]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 1212

[State -2, Accel]
type = VelSet
trigger1 = time > 0 && animelemtime(4) < 0
x = (8.375*exp((-0.0814)*(time-1)))

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
damage = 39,4
animtype = DiagUp
air.animtype = DiagUp
fall.animtype = DiagUp
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
getpower= 0,0
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
trigger1 = Command = "ExAoiHana"
trigger1 = AnimElemTime(2)>=0
var(10)=1
ignorehitpause=1

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(5)>=1 && var(10)>0
triggerall = AILevel<1
value = 11220

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElem = 5 &&Movecontact
triggerall = AILevel
value = 11220

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
[StateDef 11220]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 1222

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
animtype = DiagUp
air.animtype = DiagUp
fall.animtype = DiagUp
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
ground.velocity = -11.1796875*fvar(6),25
guard.velocity = -7.17
guard.ctrltime = 24
guard.hittime = 17
guard.slidetime = 17
air.type = High
air.hittime = 13
air.velocity = -1,25
getpower= 0,0
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
fall.envshake.ampl=-7
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
value = 11230
;=========<Aoi Hana 2º hit>==========
[Statedef 11230]
type = S
physics = S
movetype= A
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

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(12)=0

[State 1000, ChangeState]
type = VarSet
trigger1 = Command = "ExAoiHana"
trigger1 = AnimElemTime(1)>=0
var(12)=1
ignorehitpause=1

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(2)>=0 && var(12)>0
triggerall = AILevel<1
value = 11240

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElem = 2 && MoveContact
triggerall = AILevel
value = 11240

[State 1290, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<EX Aoi Hana 2º hit>==========
[StateDef 11240]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 11200

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S3,8
volume = 255
channel = 0

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,SA
damage = 25,5
animtype = DiagUp
air.animtype = DiagUp
fall.animtype = DiagUp
guardflag = MA
hitflag = MAFD
priority= 4,Hit
pausetime = floor(24*fvar(6)),floor(24*fvar(6))
sparkno = S8020+(random%8)
guard.sparkno = s9741 + 0 * (var(34) := 8061)
guard.sparkxy = (var(22) := 50), var(23):= -96
sparkxy = -19+ 0 *(var(22) := 50) ,-96+ 0 *(var(23):= -96 )
hitsound = s2,12
guardsound = s2,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -2.6*fvar(6),-8.5
guard.velocity = -11.17
guard.ctrltime = 25
guard.hittime = 25
guard.slidetime = 17
air.type = High
air.hittime = 13
air.velocity = -4.6,-6.5
getpower= 0,0
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

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Ex Kototsuki In Start>==========
[Statedef 11300]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)
anim = 1300

[State 3000, Charge]
type=helper
trigger1=!Time
helpertype=normal
stateno=7660
ID=7660
name="Fx"
postype=p1
pos = 11,-66
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

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
value = 11310

[State 1300, ChangeState]
type = Changestate
trigger1 = Time = 25
value = 1301
ctrl = 0
;=========<Ex Kototsuki In near to P2>==========
[Statedef 11310]
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
p1stateno = 11330
kill = 0

[State 1320, ChangeState]
type = ChangeState
trigger1 = AnimElem = 5 && MoveContact
value = 11320
ctrl = 0

[State 1320, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Ex Kototsuki In second attemp>==========
[Statedef 11320]
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
trigger1 = !Time
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
p1stateno = 11340
kill = 0

[State 1330, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Ex Kototsuki In 1º hit connected>==========
[Statedef 11330]
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
value = ceil(-117*fvar(1))
absolute = 1
kill = 1

[State 1340, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Ex Kototsuki In 2º hit connected>==========
[Statedef 11340]
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
value = ceil(-117*fvar(1))
absolute = 1
kill = 1

[State 1340, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Tsumagushi>==========
[Statedef 11400]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1
facep2=1
juggle = ifelse((p2movetype=H && p2statetype=A),7,9)

[State 3000, Charge]
type=helper
trigger1=!Time
helpertype=normal
stateno=7660
ID=7660
name="Fx"
postype=p1
pos = 26,-43
ownpal=1
persistent=0
supermovetime=9999
ignorehitpause = 1
size.xscale =1
size.yscale =1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(12)=3

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1400

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem =2||animelem=3||animelem=4||animelem=5
x = 12

[State 1000, End]
type=changestate
trigger1= !animtime
value=11410
;=========<Tsumagushi>==========
[Statedef 11410]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1410

[State 0, VarSet]
type = VarAdd
trigger1 = PrevStateNo=11410
var(12)=-1
ignorehitpause = 1
[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)!=0
attr = S,NP,SP
slot = 7
stateno = 11410
time = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = PrevStateNo=11400&&!Time
x = 14.2
y = -6.2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.8

[State 1000, End]
type=changestate
trigger1= !animtime
value=11420
;=========<Tsumagushi>==========
[Statedef 11420]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1420

[State 0, VarSet]
type = VarAdd
trigger1 = PrevStateNo=11420
var(12)=-1
ignorehitpause = 1
[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)!=0
attr = S,NP,SP
slot = 7
stateno = 11420
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.8

[State 1000, End]
type=changestate
trigger1= !animtime
value=11430
;=========<Tsumagushi>==========
[Statedef 11430]
type=A
physics=N
movetype=A
ctrl=0
sprpriority=1
anim = 1430

[State 0, VarSet]
type = VarAdd
trigger1 = PrevStateNo=11430
var(12)=-1
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = var(12)!=0
attr = S,NP,SP
slot = 7
stateno = 11430
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y =.8

[State 0, ChangeState]
type = ChangeState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 11440
;=========<Tsumagushi>==========
[Statedef 11440]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
anim = 1442

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
damage = 111,3
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority= 4,Hit
pausetime = floor(12*fvar(6)),floor(12*fvar(6))
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
getpower= 0,0
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
