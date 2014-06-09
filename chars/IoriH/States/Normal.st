; _____________
;| Iori by Hero |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<NORMAL STATES>========================================
;============================================================================================

;=========<Stand Light Punch>==========
[Statedef 200]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget,15,8)
anim = ifelse((p2bodydist x>=25),200,205)
velset = 0,0
poweradd = 0
sprpriority = 1
ctrl = 0
facep2 = 1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+IfElse(anim=200,-15,-12)
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = IfElse(anim=200,-65,-55)

[State 200, Snd]
type=playsnd
trigger1= Animelem = 2 && random < 200
value = 3,ifelse(random<500,0,1)
channel = 0

[State 200, Snd]
type = playsnd
trigger1 = Animelem = 2 && anim = 200|| animelem = 2 && anim = 205
value = 1,1
channel = 1

[State 200, Hit]
type=hitdef
trigger1= ((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))=0
trigger1 = Anim = 200 && !Time
attr = S,NA
damage = 24,0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = floor(9*fvar(6)), floor(9*fvar(6))
sparkno = s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34):=8060)
sparkxy = -15,-65
hitsound = s2,1
guardsound = s2,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5.18*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
getpower = 72*(!var(15)),36*(!var(15))
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8,-1.5
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State 200, Hit]
type=hitdef
trigger1= ((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))=0
trigger1 = Anim = 205 && !Time
attr = S,NA
damage = 24,0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = floor(9*fvar(6)), floor(9*fvar(6))
sparkno = s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34):=8060)
sparkxy = -12,-55
hitsound = s2,1
guardsound = s2,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -6.18*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
getpower = 72*(!var(15)),36*(!var(15))
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8,-1.5
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0 && anim = 200
trigger2= animelemtime(4)>=0 && anim = 205
movetype=I

[State 200, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=========<Stand Medium Punch>==========
[Statedef 210]
type = S
movetype = A
physics = S
juggle = ifelse(numtarget,15,8)
anim = IfElse(PrevStateNo=250,211,210)
velset = 0,0
poweradd = 18*(!var(15))
sprpriority = 1
ctrl = 0
facep2 = 1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-20
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -40

[State 210, Snd]
type=playsnd
trigger1= animelem =4 && random<350
value = 3,ifelse(random<500,1,2)
channel = 0

[State 210, Snd]
type = playsnd
trigger1 = animelem =4
value = 1,2
channel = 1

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1= !Time
attr = S,NA
damage = 49,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = floor(11*fvar(6)),floor(11*fvar(6))
sparkno=s8030+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-20,-40
hitsound = s2,13
guardsound = s2,0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -8.51*fvar(6), 0
air.type = Low
air.hittime = 18
air.velocity= -5,-7
getpower= ifelse(P2MoveType=H,72,144)*(!var(15)),36*(!var(15))
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8,-1.5
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type = statetypeset
trigger1 = animelemtime(6)>=0
movetype = I

[State 205, End]
type = changestate
trigger1= !AnimTime
value = 0
ctrl = 1
;=========<Stand Hard Punch>==========
[Statedef 220]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=ifelse((p2bodydist x>=25||prevstateno=940),220,225)
velset=0,0
poweradd=18*(!var(15))
sprpriority=1
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+IfElse(anim=220,-16,-12)
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = IfElse(anim=220,-75,-78)

[State 210, Snd]
type = playsnd
trigger1 = ((animelem=4 && anim = 220) || (animelem = 2 && anim = 225)) && random<500
value = 3,ifelse(random<500,2,3)
channel = 0

[State 210, Snd]
type=playsnd
trigger1= ((animelem=4 && anim = 220) || (animelem = 2 && anim = 225))
value = 1,3
channel = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2 && anim = 220
x = 15

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)) && prevstateno!=940
trigger1 = !Time && anim = 220
attr = S,NA
damage = 73,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(13*fvar(6)),floor(13*fvar(6))
sparkno = s8000+(random%8)
guard.sparkno = -1 + 0 * (var(34) := 8060)
sparkxy = -16,-75
hitsound = s2,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -11.52*fvar(6),0
air.type = Low
air.hittime = 18
air.velocity = -5,-7
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1= !Time && anim = 225
attr=S,NA
damage=73,0
animtype=Hard
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(13*fvar(6)), floor(13*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-12,-78
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=21
ground.hittime=27
ground.velocity=-11.9*fvar(6),0
air.type=Low
air.hittime=18
air.velocity=-6,-3
guard.velocity= -10.52
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower=36,36
fall=0
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)) && prevstateno=940
trigger1 = !Time && anim = 220
attr = S,SA
damage = 24,3
animtype = DiagUp
air.animtype = DiagUp
fall.animtype = DiagUp
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(13*fvar(6)),floor(13*fvar(6))
sparkno = s8000+(random%8)
guard.sparkno = -1 + 0 * (var(34) := 8060)
sparkxy = -16,-75
hitsound = s2,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -8.52*fvar(6),-6
air.type = Low
air.hittime = 18
air.velocity = -8,-7
getpower= 0,0
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall=1
air.fall=1
fall.recover = 0
air.fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1 = animelemtime(7)>=0 && anim = 220
trigger2 = animelemtime(5)>=0 && anim = 225
movetype=I

[State 210, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=========<Stand Light Kick>==========
[Statedef 250]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=ifelse((p2bodydist x<25),255,250)
velset=0,0
poweradd=0
sprpriority=1
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+IfElse(anim=250,-18,-16)
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = IfElse(anim=250,-48,-15)

[State 250, Snd]
type = playsnd
trigger1 = ((animelem=3 && anim =250)||(animelem=2&&anim=255)) && random<200
value = 3,ifelse(random<500,0,1)
channel = 0

[State 250, Snd]
type = playsnd
trigger1= ((animelem=3 && anim =250)||(animelem=2&&anim=255))
value = 1,4
channel = 1

[State 215, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1= !Time && Anim = 250
attr=S,NA
damage=24,0
animtype=Light
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(9*fvar(6)),floor(9*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-18,-48
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=12
ground.velocity= -4.49*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5
getpower= 72*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= 8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State 215, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1= !Time && Anim = 255
attr=S,NA
damage=24,0
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = floor(9*fvar(6)),floor(9*fvar(6))
sparkno = s8000+(random%8)
guard.sparkno = -1 + 0 * (var(34) := 8060)
sparkxy = -16,-15
hitsound = s2,4
guardsound = s2,0
ground.type = Low
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5.18*fvar(6), 0
air.type = Low
air.hittime = 18
air.velocity = -5
getpower= 72*(!var(15)),36*(!var(15))
givepower = 36,36
yaccel=.5
airguard.ctrltime = 16
airguard.velocity = 8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(4)>=0 && anim = 250
trigger2= animelemtime(3)>=0 && anim = 255
movetype=I

[State 215, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;=========<Stand Medium Kick>==========
[Statedef 260]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=260
velset=0,0
poweradd=18*(!var(15))
sprpriority=1
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+ -20
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -60

[State 220, Snd]
type=playsnd
trigger1= animelem=3 && random<350
value=3,ifelse(random<500,1,2)
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 220, Hit]
type=hitdef
trigger1=!((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1= !Time
attr=S,NA
damage=51,0
animtype=Medium
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(11*fvar(6)),floor(11*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-20,-60
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=15
ground.hittime=15
ground.velocity= -7.51*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
getpower= ifelse(p2movetype=H,72,144)*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(4)>=0 && anim = 260
movetype=I

[State 220, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;=========<Stand Hard Kick>==========
[Statedef 270]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=ifelse(p2bodydist x<25,275,270)
velset=0,0
poweradd=18*(!var(15))
sprpriority=ifelse(p2bodydist x<25,1,-1)
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+IfElse(anim=270,5,-18)
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = IfElse(anim=270,-72,-76)

[State 225, Snd]
type=playsnd
trigger1= (animelem=4 && anim = 270|| animelem = 3 && anim = 275) && random<500
value=3,ifelse(random<500,2,3)
channel=0

[State 225, Snd]
type=playsnd
trigger1= animelem=4 && anim = 270|| animelem = 3 && anim = 275
value=1,6
channel=1

[State 225, Hit]
type=hitdef
trigger1=!((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1= !Time && anim=270
attr=S,NA
damage=73,0
animtype=Hard
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(13*fvar(6)),floor(13*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-12,-72
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity= -7.52*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36*(!var(15))
givepower=36,36
sprpriority=-1
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State 225, Hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5050]))
trigger1= !Time && anim=275
attr=S,NA
damage=73,0
animtype=Hard
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(13*fvar(6)),floor(13*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-18,-76
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity= -7.51*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 225, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;=========<Stand Hard Punch>==========
[Statedef 300]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=300
velset=0,0
poweradd=18*(!var(15))
sprpriority=1
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-22
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -75

[State 210, Snd]
type = playsnd
trigger1 = animelem=3
value = 3,3
channel = 0

[State 210, Snd]
type=playsnd
trigger1= animelem=3
value = 1,3
channel = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=3||animelem=4
x = 10

[State 210, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1 = !Time
attr = S,NA
damage = 53,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority= 4,Hit
pausetime = floor(11*fvar(6)),floor(11*fvar(6))
sparkno = s8000+(random%8)
guard.sparkno = -1 + 0 * (var(34) := 8060)
sparkxy = -22,-75
hitsound = s2,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 21
ground.velocity = -7*fvar(6),0
air.type = Low
air.hittime = 18
air.velocity = -5,-7
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36
givepower = 36,36
yaccel = .5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
fall.recover = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1 = animelemtime(4)>=0 && anim = 220
movetype=I

[State 210, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;=========<Stand Hard Kick>==========
[Statedef 305]
type=S
movetype=A
physics=S
juggle=ifelse(numtarget,15,8)
anim=305
velset=0,0
poweradd=18*(!var(15))
sprpriority=ifelse(p2bodydist x<25,1,-1)
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = AnimElem = 8
var(22) = 72-12
[State 0, VarSet]
type = VarSet
trigger1 = AnimElem = 8
var(23) = -87

[State 0, VarSet]
type = VarSet
trigger1 = AnimElem = 9
var(22) = 72-18
[State 0, VarSet]
type = VarSet
trigger1 = AnimElem = 9
var(23) = -65

[State 225, Snd]
type=playsnd
trigger1= animelem=8
value=3,1
channel=0

[State 225, Snd]
type=playsnd
trigger1= animelem=8
value=1,6
channel=1

[State 0, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4
trigger2 = AnimElem = 5 || AnimElem = 13 || AnimElem = 14
x = 9;13.5

[State 225, Hit]
type=hitdef
trigger1= !((EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl))
trigger1= animelem = 8
attr=S,NA
damage=59,0
animtype=Hard
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(7*fvar(6)),floor(7*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-12,-87
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity= 0*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -4, -7
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36*(!var(15))
givepower=36,36
sprpriority=-1
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State 225, Hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5050]))
trigger1= animelem = 9 && prevstateno!=220
attr=S,NA
damage=IfElse(MoveHit,37,69)
animtype=Hard
air.animtype = Back
fall.animtype = Back
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= floor(7*fvar(6)),floor(7*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-18,-65
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=18
ground.hittime=18
ground.velocity= -11.51*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -4, -7
getpower= ifelse(p2movetype=H,72,216)*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I

[State 225, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;=========<Crouch Light Punch>==========
[Statedef 400]
type=C
movetype=A
physics=C
juggle=ifelse(numtarget,15,8)
anim=400
velset=0,0
poweradd=0
sprpriority=1
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -30

[State 230, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,0,1)
channel=0

[State 230, Snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 230, Hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5050]))
trigger1= !Time
attr=C,NA
damage=29,0
animtype=Light
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(9*fvar(6)),floor(9*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-30
hitsound=s2,1
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=12
ground.velocity= -5.49*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
getpower= 72*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 230, End]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;=========<Crouch Medium Punch>==========
[Statedef 410]
type=C
movetype=A
physics=C
juggle=ifelse(numtarget,15,8)
anim=410
velset=0,0
poweradd=18*(!var(15))
sprpriority=1
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -30

[State 235, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value=3,ifelse(random<500,1,2)
channel=0

[State 235, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 235, Hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5050]))
trigger1= !Time
attr=C,NA
damage=56,0
animtype=Medium
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(11*fvar(6)),floor(11*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-30
hitsound=s2,2
guardsound=s2,0
ground.type=Low
ground.slidetime=15
ground.hittime=15
ground.velocity= -8.51*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
getpower= ifelse(p2movetype=H,72,144)*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 235, End]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;=========<Crouch Hard Punch>==========
[Statedef 420]
type=C
movetype=A
physics=C
juggle=ifelse(numtarget,15,8)
anim=420
velset=0,0
poweradd=18*(!var(15))
sprpriority=1
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -70

[State 240, Snd]
type=playsnd
trigger1= animelem=3 && random<500
value=3,ifelse(random<500,2,3)
channel=0

[State 240, Snd]
type=playsnd
trigger1= animelem=3
value=1,3
channel=1

[State 240, Hit]
type=hitdef
triggerall= ((p2stateno!=[5020,5050]))
trigger1= !Time
attr=C,NA
damage=88,0
animtype=Hard
air.animtype = Back
fall.animtype = Back
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= floor(13*fvar(6)),floor(13*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-70
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity= -11.52*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5,-7
getpower= ifelse(p2movetype=H,72,216)*(!var(15)),36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 240, End]
type=changestate
trigger1= !animtime
value=11
ctrl=1
;=========<Crouch Light Kick>==========
[Statedef 450]
type=C
movetype=A
physics=C
juggle=ifelse(numtarget,15,8)
anim=450
velset=0,0
poweradd=0
sprpriority=1
ctrl=0 
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -4

[State 245, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,0,1)
channel=0

[State 245, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 245, Hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5050]))
trigger1= animelem=2
attr=C,NA
damage=29,0
animtype=Light
air.animtype = Back
fall.animtype = Back
guardflag=L
hitflag=MAF
priority=4,Hit
pausetime= floor(9*fvar(6)),floor(9*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-4
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=12
ground.hittime=12
ground.velocity= -6.49*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
down.velocity=-4,-6
getpower= 72*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 245, End]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;=========<Crouch Medium Kick>==========
[Statedef 460]
type=C
movetype=A
physics=C
juggle=ifelse((p2movetype=H && p2statetype=A), 15, 7)
anim=460
velset=0,0
poweradd=18*(!var(15))
sprpriority=1
ctrl=0 
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -4

[State 250, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value=3,ifelse(random<500,1,2)
channel=0

[State 250, Snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=1

[State 250, Hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5050]))
trigger1= !Time
attr=C,NA
damage=56,0
animtype=Medium
air.animtype = Back
fall.animtype = Back
guardflag=L
hitflag=MAF
priority=4,Hit
pausetime= floor(11*fvar(6)),floor(11*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-4
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=15
ground.hittime=15
ground.velocity= -8.51*fvar(6), 0
air.type=Low
air.hittime=18
air.velocity= -5, -7
down.velocity=-4,-6
getpower= ifelse(p2movetype=H,72,144)*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 250, End]
type=changestate
trigger1= !animtime
value=11
ctrl=1

;=========<Crouch Hard Kick>==========
[Statedef 470]
type=C
movetype=A
physics=C
juggle= ifelse((p2movetype=H && p2statetype=A), 15, 7)
anim=470
velset=0,0
poweradd=18*(!var(15))
sprpriority=1
ctrl=0
facep2=1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-15
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -13

[State 255, Snd]
type=playsnd
trigger1= animelem=4 && random<500
value=3,ifelse(random<500,2,3)
channel=0

[State 255, Snd]
type=playsnd
trigger1= animelem=4
value=1,6
channel=1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 20

[State 255, Hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5050]))
trigger1= !Time
attr=C,NA
damage=97,0
animtype=Hard
air.animtype = Back
fall.animtype = Back
guardflag=L
hitflag=MAF
priority=4,Hit
pausetime= floor(13*fvar(6)),floor(13*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-15,-13
hitsound=s2,6
guardsound=s2,0
ground.type=Trip
ground.slidetime=18
ground.hittime=18
ground.velocity=-1.33*fvar(6),-6.85
air.type=Trip
air.velocity=-1.33,-6.85
down.velocity=-4,-6
guard.velocity= -10.52
getpower= ifelse(p2movetype=H,72,216)*(!var(15)),36*(!var(15))
givepower=36,36
fall=1
fall.recover=0
air.fall = 1
air.fall.recover=0
yaccel=.6
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120
ID = 200

[State Idle]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I

[State 255, End]
type=changestate
trigger1= !animtime
value=11
ctrl=1


;=========<Air Light Punch>==========
[Statedef 600]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim=600
poweradd=0
sprpriority=1
ctrl=0

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -52

[State 260, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,0,1)
channel=0

[State 260, Snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 260, Hit]
type=hitdef
trigger1= !Time
attr=A,NA
damage=39,0
animtype=Light
air.animtype = Back
fall.animtype = Back
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= floor(9*fvar(6)),floor(9*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-52
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -4.49*fvar(6), 0
guard.velocity= -4.49
air.type=Low
air.hittime=18
air.velocity=0,-2.5
getpower= 72*(!var(15)), 36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120

[State 260, Type]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I


;=========<Air Medium Punch>==========
[Statedef 610]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim=610
poweradd=18 *(!var(15))
sprpriority=1
ctrl=0 

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -50

[State 265, Snd]
type=playsnd
trigger1= animelem=4 && random<350
value=3,ifelse(random<500,1,2)
channel=0
[State 265, Snd]
type=playsnd
trigger1= animelem=4
value=1,2
channel=1

[State 265, Hit]
type=hitdef
trigger1= !Time
attr=A,NA
damage=56,0
animtype=Medium 
air.animtype = Back
fall.animtype = Back
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= floor(11*fvar(6)),floor(11*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-50
hitsound=s2,2
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -4.49*fvar(6), 0
guard.velocity= -7.51
air.type=Low
air.hittime=18
air.velocity=0,-2.5
getpower= ifelse(p2movetype=H,72,144)*(!var(15)),36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120

[State 265, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I


;=========<Air Hard Punch>==========
[Statedef 620]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim=620
poweradd=18*(!var(15))
sprpriority=1
ctrl=0

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -61

[State 270, Snd]
type=playsnd
trigger1= animelem=4 && random<500
value=3,ifelse(random<500,2,3)
channel=0
[State 270, Snd]
type=playsnd
trigger1= animelem=4
value=1,3
channel=1

[State 270, Hit]
type=hitdef
trigger1= !Time
attr=A,NA
damage=88,0
animtype=Hard
air.animtype=Back
fall.animtype=Back
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= floor(13*fvar(6)),floor(13*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-61
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=16
ground.slidetime=12
ground.velocity= -4.49*fvar(6), 0
guard.velocity= -10.52
air.type=Low
air.hittime=18
air.velocity=-7.5,4
getpower= ifelse(p2movetype=H,72,216)*(!var(15)),36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall=(prevstateno=[600,670])
fall.recover=0
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120

[State 270, Type]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I


;=========<Air Light Kick>==========
[Statedef 650]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim= 650
poweradd=0
sprpriority=1
ctrl=0

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -45

[State 275, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,0,1)
channel=0
[State 275, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 275, Hit]
type=hitdef
trigger1= !Time
attr=A,NA
damage=29,0
animtype=Light
air.animtype = Back
fall.animtype = Back
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= floor(9*fvar(6)),floor(9*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-45
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.velocity= -4.49*fvar(6), 0
guard.velocity= -4.49
air.type=Low
air.hittime=18
air.velocity=0,-2.5
getpower= 72*(!var(15)),36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120

[State 275, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I


;=========<Air Medium Kick>==========
[Statedef 660]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim= 660
poweradd=18*(!var(15))
sprpriority=1
ctrl=0

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -45

[State 280, Snd]
type=playsnd
trigger1= animelem=2&& random<350
value=3,ifelse(random<500,1,2)
channel=0
[State 280, Snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=1

[State 280, Hit]
type=hitdef
trigger1= !Time
attr=A,NA
damage=53,0
animtype=Medium 
air.animtype = Back
fall.animtype = Back
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= floor(11*fvar(6)),floor(11*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-45
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity= -4.49*fvar(6), 0
guard.velocity= -7.51
air.type=Low
air.hittime=18
air.velocity=0,-2.5
getpower= ifelse(p2movetype=H,72,144)*(!var(15)),36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120

[State 280, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

;=========<Air Hard Kick>==========
[Statedef 670]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim= 670
poweradd=18*(!var(15))
sprpriority=1
ctrl=0

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -32

[State 285, Snd]
type=playsnd
trigger1= animelem=4 && random<500
value=3,ifelse(random<500,2,3)
channel=0
[State 285, Snd]
type=playsnd
trigger1= animelem=4
value=1,6
channel=1

[State 285, Hit]
type=hitdef
trigger1= !Time
attr=A,NA
damage=80,0
animtype=Hard
air.animtype=Back
fall.animtype=Back
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= floor(13*fvar(6)), floor(13*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-32
hitsound=s2,6
guardsound=s2,0
ground.type=High
ground.hittime=18
ground.slidetime=12
ground.velocity= -4.49*fvar(6), 0
guard.velocity= -10.52
air.type=Low
air.hittime=18
air.velocity=-5,0
getpower= ifelse(p2movetype=H,72,216)*(!var(15)),36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall=(prevstateno=[600,670])
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120

[State 285, Type]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I


;=========<Air Light Kick>==========
[Statedef 700]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim= 700
poweradd=0
sprpriority=1
ctrl=0

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(22) = 72+-10
[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(23) = -45

[State 275, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value=3,ifelse(random<500,0,1)
channel=0
[State 275, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 275, Hit]
type=hitdef
trigger1= !Time
attr=A,NA
damage=46,0
animtype=Light
air.animtype = Back
fall.animtype = Back
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= floor(9*fvar(6)),floor(9*fvar(6))
sparkno=s8000+(random%8)
guard.sparkno=-1 + 0 * (var(34) := 8060)
sparkxy=-10,-45
hitsound=s2,4
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.velocity= -4.49*fvar(6), 0
guard.velocity= -4.49
air.type=Low
air.hittime=18
air.velocity=0,-2.5
getpower= 72*(!var(15)),36*(!var(15))
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -8, -1.5
fall.recover=0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall.envshake=1
fall.envshake.time= 14
fall.envshake.ampl=-1
fall.envshake.freq=120

[State 275, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I
;=========<Scorpion Deathlock>==========
[Statedef 800]
type = S
movetype = A
physics = N
anim = 800
juggle = 15
ctrl = 0
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 800, VarSet]
type = VarSet
trigger1 = Time = 0
var(5) = IfElse (Command = "holdfwd", 1,-1)

[State 800, Hitdef]
type = HitDef
trigger1 = !Time && p2bodydist x <= 52
trigger1= !var(4)
attr = S, NT
damage = 0,0
animtype = Heavy
guardflag =
hitflag = M-
priority = 3, Miss
pausetime = 2,2
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
p1stateno = IfElse(var(5)=1,810,811)
kill = 0
ID=800

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3,10
volume = 255
channel = 0

[State 800, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) > 0
movetype = I

[State 800, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Scorpion Deathlock Connection>==========
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
ctrl = 0
velset = 0,0

[State 0, Turn]
type = Turn
trigger1 = !Time && PrevStateNo=811

[State 810, TargetState]
type = TargetState
trigger1 = !Time
value = 820

[State 0, TargetFacing]
type = TargetFacing
trigger1 = !Time && facing=target,facing
value = -1
ignorehitpause=1

[State 810, TargetBind1]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(2)<0
pos =  28,0
time = 1
[State 810, TargetBind1]
type = TargetBind
trigger1 = AnimElemTime(2)>=0 && AnimElemTime(3)<0
pos =  26,0
time = 1
[State 810, TargetBind1]
type = TargetBind
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(4)<0
pos =  20,0
time = 1
[State 810, TargetBind1]
type = TargetBind
trigger1 = AnimElemTime(4)>=0 && AnimElemTime(5)<0
pos =  17,0
time = 1
[State 810, TargetBind1]
type = TargetBind
trigger1 = AnimElemTime(5)>=0 && AnimElemTime(6)<0
pos =  10,0
time = 1

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -119
kill = 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S5200,0
volume = 255
channel = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S2,13
volume = 255

[State 0, Explod]
type = Explod
trigger1 = animelem=6
anim = 8030+(random%8)
ID = 8030
pos = 22,-72
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1

[State 810, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;=========<Scorpion Deathlock Connection>==========
[Statedef 811]
type = S
movetype = A
physics = N
anim = 811
ctrl = 0
velset = 0,0

[State 810, TargetState]
type = TargetState
trigger1 = !Time
value = 821

[State 810, TargetBind1]
type = TargetBind
trigger1 = !Time
pos =  28,0
time = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 3.5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 0, Turn]
type = Turn
trigger1 = !AnimTime && PrevStateNo = 830

[State 810, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(PrevStateNo=800,810,840)
;=========<Scorpion Deathlock P2 State>==========
[Statedef 820]
type = S
movetype = H
physics = S

[State 0, Turn]
type = Turn
trigger1 = !time && facing = enemynear, facing
ignorehitpause = 1

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 820, SprPriority]
type = SprPriority
trigger1 = 1
value = -1

[State 820, ChangeAnim]
type= ChangeAnim2
trigger1 = Anim !=820
value = 820

[State 820, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 41
statetype = A
physics = N

[State 820, VelSet]
type = VelSet
trigger1 = Time = 41
x = -5.6
y = -5.8

[State 820, VelAdd]
type = VelAdd
trigger1 = Time > 41
y = .5

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
;=========<Scorpion Deathlock P2 State>==========
[Statedef 821]
type = S
movetype = H
physics = S

[State 0, Turn]
type = Turn
trigger1 = !time && facing = enemynear, facing
ignorehitpause = 1

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 820, SprPriority]
type = SprPriority
trigger1 = 1
value = 5

[State 820, ChangeAnim]
type= ChangeAnim2
trigger1 = Anim !=821
value = 821

[State 820, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;=========<Scorpion Deathlock>==========
[Statedef 830]
type = S
movetype = A
physics = N
anim = 800
juggle = 15
ctrl = 0
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 800, VarSet]
type = VarSet
trigger1 = Time = 0
var(5) = IfElse (Command = "holdfwd", 1,-1)

[State 800, Hitdef]
type = HitDef
trigger1 = !Time && p2bodydist x <= 52
trigger1= !var(4)
attr = S, NT
damage = 0,0
animtype = Heavy
guardflag =
hitflag = M-
priority = 3, Miss
pausetime = 2,2
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
p1stateno = IfElse(var(5)=1,840,811)
kill = 0
ID=830

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3,10
volume = 255
channel = 0

[State 800, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) > 0
movetype = I

[State 800, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;=========<Scorpion Deathlock Connection>==========
[Statedef 840]
type = S
movetype = A
physics = S
anim = 840
ctrl = 0
velset = 0,0

[State 0, TargetState]
type = TargetState
trigger1 = !Time
value = 3235

[State 3120, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1)>=0 &&animelemtime(9)<0
pos = 36,0
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,800
volume = 255
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S3,7
volume = 255
channel = 0

[State 1120, Helper]
type = Helper
trigger1= animelemtime(9)>0 &&!numhelper(6180)
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
trigger1 = AnimElemTime(9)=0
trigger2 = AnimElemTime(9)=2
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
trigger1 = animelem = 9
time = 15
freq = 75
ampl = -8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S5,0
volume = 255

[State 3120, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = ceil(-115*fvar(1))
kill = 1

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 9
value = 3236

[State 0, ChangeState]
type = ChangeState
trigger1= !AnimTime
value = 0
ctrl = 1
