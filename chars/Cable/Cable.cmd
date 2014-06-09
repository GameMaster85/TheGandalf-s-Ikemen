;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name="ViperBeam"
command=~D, DF, F, D, DF, F, x
time=32
[Command]
name="ViperBeam"
command=~D, DF, F, D, DF, F, y
time=32
[Command]
name="ViperBeam"
command=~D, DF, F, D, DF, F, z
time=32
[Command]
name="ViperBeam"
command=~D, DF, F, D, DF, F, ~x
time=32
[Command]
name="ViperBeam"
command=~D, DF, F, D, DF, F, ~y
time=32
[Command]
name="ViperBeam"
command=~D, DF, F, D, DF, F, ~z
time=32

[Command]
name="HyperViperBeam"
command=~D, DF, F, D, DF, F, x+y
time=32
[Command]
name="HyperViperBeam"
command=~D, DF, F, D, DF, F, y+z
time=32
[Command]
name="HyperViperBeam"
command=~D, DF, F, D, DF, F, x+z
time=32
[Command]
name="HyperViperBeam"
command=~D, DF, F, D, DF, F, ~x+y
time=32
[Command]
name="HyperViperBeam"
command=~D, DF, F, D, DF, F, ~y+z
time=32
[Command]
name="HyperViperBeam"
command=~D, DF, F, D, DF, F, ~x+z
time=32

[Command]
name="TimeFlip"
command=~D, DF, F, D, DF, F, a
time=32
[Command]
name="TimeFlip"
command=~D, DF, F, D, DF, F, b
time=32
[Command]
name="TimeFlip"
command=~D, DF, F, D, DF, F, c
time=32
[Command]
name="TimeFlip"
command=~D, DF, F, D, DF, F, ~a
time=32
[Command]
name="TimeFlip"
command=~D, DF, F, D, DF, F, ~b
time=32
[Command]
name="TimeFlip"
command=~D, DF, F, D, DF, F, ~c
time=32

[Command]
name="MaxTimeFlip"
command=~D, DF, F, D, DF, F, a+b
time=32
[Command]
name="MaxTimeFlip"
command=~D, DF, F, D, DF, F, b+c
time=32
[Command]
name="MaxTimeFlip"
command=~D, DF, F, D, DF, F, a+c
time=32
[Command]
name="MaxTimeFlip"
command=~D, DF, F, D, DF, F, ~a+b
time=32
[Command]
name="MaxTimeFlip"
command=~D, DF, F, D, DF, F, ~b+c
time=32
[Command]
name="MaxTimeFlip"
command=~D, DF, F, D, DF, F, ~a+c
time=32

[Command]
name="Psimitar"
command=~D, DB, B, D, DB, B, x
time=32
[Command]
name="Psimitar"
command=~D, DB, B, D, DB, B, y
time=32
[Command]
name="Psimitar"
command=~D, DB, B, D, DB, B, z
time=32
[Command]
name="Psimitar"
command=~D, DB, B, D, DB, B, ~x
time=32
[Command]
name="Psimitar"
command=~D, DB, B, D, DB, B, ~y
time=32
[Command]
name="Psimitar"
command=~D, DB, B, D, DB, B, ~z
time=32

[Command]
name="MaxPsimitar"
command=~D, DB, B, D, DB, B, x+y
time=32
[Command]
name="MaxPsimitar"
command=~D, DB, B, D, DB, B, y+z
time=32
[Command]
name="MaxPsimitar"
command=~D, DB, B, D, DB, B, x+z
time=32
[Command]
name="MaxPsimitar"
command=~D, DB, B, D, DB, B, ~x+y
time=32
[Command]
name="MaxPsimitar"
command=~D, DB, B, D, DB, B, ~y+z
time=32
[Command]
name="MaxPsimitar"
command=~D, DB, B, D, DB, B, ~x+z
time=32

[Command]
name="TelekeneticForceField"
command=~D, DF, F, D, DF, F, a+x
time=32
[Command]
name="TelekeneticForceField"
command=~D, DF, F, D, DF, F, b+y
time=32
[Command]
name="TelekeneticForceField"
command=~D, DF, F, D, DF, F, c+z
time=32
[Command]
name="TelekeneticForceField"
command=~D, DF, F, D, DF, F, ~a+x
time=32
[Command]
name="TelekeneticForceField"
command=~D, DF, F, D, DF, F, ~b+y
time=32
[Command]
name="TelekeneticForceField"
command=~D, DF, F, D, DF, F, ~c+z
time=32

[Command]
name="QuantumBreak"
command=~D, DB, B, D, DB, B, a+x
time=32
[Command]
name="QuantumBreak"
command=~D, DB, B, D, DB, B, b+y
time=32
[Command]
name="QuantumBreak"
command=~D, DB, B, D, DB, B, c+z
time=32
[Command]
name="QuantumBreak"
command=~D, DB, B, D, DB, B, ~a+x
time=32
[Command]
name="QuantumBreak"
command=~D, DB, B, D, DB, B, ~b+y
time=32
[Command]
name="QuantumBreak"
command=~D, DB, B, D, DB, B, ~c+z
time=32
;-| Special Motions |------------------------------------------------------
[Command]
name = "PlasmaFire1"
command = ~F, D, DF, x
time = 18
[Command]
name = "PlasmaFire2"
command = ~F, D, DF, y
time = 18
[Command]
name = "PlasmaFire3"
command = ~F, D, DF, z
time = 18
[Command]
name = "PlasmaFire1"
command = ~F, D, DF, ~x
time = 18
[Command]
name = "PlasmaFire2"
command = ~F, D, DF, ~y
time = 18
[Command]
name = "PlasmaFire3"
command = ~F, D, DF, ~z
time = 18

[Command]
name = "PlasmaFireEX"
command = ~F, D, DF, x+z
time = 18
[Command]
name = "PlasmaFireEX"
command = ~F, D, DF, y+z
time = 18
[Command]
name = "PlasmaFireEX"
command = ~F, D, DF, x+y
time = 18

[Command]
name = "GunFire1"
command = ~D, DF, F, x
time = 15
[Command]
name = "GunFire2"
command = ~D, DF, F, y
time = 15
[Command]
name = "GunFire3"
command = ~D, DF, F, z
time = 15
[Command]
name = "GunFire1"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "GunFire2"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "GunFire3"
command = ~D, DF, F, ~z
time = 15

[Command]
name = "GunFireEX"
command = ~D, DF, F, x+z
time = 15
[Command]
name = "GunFireEX"
command = ~D, DF, F, y+z
time = 15
[Command]
name = "GunFireEX"
command = ~D, DF, F, x+y
time = 15


[Command]
name = "Crackdown1"
command = ~D, DF, F, a
time = 15
[Command]
name = "Crackdown2"
command = ~D, DF, F, b
time = 15
[Command]
name = "Crackdown3"
command = ~D, DF, F, c
time = 15
[Command]
name = "Crackdown1"
command = ~D, DF, F, ~a
time = 15
[Command]
name = "Crackdown2"
command = ~D, DF, F, ~b
time = 15
[Command]
name = "Crackdown3"
command = ~D, DF, F, ~c
time = 15

[Command]
name = "CrackdownEX"
command = ~D, DF, F, a+b
time = 15
[Command]
name = "CrackdownEX"
command = ~D, DF, F, b+c
time = 15
[Command]
name = "CrackdownEX"
command = ~D, DF, F, a+c
time = 15

[Command]
name = "Electrap1"
command = ~D, DB, B, a
time = 15
[Command]
name = "Electrap2"
command = ~D, DB, B, b
time = 15
[Command]
name = "Electrap3"
command = ~D, DB, B, c
time = 15
[Command]
name = "Electrap1"
command = ~D, DB, B, ~a
time = 15
[Command]
name = "Electrap2"
command = ~D, DB, B, ~b
time = 15
[Command]
name = "Electrap3"
command = ~D, DB, B, ~c
time = 15

[Command]
name = "ElectrapEX"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "ElectrapEX"
command = ~D, DB, B, b+c
time = 15
[Command]
name = "ElectrapEX"
command = ~D, DB, B, a+c
time = 15

[Command]
name = "Psi-Charge1"
command = ~D, DB, B, x
time = 15
[Command]
name = "Psi-Charge2"
command = ~D, DB, B, y
time = 15
[Command]
name = "Psi-Charge3"
command = ~D, DB, B, z
time = 15
[Command]
name = "Psi-Charge1"
command = ~D, DB, B, ~x
time = 15
[Command]
name = "Psi-Charge2"
command = ~D, DB, B, ~y
time = 15
[Command]
name = "Psi-Charge3"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "Psi-ChargeEX"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "Psi-ChargeEX"
command = ~D, DB, B, y+z
time = 15
[Command]
name = "Psi-ChargeEX"
command = ~D, DB, B, x+z
time = 15

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, x
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, y
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, z
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~x
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~y
time = 16
[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~z
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, a
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, b
time = 16
[Command]
name=  "412k" ;Zero Counter
command = ~B, DB, D, c
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~a
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~b
time = 16
[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~c
time = 16
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name="recovery"
command=a+x
time=1
[Command]
name = "recovery"
command = y+z
time=1
[Command]
name = "recovery"
command = x+z
time=1
[Command]
name = "recovery"
command = a+b
time=1
[Command]
name = "recovery"
command = b+c
time=1
[Command]
name = "recovery"
command = a+c
time=1

[Command]
name = "pp"
command = x+y
time = 1
[Command]
name = "pp"
command = x+z
time = 1
[Command]
name = "pp"
command = y+z
time = 1
[Command]
name = "kk"
command = a+b
time = 1
[Command]
name = "kk"
command = a+c
time = 1
[Command]
name = "kk"
command = b+c
time = 1
[Command]
name = "a+x"
command = a+x
time=1
[Command]
name = "b+y"
command = b+y
time = 1
[Command]
name = "c+z"
command = c+z
time = 1
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
name = "s"
command = s
time = 1
;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1
[Command]
name = "downfwd"
command = $DF
time = 1
[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1
[Command]
name = "downback"
command = $DB
time = 1
[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1
[Command]
name = "upback"
command = $UB
time = 1
[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1
[Command]
name = "upfwd"
command = $UF
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
name = "holdfwd";Required (do not remove)
command = /$F
time = 1
[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1
[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1
[Command]
name = "holddownfwd"
command = /$DF
time = 1
[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1
[Command]
name = "holddownback"
command = /$DB
time = 1
[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdupback"
command = /$UB
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1
[Command]
name = "holdupfwd"
command = /$UF
time = 1
;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1
[Command]
name = "rlsback"
command = ~$B
time = 1
[Command]
name = "rlsup"
command = ~$U
time = 1
[Command]
name = "rlsdown"
command = ~$D
time = 1
;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1
[Command]
name = "rlsy"
command = ~y
time = 1
[Command]
name = "rlsz"
command = ~z
time = 1
[Command]
name = "rlsa"
command = ~a
time = 1
[Command]
name = "rlsb"
command = ~b
time = 1
[Command]
name = "rlsc"
command = ~c
time = 1
;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15
;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = StateNo = 810 && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger5 = (StateNo = [700,715]) && !AnimTime
trigger6 = (StateNo = [6080,6082]) && !AnimTime
value = 1
;-----------------------------------------------------------------
[State -1, Parry Stand]
type = HitOverride
triggerall =!AILevel
triggerall = command = "fwd" && command!= "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 6080
slot = 0
time = 5
;------------------------------------------------------------------
[State -1, Crouching Parry]
type = HitOverride
triggerall =!AILevel
triggerall = (statetype = S && command = "down")|| (statetype = C && command = "fwd") && command != "back" && command != "up"
trigger1 = Ctrl
attr = C,AA,AP
stateno = 6081
slot = 0
time =5
;-------------------------------------------------------------------
[State -1, Aerial Parry]
type= HitOverride
triggerall =!AILevel
triggerall = (statetype= A && command = "fwd") && command != "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 6082
forceair = 1
slot = 0
time = 5
;--------------------------------------------------------------------
[State -1, Quantum Break]
type=ChangeState
value=3500
triggerall=!AILevel && RoundState=2 && StateType != A && var(24)<=0 && var(20)<=0 && power >= 3000&&command ="QuantumBreak"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;--------------------------------------------------------------------
[State -1, Telekenetic Force Field]
type=ChangeState
value=3400
triggerall=!AILevel && RoundState=2 && StateType != A && var(20)<=0 && power >= 3000&&command ="TelekeneticForceField"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;----------------------------------------------------------------------
[State -1, Max Psimitar]
type=ChangeState
value=3350
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 2000&&command ="MaxPsimitar"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Psimitar]
type=ChangeState
value=3300
triggerall=!AILevel && stateno!=3300 && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 1000&&command ="Psimitar"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max Time Flip]
type=ChangeState
value=3250
triggerall=!AILevel && RoundState=2 && (stateno!=[3250,3255]) && StateType != A &&var(20) <= 60 && power >= 2000&&command ="MaxTimeFlip"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Time Flip]
type=ChangeState
value=3200
triggerall=!AILevel && (stateno!=[3200,3255]) && !numhelper(3205) && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 1000&&command ="TimeFlip"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Hyper Viper Beam]
type=ChangeState
value=3050
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 2000&&command ="HyperViperBeam"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Hyper Air Viper Beam]
type=ChangeState
value=3075
triggerall=!AILevel && RoundState=2 && StateType = A && Pos y<=-20 &&var(20) <= 60 && power >= 2000&&command ="HyperViperBeam"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Viper Beam]
type=ChangeState
value=3000
triggerall=!AILevel && RoundState=2 && stateno!= 3000 && !numhelper(3005) && StateType != A &&var(20) <= 60 && power >= 1000&&command ="ViperBeam"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Air Viper Beam]
type=ChangeState
value=3025
triggerall=!AILevel && RoundState=2 && stateno!= 3025 && !numhelper(3005) && StateType = A && Pos y<=-20 &&var(20) <= 60 && power >= 1000&&command ="ViperBeam"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;======================================================================
[State -1, Plasma Fire]
type=ChangeState
value=Ifelse(command="PlasmaFireEX"&&var(20) <= 60&&power>=500,1450,1400)
triggerall=!AILevel && RoundState=2 && StateType != A && var(24)<=0 && !numhelper(3005)&& !Numhelper(3055) && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<5)
triggerall= ((command="PlasmaFire1"|command="PlasmaFire2"|command="PlasmaFire3")||(command="PlasmaFireEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = 450) && movecontact && (command="PlasmaFireEX"&&power>=500&&var(20) <= 60)
;----------------------------------------------------------------------
[State -1, Gun Fire]
type=ChangeState
value=Ifelse(command="GunFireEX"&&var(20) <= 60&&power>=500,1025,1000)
triggerall=!AILevel && RoundState=2 && StateType != A && !numhelper(3005)&& !Numhelper(3055) && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<5)
triggerall= ((command="GunFire1"|command="GunFire2"|command="GunFire3")||(command="GunFireEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = 450) && movecontact && (command="GunFireEX"&&power>=500&&var(20) <= 60)
;----------------------------------------------------------------------
[State -1, Air Gun Fire]
type=ChangeState
value=Ifelse(command="GunFireEX"&&var(20) <= 60&&power>=500,1075,1050)
triggerall=!AILevel && RoundState=2 && StateType = A && Pos y<=-15 && (var(3) != [1, 2]) && !numhelper(3005)&& !Numhelper(3055) && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<5)
triggerall= ((command="GunFire1"|command="GunFire2"|command="GunFire3")||(command="GunFireEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl
trigger2=var(5)
trigger3=(stateno=[600,650]) && movecontact
;----------------------------------------------------------------------
[State -1, Crackdown]
type=ChangeState
value=Ifelse(command="CrackdownEX"&&var(20) <= 60&&power>=500,1150,1100)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Crackdown1"|command="Crackdown2"|command="Crackdown3")||(command="CrackdownEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = 450) && movecontact && (command="CrackdownEX"&&power>=500&&var(20) <= 60)
;----------------------------------------------------------------------
[State -1, Electrap]
type=ChangeState
value=Ifelse(command="ElectrapEX"&&var(20) <= 60&&power>=500,1225,1200)
triggerall=!AILevel && RoundState=2 && !numhelper(1205) && !numtarget(1205) && StateType != A && ((command="Electrap1"|command="Electrap2"|command="Electrap3")||(command="ElectrapEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = 450) && movecontact && (command="ElectrapEX"&&power>=500&&var(20) <= 60)
;----------------------------------------------------------------------
[State -1, Air Electrap]
type=ChangeState
value=Ifelse(command="ElectrapEX"&&var(20) <= 60&&power>=500,1275,1250)
triggerall=!AILevel && RoundState=2 && !numhelper(1205) && !numtarget(1205) && Pos y<=-20 && (var(3) != [1, 2]) && StateType = A && ((command="Electrap1"|command="Electrap2"|command="Electrap3")||(command="ElectrapEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl
trigger2=var(5)
trigger3=(stateno=[600,650]) && movecontact
;----------------------------------------------------------------------
[State -1, Psi-Charge]
type=ChangeState
value=Ifelse(command="Psi-ChargeEX"&&var(20) <= 60&&power>=500,1350,1300)
triggerall=!AILevel && RoundState=2 && var(24)<=0 && StateType != A && ((command="Psi-Charge1"|command="Psi-Charge2"|command="Psi-Charge3")||(command="Psi-ChargeEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = 450) && movecontact && (command="Psi-ChargeEX"&&power>=500&&var(20) <= 60)
;========================================================================
[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20) && !var(24)
;------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp"||command = "kk")
trigger1 = !AILevel&&RoundState = 2 && StateType = S && !var(24)
trigger1 = ctrl
;------------------------------------------------------------------------
[State -1, Air Throw]
type=ChangeState
value =850
trigger1=(command="holdfwd"||command="holdback")&&(command="pp")
trigger1=!AILevel&&RoundState=2 && Statetype=A && Pos Y<=-30
trigger1=ctrl
;-------------------------------------------------------------------------
[State -1, Power Charge]
type = ChangeState
value = 730
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20) && !var(24)
trigger1 = ctrl || (StateNo = [100,101])
;--------------------------------------------------------------------------
[State -1, SIdestep/Dodge]
type = ChangeState
value = Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall = command = "a+x"
triggerall = !AILevel && RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
;--------------------------------------------------------------------------
[State -1, Custom Combo]
type = ChangeState
value = Ifelse(StateType = A,905,900)
triggerAll = !AILevel && command = "c+z" && RoundState = 2 && power >= 1000 && !var(20) && !var(24)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)
;--------------------------------------------------------------------------
[State -1, Forward Dash/ Run /Dash Back]
type = ChangeState
value = Ifelse(command = "BB",105,102)
trigger1 = !AILevel&&Roundstate=2&&statetype = S
trigger1 = command = "FF"||command = "BB"
trigger1 = ctrl
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno=[200,209])&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type=ChangeState
value=240
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Standing High Kick]
type=ChangeState
value=250
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[400,409]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="x"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="y"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="a"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="b"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="c"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)
;--------------------------------------------------------------------------
;AI
;--------------------------------------------------------------------------
[State -1, AI Parry Stand]
type = HitOverride
triggerall = AILevel&&statetype != A && ctrl
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6080
attr = SA, AA, AP
time = 3
;---------------------------------------------------------------
[State -1, AI Crouching Parry]
type = HitOverride
triggerall = AILevel&&statetype != A && ctrl
trigger1 =random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6081
attr = C, AA, AP
time = 3
;---------------------------------------------------------------
[State -1, AI Aerial Parry]
type = HitOverride
triggerall = AILevel&& statetype = A && ctrl
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6082
attr = SCA, AA, AP
time = 3
;---------------------------------------------------------------------------
[State -1, Idle]
type = changestate
value = 0
triggerall = AIlevel && numenemy&&roundstate = 2 && statetype != A && enemynear, movetype = A && (p2stateno=[5100,5220])
trigger1=ctrl

[State -1, run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[state -1,AI Air Guard]
type = ChangeState
value = 132
triggerall = AIlevel && numenemy&& roundstate = 2&&InGuardDist
triggerall = ctrl&&statetype = A
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random <=ifelse(backedgedist<=10,950,800)

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20) && !var(24)
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 200, ifelse((p2stateno = [1000, 2999]), 400, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(20) && !var(24) && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 730
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20) && !var(24)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, roll / dodge]
type = changestate
value = ifelse(random < 600, 700, 710)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 100

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (250 * (AIlevel ** 2 / 64.0))
;-------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0)) && !var(20) && !var(24)
triggerall = roundstate=2&&statetype!=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201])
triggerall = enemynear,movetype!=H&&enemynear,statetype!=A&&enemynear,Hitover&&(p2bodydist x =[0,30])
triggerall = ctrl||stateno=100||stateno=52
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3 = stateno=100
trigger4=(p2bodydist x=[0,30])&&random<250
trigger5=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500
;-------------------------------------------------------------------
[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0)) && !var(20) && !var(24)
triggerall = roundstate=2&&statetype=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201])
triggerall = enemynear,movetype!=H&&enemynear,statetype=A&&enemynear,Hitover&&(p2bodydist x =[0,30])&&(p2bodydist y =[-50,0])
triggerall = ctrl
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3=(p2bodydist x=[0,30])&&random<250
trigger4=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500
;------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerall = p2bodydist x <=45&&(p2bodydist y = [-80,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random < (650 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [100,101]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)=1
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -80, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)=1
trigger2 = random < 650
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 40]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)=1
trigger2 = random < 200
trigger3 = (stateno = [100,101]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)=1
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit && stateno != 225&&var(55)=1
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)=1
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 70]) &&(p2bodydist y = [-80,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)=1
trigger2 = random < 600
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 35]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)=1
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (75 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)=1
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [220,229])|| (stateno = [240,249])||(stateno = [420,429])||(stateno = [440,449]))&& movehit&&var(55)=1
trigger2 = random < 900
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0,60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 250, 125) * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 100]) && (p2bodydist y = [ -80, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (70 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 90]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A
triggerall = (p2bodydist x = [0, 130]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
;--------------------------------------------------------------------
[State -1, Telekenetic Force Field]
type=ChangeState
value=3400
triggerall=AILevel && numenemy && RoundState=2 && StateType != A &&var(20)<=0 && power >= 3000 && random < (400 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,Movetype != A)&&(enemynear,stateno!=5120)&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[-70,80])&&(p2bodydist y=[-180,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;----------------------------------------------------------------------
[State -1, Psimitar]
type=ChangeState
value=Ifelse(power>=2000&&random<=350,3350,3300)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && var(20)<=0 && power >= 1000 && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) && (enemynear,statetype != C)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=(p2bodydist x =[10,60])&&(p2bodydist y=[-130,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Time Flip]
type=ChangeState
value=Ifelse(power>=2000&&random<=400,3250,3200)
triggerall=AILevel && numenemy && RoundState=2 && (stateno!=[3200,3255]) && !numhelper(3205)  && StateType != A && var(20)<=0 && power >= 1000 && random < (350 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[40,180])&&(p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Viper Beam]
type=ChangeState
value=3000
triggerall=AILevel && numenemy && RoundState=2 && stateno!=3000 && StateType != A && var(20)<=0 && power >= 1000 && random < (100 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x >=50)&&(p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Hyper Viper Beam]
type=ChangeState
value=3050
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && var(20)<=0 && power >= 2000 && random < (150 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x >=50)&&(p2bodydist y=[-160,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Air Viper Beam]
type=ChangeState
value=3025
triggerall= AILevel && numenemy && RoundState=2 && stateno!=3025 && StateType = A && Pos y<=-20 &&var(20) <= 60 && power >= 1000 && random < (100 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x >=50)&&(p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Air Hyper Viper Beam]
type=ChangeState
value=3075
triggerall= AILevel && numenemy && RoundState=2 && StateType = A && Pos y<=-20 &&var(20) <= 60 && power >= 2000 && random < (150 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x >=50)&&(p2bodydist y=[-140,95])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;======================================================================
[State -1, Plasma Fire]
type=ChangeState
value=Ifelse(power>=500&&random<=350,1450,1400)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && var(24)<=0 && Ifelse(!var(20),!Numhelper(1405),Numhelper(1405)<6)
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)
triggerall=random < (200 * (AIlevel ** 2 / 64.0)) && (p2bodydist x =[20,80])&&(p2bodydist y=[-140,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;----------------------------------------------------------------------
[State -1, Gun Fire]
type=ChangeState
value=Ifelse(power>=500&&random<=350,1025,1000)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<10)
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(enemynear,statetype!=C)
triggerall=random < (60 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=50)&&(p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;----------------------------------------------------------------------
[State -1, Air Gun Fire]
type=ChangeState
value=Ifelse(power>=500&&random<=350,1075,1050)
triggerall=AILevel && numenemy && RoundState=2 && StateType = A && Pos y<=-15 && (var(3) != [1, 2]) && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<10)
triggerall=(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(enemynear,statetype=A)
triggerall=random < (100 * (AIlevel ** 2 / 64.0)) && (p2bodydist x >=50)&&(p2bodydist y=[-60,25])
trigger1=ctrl
trigger2=var(5)
trigger3=(stateno=[600,650]) && movecontact
;----------------------------------------------------------------------
[State -1, Crackdown]
type=ChangeState
value=Ifelse(power>=500&&random<=250,1150,1100)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A&&(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=random < (200 * (AIlevel ** 2 / 64.0)) && (p2bodydist x =[30,180])&&(p2bodydist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;----------------------------------------------------------------------
[State -1, Electrap]
type=ChangeState
value=Ifelse(power>=500&&random<=150,1225,1200)
triggerall=AILevel && numenemy && RoundState=2 && !numhelper(1205) && !numtarget(1205) && StateType != A && (enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=random < (100 * (AIlevel ** 2 / 64.0)) && (p2bodydist x =[80,180])&&(p2bodydist y=[-120,25])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;----------------------------------------------------------------------
[State -1, Air Electrap]
type=ChangeState
value=Ifelse(power>=500&&random<=100,1275,1250)
triggerall=AILevel && numenemy && RoundState=2 && !numhelper(1205) && !numtarget(1205) && Pos y<=-20 && (var(3) != [1, 2]) && StateType = A &&(enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=random < (100 * (AIlevel ** 2 / 64.0)) && (p2bodydist x =[80,180])&&(p2bodydist y=[-120,95])
trigger1=ctrl
trigger2=var(5)
trigger3=(stateno=[600,650]) && movecontact
;----------------------------------------------------------------------
[State -1, Psi-Charge]
type=ChangeState
value=Ifelse(power>=500&&random<=100,1300,1350)
triggerall=AILevel && numenemy && RoundState=2 && StateType != A&&(enemynear,statetype != L)&&(enemynear,statetype != A)&&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])
triggerall=random < (150 * (AIlevel ** 2 / 64.0)) && (p2bodydist x =[5,40])&&(p2bodydist y=[-60,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
