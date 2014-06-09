;THE CMD 0F RAJAAROA

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
name="Millennium_Clap"
command=~F,B,$D,F,x
time=30
[Command]
name="Millennium_Clap"
command=~F,B,$D,F,~x
time=30
[Command]
name="Millennium_Clap"
command=~F,B,$D,F,y
time=30
[Command]
name="Millennium_Clap"
command=~F,B,$D,F,~y
time=30
[Command]
name="Millennium_Clap"
command=~F,B,$D,F,z
time=30
[Command]
name="Millennium_Clap"
command=~F,B,$D,F,~z
time=30

[Command]
name="Serpent's_Overload"
command=~F,B,$D,F,a
time=30
[Command]
name="Serpent's_Overload"
command=~F,B,$D,F,~a
time=30
[Command]
name="Serpent's_Overload"
command=~F,B,$D,F,b
time=30
[Command]
name="Serpent's_Overload"
command=~F,B,$D,F,~b
time=30
[Command]
name="Serpent's_Overload"
command=~F,B,$D,F,c
time=30
[Command]
name="Serpent's_Overload"
command=~F,B,$D,F,~c
time=30

[Command]
name="Illuminative_Sparks"
command=~D,DF,F,D,DF,x
time=30
[Command]
name="Illuminative_Sparks"
command=~D,DF,F,D,DF,~x
time=30
[Command]
name="Illuminative_Sparks"
command=~D,DF,F,D,DF,y
time=30
[Command]
name="Illuminative_Sparks"
command=~D,DF,F,D,DF,~y
time=30
[Command]
name="Illuminative_Sparks"
command=~D,DF,F,D,DF,z
time=30
[Command]
name="Illuminative_Sparks"
command=~D,DF,F,D,DF,~z
time=30

[Command]
name="Slice_'n_Dice"
command=~D,DF,F,D,DF,a
time=30
[Command]
name="Slice_'n_Dice"
command=~D,DF,F,D,DF,~a
time=30
[Command]
name="Slice_'n_Dice"
command=~D,DF,F,D,DF,b
time=30
[Command]
name="Slice_'n_Dice"
command=~D,DF,F,D,DF,~b
time=30
[Command]
name="Slice_'n_Dice"
command=~D,DF,F,D,DF,c
time=30
[Command]
name="Slice_'n_Dice"
command=~D,DF,F,D,DF,~c
time=30

[Command]
name="Lightning_Storm"
command=~D,DB,B,D,DB,x
time=30
[Command]
name="Lightning_Storm"
command=~D,DB,B,D,DB,~x
time=30
[Command]
name="Lightning_Storm"
command=~D,DB,B,D,DB,y
time=30
[Command]
name="Lightning_Storm"
command=~D,DB,B,D,DB,~y
time=30
[Command]
name="Lightning_Storm"
command=~D,DB,B,D,DB,z
time=30
[Command]
name="Lightning_Storm"
command=~D,DB,B,D,DB,~z
time=30

[Command]
name="Lightning_Barrage"
command=~D,DB,B,D,DB,a
time=30
[Command]
name="Lightning_Barrage"
command=~D,DB,B,D,DB,~a
time=30
[Command]
name="Lightning_Barrage"
command=~D,DB,B,D,DB,b
time=30
[Command]
name="Lightning_Barrage"
command=~D,DB,B,D,DB,~b
time=30
[Command]
name="Lightning_Barrage"
command=~D,DB,B,D,DB,c
time=30
[Command]
name="Lightning_Barrage"
command=~D,DB,B,D,DB,~c
time=30

;-| Special Motions |------------------------------------------------------

[Command]
name="Blink_Shock"
command=~B,$D,F,a
time=21
[Command]
name="Blink_Shock"
command=~B,$D,F,~a
time=21
[Command]
name="Blink_Shock"
command=~B,$D,F,b
time=21
[Command]
name="Blink_Shock"
command=~B,$D,F,~b
time=21
[Command]
name="Blink_Shock"
command=~B,$D,F,c
time=21
[Command]
name="Blink_Shock"
command=~B,$D,F,~c
time=21

[Command]
name="Surprise_Roar"
command=~F,$D,B,x
time=21
[Command]
name="Surprise_Roar"
command=~F,$D,B,~x
time=21
[Command]
name="Surprise_Roar"
command=~F,$D,B,y
time=21
[Command]
name="Surprise_Roar"
command=~F,$D,B,~y
time=21
[Command]
name="Surprise_Roar"
command=~F,$D,B,z
time=21
[Command]
name="Surprise_Roar"
command=~F,$D,B,~z
time=21

[Command]
name="Rising_Shock"
command=~F,D,DF,x
time=18
[Command]
name="Rising_Shock"
command=~F,D,DF,~x
time=18
[Command]
name="Rising_Shock"
command=~F,D,DF,y
time=18
[Command]
name="Rising_Shock"
command=~F,D,DF,~y
time=18
[Command]
name="Rising_Shock"
command=~F,D,DF,z
time=18
[Command]
name="Rising_Shock"
command=~F,D,DF,~z
time=18

[command]
name="Flash_Spark"
command=~D,DF,F,x
time=15
[command]
name="Flash_Spark"
command=~D,DF,F,~x
time=15
[command]
name="Flash_Spark"
command=~D,DF,F,y
time=15
[command]
name="Flash_Spark"
command=~D,DF,F,~y
time=15
[command]
name="Flash_Spark"
command=~D,DF,F,z
time=15
[command]
name="Flash_Spark"
command=~D,DF,F,~z
time=15

[command]
name="Static_Slash"
command=~D,DF,F,a
time=15
[command]
name="Static_Slash"
command=~D,DF,F,~a
time=15
[command]
name="Static_Slash"
command=~D,DF,F,b
time=15
[command]
name="Static_Slash"
command=~D,DF,F,~b
time=15
[command]
name="Static_Slash"
command=~D,DF,F,c
time=15
[command]
name="Static_Slash"
command=~D,DF,F,~c
time=15

[command]
name="Lightning_Trap"
command=~D,DB,B,x
time=15
[command]
name="Lightning_Trap"
command=~D,DB,B,~x
time=15
[command]
name="Lightning_Trap"
command=~D,DB,B,y
time=15
[command]
name="Lightning_Trap"
command=~D,DB,B,~y
time=15
[command]
name="Lightning_Trap"
command=~D,DB,B,z
time=15
[command]
name="Lightning_Trap"
command=~D,DB,B,~z
time=15

[command]
name="Lightning_Rod"
command=~D,DB,B,a
time=15
[command]
name="Lightning_Rod"
command=~D,DB,B,~a
time=15
[command]
name="Lightning_Rod"
command=~D,DB,B,b
time=15
[command]
name="Lightning_Rod"
command=~D,DB,B,~b
time=15
[command]
name="Lightning_Rod"
command=~D,DB,B,c
time=15
[command]
name="Lightning_Rod"
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

[Command]
name="HighJmp"
command=$D,$U
time=15

;===========================================================================
[Statedef -1]
;===========================================================================

[State -1,Selfstate]
type=varset
trigger1=1
var(59)=1
ignorehitpause=1

;===========================================================================
;SUPER MOVES
;===========================================================================
[State -1,Millennium_Clap]
type=changestate
value=3500
triggerall=!ailevel
triggerall=power>=3000&&!var(25)
triggerall=command="Millennium_Clap"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])

[State -1,Serpent's_Overload]
type=changestate
value=3600
triggerall=!ailevel
triggerall=power>=3000&&!var(25)
triggerall=command="Serpent's_Overload"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])

[State -1,Storm_Cloud]
type=changestate
value=3100
triggerall=!ailevel
triggerall=power>=1000&&!var(25)
triggerall=command="Illuminative_Sparks"
triggerall=statetype=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=7||var(2)=8||var(2)=9
trigger3=var(3)=7||var(3)=8||var(3)=9
trigger4=var(7)||var(9)

[State -1,Illuminative_Sparks]
type=changestate
value=3000
triggerall=!ailevel
triggerall=power>=1000&&!var(25)
triggerall=command="Illuminative_Sparks"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5||var(3)=13
trigger4=var(4)=1||var(4)=2
trigger5=var(7)||var(9)

[State -1,Slice_'n_Dice]
type=changestate
value=3200
triggerall=!ailevel
triggerall=power>=1000&&!var(25)
triggerall=command="Slice_'n_Dice"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5||var(3)=13
trigger4=var(4)=1||var(4)=2
trigger5=var(7)||var(9)

[State -1,Lightning_Storm]
type=changestate
value=3300
triggerall=!ailevel
triggerall=power>=2000&&!var(25)
triggerall=command="Lightning_Storm"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5||var(3)=13
trigger4=var(4)=1||var(4)=2
trigger5=var(9)

[State -1,Lightning_Barrage]
type=changestate
value=3400
triggerall=!ailevel
triggerall=power>=2000&&!var(25)
triggerall=command="Lightning_Barrage"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5||var(3)=13
trigger4=var(4)=1||var(4)=2
trigger5=var(9)
;===========================================================================
;SPECIALS
;===========================================================================
[state -1,Blink_Shock]
type=changestate
value=1900
triggerall=!ailevel
triggerall=command="Blink_Shock"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5
trigger4=var(7)

[state -1,Surprise_Roar]
type=changestate
value=2100
triggerall=!ailevel
triggerall=command="Surprise_Roar"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5
trigger4=var(7)

[state -1,Rising_Shock]
type=changestate
value=1400
triggerall=!ailevel
triggerall=command="Rising_Shock"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5
trigger4=var(7)

[state -1,Thunder_Cloud]
type=changestate
value=2000
triggerall=!ailevel
triggerall=command="Flash_Spark"
triggerall=statetype=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=7||var(2)=8||var(2)=9
trigger3=var(3)=7||var(3)=8||var(3)=9
trigger4=var(7)

[state -1,Flash_Spark]
type=changestate
value=1300
triggerall=!ailevel
triggerall=command="Flash_Spark"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5
trigger4=var(7)

[state -1,Static_Slash]
type=changestate
value=1700
triggerall=!ailevel
triggerall=command="Static_Slash"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5
trigger4=var(7)

[state -1,Lightning_Trap]
type=changestate
value=1600
triggerall=!ailevel
triggerall=command="Lightning_Trap"
triggerall=statetype=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(7)

[state -1,Lightning_Trap]
type=changestate
value=1500
triggerall=!ailevel
triggerall=command="Lightning_Trap"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5
trigger4=var(7)

[state -1,Lightning_Rod]
type=changestate
value=1800
triggerall=!ailevel
triggerall=command="Lightning_Rod"
triggerall=statetype!=A
trigger1=ctrl||stateno=40||stateno=52||(stateno=[100,101])
trigger2=var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6
trigger3=var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5
trigger4=var(7)
;===========================================================================
;SYSTEM
;===========================================================================
[State -1,Jump-Cancel]
type=changestate
value=40
triggerall=!ailevel
triggerall=statetype!=A
triggerall=command="up"||command="holdup"
trigger1=var(6)

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
trigger1=stateno!=[105,106]
trigger1=ctrl

[state -1,Guard_Counter]
type=changestate
value=1100
triggerall=!ailevel
triggerall=!var(25)
triggerall=statetype!=A
triggerall=power>=1000
triggerall=command="b"&&command="y"&&command!="holddown"&&command="holdfwd"
trigger1=stateno=150||stateno=152

[state -1,Dodge]
type=changestate
value=1200
triggerall=!ailevel
triggerall=!var(25)
triggerall=statetype!=A
triggerall=command="a"&&command="x"&&command!="holdfwd"&&command!="holdback"
trigger1=ctrl||(stateno=[100,101])

[state -1,Dodge_Forward]
type=changestate
value=1205
triggerall=!ailevel
triggerall=!var(25)
triggerall=statetype!=A
triggerall=command="a"&&command="x"&&command="holdfwd"
trigger1=ctrl||(stateno=[100,101])

[state -1,Dodge_Backward]
type=changestate
value=1210
triggerall=!ailevel
triggerall=!var(25)
triggerall=statetype!=A
triggerall=command="a"&&command="x"&&command="holdback"
trigger1=ctrl||(stateno=[100,101])

[State -1,Power_charge]
type=changestate
value=1215
triggerall=!ailevel
triggerall=!var(25)
triggerall=command="b"&&command="y"
triggerall=(power<powermax&&power<const(data.power))
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])

[State -1,Vigor_Mode]
type=changestate
value=4000+(statetype=A)
triggerall=!ailevel
triggerall=power>=1000||var(25)
triggerall=command="z"&&command="c"
triggerall=stateno!=[4000,4001]
trigger1=ctrl||(stateno=[100,101])

[State -1,Air-Jump]
type=changestate
value=4200
triggerall=!ailevel
triggerall=statetype=A
triggerall=command="holdup"
triggerall=numhelper(4100)
triggerall=!helper(4100),var(30)
triggerall=!helper(4100),var(31)
trigger1=ctrl&&time>=2
trigger2=var(6)

[State -1,Life_charge]
type=changestate
value=4205
triggerall=!ailevel
triggerall=var(25)&&var(26)>=500
triggerall=command="b"&&command="y"
triggerall=(life<lifemax&&life<const(data.life))
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])

[State -1,Shield]
type=changestate
value=cond(statetype=A,4212,cond(command="holddown",4211,4210))
triggerall=!ailevel
triggerall=var(25)
triggerall=command="a"&&command="x"
trigger1=ctrl||stateno=[4215,4217]

[State -1,Air_Dash]
type=changestate
value=4300
triggerall=!ailevel
triggerall=statetype=A
triggerall=command="FF"||command="BB"
triggerall=numhelper(4100)
triggerall=!helper(4100),var(33)
trigger1=ctrl
trigger2=var(6)

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
;===========================================================================
;NORMALS
;===========================================================================
[State -1,Grab]
type=changestate
value=800
triggerall=!ailevel
triggerall=statetype!=A
triggerall=command="holdfwd"||command="holdback"
triggerall=ctrl
trigger1=command="x"&&command="y"||command="x"&&command="z"||command="y"&&command="z"
trigger2=command="a"&&command="b"||command="a"&&command="c"||command="b"&&command="c"

[State -1,Air_Grab]
type=changestate
value=840
triggerall=!ailevel
triggerall=statetype=A
triggerall=pos y<=-30
triggerall=command="holdfwd"||command="holdback"
triggerall=command="x"&&command="y"||command="x"&&command="z"||command="y"&&command="z"
trigger1=ctrl
trigger2=var(27)=7||var(27)=8||var(27)=9
trigger3=var(28)=7||var(28)=8||var(28)=9

[State -1,Taunt]
type=changestate
value=199
triggerall=!ailevel
triggerall=stateno!=199
triggerall=command="s"
trigger1=statetype!=A
trigger1=ctrl

[State -1,SWK-Extra]
type=changestate
value=231
triggerall=!ailevel
triggerall=command="a"
triggerall=command="fwd"||command="holdfwd"
triggerall=command!="holddown"
triggerall=statetype!=A
trigger1=stateno=230
trigger1=animelemtime(4)>0&&animelemtime(6)<0

[State -1,SWK-Extra]
type=changestate
value=232
triggerall=!ailevel
triggerall=command="a"
triggerall=command="fwd"||command="holdfwd"
triggerall=command!="holddown"
triggerall=statetype!=A
trigger1=stateno=231
trigger1=animelemtime(4)>0&&animelemtime(6)<0

[State -1,SWP]
type=changestate
value=200
triggerall=!ailevel
triggerall=command="x"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)

[State -1,SMP]
type=changestate
value=210
triggerall=!ailevel
triggerall=command="y"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=4
trigger3=var(28)=1||var(28)=4

[State -1,SSP]
type=changestate
value=220
triggerall=!ailevel
triggerall=command="z"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=2||var(27)=4||var(27)=5
trigger3=var(28)=1||var(28)=2||var(28)=4||var(28)=5

[State -1,SWK]
type=changestate
value=230
triggerall=!ailevel
triggerall=command="a"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=4

[State -1,SMK]
type=changestate
value=240
triggerall=!ailevel
triggerall=command="b"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=2||var(27)=4||var(27)=5
trigger3=var(28)=1||var(28)=4

[State -1,SSK]
type=changestate
value=250
triggerall=!ailevel
triggerall=command="c"&&command!="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=2||var(27)=3||var(27)=4||var(27)=5||var(27)=6
trigger3=var(28)=1||var(28)=2||var(28)=4||var(28)=5

[State -1,CWP]
type=changestate
value=400
triggerall=!ailevel
triggerall=command="x"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)

[State -1,CMP]
type=changestate
value=410
triggerall=!ailevel
triggerall=command="y"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=4
trigger3=var(28)=1||var(28)=4

[State -1,CSP]
type=changestate
value=420
triggerall=!ailevel
triggerall=command="z"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=2||var(27)=4||var(27)=5
trigger3=var(28)=1||var(28)=2||var(28)=4||var(28)=5

[State -1,CWK]
type=changestate
value=430
triggerall=!ailevel
triggerall=command="a"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=4

[State -1,CMK]
type=changestate
value=440
triggerall=!ailevel
triggerall=command="b"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=2||var(27)=4||var(27)=5
trigger3=var(28)=1||var(28)=4

[State -1,CSK]
type=changestate
value=450
triggerall=!ailevel
triggerall=command="c"&&command="holddown"
triggerall=statetype!=A
trigger1=ctrl||(stateno=[100,101])||var(5)
trigger2=var(27)=1||var(27)=2||var(27)=3||var(27)=4||var(27)=5||var(27)=6
trigger3=var(28)=1||var(28)=2||var(28)=4||var(28)=5

[State -1,AWP]
type=changestate
value=600
triggerall=!ailevel
triggerall=command="x"
triggerall=statetype=A
trigger1=ctrl||var(5)

[State -1,AMP]
type=changestate
value=610
triggerall=!ailevel
triggerall=command="y"
triggerall=statetype=A
trigger1=ctrl
trigger2=var(27)=7
trigger3=var(28)=7

[State -1,ASP]
type=changestate
value=620
triggerall=!ailevel
triggerall=command="z"
triggerall=statetype=A
trigger1=ctrl
trigger2=var(27)=7||var(27)=8
trigger3=var(28)=7||var(28)=8

[State -1,AWK]
type=changestate
value=630
triggerall=!ailevel
triggerall=command="a"
triggerall=statetype=A
trigger1=ctrl||var(5)
trigger2=var(27)=7

[State -1,AMK]
type=changestate
value=640
triggerall=!ailevel
triggerall=command="b"
triggerall=statetype=A
trigger1=ctrl
trigger2=var(27)=7||var(27)=8
trigger3=var(28)=7

[State -1,ASK]
type=changestate
value=650
triggerall=!ailevel
triggerall=command="c"
triggerall=statetype=A
trigger1=ctrl
trigger2=var(27)=7||var(27)=8||var(27)=9
trigger3=var(28)=7||var(28)=8
;===========================================================================
;AI COMMANDS
;===========================================================================
[state -1,Jump]
type=changestate
value=40
triggerall=ailevel
triggerall=roundstate=2
triggerall=statetype!=A
triggerall=stateno!=40
trigger1=ctrl
trigger1=inguarddist
trigger1=enemynear,hitdefattr=SC,AT
trigger1=random<(600*(ailevel**2/64.0))

[State -1,Jump-Cancel]
type=changestate
value=40
triggerall=ailevel
triggerall=roundstate=2
triggerall=statetype!=A
triggerall=random<(250*(ailevel**2/64.0))
trigger1=var(6)&&p2statetype=A

[State -1,Air-Jump]
type=changestate
value=4200
triggerall=ailevel
triggerall=roundstate=2
triggerall=statetype=A
triggerall=numhelper(4100)
triggerall=!helper(4100),var(30)
triggerall=!helper(4100),var(31)
trigger1=ctrl&&time>=2
trigger1=random<(50*(ailevel**2/64.0))
trigger2=var(6)
trigger2=random<(250*(ailevel**2/64.0))

[State -1,Air_Dash]
type=changestate
value=4300
triggerall=ailevel
triggerall=roundstate=2
triggerall=statetype=A
triggerall=numhelper(4100)
triggerall=!helper(4100),var(33)
trigger1=ctrl
trigger1=random<(50*(ailevel**2/64.0))
trigger2=var(6)
trigger2=random<(250*(ailevel**2/64.0))

[State -1,Guard]
type=changestate
value=120
trigger1=ailevel
trigger1=roundstate=2
trigger1=cond(var(25),statetype!=A,1)
trigger1=inguarddist&&numenemy
trigger1=ctrl&&stateno!=[120,155]
trigger1=!numhelper(1227)||p2bodydist x>=(const(size.ground.front)*2.0)
trigger1=!(enemynear,hitdefattr=SCA,AT)&&(enemynear,time<70)
trigger1=random<(cond(statetype=A&&p2statetype!=A,0,cond(statetype!=A&&p2statetype=A,1000,900))*(ailevel**2/64.0))

[State -1,Run_Fwd]
type=changestate
value=100
triggerall=ailevel
triggerall=roundstate=2
triggerall=statetype!=A
triggerall=(stateno!=[10,12])&&(prevstateno!=[10,12])
triggerall=(stateno!=[100,101])&&(prevstateno!=[100,101])
triggerall=(stateno!=[105,106])&&(prevstateno!=[105,106])
triggerall=!inguarddist
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
value=200
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,34])&&(p2dist y=[-60,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=var(5)&&random<(100*(ailevel**2/64.0))

[State -1,SMP]
type=changestate
value=210
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,75])&&(p2dist y=[-60,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=4)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=4)&&random<(100*(ailevel**2/64.0))

[State -1,SSP]
type=changestate
value=220
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,95])&&(p2dist y=[-70,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))

[State -1,SWK]
type=changestate
value=230
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,25])&&(p2dist y=[-60,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=var(5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(27)=1||var(27)=4)&&random<(100*(ailevel**2/64.0))

[State -1,SWK-Extra]
type=changestate
value=231
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
trigger1=stateno=230
trigger1=animelemtime(4)>0&&animelemtime(6)<0
trigger1=movehit
trigger1=random<(500*(ailevel**2/64.0))

[State -1,SWK-Extra]
type=changestate
value=232
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
trigger1=stateno=231
trigger1=animelemtime(4)>0&&animelemtime(6)<0
trigger1=movehit
trigger1=random<(500*(ailevel**2/64.0))

[State -1,SMK]
type=changestate
value=240
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,100])&&(p2dist y=[-60,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=4)&&random<(100*(ailevel**2/64.0))

[State -1,SSK]
type=changestate
value=250
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,110])&&(p2dist y=[-90,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=2||var(27)=3||var(27)=4||var(27)=5||var(27)=6)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))
trigger4=(ctrl||(stateno=[100,101])||var(5))&&p2statetype=S&&p2movetype=I&&random<(50*(ailevel**2/64.0))

[State -1,CWP]
type=changestate
value=400
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,35])&&(p2dist y=[-30,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=var(5)&&random<(100*(ailevel**2/64.0))

[State -1,CMP]
type=changestate
value=410
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,75])&&(p2dist y=[-30,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=4)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=4)&&random<(100*(ailevel**2/64.0))

[State -1,CSP]
type=changestate
value=420
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,85])&&(p2dist y=[-30,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))

[State -1,CWK]
type=changestate
value=430
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,55])&&(p2dist y=[-30,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=var(5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(27)=1||var(27)=4)&&random<(100*(ailevel**2/64.0))

[State -1,CMK]
type=changestate
value=440
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,80])&&(p2dist y=[-30,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=2||var(27)=4||var(27)=5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=4)&&random<(100*(ailevel**2/64.0))

[State -1,CSK]
type=changestate
value=450
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=p2statetype!=A
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,95])&&(p2dist y=[-30,5])
trigger1=(ctrl||(stateno=[100,101])||var(5))&&random<(50*(ailevel**2/64.0))
trigger2=(var(27)=1||var(27)=2||var(27)=3||var(27)=4||var(27)=5||var(27)=6)&&random<(100*(ailevel**2/64.0))
trigger3=(var(28)=1||var(28)=2||var(28)=4||var(28)=5)&&random<(100*(ailevel**2/64.0))

[State -1,AWP]
type=changestate
value=600
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,60])&&(p2dist y=[-70,-10])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))
trigger2=var(5)&&random<(100*(ailevel**2/64.0))

[State -1,AMP]
type=changestate
value=610
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,43+(25*(vel x>0))])&&(p2dist y=[-50,20])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))
trigger2=(var(27)=7)&&random<(250*(ailevel**2/64.0))
trigger3=(var(28)=7)&&random<(250*(ailevel**2/64.0))

[State -1,ASP]
type=changestate
value=620
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,65+(25*(vel x>0))])&&(p2dist y=[-50,50])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))
trigger2=ctrl&&vel y>1&&random<(100*(ailevel**2/64.0))
trigger3=(var(27)=7||var(27)=8)&&random<(250*(ailevel**2/64.0))
trigger4=(var(28)=7||var(28)=8)&&random<(250*(ailevel**2/64.0))

[State -1,AWK]
type=changestate
value=630
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,30])&&(p2dist y=[-70,-10])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))
trigger2=var(5)&&random<(100*(ailevel**2/64.0))
trigger3=(var(27)=7)&&random<(250*(ailevel**2/64.0))

[State -1,AMK]
type=changestate
value=640
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,35])&&(p2dist y=[-50,50])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))
trigger2=(var(27)=7||var(27)=8)&&random<(250*(ailevel**2/64.0))
trigger3=(var(28)=7)&&random<(250*(ailevel**2/64.0))

[State -1,ASK]
type=changestate
value=650
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-5,60+(25*(vel x>0))])&&(p2dist y=[-60,30])
trigger1=ctrl&&random<(100*(ailevel**2/64.0))
trigger2=(var(27)=7||var(27)=8||var(27)=9)&&random<(250*(ailevel**2/64.0))
trigger3=(var(28)=7||var(28)=8)&&random<(250*(ailevel**2/64.0))

[State -1,Grab]
type=changestate
value=800
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=p2movetype!=H&&p2statetype!=A
triggerall=p2bodydist x=[-5,25]
triggerall=ctrl
trigger1=random<=(ifelse((p2stateno=[120,155]),200,100)*(ailevel**2/64.0))

[State -1,Air_Grab]
type=changestate
value=840
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=pos y<=-30
triggerall=(p2movetype!=H||var(25))&&p2statetype=A
triggerall=(p2bodydist x=[-5,25])&&(p2bodydist y=[-50,30])
trigger1=ctrl&&random<=(ifelse((p2stateno=[120,155]),200,100)*(ailevel**2/64.0))
trigger2=(var(27)=7||var(27)=8||var(27)=9)&&random<(200*(ailevel**2/64.0))
trigger3=(var(28)=7||var(28)=8||var(28)=9)&&random<(200*(ailevel**2/64.0))
;===========================================================================
;AI_SPECIAL
;===========================================================================
[State -1,Flash_Spark]
type=changestate
value=1300
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,185])&&(p2dist y=[-60,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5)&&random<(50*(ailevel**2/64.0))

[State -1,Rising_Shock]
type=changestate
value=1400
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,80])&&(p2dist y=[-150,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5)&&random<(50*(ailevel**2/64.0))
trigger4=(ctrl||stateno=52||(stateno=[100,101]))&&p2movetype=A&&(p2bodydist x=[0,50])&&random<(150*(ailevel**2/64.0))
trigger5=(ctrl||stateno=52||(stateno=[100,101]))&&p2statetype=A&&enemynear,vel y>0&&(p2bodydist x=[0,60])&&random<(150*(ailevel**2/64.0))
trigger6=var(7)&&stateno=3200&&anim=3205&&animelemtime(2)<0&&random<(200*(ailevel**2/64.0))

[State -1,Lightning_Trap]
type=changestate
value=1500
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x>160);&&(p2dist y=[-60,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(10*(ailevel**2/64.0))

[State -1,Static_Slash]
type=changestate
value=1700
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,200])&&(p2dist y=[-70,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5)&&random<(50*(ailevel**2/64.0))

[State -1,Lightning_Rod]
type=changestate
value=1800
triggerall=ailevel
triggerall=roundstate=2
;triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x>40);&&(p2dist y=[-120,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(25*(ailevel**2/64.0))

[State -1,Blink_Shock]
type=changestate
value=1900
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,100])&&(p2dist y=[-55,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5)&&random<(50*(ailevel**2/64.0))

[state -1,Thunder_Cloud]
type=changestate
value=2000
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-80,80])&&(p2dist y=[-80,40])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=7||var(2)=8||var(2)=9)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=7||var(3)=8||var(3)=9)&&random<(50*(ailevel**2/64.0))

[state -1,Surprise_Roar]
type=changestate
value=2100
triggerall=ailevel
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[0,90])&&(p2dist y>=-60)
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
;===========================================================================
;AI_SUPER
;===========================================================================
[State -1,Illuminative_Sparks]
type=changestate
value=3000
triggerall=ailevel
triggerall=power>=1000&&!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x>160)&&(p2dist y=[-60,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5||var(3)=13)&&random<(50*(ailevel**2/64.0))
trigger4=(var(4)=1||var(4)=2)&&random<(50*(ailevel**2/64.0))
trigger5=numhelper(3050)
trigger5=helper(3050),var(12)>=4
trigger5=var(7)&&stateno=3000&&random<(50*(ailevel**2/64.0))

[State -1,Storm_Cloud]
type=changestate
value=3100
triggerall=ailevel
triggerall=power>=1000&&!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype=A
triggerall=(p2bodydist x=[-85,85])&&(p2dist y=[-85,42])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=7||var(2)=8||var(2)=9)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=7||var(3)=8||var(3)=9)&&random<(50*(ailevel**2/64.0))

[State -1,Slice_'n_Dice]
type=changestate
value=3200
triggerall=ailevel
triggerall=power>=1000&&!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,125])&&(p2dist y=[-60,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5||var(3)=13)&&random<(50*(ailevel**2/64.0))
trigger4=(var(4)=1||var(4)=2)&&random<(50*(ailevel**2/64.0))
trigger6=var(7)&&stateno=3200&&anim=3205&&animelemtime(2)<0&&random<(200*(ailevel**2/6

[State -1,Lightning_Storm]
type=changestate
value=3300
triggerall=ailevel
triggerall=power>=2000&&!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-100,100]);&&(p2dist y=[-75,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))

[State -1,Lightning_Barrage]
type=changestate
value=3400
triggerall=ailevel
triggerall=power>=2000&&!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,300])&&(p2dist y=[-55,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(var(2)=1||var(2)=2||var(2)=3||var(2)=4||var(2)=5||var(2)=6)&&random<(50*(ailevel**2/64.0))
trigger3=(var(3)=1||var(3)=2||var(3)=3||var(3)=4||var(3)=5||var(3)=13)&&random<(50*(ailevel**2/64.0))
trigger4=(var(4)=1||var(4)=2)&&random<(50*(ailevel**2/64.0))
trigger5=(ctrl||stateno=52||(stateno=[100,101]))&&p2movetype=A&&(p2bodydist x=[0,60])&&(enemynear,hitdefattr=SCA,NA,SA,HA)&&random<(750*(ailevel**2/64.0))

[State -1,Millennium_Clap]
type=changestate
value=3500
triggerall=ailevel
triggerall=power>=3000&&!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,300])&&(p2dist y=[-55,5])
trigger1=(ctrl||stateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(ctrl||stateno=52||(stateno=[100,101]))&&p2movetype=I&&p2bodydist x>200&&random<(100*(ailevel**2/64.0))

[State -1,Serpent's_Overload]
type=changestate
value=3600
triggerall=ailevel
triggerall=power>=3000&&!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,100])&&(p2dist y=[-100,5])
trigger1=0;(ctrl||sstateno=52||(stateno=[100,101]))&&random<(50*(ailevel**2/64.0))
trigger2=(ctrl||stateno=52||(stateno=[100,101]))&&p2movetype=A&&(enemynear,hitdefattr=SCA,NA,SA,HA)&&random<(750*(ailevel**2/64.0))
;===========================================================================
;AI_SYSTEM
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

[State -1,Guard_Counter]
type=changestate
value=1100
triggerall=ailevel
triggerall=!var(25)
triggerall=power>=1000
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(p2bodydist x=[-5,75])&&(p2dist y=[-45,5])
trigger1=stateno=150||stateno=152
trigger1=life<(.2*lifemax)&&random<(75*(ailevel**2/64.0))
trigger1=enemynear,vel x>=0&&enemynear,vel y>=0&&enemynear,life>55

[State -1,Dodge]
type=changestate
value=1200
triggerall=ailevel
triggerall=!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(ctrl||(stateno=[100,101]))&&!(enemynear,hitdefattr=SCA,AT)
trigger1=p2movetype=A&&inguarddist&&random<(100*(ailevel**2/64.0))

[State -1,Dodge_Forward]
type=changestate
value=1205
triggerall=ailevel
triggerall=!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(ctrl||(stateno=[100,101]))&&!(enemynear,hitdefattr=SCA,AT)
trigger1=enemynear,vel x>=0&&(p2bodydist x=[-60,60])&&p2movetype=A&&random<(50*(ailevel**2/64.0))
trigger2=backedgedist<=10&&p2movetype=A&&random<(150*(ailevel**2/64.0))
trigger3=stateno=100&&inguarddist&&random<(50*(ailevel**2/64.0))

[State -1,Dodge_Backward]
type=changestate
value=1210
triggerall=ailevel
triggerall=!var(25)
triggerall=roundstate=2
triggerall=p2statetype!=L&&p2stateno!=5120&&p2stateno!=5201
triggerall=statetype!=A
triggerall=(ctrl||(stateno=[100,101]))&&!(enemynear,hitdefattr=SCA,AT)
triggerall=backedgedist>=15
trigger1=p2movetype=A&&inguarddist&&p2stateno=100&&random<(150*(ailevel**2/64.0))
trigger2=enemynear,vel x>1&&inguarddist&&random<(150*(ailevel**2/64.0))

[State -1,Power_Charge]
type=changestate
value=1215
triggerall=ailevel
triggerall=!var(25)
triggerall=(power<powermax&&power<const(data.power))
triggerall=roundstate=2
triggerall=statetype!=A
trigger1=ctrl&&!inguarddist
trigger1=p2movetype!=A&&p2dist x>=160&&!enemy,numproj&&random<(25*(ailevel**2/64.0))

[State -1,Vigor_Mode]
type=changestate
value=4000
triggerall=ailevel
triggerall=power>=1000||var(25)
triggerall=roundstate=2
triggerall=statetype!=A
triggerall=ctrl
trigger1=!var(25)&&p2bodydist x>160&&p2movetype!=A
trigger1=random<(50*(ailevel**2/64.0))
trigger2=p2movetype=A&&(p2bodydist x=[-75,75])&&(p2bodydist y=[-100,5])
trigger2=!enemynear,hitdefattr=SCA,AT
trigger2=random<(100*(ailevel**2/64.0))

[State -1,Life_charge]
type=changestate
value=4205
triggerall=ailevel
triggerall=var(25)&&var(26)>=500
triggerall=(life<lifemax&&life<const(data.life))
triggerall=roundstate=2
triggerall=statetype!=A
trigger1=ctrl&&!inguarddist
trigger1=p2movetype!=A&&p2dist x>=160&&!enemy,numproj&&random<(25*(ailevel**2/64.0))

[State -1,Shield]
type=changestate
value=cond(statetype=A,4212,cond(p2statetype=C&&random<500,4211,4210))
triggerall=ailevel
triggerall=var(25)
triggerall=roundstate=2
triggerall=!enemynear,hitdefattr=SCA,AT
trigger1=ctrl
trigger1=inguarddist&&p2movetype=A&&p2bodydist x=[-5,70]
trigger1=random<(100*(ailevel**2/64.0))
trigger2=stateno=[4215,4217]
trigger2=time=14&&random<(666*(ailevel**2/64.0))