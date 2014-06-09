;----------------------------------------------------------------------------------
; Type
[Statedef 6000]
ctrl = 0
anim = 1

[State 6000, VarSet]
type = ParentVarSet
trigger1 = prevstateno != 6000
trigger1 = Time = 0
var(10) = (random%4);(random%5)

[State 6000, ParentVarAdd]
type = ParentVarAdd
trigger1 = Time = 0
var(10) = root,command = "down"-root,command = "up"

[State 6000, VarSet]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = root,Var(10) = -1
var(10) = 4

[State 6000, VarSet]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = root,Var(10) = 5
var(10) = 0

[State 6000, PlaySnd]
type = VarSet
trigger1 = !(!Var(0) && root,StateNo = 0)
trigger1 = root,command = "down" || root,command = "up"
var(0) = 60

[State 6000, PlaySnd]
type = VarAdd
trigger1 = Var(0)
var(0) = -1

[State 6000, AssertSpecial]
type = AssertSpecial
trigger1 = !(!Var(0) && root,StateNo = 0)
flag = Intro

[State 6000, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(6000) && Time = 0
ID = 6000

[State 6000, Explod]
type = Explod
trigger1 = Time = 0 && !NumExplod(6000)
anim = ifElse(Facing=1,6000,6010)+root,Var(10)
pos = 0, 0
postype = p1
ownpal = 1
bindtime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
facing = 1
ID = 6000
scale = 1,1

[State 6000, RemoveExplod]
type = RemoveExplod
trigger1 = roundstate > 1 && !Var(0)
trigger2 = root, command = "a" || root, command = "b" || root, command = "c" || root, command = "x" || root, command = "y" || root, command = "z"
ID = 6000

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = root,command = "down" || root,command = "up"
trigger1 = Time > 7
value = 6000,0
channel = 10
abspan = 0

[State 6000, VarRandom]
type = VarRandom
trigger1 = root,Var(10) = 4
v = 1
range = 0,50

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = roundstate > 1 && !Var(0)
trigger2 = root, command = "a" || root, command = "b" || root, command = "c" || root, command = "x" || root, command = "y" || root, command = "z"
value = 6000,ifElse((root,Var(10)=[2,4]),6+2*(root,Var(10)=4),2+root,var(10)*2)
channel = 10
abspan = -160
[State 6000, PlaySnd]
type = PlaySnd
trigger1 = roundstate > 1 && !Var(0)
trigger2 = root, command = "a" || root, command = "b" || root, command = "c" || root, command = "x" || root, command = "y" || root, command = "z"
value = 6000,ifElse((root,Var(10)=[2,4]),7+2*(root,Var(10)=4),3+root,var(10)*2)
channel = 11
abspan = 160

[State 6000, PlaySnd]
type = PlaySnd
triggerall = root, Var(10) = 4 && Var(1) = 17
trigger1 = roundstate > 1 && !Var(0)
trigger2 = root, command = "a" || root, command = "b" || root, command = "c" || root, command = "x" || root, command = "y" || root, command = "z"
value = 6000,11
channel = 12
abspan = -160
[State 6000, PlaySnd]
type = PlaySnd
triggerall = root, Var(10) = 4 && Var(1) = 17
trigger1 = roundstate > 1 && !Var(0)
trigger2 = root, command = "a" || root, command = "b" || root, command = "c" || root, command = "x" || root, command = "y" || root, command = "z"
value = 6000,12
channel = 13
abspan = 160


[State 6000, ChangeState]
type = ChangeState
trigger1 = root,command = "down" || root,command = "up"
trigger1 = time > 7
value = 6000

[State 6000, DestroySelf]
type = DestroySelf
trigger1 = roundstate > 1 && !Var(0)
trigger2 = root, command = "a" || root, command = "b" || root, command = "c" || root, command = "x" || root, command = "y" || root, command = "z"

;----------------------------------------------------------------------------------
; Powerbar
[Statedef 6100]
ctrl = 0
anim = 1
ownpal = 1

[State 6100, Counter]
type = VarSet
trigger1 = 1
var(0) = floor((root,Power)/1000.0)

[State 6100, Power]
type = VarSet
trigger1 = 1
var(1) = floor((root,Power)%1000)

[State 6100, Explod];DECOR P1
type = Explod
triggerall = TeamSide = 1
trigger1 = !NumExplod(6100)
anim = 6100
ID = 6100
postype = Back
pos = ceil(175*root,Const(Size.XScale)),228
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
scale = root,Const(Size.XScale),root,Const(Size.YScale)
[State 6100, Explod];DECOR P2
type = Explod
triggerall = TeamSide = 2
trigger1 = !NumExplod(6100)
anim = 6104
ID = 6100
postype = Back
pos = ceil(175*root,Const(Size.XScale)),228
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
scale = root,Const(Size.XScale),root,Const(Size.YScale)
facing = -1

[State 6100, Explod];BLACK
type = Explod
trigger1 = !NumExplod(6102)
anim = 6102
ID = 6102
postype = Back
pos = ceil(175*root,Const(Size.XScale)),228
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1

;----------
;LV.0
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6147)
anim = 6159
ID = 6147
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6148)
anim = 6159
ID = 6148
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6149)
anim = 6159
ID = 6149
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.1
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6150)
anim = 6150
ID = 6150
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6151)
anim = 6150
ID = 6151
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6152)
anim = 6150
ID = 6152
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.2
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6153)
anim = 6151
ID = 6153
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6154)
anim = 6151
ID = 6154
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6155)
anim = 6151
ID = 6155
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.3
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6156)
anim = 6152
ID = 6156
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6157)
anim = 6152
ID = 6157
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6158)
anim = 6152
ID = 6158
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.4
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6159)
anim = 6153
ID = 6159
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6160)
anim = 6153
ID = 6160
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6161)
anim = 6153
ID = 6161
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.5
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6162)
anim = 6154
ID = 6162
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6163)
anim = 6154
ID = 6163
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6164)
anim = 6154
ID = 6164
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.6
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6165)
anim = 6155
ID = 6165
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6166)
anim = 6155
ID = 6166
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6167)
anim = 6155
ID = 6167
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.7
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6168)
anim = 6156
ID = 6168
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6169)
anim = 6156
ID = 6169
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6170)
anim = 6156
ID = 6170
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.8
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6171)
anim = 6157
ID = 6171
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6172)
anim = 6157
ID = 6172
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6173)
anim = 6157
ID = 6173
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
;LV.9 & UP
[State 6100, Explod];POWER 1
type = Explod
trigger1 = !NumExplod(6174)
anim = 6158
ID = 6174
postype = Back
pos = ceil(177*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 2
type = Explod
trigger1 = !NumExplod(6175)
anim = 6158
ID = 6175
postype = Back
pos = ceil(129*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0
[State 6100, Explod];POWER 3
type = Explod
trigger1 = !NumExplod(6176)
anim = 6158
ID = 6176
postype = Back
pos = ceil(81*root,Const(Size.XScale)),229
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime=-1
removetime = -1
scale = 0,0

;----------
; NUMBERS
; SINGLE DIGIT
[State 6100, Explod];0
type = Explod
trigger1 = !NumExplod(6500)
anim = 6160
ID = 6500
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];1
type = Explod
trigger1 = !NumExplod(6501)
anim = 6161
ID = 6501
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];2
type = Explod
trigger1 = !NumExplod(6502)
anim = 6162
ID = 6502
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];3
type = Explod
trigger1 = !NumExplod(6503)
anim = 6163
ID = 6503
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Ones];4
type = Explod
trigger1 = !NumExplod(6504)
anim = 6164
ID = 6504
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Ones];5
type = Explod
trigger1 = !NumExplod(6505)
anim = 6165
ID = 6505
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Ones];6
type = Explod
trigger1 = !NumExplod(6506)
anim = 6166
ID = 6506
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Ones];7
type = Explod
trigger1 = !NumExplod(6507)
anim = 6167
ID = 6507
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Ones];8
type = Explod
trigger1 = !NumExplod(6508)
anim = 6168
ID = 6508
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Ones];9
type = Explod
trigger1 = !NumExplod(6509)
anim = 6169
ID = 6509
postype = Back
pos = ceil(21*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = 1

;----------
; DOUBLE DIGIT
; ONES PLACE
[State 6100, Explod];0
type = Explod
trigger1 = !NumExplod(6510)
anim = 6160
ID = 6510
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];1
type = Explod
trigger1 = !NumExplod(6511)
anim = 6161
ID = 6511
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];2
type = Explod
trigger1 = !NumExplod(6512)
anim = 6162
ID = 6512
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];3
type = Explod
trigger1 = !NumExplod(6513)
anim = 6163
ID = 6513
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];4
type = Explod
trigger1 = !NumExplod(6514)
anim = 6164
ID = 6514
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];5
type = Explod
trigger1 = !NumExplod(6515)
anim = 6165
ID = 6515
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];6
type = Explod
trigger1 = !NumExplod(6516)
anim = 6166
ID = 6516
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];7
type = Explod
trigger1 = !NumExplod(6517)
anim = 6167
ID = 6517
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];8
type = Explod
trigger1 = !NumExplod(6518)
anim = 6168
ID = 6518
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];9
type = Explod
trigger1 = !NumExplod(6519)
anim = 6169
ID = 6519
postype = Back
pos = ceil(ifElse(TeamSide=1,26,14)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)

; TENS PLACE
[State 6100, Explod];1
type = Explod
trigger1 = !NumExplod(6521)
anim = 6161
ID = 6521
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];2
type = Explod
trigger1 = !NumExplod(6522)
anim = 6162
ID = 6522
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];3
type = Explod
trigger1 = !NumExplod(6523)
anim = 6163
ID = 6523
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];4
type = Explod
trigger1 = !NumExplod(6524)
anim = 6164
ID = 6524
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];5
type = Explod
trigger1 = !NumExplod(6525)
anim = 6165
ID = 6525
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];6
type = Explod
trigger1 = !NumExplod(6526)
anim = 6166
ID = 6526
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];7
type = Explod
trigger1 = !NumExplod(6527)
anim = 6167
ID = 6527
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];8
type = Explod
trigger1 = !NumExplod(6528)
anim = 6168
ID = 6528
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)
[State 6100, Explod];9
type = Explod
trigger1 = !NumExplod(6529)
anim = 6169
ID = 6529
postype = Back
pos = ceil(ifElse(TeamSide=1,16,25)*root,Const(Size.XScale)),224
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = ifElse(TeamSide=1,1,-1)

[State 6100, Explod];HOLDER P1
type = Explod
triggerall = TeamSide = 1
trigger1 = !NumExplod(6101)
anim = 6101
ID = 6101
postype = Back
pos = ceil(175*root,Const(Size.XScale)),228
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
[State 6100, Explod];HOLDER P2
type = Explod
triggerall = TeamSide = 2
trigger1 = !NumExplod(6101)
anim = 6103
ID = 6101
postype = Back
pos = ceil(175*root,Const(Size.XScale)),228
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
removetime=-1
pausemovetime=-1
facing = -1

;----------
; NUMERICS, SINGLES
[State 6100, 0]
type = ModifyExplod
triggerall = NumExplod(6500)
trigger1 = Var(0) = 0
ID = 6500
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 0]
type = ModifyExplod
triggerall = NumExplod(6500)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 0
ID = 6500
scale = 0,0
ignorehitpause = 1

[State 6100, 1]
type = ModifyExplod
triggerall = NumExplod(6501)
trigger1 = Var(0) = 1
ID = 6501
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 1]
type = ModifyExplod
triggerall = NumExplod(6501)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 1
ID = 6501
scale = 0,0
ignorehitpause = 1

[State 6100, 2]
type = ModifyExplod
triggerall = NumExplod(6502)
trigger1 = Var(0) = 2
ID = 6502
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 2]
type = ModifyExplod
triggerall = NumExplod(6502)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 2
ID = 6502
scale = 0,0
ignorehitpause = 1

[State 6100, 3]
type = ModifyExplod
triggerall = NumExplod(6503)
trigger1 = Var(0) = 3
ID = 6503
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 3]
type = ModifyExplod
triggerall = NumExplod(6503)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 3
ID = 6503
scale = 0,0
ignorehitpause = 1

[State 6100, 4]
type = ModifyExplod
triggerall = NumExplod(6504)
trigger1 = Var(0) = 4
ID = 6504
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 4]
type = ModifyExplod
triggerall = NumExplod(6504)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 4
ID = 6504
scale = 0,0
ignorehitpause = 1

[State 6100, 5]
type = ModifyExplod
triggerall = NumExplod(6505)
trigger1 = Var(0) = 5
ID = 6505
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 5]
type = ModifyExplod
triggerall = NumExplod(6505)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 5
ID = 6505
scale = 0,0
ignorehitpause = 1

[State 6100, 6]
type = ModifyExplod
triggerall = NumExplod(6506)
trigger1 = Var(0) = 6
ID = 6506
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 6]
type = ModifyExplod
triggerall = NumExplod(6506)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 6
ID = 6506
scale = 0,0
ignorehitpause = 1

[State 6100, 7]
type = ModifyExplod
triggerall = NumExplod(6507)
trigger1 = Var(0) = 7
ID = 6507
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 7]
type = ModifyExplod
triggerall = NumExplod(6500)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 7
ID = 6507
scale = 0,0
ignorehitpause = 1

[State 6100, 8]
type = ModifyExplod
triggerall = NumExplod(6508)
trigger1 = Var(0) = 8
ID = 6508
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 8]
type = ModifyExplod
triggerall = NumExplod(6508)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 8
ID = 6508
scale = 0,0
ignorehitpause = 1

[State 6100, 9]
type = ModifyExplod
triggerall = NumExplod(6509)
trigger1 = Var(0) = 9
ID = 6509
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 9]
type = ModifyExplod
triggerall = NumExplod(6509)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = Var(0) != 9
ID = 6509
scale = 0,0
ignorehitpause = 1

;----------
; NUMERICS, DOUBLE DIGITS
; ONES PLACE
[State 6100, 0]
type = ModifyExplod
triggerall = NumExplod(6510)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 0
ID = 6510
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 0]
type = ModifyExplod
triggerall = NumExplod(6510)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 0
ID = 6510
scale = 0,0
ignorehitpause = 1

[State 6100, 1]
type = ModifyExplod
triggerall = NumExplod(6511)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 1
ID = 6511
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 1]
type = ModifyExplod
triggerall = NumExplod(6511)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 1
ID = 6511
scale = 0,0
ignorehitpause = 1

[State 6100, 2]
type = ModifyExplod
triggerall = NumExplod(6512)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 2
ID = 6512
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 2]
type = ModifyExplod
triggerall = NumExplod(6512)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 2
ID = 6512
scale = 0,0
ignorehitpause = 1

[State 6100, 3]
type = ModifyExplod
triggerall = NumExplod(6513)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 3
ID = 6513
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 3]
type = ModifyExplod
triggerall = NumExplod(6513)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 3
ID = 6513
scale = 0,0
ignorehitpause = 1

[State 6100, 4]
type = ModifyExplod
triggerall = NumExplod(6514)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 4
ID = 6514
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 4]
type = ModifyExplod
triggerall = NumExplod(6514)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 4
ID = 6514
scale = 0,0
ignorehitpause = 1

[State 6100, 5]
type = ModifyExplod
triggerall = NumExplod(6515)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 5
ID = 6515
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 5]
type = ModifyExplod
triggerall = NumExplod(6515)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 5
ID = 6515
scale = 0,0
ignorehitpause = 1

[State 6100, 6]
type = ModifyExplod
triggerall = NumExplod(6516)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 6
ID = 6516
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 6]
type = ModifyExplod
triggerall = NumExplod(6516)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 6
ID = 6516
scale = 0,0
ignorehitpause = 1

[State 6100, 7]
type = ModifyExplod
triggerall = NumExplod(6517)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 7
ID = 6517
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 7]
type = ModifyExplod
triggerall = NumExplod(6517)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 7
ID = 6517
scale = 0,0
ignorehitpause = 1

[State 6100, 8]
type = ModifyExplod
triggerall = NumExplod(6518)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 8
ID = 6518
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 8]
type = ModifyExplod
triggerall = NumExplod(6518)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 8
ID = 6518
scale = 0,0
ignorehitpause = 1

[State 6100, 9]
type = ModifyExplod
triggerall = NumExplod(6519)
triggerall = Var(0) >= 10
trigger1 = (Var(0)%10) = 9
ID = 6519
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 9]
type = ModifyExplod
triggerall = NumExplod(6519)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = (Var(0)%10) != 9
ID = 6519
scale = 0,0
ignorehitpause = 1

;----------
; TENS PLACE
[State 6100, 1]
type = ModifyExplod
triggerall = NumExplod(6521)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 1
ID = 6521
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 1]
type = ModifyExplod
triggerall = NumExplod(6521)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 1
ID = 6521
scale = 0,0
ignorehitpause = 1

[State 6100, 2]
type = ModifyExplod
triggerall = NumExplod(6522)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 2
ID = 6522
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 2]
type = ModifyExplod
triggerall = NumExplod(6522)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 2
ID = 6522
scale = 0,0
ignorehitpause = 1

[State 6100, 3]
type = ModifyExplod
triggerall = NumExplod(6523)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 3
ID = 6523
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 3]
type = ModifyExplod
triggerall = NumExplod(6523)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 3
ID = 6523
scale = 0,0
ignorehitpause = 1

[State 6100, 4]
type = ModifyExplod
triggerall = NumExplod(6524)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 4
ID = 6524
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 4]
type = ModifyExplod
triggerall = NumExplod(6524)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 4
ID = 6524
scale = 0,0
ignorehitpause = 1

[State 6100, 5]
type = ModifyExplod
triggerall = NumExplod(6525)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 5
ID = 6525
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 5]
type = ModifyExplod
triggerall = NumExplod(6525)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 5
ID = 6525
scale = 0,0
ignorehitpause = 1

[State 6100, 6]
type = ModifyExplod
triggerall = NumExplod(6526)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 6
ID = 6526
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 6]
type = ModifyExplod
triggerall = NumExplod(6526)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 6
ID = 6526
scale = 0,0
ignorehitpause = 1

[State 6100, 7]
type = ModifyExplod
triggerall = NumExplod(6527)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 7
ID = 6527
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 7]
type = ModifyExplod
triggerall = NumExplod(6527)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 7
ID = 6527
scale = 0,0
ignorehitpause = 1

[State 6100, 8]
type = ModifyExplod
triggerall = NumExplod(6528)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 8
ID = 6528
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 8]
type = ModifyExplod
triggerall = NumExplod(6528)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 8
ID = 6528
scale = 0,0
ignorehitpause = 1

[State 6100, 9]
type = ModifyExplod
triggerall = NumExplod(6529)
triggerall = Var(0) >= 10
trigger1 = ceil(Var(0)/10) = 9
ID = 6529
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, 9]
type = ModifyExplod
triggerall = NumExplod(6529)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||Var(0)<10
trigger2 = ceil(Var(0)/10) != 9
ID = 6529
scale = 0,0
ignorehitpause = 1

; DECOR
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6100)
ID = 6100
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(6100)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
ID = 6100
scale = 0,0
ignorehitpause = 1

; HOLDER
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6101)
ID = 6101
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(6101)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
ID = 6101
scale = 0,0
ignorehitpause = 1

; BLACK
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6102)
ID = 6102
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(6102)
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
ID = 6102
scale = 0,0
ignorehitpause = 1

; POWER 1
[State 6100, POWER 1]
type = ModifyExplod
triggerall = Var(1) < 333
trigger1 = Var(0) < 9
trigger1 = NumExplod(6147+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6174)
ID = ifElse(Var(0)>8,6174,6147+(Var(0)*3))
scale = root,Const(Size.XScale)*(Var(1)*(3.0/1000.0)),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, POWER 1]
type = ModifyExplod
triggerall = Var(1) >= 333
trigger1 = Var(0) < 9
trigger1 = NumExplod(6147+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6174)
ID = ifElse(Var(0)>8,6174,6147+(Var(0)*3))
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, POWER 1]
type = ModifyExplod
triggerall = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger1 = Var(0) < 9
trigger1 = NumExplod(6147+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6174)
ID = ifElse(Var(0)>8,6174,6147+(Var(0)*3))
scale = 0,0
ignorehitpause = 1

; POWER 2
[State 6100, POWER 2]
type = ModifyExplod
triggerall = Var(1) >= 666
trigger1 = Var(0) < 9
trigger1 = NumExplod(6148+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6175)
ID = ifElse(Var(0)>8,6175,6148+(Var(0)*3))
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, POWER 2]
type = ModifyExplod
triggerall = Var(1) >= 333 && Var(1) < 666
trigger1 = Var(0) < 9
trigger1 = NumExplod(6148+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6175)
ID = ifElse(Var(0)>8,6175,6148+(Var(0)*3))
scale = root,Const(Size.XScale)*((Var(1)-333)*(3.0/1000.0)),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, POWER 1]
type = ModifyExplod
triggerall = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||(Var(1) < 333)
trigger1 = Var(0) < 9
trigger1 = NumExplod(6148+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6175)
ID = ifElse(Var(0)>8,6175,6148+(Var(0)*3))
scale = 0,0
ignorehitpause = 1

; POWER 3
[State 6100, POWER 2]
type = ModifyExplod
triggerall = Var(1) >= 999
trigger1 = Var(0) < 9
trigger1 = NumExplod(6149+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6176)
ID = ifElse(Var(0)>8,6176,6149+(Var(0)*3))
scale = root,Const(Size.XScale),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, POWER 2]
type = ModifyExplod
triggerall = Var(1) >= 666 && Var(1) < 999
trigger1 = Var(0) < 9
trigger1 = NumExplod(6149+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6176)
ID = ifElse(Var(0)>8,6176,6149+(Var(0)*3))
scale = root,Const(Size.XScale)*((Var(1)-666)*(3.0/1000.0)),root,Const(Size.YScale)
ignorehitpause = 1
[State 6100, POWER 1]
type = ModifyExplod
triggerall = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)||(Var(1) < 666)
trigger1 = Var(0) < 9
trigger1 = NumExplod(6149+(Var(0)*3))
trigger2 = Var(0) >= 9
trigger2 = NumExplod(6176)
ID = ifElse(Var(0)>8,6176,6149+(Var(0)*3))
scale = 0,0
ignorehitpause = 1

;----------
; Descale everything below
; LV.0
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 0
ID = 6147
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 0
ID = 6148
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 0
ID = 6149
scale = 0,0
ignorehitpause = 1
; LV.1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 1
ID = 6150
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 1
ID = 6151
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 1
ID = 6152
scale = 0,0
ignorehitpause = 1
; LV.2
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 2
ID = 6153
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 2
ID = 6154
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 2
ID = 6155
scale = 0,0
ignorehitpause = 1
; LV.3
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 3
ID = 6156
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 3
ID = 6157
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 3
ID = 6158
scale = 0,0
ignorehitpause = 1
; LV.4
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 4
ID = 6159
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 4
ID = 6160
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 4
ID = 6161
scale = 0,0
ignorehitpause = 1
; LV.5
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 5
ID = 6162
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 5
ID = 6163
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 5
ID = 6164
scale = 0,0
ignorehitpause = 1
; LV.6
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 6
ID = 6165
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 6
ID = 6166
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 6
ID = 6167
scale = 0,0
ignorehitpause = 1
; LV.7
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 7
ID = 6168
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 7
ID = 6169
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 7
ID = 6170
scale = 0,0
ignorehitpause = 1
; LV.8
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 8
ID = 6171
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 8
ID = 6172
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) != 8
ID = 6173
scale = 0,0
ignorehitpause = 1
; LV.9
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) < 9
ID = 6174
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) < 9
ID = 6175
scale = 0,0
ignorehitpause = 1
[State 6100, ModifyExplod]
type = ModifyExplod
trigger1 = Var(0) < 9
ID = 6176
scale = 0,0
ignorehitpause = 1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "Level = %d, Power = %d, Rem = %d, NumExp = %d"
params = var(0),var(1),(var(0)%10),numExplod

;---------------------------------------------------------------------------
; Dark Force Timer
[Statedef 6170]
ctrl = 0
anim = 1
ownpal = 1

[State 6170, VarSet]
type = Null
trigger1 = e||(var(23) := root,var(23))
trigger1 = e||(var(24) := root,var(24))

[State 6170, Explod];GREY
type = Explod
triggerall = TeamSide = 1
trigger1 = !NumExplod(6171)
anim = 6170
ID = 6171
postype = Left
pos = 31+Var(23),50-Var(24)
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime = -1
supermovetime = -1
scale = 1,1
[State 6170, Explod];BAR
type = Explod
triggerall = TeamSide = 1
trigger1 = !NumExplod(6172)
anim = 6171
ID = 6172
postype = Left
pos = 31+Var(23),50-Var(24)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
pausemovetime = -1
supermovetime = -1
[State 6170, Explod];TIME
type = Explod
trigger1 = TeamSide = 1
trigger1 = !NumExplod(6170)
anim = 6172
ID = 6170
postype = Left
pos = 31+Var(23),50-Var(24)
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
facing = 1
pausemovetime = -1
supermovetime = -1
scale = 1,1

[State 6170, Explod];GREY
type = Explod
triggerall = TeamSide = 2
trigger1 = !NumExplod(6171)
anim = 6170
ID = 6171
postype = Right
pos = -31+Var(23),50-Var(24)
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
facing = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
[State 6170, Explod];BAR
type = Explod
triggerall = TeamSide = 2
trigger1 = !NumExplod(6172)
anim = 6171
ID = 6172
postype = Right
pos = -31+Var(23),50-Var(24)
ownpal = 0
bindtime = -1
ignorehitpause = 1
ontop = 1
facing = -1
pausemovetime = -1
supermovetime = -1
[State 6170, Explod];TIME
type = Explod
trigger1 = TeamSide = 2
trigger1 = !NumExplod(6170)
anim = 6172
ID = 6170
postype = Right
pos = -182+Var(23),50-Var(24)
ownpal = 1
bindtime = -1
ignorehitpause = 1
ontop = 1
facing = 1
pausemovetime = -1
supermovetime = -1
scale = 1,1

[State 0, PalFXWiz]
type = PalFX
trigger1 = root,Var(13) >= 121
trigger1 = (time%12)=[0,5]
trigger2 = root,Var(13) < 121
trigger2 = (time%12)=[0,5]
time = 1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
[State 0, PalFXWiz]
type = PalFX
trigger1 = root,Var(13) >= 121
trigger1 = (time%12)=[6,11]
trigger2 = root,Var(13) < 121
trigger2 = (time%12)=[6,11]
time = 1
add = 80,80,80
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 1
[State 0, PalFXWiz]
type = PalFX
trigger1 = root,Var(13) < 121
trigger1 = (time%18)=[12,17]
time = 1
add = 80,-160,-160
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 1

[State 6170, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6172)
ID = 6172
scale = (root,Var(13))/360.0,1
ignorehitpause = 1

[State 6170, RemoveExplod]
type = RemoveExplod
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = !root,Var(13)
ID = 6170

[State 6170, RemoveExplod]
type = RemoveExplod
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = !root,Var(13)
ID = 6171

[State 6170, RemoveExplod]
type = RemoveExplod
trigger1 = NumHelper(9000)||(root,Var(35)&&enemynear,NumHelper(9000))||root,FVar(0)
trigger2 = !root,Var(13)
ID = 6172

[State 6170, DestroySelf]
type = DestroySelf
trigger1 = !root,Var(13)

;----------------------------------------------------------------------------------
; Dark Force Spark
[Statedef 8000]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0
anim = 1

[State 52, Explod]
type = Explod
trigger1 = Time = 0
anim = 8800
pos = 0,0
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
scale = Const(Size.Xscale),Const(Size.Yscale)
sprpriority = 3
[State 52, Explod]
type = Explod
trigger1 = Time = 10
anim = 8801
pos = 0,0
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
scale = Const(Size.Xscale),Const(Size.Yscale)
sprpriority = 0

[State 6170, DestroySelf]
type = DestroySelf
trigger1 = Time > 10

;----------------------------------------------------------------------------------
; BLOOD SPARK 1 (light)
[Statedef 8700]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = -2.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= 14
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 1 (heavy)
[Statedef 8710]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = -4
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= 14
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 2 (light)
[Statedef 8720]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -4
y = -6.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= 14
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 2 (heavy)
[Statedef 8730]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = -6.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= 14
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 3 (light)
[Statedef 8740]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -6
y = 2.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= -30
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 3 (heavy)
[Statedef 8750]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = 4
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= -30
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 4 (light)
[Statedef 8760]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = 6.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= -30
value = 8790

;----------------------------------------------------------------------------------
; BLOOD SPARK 4 (heavy)
[Statedef 8770]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 9000

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Explod]
type = Explod
trigger1 = !Time
anim = stateNo
ID = 8700
pos = 0,0
postype = p1
removetime = -2
scale = const(Size.Xscale),const(Size.Xscale)
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 8700, Anim]
type = ChangeAnim
trigger1 = !Time
value = stateNo+1

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = 6.5
[State 0, VelSet]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1150, ChangeState]
type = ChangeState
trigger1 = Vel Y >= 0 && Pos Y >= -50
value = 8790

;----------------------------------------------------------------------------------
; PUDDLE
[Statedef 8790]
type    = A
movetype= I
physics = N
anim = 8790
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, PosSet]
type = PosAdd
triggerall = !Time
trigger1 = PrevStateNo=8700
trigger2 = PrevStateNo=8740
x = -50
[State 0, PosSet]
type = PosAdd
triggerall = !Time
trigger1 = PrevStateNo=8750
x = -62
[State 0, PosSet]
type = PosAdd
triggerall = !Time
trigger1 = PrevStateNo=8710
x = -78
[State 0, PosSet]
type = PosAdd
triggerall = !Time
trigger1 = PrevStateNo=8720
trigger2 = PrevStateNo=8760
trigger3 = PrevStateNo=8770
x = -28
[State 0, PosSet]
type = PosAdd
trigger1 = !Time && PrevStateNo=8730
x = -42

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noShadow
[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1150, ChangeState]
type = DestroySelf
trigger1 = !AnimTime