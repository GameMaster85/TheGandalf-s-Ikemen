; _____________
;| Iori by Hero |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<HELPER STATES>========================================
;============================================================================================
;=========<vs Kyo intro Flame>==========
[Statedef 6000]
type=A
anim=6000
ctrl=0
velset=0,0
sprpriority=7

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(6)>=0&&root,animelemtime(7)<0
time = 1
pos = 5,-104
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(7)>=0&&root,animelemtime(8)<0
time = 1
pos = 18,-97
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(8)>=0&&root,animelemtime(9)<0
time = 1
pos = 23,-91
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(9)>=0&&root,animelemtime(10)<0
time = 1
pos = 25,-83
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(10)>=0&&root,animelemtime(37)<0
time = 1
pos = 25,-88
[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(37)>=0
time = 1
pos = 28,-71
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root, animelem=7
value = 6002
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root, animelem=10
value = 6000
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root, animelem=37
value = 6001

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S6,1
volume = 255
[State 0, PlaySnd]
type = PlaySnd
trigger1 = root, animelem=37
value = S6,3
volume = 255

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause=1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 0, DestroySelf]
type = DestroySelf
trigger1 = anim =6001 && !AnimTime
;=========<vs Kyo intro Flame>==========
[Statedef 6001]
type=A
anim=6000
ctrl=0
velset=0,0
sprpriority=7

[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6000&&root,stateno=3000
time = 1
pos = -24,-90
ignorehitpause=1
[State 0, ChangeAnim]
type = ChangeAnim
trigger1=root,movetype=H && anim!=6009&&anim!=6001
value = 6001
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root, stateno!=3000&&anim=6000
value = 6002
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root, stateno=3001&&anim=6002&&root,animelemtime(4)>=0
value = 6009
[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6002&&root,stateno=3001
trigger1 = root, animelemtime(1)>=0&&root,animelemtime(2)<0
time = 1
pos = -12,-106
ignorehitpause=1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6002&&root,stateno=3001
trigger1 = root, animelemtime(2)>=0&&root,animelemtime(3)<0
time = 1
pos = -19,-106
ignorehitpause=1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6002&&root,stateno=3001
trigger1 = root, animelemtime(3)>=0&&root,animelemtime(4)<0
time = 1
pos = -38,-61
ignorehitpause=1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6009&&root,stateno=3001
trigger1 = root, animelemtime(4)>=0&&root,animelemtime(5)<0
time = 1
pos = 39,-81
ignorehitpause=1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6009&&root,stateno=3001
trigger1 = root, animelemtime(5)>=0&&root,animelemtime(6)<0
time = 1
pos = 40,-88
ignorehitpause=1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6009&&root,stateno=3001
trigger1 = root, animelemtime(6)>=0&&root,animelemtime(7)<0
time = 1
pos = 34,-102
ignorehitpause=1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6009&&root,stateno=3001
trigger1 = root, animelemtime(7)>=0&&root,animelemtime(8)<0
time = 1
pos = 31,-111
ignorehitpause=1
[State 0, BindToRoot]
type = BindToRoot
trigger1 = anim=6009&&root,stateno=3001
trigger1 = root, animelemtime(8)>=0
time = 1
pos = 26,-114
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S6,1
volume = 255
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=1&&anim=6001
value = S6,3
volume = 255

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause=1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 0, DestroySelf]
type = DestroySelf
trigger1 = anim =6001 && !AnimTime
trigger2 = anim =6009 && !AnimTime
;=========<Yami Barai>==========
[Statedef 6100]
type=S
physics=N
movetype=A
anim=IfElse((root,var(10)=1),6100,IfElse((root,var(10)=2),6101,6102))
ctrl=0
velset=0,0
sprpriority=4
hitcountpsersist =1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = Time%7 = 0
anim = 6110
ID = 6110
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 7
removetime = -2
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact && var(14) < 0
var(14) = HitPauseTime
ignoreHitPause = 1

[State 1005, HitOverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=6105
ignorehitpause=1

[State 1005, HB]
type=hitby
trigger1= 1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1005, strengthvar]
type=varset
trigger1= !time
var(10)=root,var(10)

[State 1005, movehitvar]
type=varset
trigger1= movecontact && numtarget
trigger1= !(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1005, timevar]
type=varadd
trigger1= time && var(1)<25
var(1)=1

[State 1005, Vel]
type=velset
trigger1= 1
x=ifelse((var(10)=3),7,ifelse((var(10)=2),5.5,4))

[State 1005, HitSound]
type=playsnd
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
value=2,3
channel=1
persistent=0
ignorehitpause=1

[State 1005, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
priority=4,Hit
attr=S,SP
damage=ceil(ifelse(time<=1,96,84)*root,fvar(1)*.5) ,7
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=0,4
guard.pausetime=0,2
sparkno=-1
guard.sparkno=-1;s8061
guardsound=s2,0
ground.type=High
ground.slidetime = 23
ground.hittime  = 23
ground.velocity = -11.17
ground.cornerpush.veloff=0
air.velocity=-4,-6.5
guard.velocity=-2
fall=0
air.fall=1
air.fall.recover=0
getpower= (root,var(15)=0)*ifelse(p2movetype=H,72,144),(root,var(15)=0)*36
givepower=36,36
envshake.time=14
envshake.freq=120
envshake.ampl=4
sprpriority=4
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
palfx.time = 32
palfx.color = 32
palfx.mul = (root,var(40)),(root,var(41)),(root,var(42))
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1

[State 1005, Sparks]
type=explod
trigger1= movehit&& numtarget
trigger1= !(target,time) && target,movetype=H
anim=8010+(random%8)
ID=8010
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 6000, Counter FX]
type = Helper
trigger1 = MoveHit && var(14) = HitPauseTime
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 7999
ID = 7999
name = "Counter"
posType = p1
pos = 0,0
facing = IfElse(Facing = 1,1,-1)
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1
size.xscale=.34*const(size.xscale)
size.yscale=.34*const(size.yscale)

[State 1120, Helper]
type = Helper
trigger1= movehit&& numtarget
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
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)

[State 6000, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(13) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State 6000, Hit Detection]
type = VarAdd
trigger1 = 1
var(14) = -1

[State 6000, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 13
last = 14
value = -1
ignoreHitPause = 1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 18
ignorehitpause=1
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -28
ignorehitpause=1

[State -2, Sparks]
type=helper
trigger1= moveguarded=1 && numenemy
helpertype=normal
stateno=8061
ID=8000
name="Spark"
postype=p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(22), ceil(P2Dist x), var(22))), var(23)
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
size.xscale=1
size.yscale=1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x!=[-240,240]
id = 6110

[State 1005, End]
type=changestate
trigger1= movecontact
value=6105
ignorehitpause=1

[State 1006, End]
type=destroyself
trigger1=pos x!=[-240,240]
;=========<EX Yami Barai>==========
[Statedef 16100]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4
hitcountpsersist =1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = PrevStateNo != 16100 && !Time
value = 6102

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = Time%7 = 0
anim = 6110
ID = 6110
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 7
removetime = -2
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact && var(14) < 0
var(14) = HitPauseTime
ignoreHitPause = 1

[State 1005, HitOverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=IfElse(var(1)<2,16100,6105)
ignorehitpause=1

[State 1005, HB]
type=hitby
trigger1= 1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1005, movehitvar]
type=varset
trigger1= movecontact && numtarget
trigger1= !(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1005, var]
type=varadd
trigger1= !time
var(1)=1

[State 1005, Vel]
type=velset
trigger1= 1
x=7

[State 1005, HitSound]
type=playsnd
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
value=2,9
channel=1
persistent=0
ignorehitpause=1

[State 1005, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
priority=4,Hit
attr=S,SP
damage=ceil(ifelse(time<=1,68,62)*root,fvar(1)) ,7
animtype=DiagUp
air.animtype=DiagUp
hitflag=MAF
guardflag=MA
pausetime=0,6
sparkno=-1
guard.sparkno=-1;s8061
guardsound=s2,0
ground.type=High
ground.slidetime = 19
ground.hittime  = 19
ground.velocity = -11.17,-3
ground.cornerpush.veloff=0
air.velocity=-4,-5.5
guard.velocity=-2
fall=1
air.fall=1
fall.recover=0
getpower= 0,0
givepower=36,36
y.accel = .5
envshake.time=14
envshake.freq=120
envshake.ampl=4
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
palfx.time = 40
palfx.color = 32
palfx.mul = (root,var(40)),(root,var(41)),(root,var(42))
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1

[State 1005, Sparks]
type=explod
trigger1= movehit&& numtarget
trigger1= !(target,time) && target,movetype=H
anim=8010+(random%8)
ID=8010
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 6000, Counter FX]
type = Helper
trigger1 = MoveHit && var(14) = HitPauseTime
trigger1 = NumEnemy && var(13); && (enemynear,!ishelper)
trigger1 = (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 7999
ID = 7999
name = "Counter"
posType = p1
pos = 0,0
facing = IfElse(Facing = 1,1,-1)
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1
size.xscale=.34*const(size.xscale)
size.yscale=.34*const(size.yscale)

[State 1120, Helper]
type = Helper
trigger1 = Movehit && NumTarget
trigger1 =(target,Movetype = H)
triggerall = NumHelper (6180) < 1
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
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)

[State 6000, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(13) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State 6000, Hit Detection]
type = VarAdd
trigger1 = 1
var(14) = -1

[State 6000, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 13
last = 14
value = -1
ignoreHitPause = 1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 18
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -28

[State -2, Sparks]
type=helper
triggerall= var(14)=hitpausetime
trigger1= moveguarded=1 && numenemy
helpertype=normal
stateno=8061
ID=8000
name="Spark"
postype=p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(22), ceil(P2Dist x), var(22))), var(23)
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
size.xscale=1
size.yscale=1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x!=[-240,240]
id = 6110

[State 1005, End]
type=changestate
trigger1= movecontact
value=IfElse(var(1)<2,16100,6105)
ignorehitpause=1

[State 1006, End]
type=destroyself
trigger1=pos x!=[-240,240]
;=========<Yami Barai End>==========
[Statedef 6105]
type=A
physics=N
movetype=I
anim=6105
velset=0,0
ctrl=0
sprpriority=4
movehitpersist=1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 1006, End]
type=destroyself
trigger1= Time = 50
;=========<Yami Barai End>==========
[Statedef 6120]
type=A
physics=N
movetype=I
anim=6120
velset=0,0
ctrl=0
sprpriority=6
movehitpersist=1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S6,0
volume = 255

[State 1006, End]
type=destroyself
trigger1= !AnimTime
;=========<Yami Barai End>==========
[Statedef 6125]
type=A
physics=N
movetype=I
anim=6125
velset=0,0
ctrl=0
sprpriority=-6
movehitpersist=1

[State 1006, End]
type=destroyself
trigger1= !AnimTime
;=========<Yami Barai End>==========
[Statedef 6140]
type=A
physics=N
movetype=I
anim=6140
velset=0,0
ctrl=0
sprpriority=6
movehitpersist=1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = Time < 10 &&root,stateno=1440
time = 1
pos = 45,-20
ignorehitpause = 1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = Time < 5 &&(root,stateno=3140||root,stateno=3160)
time = 1
pos = 65,-20
ignorehitpause = 1

[State 6140, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S6,0
volume = 255

[State 1006, End]
type=destroyself
trigger1= !AnimTime
;=========<Yami Barai>==========
[Statedef 6150]
type=S
physics=N
movetype=A
anim=6100
ctrl=0
velset=0,0
sprpriority=4
hitcountpsersist =1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, Explod]
type = Explod
trigger1 = Time%7 = 0
anim = 6110
ID = 6110
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 7
removetime = -2
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 1005, HB]
type=nothitby
trigger1= 1
time=-1
value=SCA
ignorehitpause=1

[State 1005, Vel]
type=velset
trigger1= 1
x=4.5

[State 1005, End]
type=changestate
trigger1= time = 6
value=6151
ignorehitpause=1

[State 1006, End]
type=destroyself
trigger1=pos x!=[-240,240]
;=========<Yami Barai>==========
[Statedef 6151]
type=S
physics=S
movetype=A
anim=6150
ctrl=0
velset=0,0
sprpriority=4
hitcountpsersist =1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S5,0
volume = 255
ignorehitpause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = !Time
time = 7
freq = 60
ampl = -4
ignorehitpause = 1

[State 1000, KachouSen]
type=helper
trigger1= !Time
helpertype=normal
stateno=6152
ID=6152
name="YaSakazukiHit"
postype=p1
pos=-10,0
ownpal=1
size.xscale=.25
size.yscale=.45
ignorehitpause=1

[State 1000, KachouSen]
type=helper
trigger1= !Time
helpertype=normal
stateno=6153
ID=6153
name="YaSakazukiShield"
postype=p1
pos=-10,0
ownpal=1
size.xscale=.25
size.yscale=.45
ignorehitpause=1

[State 0, PosAdd]
type = PosAdd
trigger1 = PrevStateNo=6150 &&!Time
y = -10

[State 1000, KachouSen]
type=helper
trigger1= Time = 10
helpertype=normal
stateno=6151
ID=6151
name="YaSakazuki"
postype=p1
pos=40,0
ownpal=1
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
ignorehitpause=1

[State 1006, End]
type=destroyself
trigger1=!AnimTime
trigger2=pos x!=[-240,240]
;=========<Ya Sakazuki Hit>==========
[Statedef 6152]
type=S
physics=N
movetype=A
anim=6152
ctrl=0
velset=0,0
sprpriority=4
hitcountpsersist =1

[State 1005, movehitvar]
type=varset
trigger1= movecontact && numtarget
trigger1= !(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1005, HitSound]
type=playsnd
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
value=2,12
channel=1
persistent=0
ignorehitpause=1

[State 1005, Hit]
type=hitdef
trigger1= enemynear,stateno!=3010&&(enemynear,movetype=A||enemynear,movetype=I)
priority=4,Hit
attr=S,HP
damage=0,0
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=0,4
guard.pausetime=0,2
sparkno=-1
guard.sparkno=-1;s8061
guardsound=s2,0
ground.type=High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
ground.cornerpush.veloff=0
air.velocity=0,0
guard.velocity=-12.4
guard.slidetime=20
guard.hittime=20
fall=0
air.fall=0
getpower= 0,0
givepower=36,36
sprpriority=4
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1
p2stateno=3010
numhits = 0

[State 1005, Sparks]
type=explod
trigger1= movehit&& numtarget
trigger1= !(target,time) && target,movetype=H
anim=8010+(random%8)
ID=8010
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 67
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -70

[State -2, Sparks]
type=helper
trigger1= moveguarded=1 && numenemy
helpertype=normal
stateno=8061
ID=8000
name="Spark"
postype=p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(22), ceil(P2Dist x), var(22))), var(23)
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
size.xscale=1
size.yscale=1

[State 1006, End]
type=destroyself
trigger1=pos x!=[-240,240]
trigger2=!animtime
trigger3=movecontact
;=========<Yami Barai>==========
[Statedef 6153]
type=S
physics=N
movetype=I
anim=6153
ctrl=0
velset=0,0
sprpriority=4
hitcountpsersist =1

[State 1005, HitOverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=6153
ignorehitpause=1

[State 1005, HB]
type=hitby
trigger1= 1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1006, End]
type=destroyself
trigger1=pos x!=[-240,240]
trigger2=!animtime
;=========<Yami Barai End>==========
[Statedef 6160]
type=A
physics=N
movetype=I
anim=6160
velset=0,0
ctrl=0
sprpriority=-3
movehitpersist=1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = (Enemy, Pos x )-(26*facing)
y = -4

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !Time
var(39)=160

[State 1006, End]
type=changestate
trigger1=enemynear,movetype!=H
trigger2=enemynear,stateno!=3010
ignorehitpause = 1
value=6161
;=========<Yami Barai End>==========
[Statedef 6161]
anim=9741

[State 1006, End]
type=destroyself
trigger1= Time=10
ignorehitpause = 1
;=========<Yami Barai End>==========
[Statedef 6300]
type=A
physics=N
movetype=I
anim=6300
velset=0,0
ctrl=0
sprpriority=6
movehitpersist=1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S5,0
volume = 255

[State 1006, End]
type=destroyself
trigger1= !AnimTime
;=========<Ya Sakazuki Hit>==========
[Statedef 6170]
type=S
physics=N
movetype=A
anim=6171
ctrl=0
velset=0,0
sprpriority=4
hitcountpsersist =1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos=38,10
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 3
value = S5,0
volume = 255

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact && var(14) < 0
var(14) = HitPauseTime
ignoreHitPause = 1

[State 1005, movehitvar]
type=varset
trigger1= movecontact && numtarget
trigger1= !(target,ishelper)
var(3)=1
ignorehitpause=1

[State 1005, HitSound]
type=playsnd
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
value=2,12
channel=1
persistent=0
ignorehitpause=1

[State 1005, Hit]
type=hitdef
trigger1= !Time
priority=4,Hit
attr=S,HA
damage=ceil(110*root,fvar(1)),ceil(20*root,fvar(1))
animtype=DiagUp
air.animtype=DiagUp
fall.animtype=DiagUp
hitflag=MAFD
guardflag=MA
pausetime=0,4
guard.pausetime=0,2
sparkno=-1
guard.sparkno=-1;s8061
guardsound=s2,0
ground.type=High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -3,-12
ground.cornerpush.veloff=0
air.slidetime = 17
air.hittime  = 17
air.velocity = -3,-12
guard.velocity=-12.4
guard.slidetime=20
guard.hittime=20
fall=0
air.fall=1
air.fall.recover=0
getpower= 0,0
givepower=36,36
sprpriority=4
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
forcestand=1
envshake.time=32
envshake.freq=60
envshake.ampl=12
fall.envshake.time= 14
fall.envshake.ampl=-5
fall.envshake.freq=120
p2stateno = 3280

[State 1005, Sparks]
type=explod
trigger1= movehit&& numtarget
trigger1= !(target,time) && target,movetype=H
anim=8020+(random%8)
ID=8020
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(enemynear,pos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 6000, Counter FX]
type = Helper
trigger1 = MoveHit && var(14) = HitPauseTime
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 7999
ID = 7999
name = "Counter"
posType = p1
pos = 0,0
facing = IfElse(Facing = 1,1,-1)
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1
size.xscale=.34*const(size.xscale)
size.yscale=.34*const(size.yscale)

[State 1120, Helper]
type = Helper
trigger1= movehit&& numtarget
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
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)

[State 6000, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(13) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State 6000, Hit Detection]
type = VarAdd
trigger1 = 1
var(14) = -1

[State 6000, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 13
last = 14
value = -1
ignoreHitPause = 1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 67
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -70

[State -2, Sparks]
type=helper
trigger1= moveguarded=1 && numenemy
helpertype=normal
stateno=8061
ID=8000
name="Spark"
postype=p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(22), ceil(P2Dist x), var(22))), var(23)
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
size.xscale=1
size.yscale=1

[State 0, Explod]
type = Explod
trigger1 =!Time
anim = 6170
ID = 6170
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 1006, End]
type=destroyself
trigger1=!animtime
;=========<Yami Barai End>==========
[Statedef 7010]
type=A
physics=N
movetype=I
anim=7010
velset=0,0
ctrl=0
sprpriority=2
movehitpersist=1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, AllPalFX]
type = PalFX
trigger1 = root,animelemtime(4)<32
time = 2
add = 0,-time*8,-time*8

[State 0, AllPalFX]
type = PalFX
trigger1 = root,animelemtime(4)>32&&root,animelemtime(4)<45
time = 100
mul = 256-(root,time-37)*8,0,0

[State 0, BindToRoot]
type = BindToRoot
trigger1 = root,animelemtime(3)>=0&&root,animelemtime(5)<0
time = 1
pos = 0,0

[State 1006, End]
type=destroyself
trigger1= root, animelemtime(4)=129||root,movetype=H
;=========<P2 Flames>==========
[Statedef 6180]
physics = N
velset = 0,0
anim = 9741
sprpriority = 4

[State 6250, DestroySelf]
type = DestroySelf
trigger1 = time >= 120
trigger2 = enemynear,ctrl ||(enemynear,movetype!=H) || (enemynear,statetype=L)||enemynear,stateno=5150

[State 6250, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 6250, flames]
type = explod
trigger1 = 1
anim = 6180
ID = 6180
sprpriority = 5
postype = p2
vel = -.2,-.75
pos = (enemynear,const(size.mid.pos.x))+random%30,(enemynear,const(size.mid.pos.y))+random%30
random = 40,40
removetime = -2
scale = .25,.25
ownpal = 1
bindtime = 1

[State 6250, PosAdd]
type = PosAdd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
;=========<P2 Flames 2>==========
[Statedef 6181]
physics = N
velset = 0,0
anim = 9741
sprpriority = 4

[State 6250, DestroySelf]
type = DestroySelf
trigger1 = time >= 120
trigger2 = enemynear,ctrl ||(enemynear,movetype!=H) || (enemynear,statetype=L)||enemynear,stateno=5150

[State 6250, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 6250, flames]
type = explod
trigger1 = 1
anim = 6180
ID = 6180
sprpriority = 5
postype = p2
vel = -.2,-.75
pos = (enemynear,const(size.mid.pos.x))+random%30,(enemynear,const(size.mid.pos.y))+random%60
random = 40,40
removetime = -2
scale = .25,.25
ownpal = 1
bindtime = 1

[State 6250, PosAdd]
type = PosAdd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)
;=========<Floor FX>==========
[Statedef 7000]
type=S
physics=S
movetype=I
anim=9741
velset=0,0
ctrl=0
sprpriority=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S6,2
volume = 255

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7000
ID = 7000
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 11
scale = .1,.1
sprpriority = 0
ownpal = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 7000
scale = .1+(Time*0.055),.1+(Time*0.055)
trans = addalpha
alpha = 256-(time*11),256

[State 1006, End]
type=destroyself
trigger1= time = 11
;========================<ORIGINAL COMBO CHARGE>=============================
[Statedef 7600]
physics=N
velset=0,0
anim=9741

[State 7600, BG PalFX]
type=bgpalfx
trigger1= !time
time=30
add=-255,-255,-128
sinadd=255,255,128,120
[State 7600, palfx]
type=palfx
trigger1= time=20
time=11
sinadd=-255,-255,-255,40
persistent=0

[State 7600, main]
type=explod
trigger1= !time
anim=7600
ID=7600
sprpriority=5
postype=p1
removetime=20
supermovetime=300
[State 7600, Super]
type = Helper
trigger1 = !time
id = 7815
pos = 0,0
postype = P1
name = "Flashy Circle"
stateno = 7815
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = 1
size.yscale = 1
[State 7600, Circle]
type=explod
trigger1= time=20
anim=7812
ID=7602
sprpriority=5
postype=p1
removetime=-1
supermovetime=300

[State 7600, shrinkcircle]
type=modifyexplod
trigger1= 1
ID=7600
scale=2-(.1*time),2-(.1*time)
[State 7600, shrinkcircle]
type=modifyexplod
trigger1= time>=20
ID=7602
scale=.1+(.1*(time-20)),.1+(.1*(time-20))

[State 7600, No Shadow]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7600, bound]
type=screenbound
trigger1= 1
value=0
ignorehitpause=1
[State 7600, Safety]
type=removeexplod
trigger1= time>=30
[State 7600, End]
type=destroyself
trigger1= time>=30
;========================<ZERO COUNTER CHARGE>=============================
[Statedef 7610]
physics=N
velset=0,0
anim=9741

[State 7250, BG PalFX]
type=bgpalfx
trigger1= !time
time=20
add=-255,-128,-64
sinadd=255,128,64,80
persistent=0
[State 7250, palfx]
type=palfx
trigger1= !time
time=20
sinadd=-255,-255,-255,80

[State 7250, thunder]
type=explod
trigger1= !time
anim=7610
ID=7610
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
removetime=-2
supermovetime=30
ownpal=1
[State 7250, Circle]
type=explod
trigger1= !time
anim=7800
ID=7800
sprpriority=5
postype=p1
removetime=20
supermovetime=30

[State 7250, Shrink]
type=modifyexplod
trigger1= numexplod(7800)
ID=7800
scale=.2+(.09*time),.2+(.09*time)
[State 7250, No Shadow]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7250, End]
type=destroyself
trigger1= time>=20
;========================<POWER CHARGE>=============================
;---MAIN FX---
[Statedef 7620]
type=S
anim=7620
velset=0,0
ctrl=0

[State 7620, Bind]
type=bindtoroot
trigger1= (root,stateno=950) && ((root,anim=950||root,anim=951||root,anim=952))
pos=4,0

[State 7620, Snd]
type=playsnd
trigger1= !time
value=7,4
channel=0

[State 7620, Aura]
type=explod
trigger1= !numexplod(7630)
ID=7630
anim=7630
sprpriority=3
pos = 0,5
postype=p1
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1
scale=.5,.5
ownpal=1

[State 7620, FX]
type=modifyexplod
trigger1= numexplod(7630) && (root,power<3000)
ID=7630
scale=.5,.1+.4*(root,power/3000.0)
[State 7620, FX]
type=modifyexplod
trigger1= numexplod(7630) && (root,power>=3000)
ID=7630
scale=.5,.5

[State 7620, No Shadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State 7620, End]
type=stopsnd
trigger1= (root,stateno!=950) || (root,movetype=H)
channel=0

[State 7620, End]
type=removeexplod
trigger1= (root,stateno!=950) || (root,movetype=H)

[State 7620, End]
type=ChangeState
trigger1= (root,stateno!=950) || (root,movetype=H)
value = 7621

;========================<POWER CHARGE>=============================
;---MAIN FX---
[Statedef 7621]
type=S
anim=9741
velset=0,0
ctrl=0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !Time

[State 7620, No Shadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State 7620, Aura]
type=explod
trigger1= !Time
ID=7630
anim=7630
sprpriority=3
postype=p1
bindtime=-1
removetime=5
pausemovetime=-1
supermovetime=-1
scale=.5,.5
ownpal=1
pos = 0,5

[State 7620, FX]
type=modifyexplod
trigger1= 1
ID=7630
scale=.5-(.1*time),.5+(.1*time*((root,power)/3000))

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 6
;---PARTICLES---
[Statedef 7631]
[State 2OS]
type=statetypeset
trigger1=!time
movetype=i
ignorehitpause=1
persistent=1
[State 2OS]
type=changeanim
trigger1=!time
value=7631
ignorehitpause=1
persistent=1
[State 2OS]
type=velset
trigger1=!time
x=0
y=0
ignorehitpause=1
persistent=1
[State 2OS]
type=ctrlset
trigger1=!time
value=0
ignorehitpause=1
persistent=1
[State 2OS]
type=trans
trigger1=1
trans=addalpha
alpha=0+(time)*9,256
ignorehitpause=1
persistent=1
[State 2OS]
type=assertspecial
trigger1=time
flag=noshadow
ignorehitpause=1
persistent=1
[State 2OS]
type=angledraw
trigger1=time
scale=(root,const(size.xscale)*0.75)*sin(time*0.15),(root,const(size.yscale)*0.75)*sin(time*0.15)
ignorehitpause=1
persistent=1
[State 2OS]
type=bindtoroot
trigger1=!time
pos=-300+(random%600),-300+(random%600)
ignorehitpause=1
persistent=1
[State 2OS]
type=posadd
trigger1=(time=[0,39])
x=9*sin(time*0.20)
y=9*cos(time*0.20)
[State 2OS]
type=sprpriority
trigger1=!time
value=9
ignorehitpause=1
persistent=1
[State 2OS]
type=velset
trigger1=time||(time=[0,39])
x=((rootdist x+13)/20)+((2*sin(time*0.20)-time/5)*(time=[0,39]))/2
y=((rootdist y-80)/20)+((2*sin(time*0.20)-time/5)*(time=[0,39]))/2
ignorehitpause=1
persistent=1
[State 2OS]
type=destroyself
trigger1=time>=79||root,stateno!=950||(root,anim!=[950,952])||root,movetype=h
ignorehitpause=1
persistent=1
;=========================== EX-FX ========================
[Statedef 7660]
type    = A
movetype= I
physics = N
anim = 9741
velset = 0,0
ctrl = 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim =7660
ID = 7660
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S7,7
channel = 4
volume=-100
freqmul=1.25

[State 1150, ChangeState]
type = DestroySelf
trigger1 = time > 1
;========================<CUSTOM COMBO BAR>=============================
[Statedef 7700]
type=A
velset=0,0
anim=7720
sprpriority = 6

[State 7700, Turn]
type = Turn
trigger1 = !Time && root,teamside = 2
ignorehitpause = 1

[State 7700, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7700, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7700, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)
ignorehitpause = 1

[State 7700, Bind]
type=posset
trigger1= 1
x=(185-(time*7))*var(59)
y=(pos y-screenpos y)+220
ignorehitpause = 1

[State 7700, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "bar2"
ID = 7730
stateno = 7730
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999
[State 7700, Helper]
type = Helper
trigger1 = !Time&&var(59)=-1
helpertype = normal
name = "bar3"
ID = 7740
stateno = 7740
pos = 0,-112*var(59)
postype = p1
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 999
[State 7700, Helper]
type = Helper
trigger1 = !Time&&var(59)=-1
helpertype = normal
name = "bar4"
ID = 7745
stateno = 7745
pos = 0,-112*var(59)
postype = p1
facing = -1
keyctrl = 0
ownpal = 1
supermovetime = 999
[State 7700, Helper]
type = Helper
trigger1 = !Time&&var(59)=1
helpertype = normal
name = "bar3b"
ID = 7741
stateno = 7741
pos = 0,0;-112*var(59)
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
[State 7700, Helper]
type = Helper
trigger1 = !Time&&var(59)=1
helpertype = normal
name = "bar4b"
ID = 7746
stateno = 7746
pos = 0,0;-112*var(59)
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999
[State 7700, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "Percent100"
ID = 7750
stateno = 7750
pos = 0,0
postype = p1
facing = -var(59)
keyctrl = 0
ownpal = 1
supermovetime = 999
size.xscale=.5
size.yscale=.5
[State 7700, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "Percent10"
ID = 7751
stateno = 7751
pos = 0,0
postype = p1
facing = -var(59)
keyctrl = 0
ownpal = 1
supermovetime = 999
size.xscale=.5
size.yscale=.5
[State 7700, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "Percent1"
ID = 7752
stateno = 7752
pos = 0,0
postype = p1
facing = -var(59)
keyctrl = 0
ownpal = 1
supermovetime = 999
size.xscale=.5
size.yscale=.5
[State 7700, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "Percent"
ID = 7753
stateno = 7753
pos = 0,0
postype = p1
facing = -var(59)
keyctrl = 0
ownpal = 1
supermovetime = 999
size.xscale=.5
size.yscale=.5

[State 7700, binding to screen]
type=changestate
trigger1= time = 6
value = 7701
ignorehitpause=1
;========================<CUSTOM COMBO BAR BINDING TO SCREEN>=============================
[Statedef 7701]
type=A
velset=0,0
anim=9741;7720
sprpriority = 6

[State 7701, PalFX]
type = PalFX
trigger1 = root,fvar(7)<50&&gametime%6=0
time = 2
add = 256,256,256
ignorehitpause = 1

[State 7701, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7701, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7701, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)
ignorehitpause=1

[State 7701, Bind]
type=posset
trigger1= 1
x=150*var(59)
y=(pos y-screenpos y)+220
ignorehitpause = 1

[State 7701, Explod]
type = Explod
trigger1 = !Time
anim = 7720
ID = 7720
pos = 10+(300*(var(59)=1)),220
postype = left
facing = -var(59)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 6
ignorehitpause = 1

[State 7701, RemoveExplod]
type = RemoveExplod
trigger1 = (root,var(15)=0&&root,var(9)=0&&root,stateno!=930)
id = 7720
ignorehitpause = 1

[State 7701, ChangeState]
type = ChangeState
trigger1 = (root,var(15)=0&&root,var(9)=0&&root,stateno!=930)
value = 7702
ignorehitpause = 1
;========================<CUSTOM COMBO DISSAPEARING>=============================
[Statedef 7702]
type=A
velset=0,0
anim=7720
sprpriority = 6

[State 7702, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7702, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7702, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)

[State 7702, Bind]
type=posset
trigger1= 1
x=(150+(time*9))*var(59)
y=(pos y-screenpos y)+220
ignorehitpause = 1

[State 7702, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 6
id = 7720
ignorehitpause = 1

[State 7702, DestroySelf]
type = DestroySelf
trigger1 = Time = 6
ignorehitpause = 1
;========================<BACK BAR>=============================
[Statedef 7730]
type=A
velset=0,0
anim=9741;7730
sprpriority = 6

[State 7730, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7730, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7730, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)

[State 7730, Bind]
type=bindtoparent
trigger1 = 1
pos = 0,0;-18*var(59),1
ignorehitpause=1

[State 7730, Explod]
type = Explod
trigger1 = !Time
anim = 7730
ID = 7730
pos = 10+(300*(var(59)=1)),220
postype = left
facing = -var(59)
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 6
ignorehitpause = 1

[State 7730, RemoveExplod]
type = RemoveExplod
trigger1 = parent,stateno = 7702
id = 7730
ignorehitpause = 1

[State 7730, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno=7702
value =7730
ignorehitpause = 1

[State 7730, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;========================<DECREASING BAR LEFT>=============================
[Statedef 7740]
type=A
velset=0,0
anim=9741;7740
sprpriority = 5

[State 7740, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7740, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7740, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)

[State 7740, Bind]
type=bindtoparent
trigger1 = 1
pos = -76*var(59),1
ignorehitpause=1

[State 7740, AngleDraw]
type = AngleDraw
trigger1 = (root,fvar(9))<=150
scale = 0,1
ignorehitpause = 1

[State 7740, AngleDraw]
type = AngleDraw
trigger1 = (root,fvar(9))>=151
scale = 1*((root,fvar(9))-150)/150,1
ignorehitpause = 1

[State 7740, Explod]
type = Explod
trigger1 = !Time
anim = 7740
ID = 7740
pos = 86,220
postype = left
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 5
ignorehitpause = 1
ontop=1

[State 7740, ModifyExplod]
type = ModifyExplod
trigger1 = (root,fvar(9))<=150
scale = 0,.5
ID = 7740
ignorehitpause = 1

[State 7740, ModifyExplod]
type = ModifyExplod
trigger1 = (root,fvar(9))>=151
scale = .5*((root,fvar(9))-150)/150,.5
ID = 7740
ignorehitpause = 1

[State 7740, RemoveExplod]
type = RemoveExplod
trigger1 = parent,stateno = 7702
id = 7740
ignorehitpause = 1

[State 7740, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno=7702
value =7740
ignorehitpause = 1

[State 7740, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;========================<DECREASING BAR RIGHT>=============================
[Statedef 7741]
type=A
velset=0,0
anim=9741;7741
sprpriority = 5

[State 7741, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7741, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7741, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)

[State 7741, Bind]
type=bindtoparent
trigger1 = 1
pos = 76,1;-76*var(59),1
ignorehitpause=1

[State 7741, AngleDraw]
type = AngleDraw
trigger1 = (root,fvar(9))<=150
scale = 0,1
ignorehitpause = 1

[State 7741, AngleDraw]
type = AngleDraw
trigger1 = (root,fvar(9))>=151
scale = 1*((root,fvar(9))-151)/150,1
ignorehitpause = 1

[State 7741, Explod]
type = Explod
trigger1 = !Time
anim = 7741
ID = 7741
pos = 234,220
postype = left
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 5
ignorehitpause = 1
ontop=1

[State 7741, ModifyExplod]
type = ModifyExplod
trigger1 = (root,fvar(9))<=150
scale = 0,.5
ID = 7741
ignorehitpause = 1

[State 7741, ModifyExplod]
type = ModifyExplod
trigger1 = (root,fvar(9))>=151
scale = .5*((root,fvar(9))-151)/150,.5
ID = 7741
ignorehitpause = 1

[State 7741, RemoveExplod]
type = RemoveExplod
trigger1 = parent,stateno = 7702
id = 7741
ignorehitpause = 1

[State 7741, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno=7702
value =7741
ignorehitpause = 1

[State 7741, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;========================<DECREASING BAR LEFT>=============================
[Statedef 7745]
type=A
velset=0,0
anim=9741;7745
sprpriority = 5

[State 7745, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7745, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7745, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)

[State 7745, Bind]
type=bindtoparent
trigger1 = 1
pos = 131.5,1
ignorehitpause=1

[State 7745, AngleDraw]
type = AngleDraw
trigger1 = root,fvar(9)>=151
scale = 1,1
ignorehitpause = 1

[State 7745, AngleDraw]
type = AngleDraw
trigger1 = (root,fvar(9))<=150
scale = ((root,fvar(9))/150),1
ignorehitpause = 1

[State 7745, Explod]
type = Explod
trigger1 = !Time
anim = 7745
ID = 7745
pos = 141,220
postype = left
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 5
ignorehitpause = 1
ontop=1

[State 7745, ModifyExplod]
type = ModifyExplod
trigger1 = root,fvar(9)>=151
scale = .5,.5
ID = 7745
ignorehitpause = 1

[State 7745, ModifyExplod]
type = ModifyExplod
trigger1 = (root,fvar(9))<=150
scale = .5*((root,fvar(9))/150),.5
ID = 7745
ignorehitpause = 1

[State 7745, RemoveExplod]
type = RemoveExplod
trigger1 = parent,stateno = 7702
id = 7745
ignorehitpause = 1

[State 7745, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno=7702
value =7745
ignorehitpause = 1

[State 7745, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;========================<DECREASING BAR RIGHT>=============================
[Statedef 7746]
type=A
velset=0,0
anim=9741;7746
sprpriority = 5

[State 7746, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7746, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7746, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)

[State 7746, Bind]
type=bindtoparent
trigger1 = 1
pos =131.5,1
ignorehitpause=1

[State 7746, AngleDraw]
type = AngleDraw
trigger1 = root,fvar(9)>=151
scale = 1,1
ignorehitpause = 1

[State 7746, AngleDraw]
type = AngleDraw
trigger1 = (root,fvar(9))<=150
scale = ((root,fvar(9))/150),1
ignorehitpause = 1

[State 7746, Explod]
type = Explod
trigger1 = !Time
anim = 7746
ID = 7746
pos = 179,220
postype = left
facing = -1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 5
ignorehitpause = 1
ontop=1

[State 7746, ModifyExplod]
type = ModifyExplod
trigger1 = root,fvar(9)>=151
scale = .5,.5
ID = 7746
ignorehitpause = 1

[State 7746, ModifyExplod]
type = ModifyExplod
trigger1 = (root,fvar(9))<=150
scale = .5*((root,fvar(9))/150),.5
ID = 7746
ignorehitpause = 1

[State 7746, RemoveExplod]
type = RemoveExplod
trigger1 = parent,stateno = 7702
id = 7746
ignorehitpause = 1

[State 7746, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno=7702
value =7746
ignorehitpause = 1

[State 7746, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;========================<100 PERCENTAGE>=============================
[Statedef 7750]
type=A
velset=0,0
anim=9741
sprpriority = 7

[State 7750, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7750, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7750, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)=100
value = 9741
ignorehitpause = 1
[State 7750, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<100
value = 9741
ignorehitpause = 1
[State 7750, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)
[State 7750, Bind]
type=bindtoparent
trigger1 = 1
pos = IfElse(var(59)=-1,-6,22),0
ignorehitpause=1

[State 7750, Explod]
type = Explod
trigger1 = root,fvar(7)=100
anim = 7701
ID = 7700
pos = IfElse(var(59)=-1,4,283),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7750, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;========================<10 PERCENTAGE>=============================
[Statedef 7751]
type=A
velset=0,0
anim=9741
sprpriority = 7

[State 7751, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7751, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)=100
value = 7700
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<100&&root,fvar(7)>=90
value = 7709
ignorehitpause = 1
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<90&&root,fvar(7)>=80
value = 7708
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<80&&root,fvar(7)>=70
value = 7707
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<70&&root,fvar(7)>=60
value = 7706
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<60&&root,fvar(7)>=50
value = 7705
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<50&&root,fvar(7)>=40
value = 7704
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<40&&root,fvar(7)>=30
value = 7703
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<30&&root,fvar(7)>=20
value = 7702
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = root,fvar(7)<20&&root,fvar(7)>=10
value = 7701
[State 7751, ChangeAnim]
type = ChangeAnim
trigger1 = 1;root,fvar(7)<10
value = 9741
ignorehitpause = 1
[State 7751, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)
[State 7751, Bind]
type=bindtoparent
trigger1 = 1
pos = IfElse(var(59)=-1,2,14),0
ignorehitpause=1

[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)=100
anim = 7700
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<100&&root,fvar(7)>=90
anim = 7709
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<90&&root,fvar(7)>=80
anim = 7708
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<80&&root,fvar(7)>=70
anim = 7707
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<70&&root,fvar(7)>=60
anim = 7706
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<60&&root,fvar(7)>=50
anim = 7705
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<50&&root,fvar(7)>=40
anim = 7704
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<40&&root,fvar(7)>=30
anim = 7703
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<30&&root,fvar(7)>=20
anim = 7702
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, Explod]
type = Explod
trigger1 = root,fvar(7)<20&&root,fvar(7)>=10
anim = 7701
ID = 7700
pos = IfElse(var(59)=-1,12,291),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7751, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;========================<1 PERCENTAGE>=============================
[Statedef 7752]
type=A
velset=0,0
anim=9741
sprpriority = 7

[State 7752, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7752, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=0||root,fvar(7)=100||root,fvar(7)=0
value = 7700
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=9
value = 7709
ignorehitpause = 1
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=8
value = 7708
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=7
value = 7707
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=6
value = 7706
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=5
value = 7705
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=4
value = 7704
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=3
value = 7703
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=2
value = 7702
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=1
value = 7701
[State 7752, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno!=7702
value = 9741
ignorehitpause=1
[State 7752, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)
[State 7752, Bind]
type=bindtoparent
trigger1 = 1
pos = IfElse(var(59)=-1,10,6),0
ignorehitpause=1

[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=0||root,fvar(7)=100||root,fvar(7)=0
anim = 7700
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=9
anim = 7709
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=8
anim = 7708
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=7
anim = 7707
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=6
anim = 7706
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=5
anim = 7705
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=4
anim = 7704
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=3
anim = 7703
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=2
anim = 7702
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, Explod]
type = Explod
trigger1 = floor(root,fvar(7)-(floor(root,fvar(7)/10)*10))=1
anim = 7701
ID = 7700
pos = IfElse(var(59)=-1,20,299),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
ontop=1
[State 7752, RemoveExplod]
type = RemoveExplod
trigger1 = parent,stateno=7702
ignorehitpause = 1

[State 7752, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;========================<PERCENTAGE>=============================
[Statedef 7753]
type=A
velset=0,0
anim=9741
sprpriority = 7
[State 7753, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
[State 7753, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1
[State 7753, VarSet]
type = VarSet
trigger1 = !Time
var(59)=IfElse(root,teamside=1,-1,1)
[State 7753, Bind]
type=bindtoparent
trigger1 = 1
pos = IfElse(var(59)=-1,18,-2),0
ignorehitpause=1
[State 7753, Explod]
type = Explod
trigger1 = !Time
anim = 7710
ID = 7710
pos = 28+(279*(var(59)=1)),220
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5,.5
sprpriority = 7
ignorehitpause = 1
persistent=0
ontop=1

[State 7753, RemoveExplod]
type = RemoveExplod
trigger1 = parent,stateno = 7702
id = 7710
ignorehitpause = 1

[State 7753, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno=7702
value =7710
ignorehitpause = 1
[State 7753, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 7702 && parent,time > 5
ignorehitpause = 1
;=====================<SUPER CHARGE LVL 1>=============================
[Statedef 7800]
physics=N
velset=0,0
anim=9741

[State 7800, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3000
time = 1
pos = -22,-83
ignorehitpause = 1
[State 7800, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3100
time = 1
pos = 7,-76
ignorehitpause = 1
[State 7800, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3200
time = 1
pos = 5,-111
ignorehitpause = 1
[State 7800, EnvColor]
type = BGPalFX
trigger1 = time <= 44
mul=60,226,60
time = 2
invertall = 0
ignorehitpause = 1
color=20
[State 7800,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2=nobardisplay

[State 7800, small circle]
type=explod
trigger1=time=15
anim=7800
ID=7800
sprpriority=5
postype=p1
supermovetime=-1
removetime=45
[State 8500, scale]
type=modifyexplod
trigger1=numexplod(7800)
ID=7800
scale= .5+(.03*(time-15)),.5+(.03*(time-15))
trans=addalpha
alpha=ceil(100-3*(time-15)),256

[State 7800, Super]
type = Helper
trigger1 = !time
id = 7801
pos = 0,0
postype = P1
name = "Spining circle"
stateno = 7801
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .55
size.yscale = .55

[State 7800, circle]
type=explod
trigger1=!time
anim=7802
ID=7802
sprpriority=5
postype=p1
supermovetime=-1
removetime=15
[State 8500, scale]
type=modifyexplod
trigger1=numexplod(7802)
ID=7802
scale= 1-(time*.066666),1-(time*.066666)
trans=addalpha
alpha=ceil(100+20.4*time),256

[State 7800, Super]
type = Helper
trigger1 = !time
id = 7803
pos = 0,0
postype = P1
name = "Background"
stateno = 7803
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .5
size.yscale = .5

[State 7800, Super]
type = Helper
trigger1 = !time
id = 7804
pos = 0,0
postype = P1
name = "HyperPortrait"
stateno = 7804
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .38
size.yscale = .38

[State 7800, Super]
type = Helper
trigger1 = !time
id = 7805
pos = 0,0
postype = P1
name = "Flashy Circle"
stateno = 7805
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = 1
size.yscale = 1
[State 7800, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "RightAfterimage"
ID =7806
stateno = 7806
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
[State 7800, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "LeftAfterimage"
ID =7807
stateno = 7807
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 7800, Safety]
type=removeexplod
trigger1= time>=45
[State 7800, End]
type=destroyself
trigger1= time>=45
;=====================<SPINNING CIRCLE>=============================
[Statedef 7801]
type    = A
movetype= I
physics = N
anim = 7801
velset = 0,0
ctrl = 0
sprpriority = 0

[State 7801,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause=1

[State 7801, TRANS]
type = Trans
trigger1 = 1
trans = addalpha
alpha=0+(time*50),256

[State 7801, scale]
type=angledraw
trigger1=1
scale=.35,.35

[State 7801, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)

[State 7801, Rotate]
type=angleadd
trigger1= 1
value=-12

[State 7801, RemoveExplod]
type = RemoveExplod
trigger1 = time > 44

[State 7801, ChangeState]
type = DestroySelf
trigger1 = time > 44
;========================<BG>=============================
[Statedef 7803]
type=A
velset=0,0
anim=7803
sprpriority=-3
[State 7803, Bind]
type=posset
trigger1= 1
x=-180*root,facing
y=ceil(pos y-screenpos y)-10
[State 7803,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 7803, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha=96,255

[State 7803, circle]
type=explod
trigger1=!time
anim=7890
ID=7890
pos=0,30
sprpriority=-2
postype=p1
supermovetime=-1
removetime=-1
bindtime=-1
scale=.38,.38

[State 7803, RemoveExplod]
type = RemoveExplod
trigger1 = time > 44
[State 7803, ChangeState]
type = DestroySelf
trigger1 = time > 44
;========================<HYPER PORTRAIT>=============================
[Statedef 7804]
type=A
velset=0,0
anim=7804
sprpriority=-1
[State 7804, PosSet]
type = PosSet
trigger1 = !Time
x = -300*root,facing
[State 78040, Bind]
type=posset
trigger1= 1
y=ceil(pos y-screenpos y)+20
[State 7804,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 7804, Trans]
type = Trans
trigger1 = 1
trans = add

[State 7804, VelSet]
type = VelSet
trigger1 = Time<10
x = 17
[State 7804, VelMul]
type = VelMul
trigger1 = Time<20
x = .85
[State 7804, VelSet]
type = VelSet
trigger1 = Time>19&&Time<26
x = 1
[State 7804, VelMul]
type = VelMul
trigger1 = Time>25
x = 1.15
[State 7804, ChangeState]
type = DestroySelf
trigger1 = time > 44
;============================<FLASHY CIRCLE>=================
[Statedef 7805]
type    = A
movetype= I
physics = N
anim = 7805
velset = 0,0
ctrl = 0
sprpriority = 5

[State 7805,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause=1

[State 7805, scale]
type=angledraw
trigger1=time<=15
scale=0+(time*.02),0+(time*.02)
[State 7805, scale]
type=angledraw
trigger1=time>15
scale=.3,.3
[State 7805, scale]
type=angledraw
trigger1=time>=45
scale=0,0
[State 7805, Rotate]
type=angleadd
trigger1= 1
value=-6
[State 7805, TRANS]
type = Trans
trigger1 = 1
trans = add
[State 7805, PALFX]
type = PalFX
trigger1 = !time
time = 1
add = 0,0,0
[State 7805, End]
type=destroyself
trigger1= time>=45
;============================<RIGHT AFTERIMAGE>=================
[Statedef 7806]
physics=N
anim = root,anim

[State 7806, SprPriority]
type = SprPriority
trigger1 = 1
value = 0

[State 7806, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2
ignorehitpause = 1

[State 7806, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 7806, BindToParent]
type = BindToroot
trigger1 = time = 0
time = 1
pos = 0,0
[State 7806, BindToParent]
type = BindToroot
trigger1 = time = 0
time = 1
pos = 0,0

[State 7806, VelSet]
type = VelSet
trigger1 = 1
x = .4

[State 7806, Trans]
type = Trans
trigger1 = 1
trans=addalpha
alpha=120-2*(time),256

[State 7806, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 46
trigger2 = root,movetype =h

[State 7806, DestroySelf]
type = DestroySelf
trigger1 = Time >= 46
trigger2 = root,movetype =h
;============================<LEFT AFTERIMAGE>=================
[Statedef 7807]
physics=N
anim = root,anim

[State 7807, SprPriority]
type = SprPriority
trigger1 = 1
value = 0
[State 7807, BindToParent]
type = BindToroot
trigger1 = !time
time = 1
pos = 0,0

[State 7807, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2
ignorehitpause = 1

[State 7807, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7807, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 7807, BindToParent]
type = BindToroot
trigger1 = time = 0
time = 1
pos = 0,0
[State 7807, BindToParent]
type = BindToroot
trigger1 = time = 0
time = 1
pos = 0,0

[State 7807, VelSet]
type = VelSet
trigger1 = 1
x = -.4

[State 7807, Trans]
type = Trans
trigger1 = 1
trans=addalpha
alpha=120-2*(time),256

[State 7807, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 46
trigger2 = root,movetype =h

[State 7807, DestroySelf]
type = DestroySelf
trigger1 = Time >= 46
trigger2 = root,movetype =h
;========================<SUPER CHARGE LVL 2>=============================
[Statedef 7810]
physics=N
velset=0,0
anim=9741

[State 7810, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3400
time = 1
pos = -4,-75
ignorehitpause = 1
[State 7810, EnvColor]
type = BGPalFX
trigger1 = time <= 52
mul=60,60,226
time = 2
invertall = 0
ignorehitpause = 1
color=20
[State 7810,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2=nobardisplay

[State 7810, small circle]
type=explod
trigger1=time=15
anim=7810
ID=7810
sprpriority=5
postype=p1
supermovetime=-1
removetime=45
[State 7810, scale]
type=modifyexplod
trigger1=numexplod(7810)
ID=7810
scale= .5+(.03*(time-15)),.5+(.03*(time-15))
trans=addalpha
alpha=ceil(100-3*(time-15)),256

[State 7810, Super]
type = Helper
trigger1 = !time
id = 7811
pos = 0,0
postype = P1
name = "Spining circle"
stateno = 7811
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .55
size.yscale = .55

[State 7810, circle]
type=explod
trigger1=!time
anim=7812
ID=7812
sprpriority=5
postype=p1
supermovetime=-1
removetime=15
[State 7810, scale]
type=modifyexplod
trigger1=numexplod(7812)
ID=7812
scale= 1-(time*.066666),1-(time*.066666)
trans=addalpha
alpha=ceil(100+20.4*time),256

[State 7810, Super]
type = Helper
trigger1 = !time
id = 7813
pos = 0,0
postype = P1
name = "Background"
stateno = 7813
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .5
size.yscale = .5

[State 7810, Super]
type = Helper
trigger1 = !time
id = 7814
pos = 0,0
postype = P1
name = "HyperPortrait"
stateno = 7814
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .38
size.yscale = .38

[State 7810, Super]
type = Helper
trigger1 = !time
id = 7815
pos = 0,0
postype = P1
name = "Flashy Circle"
stateno = 7815
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = 1
size.yscale = 1
[State 7810, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "RightAfterimage"
ID =7816
stateno = 7816
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
[State 7810, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "LeftAfterimage"
ID =7817
stateno = 7817
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 7810, Safety]
type=removeexplod
trigger1= time>=53
[State 7810, End]
type=destroyself
trigger1= time>=53
;=====================<SPINNING CIRCLE>=============================
[Statedef 7811]
type    = A
movetype= I
physics = N
anim = 7811
velset = 0,0
ctrl = 0
sprpriority = 0

[State 7811,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause=1

[State 7811, trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha=0+(time*50),256

[State 7811, scale]
type=angledraw
trigger1=1
scale=.35,.35

[State 7811, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)

[State 7811, Rotate]
type=angleadd
trigger1= 1
value=-12

[State 7811, RemoveExplod]
type = RemoveExplod
trigger1 = time > 52

[State 7811, ChangeState]
type = DestroySelf
trigger1 = time > 52
;========================<BG>=============================
[Statedef 7813]
type=A
velset=0,0
anim=7813
sprpriority=-3
[State 7813, Bind]
type=posset
trigger1= 1
x=-180*root,facing
y=ceil(pos y-screenpos y)-10
[State 7813,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 7813, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha=96,255

[State 7813, circle]
type=explod
trigger1=!time
anim=7890
ID=7890
pos=0,30
sprpriority=-2
postype=p1
supermovetime=-1
removetime=-1
bindtime=-1
scale=.38,.38

[State 7813, RemoveExplod]
type = RemoveExplod
trigger1 = time > 52
[State 17813, ChangeState]
type = DestroySelf
trigger1 = time > 52
;========================<HYPER PORTRAIT>=============================
[Statedef 7814]
type=A
velset=0,0
anim=7814
sprpriority=-1
[State 7814, PosSet]
type = PosSet
trigger1 = !Time
x = -320*root,facing
[State 7814, Bind]
type=posset
trigger1= 1
y=ceil(pos y-screenpos y)+20
[State 7814,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 7814, Trans]
type = Trans
trigger1 = 1
trans = add

[State 7814, VelSet]
type = VelSet
trigger1 = Time<10
x = 19
[State 7814, VelMul]
type = VelMul
trigger1 = Time<22
x = .85
[State 7814, VelSet]
type = VelSet
trigger1 = Time>21&&Time<33
x = 1
[State 7814, VelMul]
type = VelMul
trigger1 = Time>32
x = 1.15
[State 7814, ChangeState]
type = DestroySelf
trigger1 = time > 52
;============================<FLASHY CIRCLE>=================
[Statedef 7815]
type    = A
movetype= I
physics = N
anim = 7815
velset = 0,0
ctrl = 0
sprpriority = 5

[State 7815,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause=1

[State 7815, scale]
type=angledraw
trigger1=time<=15&&parent, stateno = 7810
scale=0+(time*.02),0+(time*.02)
[State 7815, scale]
type=angledraw
trigger1=time>15&&parent, stateno = 7810
scale=.3,.3
[State 7815, scale]
type=angledraw
trigger1=time>=53&&parent, stateno = 7810
scale=0,0
[State 7815, Rotate]
type=angleadd
trigger1= 1
value=-6
[State 7815, trans]
type = Trans
trigger1 = 1
trans = add
[State 7815, palfx]
type = PalFX
trigger1 = !time
time = 1
add = 0,0,0
[State 7815, scale]
type=angledraw
trigger1=parent, stateno = 7600
scale=0+(time*.017),0+(time*.017)
[State 7815, End]
type=destroyself
trigger1= time>=53&&parent,stateno=7810
[State 7815, End]
type=destroyself
trigger1= time>=30&&parent,stateno!=7810
;============================<RIGHT AFTERIMAGE>=================
[Statedef 7816]
physics=N
anim = root,anim

[State 7816, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,80
mul = 126,126,256
color = 32

[State 7816, SprPriority]
type = SprPriority
trigger1 = 1
value = 0

[State 7816, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2
ignorehitpause = 1

[State 7816, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 7816, BindToParent]
type = BindToroot
trigger1 = time = 0
time = 1
pos = 0,0
[State 7816, BindToParent]
type = BindToroot
trigger1 = time = 0
time = 1
pos = 0,0

[State 7816, VelSet]
type = VelSet
trigger1 = 1
x = .4

[State 7816, Trans]
type = Trans
trigger1 = 1
trans=addalpha
alpha=120-2*(time),256

[State 7816, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 53
trigger2 = root,movetype =h

[State 7816, DestroySelf]
type = DestroySelf
trigger1 = Time >= 53
trigger2 = root,movetype =h
;============================<LEFT AFTERIMAGE>=================
[Statedef 7817]
physics=N
anim = root,anim

[State 7817, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 0,0,80
mul = 126,126,256
color = 32

[State 7817, SprPriority]
type = SprPriority
trigger1 = 1
value = 0
[State 7817, BindToParent]
type = BindToroot
trigger1 = !time
time = 1
pos = 0,0

[State 7817, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2
ignorehitpause = 1

[State 7817, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7817, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 7817, BindToParent]
type = BindToroot
trigger1 = time = 0
time = 1
pos = 0,0
[State 0, BindToParent]
type = BindToroot
trigger1 = time = 0
time = 1
pos = 0,0

[State 7817, VelSet]
type = VelSet
trigger1 = 1
x = -.4

[State 7817, Trans]
type = Trans
trigger1 = 1
trans=addalpha
alpha=120-2*(time),256

[State 7817, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 53
trigger2 = root,movetype =h

[State 7817, DestroySelf]
type = DestroySelf
trigger1 = Time >= 53
trigger2 = root,movetype =h
;========================<SUPER CHARGE LVL 2>=============================
[Statedef 7820]
physics=N
velset=0,0
anim=9741

[State 7820, BindToRoot]
type = BindToRoot
trigger1 = root,stateno=3500
time = 1
pos = 15,-73
[State 7820, EnvColor]
type = BGPalFX
trigger1 = time <= 64
mul=226,60,60
time = 2
invertall = 0
ignorehitpause = 1
color=20
[State 7820,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2=nobardisplay

[State 7820, small circle]
type=explod
trigger1=time=15
anim=7820
ID=7820
sprpriority=5
postype=p1
supermovetime=-1
removetime=45
[State 7820, scale]
type=modifyexplod
trigger1=numexplod(7820)
ID=7820
scale= .5+(.03*(time-15)),.5+(.03*(time-15))
trans=addalpha
alpha=ceil(100-3*(time-15)),256

[State 7820, Super]
type = Helper
trigger1 = !time
id = 7821
pos = 0,0
postype = P1
name = "Spining circle"
stateno = 7821
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .55
size.yscale = .55

[State 7820, circle]
type=explod
trigger1=!time
anim=7822
ID=7822
sprpriority=5
postype=p1
supermovetime=-1
removetime=15
[State 7820, scale]
type=modifyexplod
trigger1=numexplod(7822)
ID=7822
scale= 1-(time*.066666),1-(time*.066666)
trans=addalpha
alpha=ceil(100+20.4*time),256

[State 7820, Super]
type = Helper
trigger1 = !time
id = 7823
pos = 0,0
postype = P1
name = "Background"
stateno = 7823
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .5
size.yscale = .5

[State 7820, Super]
type = Helper
trigger1 = !time
id = 7824
pos = 0,0
postype = P1
name = "HyperPortrait"
stateno = 7824
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = .38
size.yscale = .38

[State 7820, Super]
type = Helper
trigger1 = !time
id = 7825
pos = 0,0
postype = P1
name = "Flashy Circle"
stateno = 7825
helpertype = normal
supermove = 1
keyctrl = 0
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
size.xscale = 1
size.yscale = 1
[State 7820, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "RightAfterimage"
ID =7826
stateno = 7826
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
[State 7820, Helper]
type = Helper
trigger1 = !Time
helpertype = normal
name = "LeftAfterimage"
ID =7827
stateno = 7827
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 7820, Safety]
type=removeexplod
trigger1= time>=65
[State 7820, End]
type=destroyself
trigger1= time>=65
;=====================<SPINNING CIRCLE>=============================
[Statedef 7821]
type    = A
movetype= I
physics = N
anim = 7821
velset = 0,0
ctrl = 0
sprpriority = 0

[State 7821,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause=1

[State 7821, trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha=0+(time*50),256

[State 7821, scale]
type=angledraw
trigger1=1
scale=.35,.35

[State 7821, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)

[State 7821, Rotate]
type=angleadd
trigger1= 1
value=-12

[State 7821, RemoveExplod]
type = RemoveExplod
trigger1 = time > 64

[State 7821, ChangeState]
type = DestroySelf
trigger1 = time > 64
;========================<BG>=============================
[Statedef 7823]
type=A
velset=0,0
anim=7823
sprpriority=-3
[State 7823, Bind]
type=posset
trigger1= 1
x=-180*root,facing
y=ceil(pos y-screenpos y)-10
[State 7823,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 7823, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha=96,255

[State 7823, circle]
type=explod
trigger1=!time
anim=7890
ID=7890
pos=0,30
sprpriority=-2
postype=p1
supermovetime=-1
removetime=-1
bindtime=-1
scale=.38,.38

[State 7823, RemoveExplod]
type = RemoveExplod
trigger1 = time > 64
[State 7823, ChangeState]
type = DestroySelf
trigger1 = time > 64
;========================<HYPER PORTRAIT>=============================
[Statedef 7824]
type=A
velset=0,0
anim=7824
sprpriority=-1
[State 7824, PosSet]
type = PosSet
trigger1 = !Time
x = -370*root,facing
[State 7824, Bind]
type=posset
trigger1= 1
y=ceil(pos y-screenpos y)+20
[State 7824,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 7824, Trans]
type = Trans
trigger1 = 1
trans = add

[State 7824, VelSet]
type = VelSet
trigger1 = Time<10
x = 22
[State 7824, VelMul]
type = VelMul
trigger1 = Time<24
x = .85
[State 7824, VelSet]
type = VelSet
trigger1 = Time>23&&Time<40
x = 1
[State 7824, VelMul]
type = VelMul
trigger1 = Time>39
x = 1.15
[State 7824, ChangeState]
type = DestroySelf
trigger1 = time > 64
;============================<FLASHY CIRCLE>=================
[Statedef 7825]
type    = A
movetype= I
physics = N
anim = 7825
velset = 0,0
ctrl = 0
sprpriority = 5

[State 7825,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause=1

[State 7825, scale]
type=angledraw
trigger1=time<=15
scale=0+(time*.02),0+(time*.02)
[State 7825, scale]
type=angledraw
trigger1=time>15
scale=.3,.3
[State 7825, scale]
type=angledraw
trigger1=time>=65
scale=0,0
[State 7825, Rotate]
type=angleadd
trigger1= 1
value=-6
[State 7825, trans]
type = Trans
trigger1 = 1
trans = add
[State 7825, palfx]
type = PalFX
trigger1 = !time
time = 1
add = 0,0,0
[State 7825, End]
type=destroyself
trigger1= time>=65
;============================<RIGHT AFTERIMAGE>=================
[Statedef 7826]
physics=N
anim = root,anim

[State 7826, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 8,0,0
mul = 256,126,126
color = 32

[State 7826, SprPriority]
type = SprPriority
trigger1 = 1
value = 0

[State 7826, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2
ignorehitpause = 1

[State 7826, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 7826, BindToParent]
type = BindToroot
trigger1 = !Time
time = 1
pos = -210,0

[State 7826, VelSet]
type = VelSet
trigger1 = Time<31
x = 7
[State 7826, VelSet]
type = VelSet
trigger1 = Time>30
x = .4

[State 7826, Trans]
type = Trans
trigger1 = 1
trans=addalpha
alpha=120-floor(.5*(time)),256

[State 7826, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 65
trigger2 = root,movetype =h

[State 7826, DestroySelf]
type = DestroySelf
trigger1 = Time >= 65
trigger2 = root,movetype =h
;============================<LEFT AFTERIMAGE>=================
[Statedef 7827]
physics=N
anim = root,anim

[State 7827, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 80,0,80
mul = 256,126,126
color = 32

[State 7827, SprPriority]
type = SprPriority
trigger1 = 1
value = 0

[State 7827, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2
ignorehitpause = 1

[State 7827, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 7827, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 7827, BindToParent]
type = BindToroot
trigger1 = !time
time = 1
pos = 210,0

[State 7827, VelSet]
type = VelSet
trigger1 = Time<31
x = -7
[State 7827, VelSet]
type = VelSet
trigger1 = Time>30
x = -.4

[State 7827, Trans]
type = Trans
trigger1 = 1
trans=addalpha
alpha=120-floor(.5*(time)),256

[State 7827, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 65
trigger2 = root,movetype =h

[State 7827, DestroySelf]
type = DestroySelf
trigger1 = Time >= 65
trigger2 = root,movetype =h
;========================<SUPER FINISH>=============================
[Statedef 7905]
type=A
velset=0,0
anim=9741
sprpriority=-7
[State 7905, Bind]
type=posset
trigger1= 1
x=0
y=ceil(pos y-screenpos y)+120
ignorehitpause=1

[State 7905, Snd]
type=playsnd
trigger1= !time
value=7,8
ignorehitpause=1

[State 7905, MvC]
type=explod
trigger1= !time
anim=7905
ID=7905
postype=left
bindtime=-1
removetime=80
pausemovetime=999
supermovetime=999
scale=1,1
sprpriority=-7
ignorehitpause=1
[State 0, VarSet]
type = VarSet
trigger1 =!Time
var(55)=7990
[State 0, VarSet]
type = VarSet
trigger1 =root,stateno=[3100,3199]
var(55)=7991
[State 0, VarSet]
type = VarSet
trigger1 =root,stateno=[3200,3249]
var(55)=7992
[State 0, VarSet]
type = VarSet
trigger1 =root,stateno=[3250,3299]
var(55)=7993
[State 0, VarSet]
type = VarSet
trigger1 =root,stateno=[3400,3499]
var(55)=7994
[State 0, VarSet]
type = VarSet
trigger1 =root,stateno=[3500,3599]
var(55)=7995

[State 7905, Circle]
type=explod
trigger1= !time
anim=var(55)
ID=7990
sprpriority=-6
postype=left
pos=160,120
bindtime=-1
removetime=80
pausemovetime=999
supermovetime=999
ignorehitpause=1
[State 7905, Scale]
type=modifyexplod
trigger1= numexplod(7990)
ID=7990
scale=.5+(.011*1.12**(time)),.5+(.011*1.12**(time))
pos=160,120
ignorehitpause=1
[State 2OS]
type=varadd
trigger1=numexplod(7990)&&time>=35
var(2)=10
ignorehitpause=1
persistent=1
[State 2OS]
type=modifyexplod
trigger1=var(2)
id=7990
trans=addalpha
alpha=256,0+(var(2))
ignorehitpause=1
persistent=1

[State 7905, Safety]
type=removeexplod
trigger1= time>80 && numexplod
trigger2= roundstate<3
ignorehitpause=1
[State 7905, nobars]
type=assertspecial
trigger1= time<=80
flag=nobardisplay
flag2=noFG
flag3=globalnoshadow
ignorehitpause=1
[State 7905, nobars]
type=assertspecial
trigger1= time<=80
flag=nomusic
flag2=NoBG
ignorehitpause=1

[State 7905, End]
type=destroyself
trigger1= roundstate<3
ignorehitpause=1
;========================<COUNTER FX>=============================
[Statedef 7999]
type=A
velset=0,0
anim=7999

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(58) = root,var(58)
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 7999
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 7
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7600, Bind]
type=posset
trigger1= Time < 6
x=(130-(time*9))*-(IfElse(var(58)=1,1,-1))
y=ceil(pos y-screenpos y)+60
ignorehitpause = 1

[State 7600, Bind]
type=posset
trigger1= Time > 5 && Time < 31
x=90*-(IfElse(var(58)=1,1,-1))
y=ceil(pos y-screenpos y)+60
ignorehitpause = 1

[State 7600, Bind]
type=posset
trigger1= Time > 30
x=(90+((time-30)*9))*-(IfElse(var(58)=1,1,-1))
y=ceil(pos y-screenpos y)+60
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 36
ignorehitpause = 1
;========================<BLEH>=============================
[Statedef 76363]
type=A
velset=0,0
anim=76363
sprpriority=-3
[State 0, EnvColor]
type = BGPalFX
trigger1 = 1
mul=226,60,60
time = 2
invertall = 0
ignorehitpause = 1
color=20
[State 7900, Bind]
type=posset
trigger1= root,animelemtime(5)<80 || root,animelemtime(5)>129
x=root,pos x - 30*root, facing
y=ceil(pos y-screenpos y)-370
[State 7900, Bind]
type=posset
trigger1= root,animelemtime(5)>79 && root,animelemtime(5)<130
x=root,pos x-600*root,facing
y=ceil(pos y-screenpos y)-50
[State -2,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 8500, scale]
type=angledraw
trigger1=1
scale=1,1
[State 8500, Rotate]
type=angleadd
trigger1= !Time
value=IfElse(root,animelemtime(5)=80,25,-35)
[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha=185,255

[State 1150, ChangeState]
type = DestroySelf
trigger1 = time > 34
;---Guard Normal---
[Statedef 8060]
type=A
physics=N
movetype=I
anim=8060
velset=0,0
sprpriority=5

[State 8000, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8000, Scale]
type=angledraw
trigger1= 1
scale= .125+(.046875*time), .125+(.046875*time)
[State 8000, Trans]
type=trans
trigger1= time<4
trans= addalpha
alpha= 256, 256
[State 8000, Trans]
type=trans
trigger1= time>=4
trans= addalpha
alpha= 256 - 64*(time-4), 256

[State 8000, End]
type=destroyself
trigger1= time>=8


;---Guard Special---
[Statedef 8061]
type=A
physics=N
movetype=I
anim=8061
velset=0,0
sprpriority=5

[State 8001, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8001, Scale]
type=angledraw
trigger1= 1
scale= .25+(.03125*time), .25+(.03125*time)
[State 8001, Trans]
type=trans
trigger1= time<4
trans= addalpha
alpha= 256, 256
[State 8001, Trans]
type=trans
trigger1= time>=4
trans= addalpha
alpha= 256 - 64*(time-4), 256

[State 8001, End]
type=destroyself
trigger1= time>=8
;---Flash---
[Statedef 1234567]
anim=9741

[State 0, AllPalFX]
type = AllPalFX
trigger1 = gametime%4 = 0
time = 1
add = 512,512,512
ignorehitpause = 1

[State 8001, End]
type=destroyself
trigger1= time>=20
;========================<CAMERA CONTROL>=============================
[StateDef 8999]
type = S
velSet = 0,0
anim = 9741

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2

