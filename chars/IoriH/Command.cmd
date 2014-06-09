; ______________
;| Iori by Hero |
;¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;===================<BUTTON REMAPPING>===================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================<DEFAULT VALUES>===================
[Defaults]
command.time=15
command.buffer.time=1
;===================<SINGLE BUTTON>===================
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1
;===================<HOLD DIR>===================
[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1
;===================<HOLD BUTTON>===================
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1
;====================<RELEASE DIR>====================
[Command]
name="rlsfwd"
command=~$F
time=1
[Command]
name="rlsback"
command=~$B
time=1
[Command]
name="rlsup"
command=~$U
time=1
[Command]
name="rlsdown"
command=~$D
time=1
;===================<RELEASE BUTTON>===================
[Command]
name="rlsa"
command=~a
time=1
[Command]
name="rlsb"
command=~b
time=1
[Command]
name="rlsc"
command=~c
time=1
[Command]
name="rlsx"
command=~x
time=1
[Command]
name="rlsy"
command=~y
time=1
[Command]
name="rlsz"
command=~z
time=1
;===================<DIR>===================
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1
;===================<SUPER MOVES LVL 3>===================

[Command]
name="ChiNoBousou"
command=~D,B,D,B,x+y
time= 35
[Command]
name="ChiNoBousou"
command=~D,B,D,B,y+z
time=35
[Command]
name="SChiNoBousou"
command=~D,B,D,B,z+x
time=35
[Command]
name="ChiNoBousou"
command=~D,B,D,B,~x+y
time=35
[Command]
name="ChiNoBousou"
command=~D,B,D,B,~y+z
time=35
[Command]
name="ChiNoBousou"
command=~D,B,D,B,~z+x
time=35

;===================<SUPER MOVES LVL 2>===================
[Command]
name="Homurabotogi"
command=~D,B,D,F+x+y
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,F+y+z
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,F+z+x
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,~F+x+y
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,~F+y+z
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,~F+z+x
time=30

[Command]
name= "Homurabotogi"
command=~D,B,D,F,a+b
time=30
[Command]
name= "Homurabotogi"
command=~D,B,D,F,b+c
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,F,c+a
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,F,~a+b
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,F,~b+c
time=30
[Command]
name="Homurabotogi"
command=~D,B,D,F,~c+a
time=30

[Command]
name="MAXSakuTsumagushi"
command=~D,F,D,F,a+b
time=30
[Command]
name="MAXSakuTsumagushi"
command=~D,F,D,F,b+c
time=30
[Command]
name="MAXSakuTsumagushi"
command=~D,F,D,F,c+a
time=30
[Command]
name="MAXSakuTsumagushi"
command=~D,F,D,F,~a+b
time=30
[Command]
name="MAXSakuTsumagushi"
command=~D,F,D,F,~b+c
time=30
[Command]
name="MAXSakuTsumagushi"
command=~D,F,D,F,~c+a
time=30

;===================<SUPER MOVES LVL 1>===================
[Command]
name= "YaSakazuki"
command=~D,B,D,F,x
time=30
[Command]
name= "YaSakazuki"
command=~D,B,D,F,y
time=30
[Command]
name="YaSakazuki"
command=~D,B,D,F,z
time=30
[Command]
name="YaSakazuki"
command=~D,B,D,F,~x
time=30
[Command]
name="YaSakazuki"
command=~D,B,D,F,~y
time=30
[Command]
name="YaSakazuki"
command=~D,B,D,F,~z
time=30

[Command]
name="SakuTsumagushi"
command=~D,F,D,F,a
time=30
[Command]
name="SakuTsumagushi"
command=~D,F,D,F,b
time=30
[Command]
name="SakuTsumagushi"
command=~D,F,D,F,c
time=30
[Command]
name="SakuTsumagushi"
command=~D,F,D,F,~a
time=30
[Command]
name="SakuTsumagushi"
command=~D,F,D,F,~b
time=30
[Command]
name="SakuTsumagushi"
command=~D,F,D,F,~c
time=30

[Command]
name="YaOtome"
command=~D,F,D,B,x
time=30
[Command]
name="YaOtome"
command=~D,F,D,B,y
time=30
[Command]
name="YaOtome"
command=~D,F,D,B,z
time=30
[Command]
name="YaOtome"
command=~D,F,D,B,~x
time=30
[Command]
name="YaOtome"
command=~D,F,D,B,~y
time=30
[Command]
name="YaOtome"
command=~D,F,D,B,~z
time=30


[Command]
name="Saika"
command=~D,F,D,F,D,F,D,F,x+y
time=58
[Command]
name="Saika"
command=~D,F,D,F,D,F,D,F,~x+y
time=58
[Command]
name="Saika"
command=~D,F,D,F,D,F,D,F,x+z
time=58
[Command]
name="Saika"
command=~D,F,D,F,D,F,D,F,~x+z
time=58
[Command]
name="Saika"
command=~D,F,D,F,D,F,D,F,z+y
time=58
[Command]
name="Saika"
command=~D,F,D,F,D,F,D,F,~z+y
time=58

;===================<EX-SPECIAL MOVES>===================
[Command]
name="ExYamiBarai"
command=~D,F,~x+y
time=12
[Command]
name="ExYamiBarai"
command=~D,F,x+y
time=12
[Command]
name="ExYamiBarai"
command=~D,F,~y+z
time=12
[Command]
name="ExYamiBarai"
command=~D,F,y+z
time=12
[Command]
name="ExYamiBarai"
command=~D,F,~z+x
time=12
[Command]
name="ExYamiBarai"
command=~D,F,z+x
time=12

[Command]
name="ExOniyaki"
command=~F,D,DF,~x+y
time=15
[Command]
name="ExOniyaki"
command=~F,D,DF,x+y
time=15
[Command]
name="ExOniyaki"
command=~F,D,DF,~y+z
time=15
[Command]
name="ExOniyaki"
command=~F,D,DF,y+z
time=15
[Command]
name="ExOniyaki"
command=~F,D,DF,~z+x
time=15
[Command]
name="ExOniyaki"
command=~F,D,DF,z+x
time=15

[Command]
name="ExAoiHana"
command=~D,B,~x+y
time=12
[Command]
name="ExAoiHana"
command=~D,B,x+y
time=12
[Command]
name="ExAoiHana"
command=~D,B,~y+z
time=12
[Command]
name="ExAoiHana"
command=~D,B,y+z
time=12
[Command]
name="ExAoiHana"
command=~D,B,~z+x
time=12
[Command]
name="ExAoiHana"
command=~D,B,z+x
time=12

[Command]
name="ExKototsukiIn"
command=~F,D,B,~a+b
time=15
[Command]
name="ExKototsukiIn"
command=~F,D,B,a+b
time=15
[Command]
name="ExKototsukiIn"
command=~F,D,B,~b+c
time=15
[Command]
name="ExKototsukiIn"
command=~F,D,B,b+c
time=15
[Command]
name="ExKototsukiIn"
command=~F,D,B,~c+a
time=15
[Command]
name="ExKototsukiIn"
command=~F,D,B,c+a
time=15

[Command]
name="ExTsumagushi"
command=~F,D,DF,~a+b
time=15
[Command]
name="ExTsumagushi"
command=~F,D,DF,a+b
time=15
[Command]
name="ExTsumagushi"
command=~F,D,DF,~b+c
time=15
[Command]
name="ExTsumagushi"
command=~F,D,DF,b+c
time=15
[Command]
name="ExTsumagushi"
command=~F,D,DF,~c+a
time=15
[Command]
name="ExTsumagushi"
command=~F,D,DF,c+a
time=15
;===================<SPECIAL MOVES>===================
[Command]
name="YamiBarai1"
command=~D,F,~x
time=12
[Command]
name="YamiBarai1"
command=~D,F,x
time=12
[Command]
name="YamiBarai2"
command=~D,F,~y
time=12
[Command]
name="YamiBarai2"
command=~D,F,y
time=12
[Command]
name="YamiBarai3"
command=~D,F,~z
time=12
[Command]
name="YamiBarai3"
command=~D,F,z
time=12


[Command]
name="Oniyaki1"
command=~F,D,DF,~x
time=15
[Command]
name="Oniyaki1"
command=~F,D,DF,x
time=15
[Command]
name="Oniyaki2"
command=~F,D,DF,~y
time=15
[Command]
name="Oniyaki2"
command=~F,D,DF,y
time=15
[Command]
name="Oniyaki3"
command=~F,D,DF,~z
time=15
[Command]
name="Oniyaki3"
command=~F,D,DF,z
time=15

[Command]
name="AoiHana1"
command=~D,B,~x
time=12
[Command]
name="AoiHana1"
command=~D,B,x
time=12
[Command]
name="AoiHana2"
command=~D,B,~y
time=12
[Command]
name="AoiHana2"
command=~D,B,y
time=12
[Command]
name="AoiHana3"
command=~D,B,~z
time=12
[Command]
name="AoiHana3"
command=~D,B,z
time=12

[Command]
name="KototsukiIn1"
command=~F,D,B,~a
time=15
[Command]
name="KototsukiIn1"
command=~F,D,B,a
time=15
[Command]
name="KototsukiIn2"
command=~F,D,B,~b
time=15
[Command]
name="KototsukiIn2"
command=~F,D,B,b
time=15
[Command]
name="KototsukiIn3"
command=~F,D,B,~c
time=15
[Command]
name="KototsukiIn3"
command=~F,D,B,c
time=15

[Command]
name="Tsumagushi1"
command=~F,D,DF,~a
time=15
[Command]
name="Tsumagushi1"
command=~F,D,DF,a
time=15
[Command]
name="Tsumagushi2"
command=~F,D,DF,~b
time=15
[Command]
name="Tsumagushi2"
command=~F,D,DF,b
time=15
[Command]
name="Tsumagushi3"
command=~F,D,DF,~c
time=15
[Command]
name="Tsumagushi3"
command=~F,D,DF,c
time=15

[Command]
name="KuzuKaze"
command=~F,$D,B,F,x
time=30
[Command]
name="KuzuKaze"
command=~F,$D,B,F,~x
time=30
[Command]
name="KuzuKaze"
command=~F,$D,B,F,y
time=30
[Command]
name="KuzuKaze"
command=~F,$D,B,F,~y
time=30
[Command]
name="KuzuKaze"
command=~F,$D,B,F,z
time=30
[Command]
name="KuzuKaze"
command=~F,$D,B,F,~z
time=30
;===================<OTHER>===================
[Command]
name="highjump"
command=$D,$U
time=15

[Command]
name="jump"
command=$U
time=1
;===================<DOUBLE TAP>===================
[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10
;===================<2/3 BUTTON COMBINATION>===================
[Command]
name="recovery"
command=x+y
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=y+z
time=1
[Command]
name="recovery"
command=a+x
time=1

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20
[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20

[Command]
name="2p"
command=x+y
time=1
[Command]
name="2p"
command=x+z
time=1
[Command]
name="2p"
command=y+z
time=1

[Command]
name="2k"
command=a+b
time=1
[Command]
name="2k"
command=a+c
time=1
[Command]
name="2k"
command=b+c
time=1

[Command]
name="excelcombo"
command=c+z
time=1

[Command]
name="roll"
command=a+x
time=1
;===========================================================================
;===============================<-1 STATES>=================================
;===========================================================================
[Statedef -1]

[State -1, Chi No Bousou]
type=changestate
value=3500
triggerall= !AILevel
triggerall= command="ChiNoBousou"
triggerall= roundstate=2 && statetype!=A&&power>=3000
trigger1= var(2)

[State -1, Homurabotogi]
type=changestate
value=3400
triggerall= !AILevel
triggerall= command="Homurabotogi" && !var(15)
triggerall= roundstate=2 && statetype!=A&&power>=2000
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, MAX Saku Tsumagushi]
type=null ; :p
value=3300
triggerall= !AILevel
triggerall= command="MAXSakuTsumagushi"
triggerall= roundstate=2 && statetype!=A&&power>=2000
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Ya Otome]
type=changestate
value=3200
triggerall= !AILevel
triggerall= command="YaOtome"
triggerall= roundstate=2 && statetype!=A&&(power>=1000||var(15))
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=220&&PrevStateNo!=940||StateNo=260||StateNo=400||StateNo=420||StateNo=450||StateNo=210||StateNo=300||StateNo=1100&&PrevStateNo!=940)&&MoveContact

[State -1, Saku Tsumagushi]
type=changestate
value=3100
triggerall= !AILevel
triggerall= command="SakuTsumagushi"
triggerall= roundstate=2 && statetype!=A&&(power>=1000||var(15))
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Ya Sakazuki]
type=changestate
value=3000
triggerall= !AILevel
triggerall= command="YaSakazuki"
triggerall= roundstate=2 && statetype!=A&&(power>=1000||var(15))&&(enemynear,stateno!=3010||enemynear,stateno=3010&&(enemynear,movetype!=H))
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Kuzu Kaze]
type=changestate
value=1500
triggerall= !AILevel
triggerall= command="KuzuKaze"
triggerall= roundstate=2 && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Ex Tsumagushi]
type=changestate
value=11400
triggerall= !AILevel
triggerall= command="ExTsumagushi"
triggerall= roundstate=2 && statetype!=A && (power>=1000||var(15))
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=260||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Tsumagushi]
type=changestate
value=1400
triggerall= !AILevel
triggerall= command="Tsumagushi1" || command="Tsumagushi2" || command="Tsumagushi3"
triggerall= roundstate=2 && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=260||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Ex Kototsuki In]
type=changestate
value=11300
triggerall= !AILevel
triggerall= command="ExKototsukiIn"
triggerall= roundstate=2 && statetype!=A && (power>=1000||var(15))
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=210||StateNo=220&&PrevStateNo!=940||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Kototsuki In]
type=changestate
value=1300
triggerall= !AILevel
triggerall= command="KototsukiIn1" || command="KototsukiIn2" || command="KototsukiIn3"
triggerall= roundstate=2 && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=210||StateNo=220&&PrevStateNo!=940||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Ex Aoi Hana]
type=changestate
value=11200
triggerall= !AILevel
triggerall= command="ExAoiHana" && (power>=1000||var(15))
triggerall= roundstate=2 && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=210||StateNo=220&&PrevStateNo!=940||StateNo=250||StateNo=300||StateNo=400||StateNo=420||StateNo=450||StateNo=1440||StateNo=11440)&&MoveContact

[State -1, Aoi Hana]
type=changestate
value=1200
triggerall= !AILevel
triggerall= command="AoiHana1" || command="AoiHana2" || command="AoiHana3"
triggerall= roundstate=2 && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=210||StateNo=220&&PrevStateNo!=940||StateNo=250||StateNo=300||StateNo=400||StateNo=420||StateNo=450||StateNo=1440||StateNo=11440)&&MoveContact

[State -1, Ex Oniyaki]
type=changestate
value=11100
triggerall= !AILevel
triggerall= command="ExOniyaki"
triggerall= roundstate=2 && statetype!=A && (power>=1000||var(15))
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=210||StateNo=220&&PrevStateNo!=940||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Oniyaki]
type=changestate
value=1100
triggerall= !AILevel
triggerall= command="Oniyaki1" || command="Oniyaki2" || command="Oniyaki3"
triggerall= roundstate=2 && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= (StateNo=200||StateNo=210||StateNo=220&&PrevStateNo!=940||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Ex Yami Barai]
type=changestate
value=11000
triggerall= !AILevel
triggerall= command="ExYamiBarai"
triggerall= roundstate=2 && statetype!=A&&(power>=1000||var(15))&&(enemynear,stateno!=3010||enemynear,stateno=3010&&(enemynear,movetype!=H))
trigger1= (var(2)&&var(18)+var(19)=2||var(16)=1||stateno=100)
trigger2= (StateNo=200||StateNo=210||StateNo=220&&PrevStateNo!=940||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Yami Barai]
type=changestate
value=1000
triggerall= !AILevel
triggerall= command="YamiBarai1" || command="YamiBarai2" || command="YamiBarai3"
triggerall= roundstate=2 && statetype!=A &&(enemynear,stateno!=3010||enemynear,stateno=3010&&(enemynear,movetype!=H))
trigger1= (ctrl&&var(18)+var(19)=2||var(16)=1||stateno=100)
trigger2= (StateNo=200||StateNo=210||StateNo=220&&PrevStateNo!=940||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Power Charge]
type=changestate
value=950
trigger1= !AILevel && !var(15)
trigger1= command="holdb" && command="holdy"
trigger1= roundstate=2 && statetype!=A && var(2)
trigger1= power<const(data.power) && power<powermax

[State -1, Zero Counter]
type=changestate
value=940
trigger1= !AILevel
trigger1= stateno=150 || stateno=152
trigger1= command="bdx" || command="bdy" || command="bdz" || command="bda" || command="bdb" || command="bdc"
trigger1= roundstate=2 && !var(15) && power>=1000 && statetype!=A

[State -1, Excel Combo]
type=changestate
value=930
trigger1= !AILevel && !var(15)
trigger1= command="excelcombo"
trigger1= roundstate=2 && power>=1500 && var(2)

[State -1, Slide/Dodge]
type=changestate
value=ifelse(command="holdfwd",910,ifelse(command="holdback",920,900))
trigger1= !AILevel
trigger1= command="roll" && stateno != [900,920]
trigger1= roundstate=2 && statetype!=A && (var(2)||var(16)=1)

[State -1, Scorpion Deathblow]
type = changestate
value = 830
trigger1= !AILevel
trigger1= (command="2k") && (command="holdfwd" || command="holdback")
trigger1= roundstate = 2 && (var(2)||var(16)=1) && statetype=S && stateno != 100

[State -1, Scorpion Deathlock]
type = changestate
value = 800
trigger1= !AILevel
trigger1= (command="2p") && (command="holdfwd" || command="holdback")
trigger1= roundstate = 2 && (var(2)||var(16)=1) && statetype=S && stateno != 100

[State -1, Run/Dash]
type=changestate
value=ifelse(command="FF",105,110)
trigger1= !AILevel
trigger1= command="FF" || command="BB"
trigger1= roundstate=2 && (stateno!=[100,110]) && statetype=S && var(2)

[State -1, Yuri Ori]
type=changestate
value=700
triggerall= !AILevel
triggerall= command="a" && command != "holdup" && (command = "holdback"&&p2dist x >0||command="holdfwd"&&p2dist x<=0) && statetype=A
trigger1= (var(2)||var(16)=1)

[State -1, Goufu In Shingame]
type = changestate
value = 305
triggerall= !AILevel
triggerall= command="b" && command="holdfwd" && statetype=S
trigger1 = (var(2)||var(16)=1)||(StateNo=200||StateNo=220&&anim=225||StateNo=400||StateNo=420||StateNo=450)&&MoveContact

[State -1, Yume Biki]
type = ChangeState
value = 300
triggerall= !AILevel
triggerall= command="y" && (command="holdfwd"||command="fwd") && statetype=S
trigger1 = (var(2)||var(16)=1)||StateNo=210&&MoveContact&&AnimelemTime(5)>0

[State -1, Stand Light Punch]
type = changestate
value = 200
triggerall= !AILevel
triggerall= command="x" && command!="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= ((stateno=200||stateno=250)&&time>5)

[State -1, Stand Medium Punch]
type=changestate
value=210
triggerall= !AILevel
triggerall= command="y" && command!="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)||stateno=250&&anim=255&&animelemtime(3)>=1&&animelemtime(5)<0
;trigger2= ((stateno=200||StateNo=250||stateno=400||stateno=450)&&movecontact)

[State -1, Stand Hard Punch]
type=changestate
value=220
triggerall= !AILevel
triggerall= command="z" && command!="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
;trigger2= ((stateno=200||stateno=400||stateno=450)&&movecontact)

[State -1, Stand Light Kick]
type=changestate
value=250
triggerall= !AILevel
triggerall= command="a" && command!="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= ((stateno=200||stateno=250)&&time>5)

[State -1, Stand Medium Kick]
type=changestate
value=260
triggerall= !AILevel
triggerall= command="b" && command!="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= ((stateno=200||stateno=300||stateno=400||stateno=450)&&movecontact)

[State -1, Stand Hard Kick]
type=changestate
value=270
triggerall= !AILevel
triggerall= command="c" && command!="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= ((stateno=200||stateno=400||stateno=450)&&movecontact)

[State -1, Crouch Light Punch]
type=changestate
value=400
triggerall= !AILevel
triggerall= command="x" && command="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= ((stateno=400||stateno=450)&&time>5)

[State -1, Crouch Medium Punch]
type=changestate
value=410
triggerall= !AILevel
triggerall= command="y" && command="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2 = (stateno=200)&&movecontact

[State -1, Crouch Hard Punch]
type=changestate
value=420
triggerall= !AILevel
triggerall= command="z" && command="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)

[State -1, Crouch Light Kick]
type=changestate
value=450
triggerall= !AILevel
triggerall= command="a" && command="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2= ((stateno=400||stateno=450)&&time>5)

[State -1, Crouch Medium Kick]
type=changestate
value=460
triggerall= !AILevel
triggerall= command="b" && command="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)
trigger2 = (stateno=200)&&movecontact

[State -1, Crouch Hard Kick]
type=changestate
value=470
triggerall = !AILevel
triggerall = command="c" && command="holddown" && statetype!=A
trigger1= (var(2)||var(16)=1)

[State -1, Aerial Light Punch]
type=changestate
value=600
triggerall= !AILevel
triggerall= command="x" && statetype=A
trigger1= (var(2)||var(16)=1&&StateNo<1000)

[State -1, Aerial Medium Punch]
type=changestate
value=610
triggerall= !AILevel
triggerall= command="y" && statetype=A
trigger1= (var(2)||var(16)=1&&StateNo<1000)

[State -1, Aerial Hard Punch]
type=changestate
value=620
triggerall= !AILevel
triggerall= command="z" && statetype=A
trigger1= (var(2)||var(16)=1&&StateNo<1000)

[State -1, Aerial Light Kick]
type=changestate
value=650
triggerall= !AILevel
triggerall= command="a" && statetype=A
trigger1= (var(2)||var(16)=1&&StateNo<1000)

[State -1, Aerial Medium Kick]
type=changestate
value=660
triggerall= !AILevel
triggerall= command="b" && statetype=A
trigger1= (var(2)||var(16)=1&&StateNo<1000)


[State -1, Aerial Hard Kick]
type=changestate
value=670
triggerall= !AILevel
triggerall= command="c" && statetype=A
trigger1= (var(2)||var(16)=1&&StateNo<1000)

[State -1, Taunt]
type = changestate
value = 195
triggerall= !AILevel
triggerall= command="start" && statetype!=A
trigger1= (var(2)||var(16)=1)

;=============================================================================
;============================<AI MOVES>=======================================
;=============================================================================
