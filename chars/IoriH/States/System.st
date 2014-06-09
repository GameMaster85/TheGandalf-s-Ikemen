; _____________
;| Iori by Hero |
;¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<SYSTEM STATES>========================================
;============================================================================================
;-----------<STANDING>-----------
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0,0
sprpriority = 0

[State 0, Gone]
type = removeexplod
trigger1 = ishelper

[State 0, Gone]
type = destroyself
trigger1 = ishelper

[State 0, Anim]
type=changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && !animtime
value = 0

[State 0, dead]
type = changestate
trigger1 = !alive
value = 5050
;-----------<JUMP START>-----------
[Statedef 40]
type = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 40, var]
type = VarSet
trigger1 = !Time && AILevel
var(3)= IfElse((p2dist x > 240 || p2dist y > 180 || random < 100),3,1)

[State 40, var]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifelse((enemynear,movetype!=A || backedgebodydist < 11),1,ifelse((enemynear,movetype=A),-1,0))

[State 40, var]
type = VarSet
trigger1 = !Time && AILevel<1
var(3) = IfElse(Command = "highjump",3,1)

[State 40, var]
type = VarSet
trigger1 = AILevel<1
sysvar(1) = ifelse(!Time,0,ifelse(command="holdfwd",1,ifelse(command="holdback",-1,sysvar(1))))

[State 40, var]
type = VarSet
trigger1= AILevel<1 && var(3)!=3 && command!="holdup"
trigger2= AILevel && var(3)!=3 && random<100
var(3) = 2

[State 40, Vel]
type = VelSet
trigger1= !AnimTime && var(3)!=3
x=IfElse(!sysvar(1),const(velocity.jump.neu.x),IfElse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y=IfElse(var(3)=2,.8,1)*const(velocity.jump.y)

[State 40, Vel]
type = VelSet
trigger1= !AnimTime && var(3)=3
x=IfElse(!sysvar(1),const(velocity.jump.neu.x),IfElse(sysvar(1)=1,1.5*const(velocity.jump.fwd.x),1.5*const(velocity.jump.back.x)))
y=IfElse(!sysvar(1),1.1,1)*const(velocity.jump.y)

[State 40, Vel]
type = velset
trigger1 = !AnimTime && var(3)=3 && sysvar(1)
x = IfElse(!sysvar(1),const(velocity.jump.neu.x),IfElse(sysvar(1)=1,1.5*const(velocity.jump.fwd.x),1.5*const(velocity.jump.back.x)))
y = Const(velocity.jump.y)

[State 40, Vel]
type = velset
trigger1= !AnimTime && PrevStateNo=100 && sysvar(1)=1
trigger1= var(3):=3
x = Const(velocity.runjump.fwd.x)

[State 40, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1
;-----------<JUMP IN AIR>-----------
[Statedef 50]
type = A
physics = A

[State -3, shadow]
type = AfterImage
trigger1 = var(3) = 3 && !Time && !var(15)
time = 2
timegap = 1
framegap = 3
length = 12
palbright = 0,0,0
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 120,120,120
palpostbright = 0,0,0
trans = add1

[State 0, shadowtime]
type = AfterImageTime
trigger1 = var(3) = 3 && !var(15)
time = 2

[State 50, Snd]
type = playsnd
trigger1 = !Time
value = 0,ifelse(var(3) = 3,41,40)

[State 52, Dust]
type = Explod
trigger1 = !Time
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
trigger1 = Time = 3
trigger2 = Time = 6
trigger3 = Time = 9
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

[State 50, Anim]
type = changeanim
trigger1 = !Time
value = ifelse(!(vel x), 41, ifelse((vel x)>0, 42, 43))
persistent = 0

[State 50, Anim]
type = changeanim
trigger1 = Anim != 44
trigger1 = Anim != 45
trigger1 = Anim != 46
trigger1 = Vel y >= -1
value = ifelse(!(vel x), 44, ifelse((vel x)>0, 45, 46))
persistent = 0
;-----------<JUMP LAND>-----------
[Statedef 52]
type = S
physics = S
ctrl = 0
anim = IfElse((PrevStateNo=1100||PrevStateNo=11100),1190,47)
movehitpersist = 1

[State 52, stop]
type = velset
trigger1 = 1
x = 0
y = 0

[State 52, Pos]
type = posset
trigger1 = 1
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

[State 52, ctrl]
type = ctrlset
trigger1 = Time > 1
trigger1 = prevstateno < 1000
value = 1

[State 52, Guard]
type= changestate
trigger1= inguarddist
trigger1= ctrl && command="holdback"
value= 120

[State 52, nowalk]
type = assertspecial
trigger1 = time < 3 || (prevstateno=[200,4999])
flag = nowalk
ignorehitpause=1

[State 52, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;-----------<RUN>-----------
[Statedef 100]
type = S
physics = S
ctrl = 0
anim = 100
sprpriority = 2
velset = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime && Anim = 100
value = 100

[State 100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn
ignorehitpause=1

[State 100, PlaySnd]
type = PlaySnd
triggerall = Anim = 100
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = S0,100
volume = 255
channel = 1

[State 100, VelSet]
type = VelSet
trigger1 = Anim = 100
x = const(velocity.run.fwd.x)

[State 100, ChangeAnim]
type = ChangeAnim
trigger1 = command != "holdfwd"
triggerall = Anim = 100 && AILevel<1
value = 101
persistent = 0

[State 100, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 100 && AILevel
trigger1 = P2BodyDist x < 35
trigger2 = P2MoveType = A
value = 101
persistent = 0

[State 100, VelAdd]
type = VelAdd
trigger1 = Anim = 101
x = -.2

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Anim = 101
value = S0,101
volume = 255
channel = 1
persistent = 0

[State 100, ChangeState]
type = Changestate
trigger1 = !AnimTime
triggerall = Anim = 101
value = 0
ctrl = 1

[State 100, Jump]
type= changestate
trigger1= command="holdfwd" && command="holdup"
value= 40
;-----------<DASH>-----------
[Statedef 105]
type = S
physics = S
velset = 0,0
anim = 105
ctrl = 0
sprpriority = 1

[State 105, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(2) = 0 && Command = "holdfwd"
trigger1 = Anim = 105
value = 100
ctrl = 0

[State 105, VelSet]
type = VelSet
trigger1 = AnimElem = 2 && Anim = 105
x = 1.98*const(velocity.run.fwd.x)

[State 105, Explod]
type = Explod
trigger1 = Animelem = 2 && Anim = 105
anim = 7530
ID = 7530
sprpriority = -1
postype = p1
pos = -10,0
vel = 0,0
ownpal = 1
scale = .5*const(size.xscale),.5*const(size.yscale)

[State 105, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && Anim = 105
value = S0,105
volume = 255
channel = 1

[State 0, VelMul]
type = VelSet
trigger1 = !AnimTime
x = 0
y = 0

[State 105, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl=1
;-----------<HOP BACK>-----------
[Statedef 110]
type = S
physics = N
velset = 0,0
anim = 110
ctrl = 0
sprpriority = 1

[State 110, VelSet]
type = VelSet
trigger1 = Time = 3 && Anim = 110
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 3 && Anim = 110
statetype = A

[State 0, VelAdd]
type = VelAdd
trigger1 = StateType = A && Anim = 110
y = .5

[State 110, Explod]
type = Explod
trigger1 = Animelem = 1 && Anim = 110
anim = 7530
ID = 7530
facing = -1
sprpriority = -1
postype = p1
pos = 0,0
ownpal = 1
scale = .5*const(size.xscale),.5*const(size.yscale)

[State 110, PlaySnd]
type = PlaySnd
triggerall = Anim = 110
trigger1 = AnimElem = 1
value = S0,105
volume = 255
channel = 1

[State 110, ChangeAnim]
type = ChangeAnim
trigger1 = Vel y > 0
trigger1 = Pos Y > -Vel Y
value = 111
persistent = 0

[State 110, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 111
statetype = S
physics = S

[State 110, ChangeState]
type = PosSet
trigger1 = Anim = 111
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = Anim = 111
x = 0
y = 0

[State 110, Dust]
type = Explod
trigger1 = Anim = 111
anim = 7520
ID = 7520
sprpriority = -2
postype = p1
scale = .5*const(size.xscale),.5*const(size.yscale)
pos = 0,0
ownpal = 1
pausemovetime = -1
supermovetime = -1
persistent = 0

[State 110, ChangeState]
type = ChangeState
trigger1 = !AnimTime && Anim = 111
value = 0
ctrl = 1
;-----------<LOSE BY TIME OVER>-----------
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 1
;-----------<CHEAP K.O.>-----------
[Statedef 171]
type = S
ctrl = 0
anim = 5950
velset = 0,0
[State 171, PosSet]
type = PosSet
trigger1 = 1
y = 0
[State 5130, nhb]
type=nothitby
trigger1= !alive
value=SCA
[State 171, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = S11,2
volume = 255
channel = 0
[State 171, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = ifelse(alive,5110,5150)
;-----------<WIN POSE DECIDER>-----------
[Statedef 180]
type = S

[State 180, Quote]
type = victoryquote
trigger1 = !Time
value = 1 + (random % 43)

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Kyo" ||enemynear, name = "Kyo Kusanagi"||enemynear, name = "KOF Kyo" ||enemynear, name = "KyoKusanagi" ||enemynear, name = "cvskyo"||enemynear, name = "cvskyo_normal"||enemynear, name = "Kyo_WLS"
value = 44 + (random % 7)

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Iori" ||enemynear, name = "Iori Yagami"||enemynear, name = "KOF Iori" ||enemynear, name = "IoriYagami" ||enemynear, name = "cvs2_iori"||enemynear, name = "cvs2_iori_normal"||enemynear, name = "Iori_WLS"
value = 51 + (random % 2)

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Kagura" ||enemynear, name = "Chizuru Kagura"||enemynear, name = "Chizuru"
value = 53

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Kusanagi"||enemynear, name = "KOF Kusanagi" ||enemynear, name = "Kusanagi2002"||enemynear, name = "cvskyo_ex"||enemynear,name="cvskyo"&& enemynear,palno = [7,12]
value = 54 + (random % 2)

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Kula" ||enemynear, name = "Kula Diamond"||enemynear, name = "K9999"||enemynear, name = "Anjel"
value = 56

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Vanessa" ||enemynear, name = "KOF Vanessa"
value = 57

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Vice" ||enemynear, name = "Mature"||enemynear, name = "cvsvice"||enemynear, name = "cvsmature"
value = 58

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Shermie"
value = 59

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Ash Crimsom" ||enemynear, name = "Ash"
value = 60

[State 180, Quote]
type = victoryquote
trigger1 = !Time
trigger1 = enemynear, name = "Gato"
value = 61

[State 180, ChangeState]
type = ChangeState
trigger1 = !Time&&matchover
trigger1 = enemynear, name = "Kyo" ||enemynear, name = "Kyo Kusanagi"||enemynear, name = "KOF Kyo" ||enemynear, name = "KyoKusanagi" ||enemynear, name = "cvskyo"||enemynear, name = "cvskyo_normal"||enemynear, name = "Kyo_WLS"
value = 184

[State 180, ChangeState]
type = ChangeState
trigger1 = !time
trigger1= command="holdx" || command="holdy" || command="holdz" || command="holda" || command="holdb" || command="holdc"
value=ifelse((command="holdz" || command="holdc"),183,ifelse((command="holdy" || command="holdb"),182,181))

[State 190, ChangeState]
type = ChangeState
trigger1 = !Time
value = 181+random%3
;-----------<WIN 1>-----------
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = roundnotover

[State 192, snd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S4,15
volume = 255
channel = 0
;-----------<WIN 2>-----------
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = roundnotover

[State 182, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S4,16
volume = 255
channel = 0
[State 182, snd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S4,17
volume = 255
channel = 0
[State 182, snd]
type = PlaySnd
trigger1 = AnimElem = 23
value = S4,18
volume = 255
channel = 0
;-----------<WIN 3>-----------
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = roundnotover

[State 192, snd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S4,21
volume = 255
channel = 0
;-----------<WIN VS KYO>-----------
[Statedef 184]
type=S
anim=184
sprpriority = 1
ctrl = 0

[State 184, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = roundnotover

[State 184, Snd]
type=playsnd
trigger1= animelem=5
value=4,19
channel=0

;-----------<INTRO DECIDER>-----------
[Statedef 190]
type = S

[State 190, ChangeState]
type = ChangeState
triggerall= time = 1
trigger1 = (Enemynear, Name = "Kyo Kusanagi" && Enemynear, AuthorName = "Jmorphman" && enemynear,var(40)=0)
trigger2 = Enemynear, Name = "Kyo" && Enemynear, AuthorName = "Hero"
value = 350
[State 190, ChangeState]
type = ChangeState
trigger1 = Time =1
value = 191+random%3
;-----------<INTRO 1>-----------
[Statedef 191]
type = S
movetype = I
physics = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, snd]
type = PlaySnd
trigger1 = Time = 10
value = S4,11
volume = 255
channel = 0

[State 361, PosSet]
type = PosSet
triggerall= prevstateno=360
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)
y = 0

[State 361, Landing Sound]
type = PlaySnd
triggerall= prevstateno=360
trigger1 = !Time
value = 0,52
channel = 1

[State 361, Dust]
type = Explod
triggerall= prevstateno=360
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

[State 191, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
;-----------<INTRO 2>-----------
[Statedef 192]
type = S
movetype = I
physics = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, snd]
type = PlaySnd
trigger1 = Time = 57
value = S4,12
volume = 255
channel = 0

[State 192, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
;-----------<INTRO 3>-----------
[Statedef 193]
type = S
movetype = I
physics = S
ctrl = 0
anim = 193
velset = 0,0

[State 192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, snd]
type = PlaySnd
trigger1 = animelem=3
value = S4,13
volume = 255
channel = 0

[State 192, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
;-----------<INTRO 1>-----------
[Statedef 350]
type = S
movetype = I
physics = S
ctrl = 0
anim = 350
velset = 0,0

[State 191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, snd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S4,20
volume = 255
channel = 0

[State 0, Helper]
type = Helper
trigger1 = animelem= 6
helpertype = normal
name = "Intro Flame"
ID = 6000
stateno = 6000
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 191, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
;====================<TURNS INTRO>====================
[StateDef 360]
type = A
anim = 42
velSet = 0,0
ctrl = 0

[State 360, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 360, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 360, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 360, PosAdd]
type = posadd
trigger1 = Time=1
x = -ceil(2*abs(BackEdgeDist))

[State 360, VelSet]
type = VelSet
trigger1 = Time=1
x = abs((Helper(8999), RootDist x) / -40.0)
y = -10.25

[State 360, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 360, End]
type = ChangeState
trigger1 = Time
trigger1 = pos y > -vel y
value = 191
;-----------<TAUNT>-----------
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
poweradd=100

[State 195, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S4,13+(random%2)
volume = 255
channel = 0

[State 195, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;-----------<DODGE>-----------
[Statedef 900]
type=S
physics=S
movetype=I
anim=900
velset=0,0
ctrl=0
sprpriority=-1

[State 900, Snd]
type=playsnd
trigger1= !time
value = 3,8
channel = 0

[State 900, push]
type=playerpush
trigger1= 1
value=0
ignorehitpause=1

[State 900, hb]
type=hitby
trigger1= 1
value=SCA,AT
time=1

[State 900, attack]
type=changestate
trigger1= AILevel<1 && (time=[15,25])
trigger1= command="x" || command="y" || command="z" || command="a" || command="b" || command="c"
value=ifelse((command="x" || command="y" || command="z"),220,260)

[State 900, attack]
type=changestate
trigger1= AILevel && (time=[15,25]) && (p2dist x=[0,60]) && p2movetype!=A
value=ifelse(random<500,220,260)

[State 900, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;-----------<ROLL FORWARD>-----------
[Statedef 910]
type=S
physics=N
movetype=I
anim=910
velset=0,0
ctrl=0
sprpriority=-1

[State 910, Snd]
type=playsnd
trigger1= animelem=1
value=3,ifelse(random<500,0,1)
channel=0

[State 910, Vel]
type=velset
trigger1= animelemtime(2)>=0 && animelemtime(7)<0
x=4.8

[State 910, push]
type=playerpush
trigger1= 1
value=0
ignorehitpause=1

[State 910, hb]
type=nothitby
trigger1= animelemtime(8)<0
value=SCA,AA,AP
time=1

[State 910, hb]
type=hitby
trigger1= animelemtime(8)>=0
value=SCA,AA,AP,AT
time=1

[State 910, hb]
type=hitby
trigger1= 1
value=SCA,AT
time=1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
physics = S

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 760, image]
type=afterimage
trigger1= !Time && !var(15)
time=2
timegap=1
framegap=4
length=13
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=128,128,128
palpostbright=0,0,0
trans=add1

[State 910, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;-----------<ROLL BACKWARD>-----------
[Statedef 920]
type=S
physics=N
movetype=I
anim=920
velset=0,0
ctrl=0
sprpriority=-1

[State 910, Snd]
type=playsnd
trigger1= animelem=1
value=3,ifelse(random<500,0,1)
channel=0

[State 910, Vel]
type=velset
trigger1= animelemtime(2)>=0 && animelemtime(7)<0
x=-4.8

[State 910, push]
type=playerpush
trigger1= 1
value=0
ignorehitpause=1

[State 910, hb]
type=nothitby
trigger1= animelemtime(8)<0
value=SCA,AA,AP
time=1

[State 910, hb]
type=hitby
trigger1= animelemtime(8)>=0
value=SCA,AA,AP,AT
time=1

[State 910, hb]
type=hitby
trigger1= 1
value=SCA,AT
time=1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
physics = S

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 760, image]
type=afterimage
trigger1= !Time && !var(15)
time=2
timegap=1
framegap=4
length=13
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=128,128,128
palpostbright=0,0,0
trans=add1

[State 910, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;-----------<CUSTOM COMBO>-----------
[Statedef 930]
type=U
physics=U
movetype=A
anim=IfElse(StateType=A,931,930)
ctrl=0

[State 930, VarSet]
type = VarSet
trigger1 = !Time
var(15)=1

[State 930, VarSet]
type = VarSet
trigger1 = !Time
fvar(9)=power/10
ignorehitpause=1

[State 930, Super Finish]
type=helper
trigger1 = !Time
helpertype=normal
stateno=7700
ID=7700
name="CustomComboBar"
postype=left
pos=0,0
ownpal=1
ignorehitpause=1
supermovetime=36
size.xscale=.5
size.yscale=.5
facing = IfElse(teamside,1,-1)
ontop=1

[State 930, VelSet]
type = VelSet
trigger1 = StateType!=A&&!Time
x = 0
y = 0

[State 930, StateTypeSet]
type = StateTypeSet
trigger1 = StateType = A
physics = N

[State 930, PosFreeze]
type = PosFreeze
trigger1 = Anim = 931
value = 1

[State 930, Snd]
type=playsnd
trigger1= !time
value=3,8
channel=0
volume=255

[State 930, helper]
type=helper
trigger1= !time
helpertype=normal
stateno=7600
ID=7600
postype=p1
pos=-5,IfElse((anim=930),-114,-116)
ownpal=1
size.xscale=1
size.yscale=1
persistent=0
supermovetime=9999

[State 930, superchargepause]
type=superpause
trigger1= !time
time=30
anim=-1
sound=s7,2
darken=0
movetime=30

[State 930, Corner Push]
type=varset
trigger1= !time
fvar(5)= 0

[State 930, nhb]
type=nothitby
trigger1= 1
time=ceil(power/60)
value=SCA

[State 930, image]
type=afterimage
trigger1=time=30
time=2
timegap=1
framegap=4
length=13
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=64,128,192
palpostbright=0,0,0
trans=add1

[State 930, End]
type=changeanim
trigger1= anim=931 && Time=36
value=41+(vel x>0)+(vel x<0)*2
elem=5-(!vel x)*3
persistent=0

[State 930, CtrlSet]
type = CtrlSet
trigger1 = anim != 931 && statetype = A
value = 1

[State 930, Type]
type=statetypeset
trigger1= anim=[41,43]
statetype=A
physics=A

[State 930, End]
type=changestate
trigger1=!animtime && anim = 930
value=0
ctrl=1
;==========<ZERO COUNTER>==========
[Statedef 940]
type=S
physics=S
movetype=I
anim=940
ctrl=0
velset=0,0
poweradd=-1000
sprpriority=2
facep2=1

[State 940, strengthvar]
type=varset
trigger1= !Time && AILevel<1
var(17)=ifelse((command="bdx" || command="bdy" || command="bdz"),1,2)
ignorehitpause=1

[State 750, Snd]
type=playsnd
trigger1= !time
value=3,0
channel=0
[State 750, Super Pause FX]
type=helper
trigger1= !time
helpertype=normal
stateno=7610
ID=7250
postype=p1
pos=23,-74
ownpal=1
persistent=0
supermovetime=999
[State 750, Super Pause]
type=superpause
trigger1= !Time
time=20
movetime=20
anim=-1
sound=s7,1
p2defmul=1
darken=0
[State 750, End]
type=changestate
trigger1= time>=20
value=ifelse(var(17)=1,1100,220)
;-----------<POWER CHARGE>-----------
[Statedef 950]
type=S
physics=S
movetype=I
anim=950
ctrl=0
velset=0,0
facep2=1

[State 950, power]
type=poweradd
triggerall= (anim=950||anim=951||anim=952) && power<powermax
trigger1= AILevel<1 && (command="holdb" && command="holdy")
trigger2= AILevel
value=1+(time/16)

[State 950, Snd]
type=playsnd
trigger1= (anim=950||anim=951||anim=952) && time=8
value=3,9
channel=0

[State 950, flash]
type=palfx
trigger1= 1
time=1
add= 75+ceil(sin(time/6.0*pi)*75), 25+ceil(sin(time/6.0*pi)*25), 0

[State 950, FX]
type=helper
trigger1= (anim=950||anim=951||anim=952) && Time > 3
trigger1= !numhelper(7620)
helpertype=normal
stateno=7620
ID=7620
name="Power Charge"
postype=p1
pausemovetime=65535
supermovetime=65535
ownpal=1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State 950, Anim]
type=changeanim
triggerall= anim!=951 && Time > 11 && Anim != 960
trigger1= power > 999 && power < 2000
value=951

[State 950, Anim]
type=changeanim
triggerall= anim!=952 && Time > 11 && Anim != 960
trigger1= power > 1999
value=952

[State 950, Anim]
type=changeanim
triggerall= anim!=960
trigger1= AILevel<1 && (command!="holdb" || command!="holdy")
trigger2= power>=const(data.power) || power>=powermax || roundstate!=2
trigger3= AILevel && (inguarddist || p2bodydist x<160)
value=960

[State 950, ctrl]
type=ctrlset
trigger1=anim=960
value=1

[State 950, stopsnd]
type=stopsnd
trigger1= anim=960
channel=0
persistent=0

[State 950, End]
type=changestate
trigger1= anim=960 && !animtime
value=0
ctrl=1
;-----------<STAND PARRY>-----------
[Statedef 970]
type=S
physics=S
movetype=I
anim=970
velset=0,0
ctrl=0
sprpriority=2
poweradd=78
facep2=1

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0
ignorehitpause = 1

[State 970, hb]
type=hitby
trigger1=1
value=SCA,AT
time=1

[State 970, stop]
type=posfreeze
trigger1=1
value=1

[State 970, pause]
type=pause
trigger1=!time
time=15
movetime=15
endcmdbuftime=15
pausebg=0

[State 970, pause]
type=pause
trigger1= !time && numenemy
trigger1= (enemynear,movehit=1)
time= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
movetime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
endcmdbuftime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
pausebg=0

[State 970, blueflash]
type=palfx
trigger1= !time
add=0,50,255
sinadd=0,-50,-255,60
time=15

[State 970, Snd]
type=playsnd
trigger1= !time
value=3,2
channel=0

[State 970, Snd]
type=playsnd
trigger1= !time
value=7,3

[State 970, Spark]
type=explod
trigger1= animelem=2
anim=7640
ID=7640
sprpriority=5
postype=p1
pos=36,-70
pausemovetime=60
ownpal=1
scale=.5*const(size.xscale),.5*const(size.yscale)

[State 970, nowalk]
type=assertspecial
trigger1=1
flag=nowalk
ignorehitpause=1

[State 970, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;-----------<CROUCH PARRY>-----------
[Statedef 980]
type=C
physics=C
movetype=I
anim=980
velset=0,0
ctrl=0
sprpriority=2
poweradd=78
facep2=1

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0
ignorehitpause = 1

[State 980, hb]
type=hitby
trigger1=1
value=SCA,AT
time=1

[State 980, stop]
type=posfreeze
trigger1=1
value=1

[State 980, pause]
type=pause
trigger1=!time
time=15
movetime=15
endcmdbuftime=15
pausebg=0

[State 980, pause]
type=pause
trigger1= !time && numenemy
trigger1= (enemynear,movehit=1)
time= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
movetime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
endcmdbuftime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
pausebg=0

[State 980, blueflash]
type=palfx
trigger1= !time
add=0,50,255
sinadd=0,-50,-255,60
time=15

[State 980, Snd]
type=playsnd
trigger1= !time
value=3,2
channel=0

[State 980, Snd]
type=playsnd
trigger1= !time
value=7,3

[State 980, Spark]
type=explod
trigger1= animelem=2
anim=7640
ID=7640
sprpriority=5
postype=p1
pos=27,-21
pausemovetime=60
ownpal=1
scale=.5*const(size.xscale),.5*const(size.yscale)

[State 980, nowalk]
type=assertspecial
trigger1=1
flag=nowalk
ignorehitpause=1

[State 980, End]
type=changestate
trigger1= !animtime
value=11
ctrl=1
;-----------<AERIAL PARRY>-----------
[Statedef 990]
type=A
physics=A
movetype=I
anim=990
ctrl=0
sprpriority=2
poweradd=78
facep2=1

[State 702, hb]
type=hitby
trigger1=time<15
value=SCA,AT
time=1

[State 702, pause]
type=pause
trigger1=!time
time=15
movetime=15
endcmdbuftime=15
pausebg=0

[State 702, pause]
type=pause
trigger1= !time && numenemy
trigger1= (enemynear,movehit=1)
time= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
movetime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
endcmdbuftime= ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
pausebg=0

[State 702, Type]
type=statetypeset
trigger1= time<15
physics=N

[State 702, stop]
type=posfreeze
trigger1= time<15
value=1

[State 702, Vel]
type=velset
trigger1= time=15
x=ifelse(vel x>2,2,ifelse(vel x<-2,-2,vel x))
y=ifelse(vel y<-2,vel y,-2)

[State 702, Type]
type=statetypeset
trigger1= time>=15
physics=A

[State 702, ctrl]
type=ctrlset
trigger1= time>=15
value=1

[State 702, blueflash]
type=palfx
trigger1= !time
add=0,64,255
sinadd=0,-64,-255,60
time=15

[State 702, Snd]
type=playsnd
trigger1= !time
value=3,2
channel=0

[State 702, Snd]
type=playsnd
trigger1= !time
value=7,3

[State 702, Spark]
type=explod
trigger1= animelem=2
anim=7640
ID=7640
sprpriority=5
postype=p1
pos=41,-72
pausemovetime=60
ownpal=1
scale=.5*const(size.xscale),.5*const(size.yscale)

;---HELPER---
[Statedef 995]
type=A
physics=N
movetype=I
anim= ifelse(root,statetype=C, 966, ifelse(root,statetype=A, 967, 965))
velset=0,0
ctrl=0
[State 765, NHB]
type=nothitby
trigger1= 1
value=SCA
[State 765, Bind]
type=bindtoroot
trigger1= 1
time=-1

[State 765, Anim]
type=changeanim
triggerall= !time
trigger1= (root,AiLevel<1) && (root,command="down")
trigger2= (root,AiLevel) && (root,statetype!=A) && p2statetype=C
value=966
[State 995, Anim]
type=changeanim
triggerall= !time
trigger1= root,AILevel<1 && (root,command="fwd")
trigger2= root,AILevel && anim!=966
value= ifelse((root,statetype=A), 967, 965)
[State 765, Anim]
type=changeanim
trigger1= anim=965 || anim=967
value= ifelse((root,statetype=A), 967, 965)

[State 765, Disable]
type=varset
trigger1= time>=ifelse((root,statetype=A),7,8)
trigger2= facing!=(root,facing)
trigger3= !(root,ctrl)
trigger3= (root,stateno!=[970,990]) && (root,stateno!=5120)
var(0)=1
[State 765, Disable]
type=varset
triggerall= root,AILevel<1
trigger1= (root,command="holdback")
trigger2= time<4 && (root,command="holdfwd" + root,command="holddown")>1
trigger3= time>=4 && (root,command="holdfwd" || root,command="holddown")
trigger4= time>=1 && (((anim=965 || anim=967) && root,command="fwd") || (anim=966 && root,command="down"))
var(0)=1
[State 765, Disable]
type=changeanim
trigger1= var(0)=1
value=9741

[State 765, Standing/Air]
type=reversaldef
trigger1= !var(0) && (anim=965 || anim=967)
trigger1= (root,stateno!=5120) || !(root,animtime)
reversal.attr=SCA,AA
p1stateno=996
pausetime=0,0
sparkno=-1
numhits=0

[State 765, Crouching]
type=reversaldef
trigger1= !var(0) && anim=966
reversal.attr=SC,AA
p1stateno=996
pausetime=0,0
sparkno=-1
numhits=0

[State 765, Disable]
type=reversaldef
trigger1= var(0)=1
reversal.attr=
pausetime=0,0
sparkno=-1
numhits=0

[State 765, End]
type=destroyself
trigger1= time>=18
trigger2= (root,movetype!=I)
trigger3= !(root,ctrl) && (root,stateno!=[970,990]) && (root,stateno!=5120)
trigger4= (root,stateno=[970,990]) && (root,time<=1)


;---Success---
[Statedef 996]
movetype=I
ctrl=0
[State 766, Disable]
type=varset
trigger1=1
var(0)=1
[State 766, End]
type=destroyself
trigger1= root,stateno=[970,990]
trigger2= time>=2
;---------------------------------------------------------------------------
; Air get-hit (fall recovery on ground; still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S5200,1
volume = 255
channel = 0

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.groundrecover.groundlevel)
value = 5201

;---------------------------------------------------------------------------
; Air get-hit (fall recovery on ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S5200,1
volume = 255
channel = 0

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-20)

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = Const(velocity.air.gethit.groundrecover.x)
y = Const(velocity.air.gethit.groundrecover.y)

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, 6]
type = Explod
trigger1 = Time = 0
anim = F60
pos = 0, -floor(vel y)
sprpriority = -10
;---------------------------------------------------------------------------
; Air get-hit (fall recovery in air)
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S5200,1
volume = 255
channel = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128

[State 5210, 1]
type = PosFreeze
trigger1 = Time < 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-80)

[State 5210, 1.0 behavior 1]
type = VelMul
trigger1 = Time = 4
x = Const(velocity.air.gethit.airrecover.mul.x)
y = Const(velocity.air.gethit.airrecover.mul.y)

[State 5210, 1.0 behavior 2]
type = VelAdd
trigger1 = Time = 4
x = Const(velocity.air.gethit.airrecover.add.x)
y = Const(velocity.air.gethit.airrecover.add.y)

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = Const(velocity.air.gethit.airrecover.up)

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = Const(velocity.air.gethit.airrecover.down)

[State 5210, 2] ;Go fwd
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = Const(velocity.air.gethit.airrecover.fwd)

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = Const(velocity.air.gethit.airrecover.back)

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd
trigger1 = Time >= 4
y = Const(movement.air.gethit.airrecover.yaccel)

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Jump land
ctrl = 1

;-----------<NO FALL>-----------
[Statedef 5498]
type= A
physics= N
movetype= H
velset= 0, 0
facep2= 1

[State 5025, HFS]; Resets the fall parameter, so that the opponent will not fall on his back
type= hitfallset
trigger1= 1
value= 0

[State 5025, End]; Sends opponent back to his own states
type= selfstate
trigger1= 1
value= ifelse(pos y, 5020, 5000)
;-----------<INTO RECOVER>-----------
[Statedef 5499]
type= A
physics= N
movetype= H

[State 5499, End]; Sends character back to his own recovery states
type= selfstate
trigger1= 1
value= ifelse(pos y<-20, 5210, 5200)
;====================<INITIALIZE>====================
[StateDef 5900]
type = S

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
value = 0

[State 5900, Float VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
fvalue = 0

[State 5900, Intro vs Kyo]
type = ChangeState
triggerAll = NumEnemy
trigger1 = RoundNo = 1 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Kyo" && Enemy, AuthorName = "Hero"||Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && enemy,palno=[1,6]
trigger2 = TeamMode = Turns
trigger2 = RoundNo >= 2
trigger2 = Enemy, Name = "Kyo" && Enemy, AuthorName = "Hero"||Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && enemy,palno=[1,6]
value = 350

[State 5900, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 360

[State 5900, Intro]
type = ChangeState
trigger1 = RoundNo = 1
value = 190

[State 5900, End]
type = ChangeState
trigger1 = 1
value = 0
;-----------<-2 STATE>-----------
[Statedef -2]

[State -2, VarSet]
type = VarSet
trigger1 = 1
var(2) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = ctrl
trigger2 = stateno=100
trigger3 = StateNo=52&&prevstateno=50
var(2) = 1
ignorehitpause = 1

[State -2, No Sound after skipping intro]
type = StopSnd
trigger1 = PrevStateNo = [191,194]
channel = 0

[State -2, No Sound after skipping intro]
type = StopSnd
trigger1 = PrevStateNo = [191,194]
channel = 3

[State -2, NoEffectWhileHitted]
type = StopSnd
trigger1 = MoveType = H && StateNo = [5000,5999]
trigger2 = PrevStateNo = [191,194]
channel = 1

[State -2, NoEffectWhileHitted]
type = StopSnd
trigger1 = MoveType = H && StateNo = [5000,5999]
trigger2 = PrevStateNo = [191,194]
channel = 2

[State 0, VarSet]
type = VarSet
trigger1 = Roundstate = 1
var(58)=IfElse(Teamside=1,1,-1)

[State -2, VarSet]
type = VarSet
trigger1 = 1
var(18) = 0

[State -2, VarSet]
type = VarSet
trigger1 = !NumHelper(6100)
trigger2 = NumHelper(6100)
trigger2 = Helper(6100),StateNo=6105
var(18) = 1

[State -2, VarSet]
type = VarSet
trigger1 = 1
var(19) = 0

[State -2, VarSet]
type = VarSet
trigger1 = !NumHelper(16100)
trigger2 = NumHelper(16100)
trigger2 = Helper(16100),StateNo=6105
var(19) = 1

[State 1000, KachouSen]
type=helper
trigger1= enemynear,stateno=3010&&enemynear,movetype=H&&numhelper(6152)
trigger1=!NumHelper(6160)
helpertype=normal
stateno=6160
ID=6160
name="P2"
pos = -20,0
postype = p2
facing = 1
vfacing = 1
bindtime = -1
removetime = 200
size.xscale = .75*const(size.xscale)
size.yscale = .75*const(size.yscale)
ownpal=1
ignorehitpause=1

[State 0, VarAdd]
type = VarAdd
trigger1 = NumTarget
trigger1 = var(39)>=0 && NumHelper(6160)
trigger1 = target,Command = "a" || target,command = "b" || target,command = "c" || target,Command = "x" ||target,command = "y" || target,command = "z" || target,command = "up" || target,command = "down" || target,command = "fwd" || target,command = "back"
var(39) = -1

[State 0, TargetState]
type = TargetState
trigger1 = NumTarget
trigger1 = var(39)<0
value = 3011

[State -2, P2 Safe Fall]
type= targetstate
trigger1= numtarget=1; Just to prevent Simul mode shenanigans
trigger1= target,command="recovery"
trigger1= target,pos y>=-20 && target,vel y>0
trigger1= target,alive && target,hitfall && target,gethitvar(fall.recover)
trigger1= target,stateno=5030 || target,stateno=5035 || target,stateno=5050 || target,stateno=5071
value= 5499
ignorehitpause= 1

[State -2, P2 Recovery]; Notice how ID 200 is being used. ID must match those Hitdefs
type= targetstate
trigger1= numtarget(200)
trigger1= (target(200), stateno=5020) && (target(200), alive) && (target(200), hitfall); Hit out of the air while alive and already falling
ID = 200
value= 5498
ignorehitpause= 1

[State 0, VarSet]
type = VarSet
trigger1= numenemy
fvar(1) = ifelse(enemynear, gethitvar(hitcount) < 3, 28, ifelse(enemynear,gethitvar(hitcount) < 5,21,IfElse(enemynear, gethitvar(hitcount) >= 23, 2, 23 - enemynear, gethitvar(hitcount)))) / 28.0
ignorehitpause= 1

[State 0, VarSet]
type = VarSet
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
fvar(1) = 1.0
ignorehitpause= 1

[State -2, Damage Dampener]
type= attackmulset
trigger1= numenemy
value= fvar(1)*(IfElse((var(15)),.6,1.0))
ignorehitpause= 1

[State -2, P2 Facing]
type= targetfacing
trigger1= movecontact=1 && numtarget=1
trigger1= !(target,hitshakeover) && !(target,hitfall) && (target,time<=1)
value= ifelse(p2dist x>=0, -1, 1)
ignorehitpause= 1

[State -2, Throws Disallowed]; Resets condition every tick to check again
type=varset
trigger1= 1
var(4)= 0

[State -2, Throws Disallowed]
type=varset
trigger1= (enemynear,stateno=[150,155])
trigger2= (enemynear,movetype=H && enemynear,statetype!=A)
trigger3= (enemynear,stateno=[5020,5040]) && !(enemynear,hitfall)
trigger4= ((enemynear,stateno=0) || (enemynear,stateno=52)) && (enemynear,prevstateno=[5000,5040]) && ((enemynear,time<=0) || !(enemynear,ctrl))
trigger5= (enemynear,stateno=0) && (enemynear,prevstateno=52) && ((enemynear,time<=0) || !(enemynear,ctrl))
trigger6= (enemynear,stateno=40) && (enemynear,time>=1 || enemynear,prevstateno=0 || enemynear,prevstateno=52)
var(4)= 1

[State -2, varKOsnd]
type=varset
trigger1= alive && var(8)>0
trigger2= !alive && var(8)<2
var(8)=ifelse(alive,0,var(8)+1)
ignorehitpause=1
[State -2, KOsnd]
type=playsnd
trigger1= !alive && var(8)=1
trigger1= var(8):=2
trigger1=stateno!=171
value= 11,1
ignorehitpause=1
channel=0

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(14) < 0
var(14) = HitPauseTime
ignoreHitPause = 1

[State -2, VarSet]
type = VarSet
trigger1 = RoundState = 2
var(58) = IfElse(Teamside=1,1,-1)

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(11) = IfElse(StateNo<1000,8060,8061)

[State -2, Config]
type=helper
trigger1= roundstate=0&&!numhelper(24560)
helpertype=normal
stateno=24560
ID=24560
name="Check Config"
postype=p1
pos= 0,0
ownpal=1
pausemovetime=999999
supermovetime=999999
ignorehitpause=1

[State -2, Sparks]
type=helper
triggerall= var(14)=hitpausetime
trigger1= moveguarded=1 && numenemy
trigger1= var(11)=8060 || var(11)=8061
helpertype=normal
stateno=var(11)
ID=8000
name="Spark"
postype=p1
pos= ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(22), ceil(P2Dist x), var(22))), var(23)
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1

[State -2, Counter FX]
type = Helper
trigger1 = MoveHit && var(14) = HitPauseTime
trigger1 = NumEnemy && var(13) && stateno != [3500,3510]
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1)
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
size.xscale=.17*const(size.xscale)
size.yscale=.17*const(size.yscale)

[State -2, 2OS]
type=helper
triggerall=!ishelper
trigger1=stateno=950&&(anim=[950,952])&&timemod=7,1
id=7631
stateno=7631
helpertype=normal
name="Particles"
ownpal=1
postype=p1
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)
ignorehitpause=1
persistent=1
pausemovetime=9999999
supermovetime=9999999

[State -2, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(13) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarAdd
trigger1 = 1
var(14) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 13
last = 14
value = -1
ignoreHitPause = 1

[State -2, VarSet]
type = VarSet
trigger1 = !var(15)
fvar(9)=0
ignorehitpause=1

[State -2, VarSet]
type = VarSet
trigger1 = 1
fvar(7)=(fvar(9)/3)
ignorehitpause=1

[State -2, VarSet]
type = VarAdd
trigger1 = var(15)&&(anim!=[930,931])
fvar(9)=-1
ignorehitpause=1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = var(15)&&(anim!=[930,931])
trigger1 = MoveType = H
value = -1500
ignorehitpause = 1

[State -2, PowerSet]
type = PowerSet
triggerall = var(15)
trigger1 = StateNo = [3000,4999]
trigger2 = StateNo = [11000,11999]
value = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = MoveType = H
trigger2 = Power = 0
trigger3 = StateNo = [3000,4999]
trigger4 = RoundState != 2
trigger5 = fvar(9)=0 && var(15)
trigger6 = StateNo = [11000,11999]
var(15) = 0
ignorehitpause = 1

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = var(15)&&(anim!=[930,931])
flag = nojugglecheck

[State -2, PowerAdd]
type = PowerAdd
trigger1 = var(15)&&(anim!=[930,931])
value = -10
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
triggerall = var(15) && MoveContact
trigger1 = StateNo != 810
trigger1 = StateNo != 840
trigger1 = StateNo != 1510
var(16)=1
[State -2, VarSet]
type = VarSet
trigger1 = var(15) && NumHelper(6100)
trigger1 = Helper(6100),StateNo=6105
trigger2 = StateNo = 1330 && animelemtime(8)>=2
trigger3 = StateNo = 1340 && animelemtime(5)>=2
var(16)=1

[State -2, VarSet]
type = VarSet
trigger1 = StateNo = 810
trigger2 = StateNo = 840
trigger3 = !var(15)
trigger4 = Enemynear,MoveType!=H
trigger5 = StateNo = 1330 && animelemtime(8)<2
trigger6 = StateNo = 1340 && animelemtime(5)<2
trigger7 = StateNo = 1510
trigger8 = Time = 1
var(16)=0

[State -2, VarSet]
type = VarSet
trigger1 = 1
fvar(6) = IfElse(var(15),.5,1)

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = var(15)
flag = nostandguard
flag1 = nocrouchguard
flag2 = noairguard
ignorehitpause = 1
persistent = 1

[State -2, PalFX]
type = PalFx
trigger1 = var(15)
time = 2
add = 32+ceil(sin(time/16.0*pi)*32),32+ceil(sin(time/16.0*pi)*32),32+ceil(sin(time/16.0*pi)*32)
ignorehitpause = 1

[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "Pos x = %f  Pos y = %f Vel x = %f Vel y = %f - Iori by Hero - Please visit \n Trinity Mugen: http://www.trinitymugen.net/forum/index.php "
params = backedgedist,pos y,vel x,vel y
;-----------<-3 STATE>-----------
[Statedef -3]

[State -3, Wrong StateType]
type= null
trigger1= pos y!=0 && statetype!=A && statetype!=L
time= 99999
ignorehitpause= 1

[State -3, Variable Height]
type= playerpush
triggerall= statetype=A && movetype!=H && numenemy
triggerall= p2bodydist x = [-(enemynear,const(size.ground.back) + enemynear,const(size.ground.front)), 0]; checks if both characters are within each other's width
trigger1= p2statetype=S
trigger1= p2dist y >= (enemynear,const(size.height) - 22)
trigger2= p2statetype=C
trigger2= p2dist y >= (enemynear,const(size.height) - 48)
trigger3= p2statetype=L
trigger3= p2dist y >= 11
value= 0
ignorehitpause= 1

[State -3, Prevent Undergound Juggles]
type= targetbind
trigger1= movehit
trigger1= numtarget && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID)
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y)
ignorehitpause= 1

[State -3, Corner Push]; Reset
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push]; Get initial velocity
type= varset
trigger1= movecontact=1 && numtarget
fvar(5)= (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push]; Apply corner push
type= posadd
triggerall= fvar(5) && stateno != [1200,1290]
triggerall = Stateno != 1310
triggerall= (statetype = S || statetype = C) && numtarget
triggerall= !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall= (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall); See note below
triggerall = StateNo != [3000,3999]
trigger1= target, frontedgebodydist <= abs(target, vel x)
trigger1= (target, gethitvar(xvel) * target, facing) > 0
trigger2= target, backedgebodydist <= abs(target, vel x)
trigger2= (target, gethitvar(xvel) * target, facing) < 0
x= ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push]; Apply friction to the velocity
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5)= fvar(5) * 0.85

[State -3, Prevent Crossup]
type=width
trigger1=1
edge=8,0
ignorehitpause=1

[State -3, Ex Flash]
type=palfx
triggerall = MoveType = A
triggerall= !(gametime%3)
trigger1 =stateno = [10000,19990]
time=1
mul= 200,200, 0
add= 150,150,0
ignorehitpause=1

[State -3, Parry Detection]
type=helper
triggerall= roundstate=2 && !numhelper(995) && !var(15)
triggerall= (movetype=I && ctrl) || (stateno=[970,990]) || stateno=5120
triggerall= (command!="rlsfwd" && command!="rlsback" && command!="rlsup" && command!="rlsdown") || AILevel
trigger1= AILevel<1 && (statetype=S || statetype=C || stateno=5120) && (command="fwd" || command="down")
trigger2= AILevel<1 && statetype=A && (var(3)!=1 && var(3)!=2) && command="fwd"
trigger3= AILevel && (stateno!=[970,990]) && inguarddist && random<50
trigger4= AILevel && (stateno=[970,990]) && time=14 && random<667
helpertype=normal
stateno=995
ID=995
name="Parry Detection"
postype=p1
pausemovetime=65535
supermovetime=65535
[State -3, Parry Attacks]
type=changestate
trigger1= (stateno!=[970,990]) && numhelper(995)
trigger1= helper(995),stateno=996
value= ifelse((helper(995),anim=967), 990, ifelse((helper(995),anim=966), 980, 970))
ignorehitpause=1
[State -3, Parry Projectiles]
type=hitoverride
trigger1= (stateno!=[970,990]) && numhelper(995)
trigger1= !(helper(995),var(0)) && (helper(995),anim=965)
attr=SA,AP
stateno=970
slot=0
time=1
ignorehitpause=1
[State -3, Parry Projectiles]
type=hitoverride
trigger1= (stateno!=[970,990]) && numhelper(995)
trigger1= !(helper(995),var(0)) && (helper(995),anim=966)
attr=C,AP
stateno=980
slot=0
time=1
ignorehitpause=1
[State -3, Parry Projectiles]
type=hitoverride
trigger1= (stateno!=[970,990]) && numhelper(995)
trigger1= !(helper(995),var(0)) && (helper(995),anim=967)
attr=SCA,AP
stateno=990
slot=0
time=1
ignorehitpause=1

[State -3, lv1supershadow]
type=afterimage
trigger1= StateNo=3000 && AnimElem = 2
trigger2= StateNo=3100 && AnimElem = 2
trigger3= StateNo=3200 && AnimElem = 2
trigger4= StateNo=900 && AnimElem = 2 && !var(15)
trigger5= StateNo=910 && AnimElem = 2 && !var(15)
trigger6= StateNo=920 && AnimElem = 2 && !var(15)
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=128,128,128
palpostbright=0,0,0
trans=add1

[State -3, lv2supershadow]
type=afterimage
trigger1= stateno=3300 && animelem=2
trigger2= stateno=3400 && animelem=2
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=32,32,160
palpostbright=0,0,0
trans=add1

[State -3, lv3supershadow]
type=afterimage
trigger1= stateno=3500 && time=1
trigger2= stateno=3510 && animelemtime(23)=1
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=160,32,32
palpostbright=0,0,0
trans=add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = StateNo = [3000,3500]
trigger2 = stateno = 3510 && animelemtime(23)>0
trigger3 = StateNo = 900
trigger4 = StateNo = 910
trigger5 = StateNo = 920
trigger6 = var(15)
time = 2
ignorehitpause = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = StateNo = 3510 && animelemtime(1)=1
time = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
triggerall= stateno=5000 || stateno=5010
trigger1= gethitvar(animtype)>=2 && random<500
trigger2= gethitvar(animtype)=1 && random<375
trigger3= gethitvar(animtype)=0 && random<250
value=5000,1+(random%4)
channel=0
ignorehitpause=1

[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
trigger1= (stateno=5000 || stateno=5010) && numenemy
trigger1= gethitvar(fall) || (enemynear,hitdefattr=SCA,SA,HA)
trigger2= (stateno=5020 || stateno=5070 || stateno=5080)
trigger3= (stateno=5050 || stateno=5100) && (prevstateno!=[5000,5199])
value=5000,1+(random%3)
channel=0
ignorehitpause=1

[State -3, NoWalk after Parry]
type=assertspecial
trigger1= prevstateno=970
trigger1= stateno=0 && time<7
flag= nowalk
ignorehitpause=1

[State -3, collapse]
type=changestate
trigger1= !alive && (stateno=[5000,5030])
trigger1= (prevstateno=[130,131]) || (prevstateno=[140,141]) || (prevstateno=[150,153])
value=171

[State -3, Super Finish]
type=helper
triggerall= winKO && !numhelper(7905)
trigger1 = (movehit=[1,4]) && numtarget && (stateno=[3000,4999])
trigger2 = numhelper(6160)
trigger3 = StateNo = 3160||StateNo=3210||StateNo=3420||StateNo=3260||StateNo=3510
helpertype=normal
stateno=7905
ID=7905
name="Super KO FX"
postype=left
pos=160,-120
ownpal=1
ignorehitpause=1
pausemovetime=999
supermovetime=999
size.xscale=const(size.xscale)
size.yscale=const(size.yscale)

