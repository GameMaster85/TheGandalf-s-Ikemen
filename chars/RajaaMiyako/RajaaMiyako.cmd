;THE CMD 0F RAJAAMIYAKO

;====================<DEFAULT VALUES>====================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;====================<DEFAULT VALUES>====================
[Defaults]
command.time=15
command.buffer.time=1

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Button |--------------------------------------------------------------

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

;-| Single Dir |------------------------------------------------------------

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
time = 1

;-| Negative Edge |------------------------------------------------------

[Command]
name="NE_fwd"
command=~$F
time=1
[Command]
name="NE_back"
command=~$B
time=1
[Command]
name="NE_up"
command=~$U
time=1
[Command]
name="NE_down"
command=~$D
time=1

[Command]
name="NE_x"
command=~x
time=1
[Command]
name="NE_y"
command=~y
time=1
[Command]
name="NE_z"
command=~z
time=1
[Command]
name="NE_a"
command=~a
time=1
[Command]
name="NE_b"
command=~b
time=1
[Command]
name="NE_c"
command=~c
time=1

;-| Super Motions |--------------------------------------------------------

[Command]
name="Baji_Quan_Blitz"
command=~D,DF,F,D,DF,x
time=30
[Command]
name="Baji_Quan_Blitz"
command=~D,DF,F,D,DF,~x
time=30
[Command]
name="Baji_Quan_Blitz"
command=~D,DF,F,D,DF,y
time=30
[Command]
name="Baji_Quan_Blitz"
command=~D,DF,F,D,DF,~y
time=30
[Command]
name="Baji_Quan_Blitz"
command=~D,DF,F,D,DF,z
time=30
[Command]
name="Baji_Quan_Blitz"
command=~D,DF,F,D,DF,~z
time=30

[Command]
name="Zetsugi_Raikyoku_Anhouken"
command=~D,DB,B,D,DB,x
time=30
[Command]
name="Zetsugi_Raikyoku_Anhouken"
command=~D,DB,B,D,DB,~x
time=30
[Command]
name="Zetsugi_Raikyoku_Anhouken"
command=~D,DB,B,D,DB,y
time=30
[Command]
name="Zetsugi_Raikyoku_Anhouken"
command=~D,DB,B,D,DB,~y
time=30
[Command]
name="Zetsugi_Raikyoku_Anhouken"
command=~D,DB,B,D,DB,z
time=30
[Command]
name="Zetsugi_Raikyoku_Anhouken"
command=~D,DB,B,D,DB,~z
time=30

[Command]
name="Kyuukyoku_Ougi"
command=~D,DB,B,D,DB,a
time=30
[Command]
name="Kyuukyoku_Ougi"
command=~D,DB,B,D,DB,~a
time=30
[Command]
name="Kyuukyoku_Ougi"
command=~D,DB,B,D,DB,b
time=30
[Command]
name="Kyuukyoku_Ougi"
command=~D,DB,B,D,DB,~b
time=30
[Command]
name="Kyuukyoku_Ougi"
command=~D,DB,B,D,DB,c
time=30
[Command]
name="Kyuukyoku_Ougi"
command=~D,DB,B,D,DB,~c
time=30

[Command]
name="Baji_Quan_Spirit"
command=~D,DB,B,D,DB,a
time=30
[Command]
name="Baji_Quan_Spirit"
command=~D,DB,B,D,DB,~a
time=30
[Command]
name="Baji_Quan_Spirit"
command=~D,DB,B,D,DB,b
time=30
[Command]
name="Baji_Quan_Spirit"
command=~D,DB,B,D,DB,~b
time=30
[Command]
name="Baji_Quan_Spirit"
command=~D,DB,B,D,DB,c
time=30
[Command]
name="Baji_Quan_Spirit"
command=~D,DB,B,D,DB,~c
time=30

;-| Special Motions |------------------------------------------------------

[Command]
name="Renkantai"
command=~F,D,DF,a
time=18
[Command]
name="Renkantai"
command=~F,D,DF,~a
time=18
[Command]
name="Renkantai"
command=~F,D,DF,b
time=18
[Command]
name="Renkantai"
command=~F,D,DF,~b
time=18
[Command]
name="Renkantai"
command=~F,D,DF,c
time=18
[Command]
name="Renkantai"
command=~F,D,DF,~c
time=18

[Command]
name="Elbow_Naiyo"
command=~B,D,DB,x
time=18
[Command]
name="Elbow_Naiyo"
command=~B,D,DB,~x
time=18
[Command]
name="Elbow_Naiyo"
command=~B,D,DB,y
time=18
[Command]
name="Elbow_Naiyo"
command=~B,D,DB,~y
time=18
[Command]
name="Elbow_Naiyo"
command=~B,D,DB,z
time=18
[Command]
name="Elbow_Naiyo"
command=~B,D,DB,~z
time=18

[command]
name="Choushinchuu"
command=~D,DF,F,x
time=15
[command]
name="Choushinchuu"
command=~D,DF,F,~x
time=15
[command]
name="Choushinchuu"
command=~D,DF,F,y
time=15
[command]
name="Choushinchuu"
command=~D,DF,F,~y
time=15
[command]
name="Choushinchuu"
command=~D,DF,F,z
time=15
[command]
name="Choushinchuu"
command=~D,DF,F,~z
time=15

[Command]
name="Baji_Quan_Kyaku"
command=~D,DF,F,a
time=15
[Command]
name="Baji_Quan_Kyaku"
command=~D,DF,F,~a
time=15
[Command]
name="Baji_Quan_Kyaku"
command=~D,DF,F,b
time=15
[Command]
name="Baji_Quan_Kyaku"
command=~D,DF,F,~b
time=15
[Command]
name="Baji_Quan_Kyaku"
command=~D,DF,F,c
time=15
[Command]
name="Baji_Quan_Kyaku"
command=~D,DF,F,~c
time=15

[Command]
name="Senshippo"
command=~D,DB,B,x
time=15
[Command]
name="Senshippo"
command=~D,DB,B,~x
time=15
[Command]
name="Senshippo"
command=~D,DB,B,y
time=15
[Command]
name="Senshippo"
command=~D,DB,B,~y
time=15
[Command]
name="Senshippo"
command=~D,DB,B,z
time=15
[Command]
name="Senshippo"
command=~D,DB,B,~z
time=15

[Command]
name="Shinkyaku"
command=~D,DB,B,a
time=15
[Command]
name="Shinkyaku"
command=~D,DB,B,~a
time=15
[Command]
name="Shinkyaku"
command=~D,DB,B,b
time=15
[Command]
name="Shinkyaku"
command=~D,DB,B,~b
time=15
[Command]
name="Shinkyaku"
command=~D,DB,B,c
time=15
[Command]
name="Shinkyaku"
command=~D,DB,B,~c
time=15

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| Other |-----------------------------------------------

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "s"
command = s
time = 1

[command]
name = "GuardCounter"
command = b+y
time = 1

[Command]
name="HighJmp"
command=$D,$U
time=15

;===========================================================================
[Statedef -1]
;===========================================================================

;===========================================================================
;SUPER MOVES
;===========================================================================
[State -1,Baji_Quan_Blitz]
type=changeState
value=3000
triggerall=!ailevel
triggerall=power>=1000&&!var(25)||var(25)&&var(26)>=500
triggerall=command="Baji_Quan_Blitz"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(4)=1||var(4)=-1||var(4)=2||var(4)=-2||var(4)=3||var(5)=1||var(5)=2||var(5)=-2||var(5)=3
trigger3=var(4)=4||var(4)=5||var(4)=6||var(5)=4||var(5)=5||var(5)=6
trigger4=var(6)=1
trigger5=var(7)

[State -1,Zetsugi_Raikyoku_Anhouken]
type=changeState
value=3200
triggerall=!ailevel
triggerall=power>=1000&&!var(25)||var(25)&&var(26)>=500
triggerall=command="Zetsugi_Raikyoku_Anhouken"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(7)

[State -1,Kyuukyoku_Ougi]
type=changeState
value=3100
triggerall=!ailevel
triggerall=power>=1000&&!var(25)||var(25)&&var(26)>=500
triggerall=command="Kyuukyoku_Ougi"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(7)
;===========================================================================
;SPECIALS
;===========================================================================
[state -1,Elbow_Naiyo]
type=ChangeState
value=1700+(2700*(var(25)&&(command="z"||command="NE_z")))
triggerall=!ailevel
triggerall=command="Elbow_Naiyo"
;triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(7)

[state -1,Senshippo]
type=ChangeState
value=1600+(2700*(var(25)&&(command="z"||command="NE_z")))
triggerall=!ailevel
triggerall=command="Senshippo"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(7)

[state -1,Renkantai]
type=changestate
value=(1400+(50*(statetype=A)))+(2700*(var(25)&&(command="c"||command="NE_c")))
triggerall=!ailevel
triggerall=command="Renkantai"
;triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(2)=1||var(2)=-1||var(2)=2||var(2)=-2||var(2)=3||var(3)=1||var(3)=2||var(3)=-2||var(3)=3
trigger3=var(2)=4||var(2)=5||var(3)=4||var(3)=5
trigger4=var(7)

[state -1,Baji_Quan_Kyaku]
type=ChangeState
value=1800+(2700*(var(25)&&(command="c"||command="NE_c")))
triggerall=!ailevel
triggerall=command="Baji_Quan_Kyaku"
;triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(7)

[state -1,Shinkyaku]
type=ChangeState
value=1500+(2700*(var(25)&&(command="c"||command="NE_c")))
triggerall=!ailevel
triggerall=command="Shinkyaku"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(7)

[state -1,Choushinchuu]
type=ChangeState
value=1300+(2700*(var(25)&&(command="z"||command="NE_z")))
triggerall=!ailevel
triggerall=command="Choushinchuu"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||stateno=40||stateno=52
trigger2=var(2)=1||var(2)=-1||var(2)=2||var(2)=-2||var(2)=3||var(3)=1||var(3)=2||var(3)=-2||var(3)=3
trigger3=var(2)=4||var(2)=5||var(3)=4||var(3)=5
trigger4=var(7)

[state -1,Tetsuzanko]
type=changestate
value=ifelse(command="x"||command="NE_x"||command="z"||command="NE_z",1305+(command="z"||command="NE_z"),ifelse(command!="holdback"&&(command="y"||command="NE_y"),1205,1210))
triggerall=!ailevel
triggerall=statetype!=A
triggerall=stateno=1300
trigger1=movecontact&&((command="holdfwd")&&(command="x"||command="NE_x"||command="y"||command="NE_y"||command="z"||command="NE_z")||command="holdback"&&(command="y"||command="NE_y"))
[state -1,Tetsuzanko]
type=changestate
value=ifelse(command="x"||command="NE_x"||command="z"||command="NE_z",4005+(command="z"||command="NE_z"),ifelse(command!="holdback"&&(command="y"||command="NE_y"),1205,1210))
triggerall=!ailevel
triggerall=statetype!=A
triggerall=stateno=4000
trigger1=movecontact&&((command="holdfwd")&&(command="x"||command="NE_x"||command="y"||command="NE_y"||command="z"||command="NE_z")||command="holdback"&&(command="y"||command="NE_y"))
;===========================================================================
;ABILITIES
;===========================================================================
[State -1,Power_charge]
type=ChangeState
value=6000
triggerall=!ailevel
triggerall=!var(25)
triggerall=command="b"&&command="y"
triggerall=(power<powermax&&power<const(data.power))
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101

[State -1,Vigor_Mode]
type=ChangeState
value=7000
triggerall=!ailevel
triggerall=power>=1000||var(25)
triggerall=command="z"&&command="c"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
;===========================================================================
;FUNCTIONS
;===========================================================================
[state -1,Guard_Counter]
type=changestate
value=1100
triggerall=!ailevel
triggerall=!var(25)
triggerall=statetype!=A
triggerall=power>=1000
triggerall=command="GuardCounter"&&command!="holddown"&&command="holdfwd"
trigger1=stateno=150||stateno=152

[state -1,Dodge]
type=changestate
value=1200
triggerall=!ailevel
triggerall=statetype!=A
triggerall=command="a"&&Command="x"&&command!="holdfwd"&&command!="holdback"
trigger1=ctrl||stateno=100||stateno=101

[state -1,FwdRoll]
type=changestate
value=1205
triggerall=!ailevel
triggerall=statetype!=A
triggerall=command="a"&&Command="x"&&command="holdfwd"
trigger1=ctrl||stateno=100||stateno=101

[state -1,BackRoll]
type=changestate
value=1210
triggerall=!ailevel
triggerall=statetype!= A
triggerall=command="a"&&Command="x"&&command="holdback"
trigger1=ctrl||stateno=100||stateno=101

[state -1,Parry_Stand]
type=hitoverride
triggerall=!ailevel
triggerall=statetype=S&&command="fwd"&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl
attr=SA,AA,AP
stateno=6100
slot=0
time=2+(2*(var(25)))

[state -1,Parry_Crouch]
type=hitoverride
triggerall=!ailevel
triggerall=(statetype=S&&command="down")||(statetype=C&&command="fwd")&&command!="back"&&command!="up"
trigger1=ctrl
attr=C,AA,AP
stateno=6101
slot=0
time=2+(2*(var(25)))

[state -1,Parry_Air]
type=hitoverride
triggerall=!ailevel
triggerall=(statetype=A&&command="fwd")&&command!="back"&&command!="up"&&command!="down"
trigger1=ctrl
attr=SA,AA,AP
stateno=6102
forceair=1
slot=0
time=2+(2*(var(25)))
;===========================================================================
;NORMALS
;===========================================================================
[State -1,Run_Fwd]
type=changestate
value=100
triggerall=!ailevel
triggerall=statetype!=A
trigger1=command="FF"
trigger1=ctrl

[State -1,Run_Back]
type=changestate
value=105
triggerall=!ailevel
triggerall=statetype!=A
trigger1=command="BB"
trigger1=ctrl

[State -1,Crane_Motion]
type=ChangeState
value=800
triggerall=!ailevel
triggerall=command="holdfwd"||command="holdback"
triggerall=command="z"&&command!="holddown"
triggerall=p2bodydist x=[-(const(size.ground.front)/2),25]
triggerall=p2statetype!=A&&p2statetype!=L&&p2movetype!=H
triggerall=statetype!=A
trigger1=ctrl

[State -1,Head_Pounce]
type=ChangeState
value=820
triggerall=!ailevel
triggerall=command="holdfwd"||command="holdback"
triggerall=command="c"&&command!="holddown"
triggerall=p2bodydist x=[-(const(size.ground.front)/2),25]
triggerall=p2statetype!=A&&p2statetype!=L&&p2movetype!=H
triggerall=statetype!=A
trigger1=ctrl

[State -1,Head_Pounce]
type=ChangeState
value=840
triggerall=!ailevel
triggerall=command="holdfwd"||command="holdback"
triggerall=command="z"&&command!="holddown"
triggerall=p2bodydist x=[-(const(size.air.front)/2),25]
triggerall=p2bodydist y=[-30,30]
triggerall=p2statetype=A&&p2statetype!=L&&p2movetype!=H
triggerall=statetype=A
trigger1=ctrl

[State -1, Taunt]
type=ChangeState
value=199
triggerall=!ailevel
triggerall=stateno!=199
triggerall=command="s"
trigger1=statetype!=A
trigger1=ctrl

[state -1,Recover-Ground]
type=changestate
value=5200
trigger1=!ailevel
trigger1=stateno=5050||stateno=5071
trigger1=vel y>0
trigger1=pos y>=const(movement.air.gethit.groundrecover.ground.threshold)
trigger1=alive
trigger1=gethitvar(fall.recover)
trigger1=command="recovery"

[state -1,Recover-Air]
type=changestate
value=5210
trigger1=!ailevel
trigger1=stateno=5050
trigger1=vel y>const(movement.air.gethit.airrecover.threshold)
trigger1=pos y<const(movement.air.gethit.groundrecover.ground.threshold)
trigger1=alive
trigger1=canrecover
trigger1=command="recovery"

[State -1,SWP]
type=ChangeState
value=200+(5*(p2bodydist x<=12))
triggerall=!ailevel
triggerall=command="x"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||var(10)

[State -1,SMP]
type=ChangeState
value=210+(5*(command="holdfwd"))
triggerall=!ailevel
triggerall=command="y"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=4
trigger3=var(28)=1||var(28)=4

[State -1,SSP]
type=ChangeState
value=220+(ifelse(command="holdback",6,5)*(command="holdfwd"||command="holdback"))
triggerall=!ailevel
triggerall=command="z"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5
trigger3=var(28)=1||var(28)=2||var(28)=-2||var(28)=4||var(28)=5

[State -1,SWK]
type=ChangeState
value=230
triggerall=!ailevel
triggerall=command="a"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=4

[State -1,SMK]
type=ChangeState
value=240+(5*(command="holdfwd"))
triggerall=!ailevel
triggerall=command="b"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5
trigger3=var(28)=1||var(28)=4

[State -1,SSK]
type=ChangeState
value=250
triggerall=!ailevel
triggerall=command="c"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=3||var(27)=-3||var(27)=4||var(27)=5||var(27)=6
trigger3=var(28)=1||var(28)=2||var(28)=-2||var(28)=4||var(28)=5

[State -1,CWP]
type=ChangeState
value=400
triggerall=!ailevel
triggerall=command="x"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101||var(10)

[State -1,CMP]
type=ChangeState
value=410
triggerall=!ailevel
triggerall=command="y"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=4
trigger3=var(28)=1||var(28)=4

[State -1,CSP]
type=ChangeState
value=420
triggerall=!ailevel
triggerall=command="z"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5
trigger3=var(28)=1||var(28)=2||var(28)=-2||var(28)=4||var(28)=5

[State -1,CWK]
type=ChangeState
value=430
triggerall=!ailevel
triggerall=command="a"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=4

[State -1,CMK]
type=ChangeState
value=440
triggerall=!ailevel
triggerall=command="b"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5
trigger3=var(28)=1||var(28)=4

[State -1,CSK]
type=ChangeState
value=450
triggerall=!ailevel
triggerall=command="c"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||stateno=100||stateno=101
trigger2=var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=3||var(27)=-3||var(27)=4||var(27)=5||var(27)=6
trigger3=var(28)=1||var(28)=2||var(28)=-2||var(28)=4||var(28)=5

[State -1,AWP]
type=ChangeState
value=600
triggerall=!ailevel
triggerall=command="x"
triggerall=statetype=A
trigger1=ctrl

[State -1,AMP]
type=ChangeState
value=610
triggerall=!ailevel
triggerall=command="y"
triggerall=statetype=A
trigger1=ctrl

[State -1,ASP]
type=ChangeState
value=620
triggerall=!ailevel
triggerall=command="z"
triggerall=statetype=A
trigger1=ctrl

[State -1,AWK]
type=ChangeState
value=630
triggerall=!ailevel
triggerall=command="a"
triggerall=statetype=A
trigger1=ctrl

[State -1,AMK]
type=ChangeState
value=640
triggerall=!ailevel
triggerall=command="b"
triggerall=statetype=A
trigger1=ctrl

[State -1,ASK]
type=ChangeState
value=650+(50*(command="holddown"))
triggerall=!ailevel
triggerall=command="c"
triggerall=statetype=A
trigger1=ctrl
;===========================================================================
;AI_COMMANDS
;===========================================================================
[state -1,GrabDodge]
type=ChangeState
value=40
triggerall=ailevel
triggerall=roundstate=2
triggerall=stateno!=40
triggerall=inguarddist
triggerall=ctrl
triggerall=statetype!=A
trigger1=enemynear,hitdefattr=SC,NT,ST,HT&&random<=600

[State -1,Guard]
type=changestate
value=120
trigger1=ailevel
trigger1=cond(var(25),statetype!=A,1)
trigger1=roundstate=2
trigger1=inguarddist
trigger1=ctrl&&(stateno!=[120,155])&&(stateno!=[6100,6102])
trigger1=!(enemynear,hitdefattr=SCA,AT)&&(enemynear,time<70)
trigger1=random<(ifelse(statetype=A&&p2statetype!=A,0,ifelse(statetype!=A&&p2statetype=A,1000,900))*(ailevel**2/64.0))
;trigger1=random<(ifelse(statetype=A&&p2statetype!=A,0,ifelse(statetype!=A&&p2statetype=A,500,500))*(ailevel**2/64.0))

[State -1,Run_Fwd]
type=changestate
value=100
triggerall=ailevel
triggerall=roundstate=2
triggerall=statetype!=A
triggerall=(stateno!=[10,12])&&(prevstateno!=[10,12])
triggerall=(stateno!=[100,101])&&(prevstateno!=[100,101])
triggerall=(stateno!=[105,106])&&(prevstateno!=[105,106])
;triggerall=!inguarddist
triggerall=ctrl
trigger1=(p2bodydist x>90)&&p2movetype!=A&&random<(50*(ailevel**2/64.0))
trigger2=(p2bodydist x>120)&&numtarget&&p2statetype=L&&random<(50*(ailevel**2/64.0))

[State -1,Run_Back]
type=changestate
value=105
triggerall=ailevel
triggerall=roundstate=2
triggerall=statetype!=A
triggerall=(stateno!=[10,12])&&(prevstateno!=[10,12])
triggerall=(stateno!=[100,101])&&(prevstateno!=[100,101])
triggerall=(stateno!=[105,106])&&(prevstateno!=[105,106])
triggerall=!inguarddist
triggerall=ctrl
trigger1=frontedgedist<backedgedist
trigger1=(p2bodydist x=[0,25])&&p2stateno=5120
trigger1=random<(200*(ailevel**2/64.0))
;===========================================================================
;AI_NORMAL
;===========================================================================
[State -1,SWP]
type=changestate
value=200+(5*(p2bodydist x<=12))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,25])&&(p2dist y=[-50,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))

[State -1,SMP]
type=changestate
value=210+(5*(p2bodydist x>50))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,65])&&(p2dist y=[-50,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=4)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=4)&&random<(100*(ailevel**2/64.0))

[State -1,SSP]
type=changestate
value=220
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-65,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))

[State -1,SSP]
type=changestate
value=225
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,83])&&(p2dist y=[-65,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))

[State -1,SSP]
type=changestate
value=226
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-65,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=-2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))
trigger4=(ctrl||stateno=100||stateno=101)&&p2statetype!=C&&(p2stateno=[200,259])&&random<(250*(ailevel**2/64.0))

[State -1,SWK]
type=changestate
value=230
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,55])&&(p2dist y=[-45,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=4)&&random<(100*(ailevel**2/64.0))

[State -1,SMK]
type=changestate
value=240+(5*(p2bodydist x>40))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-50,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=4)&&random<(100*(ailevel**2/64.0))

[State -1,SSK]
type=changestate
value=250
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,80])&&(p2dist y=[-60,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=3||var(27)=-3||var(27)=4||var(27)=5||var(27)=6)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=-2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))

[State -1,CWP]
type=changestate
value=400
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,40])&&(p2dist y=[-30,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))

[State -1,CMP]
type=changestate
value=410
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,40])&&(p2dist y=[-30,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=4)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=4)&&random<(100*(ailevel**2/64.0))

[State -1,CSP]
type=changestate
value=420
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,50])&&(p2dist y=[-80,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=-2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))

[State -1,CWK]
type=changestate
value=430
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,60])&&(p2dist y=[-30,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=4)&&random<(100*(ailevel**2/64.0))

[State -1,CMK]
type=changestate
value=440
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,70])&&(p2dist y=[-30,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=4)&&random<(100*(ailevel**2/64.0))

[State -1,CSK]
type=changestate
value=450
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-30,5])
trigger1=(ctrl||stateno=100||stateno=101)&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=-1||var(27)=2||var(27)=-2||var(27)=3||var(27)=-3||var(27)=4||var(27)=5||var(27)=6)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=-2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))

[State -1,AEA]
type=changestate
value=700
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-25,25])&&(p2dist y=[-10,70])&&vel x>0
trigger1=ctrl&&random<(25*(ailevel**2/64.0))
trigger2=ctrl&&p2dist y>0&&random<(50*(ailevel**2/64.0))

[State -1,AWP]
type=changestate
value=600
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,40])&&(p2dist y=[-10,70])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))

[State -1,AMP]
type=changestate
value=610
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-35,35])&&(p2dist y=[-20,20])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))

[State -1,ASP]
type=changestate
value=620
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,60])&&(p2dist y=[-30,100])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))
trigger2=ctrl&&vel y>1&&p2statetype!=A&&random<(250*(ailevel**2/64.0))

[State -1,AWK]
type=changestate
value=630
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,50])&&(p2dist y=[-60,20])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))

[State -1,AMK]
type=changestate
value=640
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,45])&&(p2dist y=[-60,20])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))

[State -1,ASK]
type=changestate
value=650
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,40])&&(p2dist y=[-60,20])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))

[State -1,Crane_Motion]
type=changestate
value=800
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=p2movetype!=H&&p2statetype!=A
triggerall=p2bodydist x=[-2,25]
triggerall=ctrl
trigger1=random<=(ifelse((p2stateno=[120,155]),200,100)*(ailevel**2/64.0))

[State -1,Head_Pounce]
type=changestate
value=820
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=p2movetype!=H&&p2statetype!=A
triggerall=p2bodydist x=[-2,25]
triggerall=ctrl
trigger1=random<=(ifelse((p2stateno=[120,155]),200,100)*(ailevel**2/64.0))

[State -1,Head_Pounce]
type=changestate
value=840
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=p2movetype!=H&&p2statetype=A
triggerall=(p2bodydist x=[-5,25])&&(p2bodydist y=[-30,30])
triggerall=ctrl
trigger1=random<=(ifelse((p2stateno=[120,155]),200,100)*(ailevel**2/64.0))
;===========================================================================
;AI SPECIAL
;===========================================================================
[State -1,Choushinchuu]
type=changestate
value=1300+(2700*(var(25)&&random<500))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,180])&&(p2dist y=[-60,5])
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=-1||var(2)=2||var(2)=-2||var(2)=3||var(3)=1||var(3)=2||var(3)=-2||var(3)=3)&&random<(100*(ailevel**2/64.0))
trigger3=(var(2)=4||var(2)=5||var(3)=4||var(3)=5)&&random<(100*(ailevel**2/64.0))
trigger4=var(7)&&stateno=3000&&numtarget&&animelemtime(54)>0&&random<(200*(ailevel**2/64.0))
trigger5=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&p2movetype=A&&!(enemynear,hitdefattr=SCA,AP,AT,HA)&&p2bodydist x>180&&random<(100*(ailevel**2/64.0))
[State -1,Tetsuzanko]
type=changestate
value=ifelse(numtarget&&(random<(ifelse((p2stateno=[150,155]),500,800)))||var(8),1305+(1*(p2statetype=S&&random<500)),1205+(5*ifelse(random<500,1,0)))
triggerall=ailevel
triggerall=statetype!=A&&p2dist y>-30
triggerall=stateno=1300
trigger1=movecontact=[1,4]
[State -1,Tetsuzanko]
type=changestate
value=ifelse(numtarget&&random<500,4005+(1*(p2statetype=S&&random<500)),1205+(5*ifelse(random<500,1,0)))
triggerall=ailevel
triggerall=statetype!=A&&p2dist y>-30
triggerall=stateno=4000
trigger1=movecontact=[1,4]

[State -1,Renkantai]
type=changestate
value=1400+(2700*(var(25)&&random<300))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,60])&&(p2dist y=[-130,5])
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=-1||var(2)=2||var(2)=-2||var(2)=3||var(3)=1||var(3)=2||var(3)=-2||var(3)=3)&&random<(100*(ailevel**2/64.0))
trigger3=(var(2)=4||var(2)=5||var(3)=4||var(3)=5)&&random<(100*(ailevel**2/64.0))
trigger4=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&p2movetype=A&&(p2bodydist x=[0,50])&&random<(150*(ailevel**2/64.0))
trigger5=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&p2statetype=A&&enemynear,vel y>0&&(p2bodydist x=[0,60])&&random<(150*(ailevel**2/64.0))

[State -1,Shinkyaku]
type=changestate
value=1500+(2700*(var(25)&&random<300))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[-150+(50*(var(25))),150-(50*(var(25)))])&&(p2dist y=[-30,5])
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(50*(ailevel**2/64.0))

[State -1,Senshippou]
type=changestate
value=1600+(2700*(var(25)&&random<300))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,135])&&(p2dist y=[-60,5])
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(50*(ailevel**2/64.0))
trigger2=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&p2statetype=A&&(p2bodydist x=[0,60])&&random<(100*(ailevel**2/64.0))
trigger3=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&(p2bodydist x=[0,75])&&p2movetype=A&&(enemynear,hitdefattr!=SCA,NT,ST,HT)&&random<(100*(ailevel**2/64.0))

[State -1,Elbow_Naiyo]
type=changestate
value=1700+(2700*(var(25)&&random<300))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[50,230])&&(p2dist y>-60)
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(25*(ailevel**2/64.0));&&(p2statetype=C||p2statetype=L)
trigger2=var(7)&&stateno=3206&&anim=3206&&numtarget&&p2stateno=4312&&animelemtime(8)>0&&random<(100*(ailevel**2/64.0))

[State -1,Baji_Quan_Kyaku]
type=changestate
value=1800+(2700*(var(25)&&random<200))
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
;triggerall=statetype!=A
triggerall=(p2bodydist x=[0,160])&&(p2dist y=[-120,5])
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(50*(ailevel**2/64.0))
trigger2=var(7)&&stateno=3206&&anim=3206&&numtarget&&p2stateno=4312&&animelemtime(8)>0&&random<(100*(ailevel**2/64.0))
trigger3=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&statetype!=A&&enemynear,statetype=A&&enemynear,vel x>0&&enemynear,pos y>-60&&random<(150*(ailevel**2/64.0))
;===========================================================================
;AI SUPER
;===========================================================================
[State -1,Baji_Quan_Blitz]
type=changestate
value=3000
triggerall=ailevel
triggerall=power>=1000&&!var(25)||var(25)&&var(26)>=500
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,85])&&(p2dist y=[-50,5])
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(50*(ailevel**2/64.0))
trigger2=(var(4)=1||var(4)=-1||var(4)=2||var(4)=-2||var(4)=3||var(5)=1||var(5)=2||var(5)=-2||var(5)=3)&&random<(100*(ailevel**2/64.0))
trigger3=(var(4)=4||var(4)=5||var(4)=6||var(5)=4||var(5)=5)&&random<(100*(ailevel**2/64.0))
trigger4=var(6)=1&&random<(300*(ailevel**2/64.0))
trigger5=var(7)&&stateno=3000&&numtarget&&animelemtime(54)>0&&random<(50*(ailevel**2/64.0))

[State -1,Kyuukyoku_Ougi]
type=changestate
value=3100
triggerall=ailevel
triggerall=power>=1000&&!var(25)||var(25)&&var(26)>=500
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
;triggerall=p2statetype=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[-50,100])&&(p2dist y=[-130,5])
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(50*(ailevel**2/64.0))
trigger2=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&p2statetype=A&&p2movetype!=H&&enemynear,vel y>0&&(p2bodydist x=[-50,100])&&random<(150*(ailevel**2/64.0))
trigger3=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&p2statetype=A&&p2movetype=H&&enemynear,vel y>0&&(enemynear,vel x=[-2,4])&&(p2bodydist x=[-50,100])&&random<(150*(ailevel**2/64.0))
trigger4=var(7)&&stateno=3000&&numtarget&&animelemtime(54)>0&&random<(50*(ailevel**2/64.0))
trigger5=var(7)&&stateno=3206&&anim=3206&&numtarget&&p2stateno=4312&&animelemtime(8)>0&&random<(100*(ailevel**2/64.0))

[State -1,Zetsugi_Raikyoku_Anhouken]
type=changestate
value=3200
triggerall=ailevel
triggerall=power>=1000&&!var(25)||var(25)&&var(26)>=500
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,175])&&(p2dist y=[-75,5])
trigger1=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&random<(50*(ailevel**2/64.0))
trigger2=(ctrl||stateno=100||stateno=101||stateno=40||stateno=52)&&p2movetype=A&&(p2bodydist x=[0,50])&&enemynear,vel y>=0&&random<(100*(ailevel**2/64.0))
trigger3=var(7)&&stateno=3000&&numtarget&&animelemtime(54)>0&&random<(50*(ailevel**2/64.0))
;===========================================================================
;AI ABILITIES
;===========================================================================
[state -1,Recover-Ground]
type=changestate
value=5200
trigger1=ailevel
trigger1=roundstate=2
trigger1=stateno=5050||stateno=5071
trigger1=vel y>0
trigger1=pos y>=const(movement.air.gethit.groundrecover.ground.threshold)
trigger1=alive
trigger1=gethitvar(fall.recover)
trigger1=random<(100*(ailevel**2/64.0))

[state -1,Recover-Air]
type=changestate
value=5210
trigger1=ailevel
trigger1=roundstate=2
trigger1=stateno=5050
trigger1=vel y>const(movement.air.gethit.airrecover.threshold)
trigger1=pos y<const(movement.air.gethit.groundrecover.ground.threshold)
trigger1=alive
trigger1=canrecover
trigger1=random<(100*(ailevel**2/64.0))
;===========================================================================
;AI SYSTEM
;===========================================================================
[State -1,Guard_Counter]
type=changestate
value=1100
triggerall=ailevel
triggerall=power>=1000&&!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,75])&&(p2dist y=[-65,5])
trigger1=stateno=150||stateno=152
trigger1=life<(.2*lifemax)&&random<(75*(ailevel**2/64.0))
trigger1=enemynear,vel x>=0&&enemynear,vel y>=0&&enemynear,life>55

[State -1,Dodge]
type=changestate
value=1200
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(ctrl||stateno=100||stateno=101)&&!(enemynear,hitdefattr=SCA,AT)
;trigger1=enemynear,movetype=A&&(enemynear,stateno=[200,655])&&(p2bodydist x=[-45,45])&&random<=150
trigger1=enemynear,movetype=A&&(p2stateno!=[3000,3999])&&(inguarddist)&&random<(75*(ailevel**2/64.0))

[State -1,Roll_Fwd]
type=changestate
value=1205
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(ctrl||stateno=100||stateno=101)&&!(enemynear,hitdefattr=SCA,AT)
trigger1=enemynear,vel x>=0&&(p2bodydist x=[-60,60])&&enemynear,movetype=A&&random<(150*(ailevel**2/64.0))
trigger2=backedgebodydist<=5&&enemynear,movetype=A&&random<(150*(ailevel**2/64.0))
trigger3=inguarddist&&vel x>4&&random<(50*(ailevel**2/64.0))

[State -1,Roll_Bck]
type=changestate
value=1210
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(ctrl||stateno=100||stateno=101)&&!(enemynear,hitdefattr=SCA,AT)
triggerall=backedgedist!=[-10,15]
trigger1=enemynear,vel x>1&&(p2bodydist x=[0,60])&&random<(150*(ailevel**2/64.0))

[State -1,Power_Charge]
type=changestate
value=6000
triggerall=ailevel
triggerall=!var(25)
triggerall=(power<powermax&&power<const(data.power))
triggerall=roundstate=2
triggerall=statetype!=A
triggerall=ctrl
trigger1=enemynear,movetype!=A&&p2dist x>=160&&!enemy,numproj&&!inguarddist&&random<(25*(ailevel**2/64.0))

[State -1,Vigor_Mode]
type=ChangeState
value=7000
triggerall=ailevel
triggerall=power>=1000||var(25)
triggerall=roundstate=2
triggerall=statetype!=A
triggerall=ctrl
trigger1=p2movetype!=A&&p2bodydist x>200&&!var(25)&&random<(50*(ailevel**2/64.0))
