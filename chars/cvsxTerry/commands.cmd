
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 20
command.buffer.time = 1

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

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1
;----------------------------------------------------------------------------
;============================ ADD COMMANDS FROM HERE ON =====================
;----------------------------------------------------------------------------

[Command]
name = "holdp"
command = /x
time = 1
[Command]
name = "holdp"
command = /y
time = 1
[Command]
name = "holdp"
command = /z
time = 1

;-| Super Motions |--------------------------------------------------------
;---------------------------------Ground supers--------------------------
;---------------------- Rising Beat -----------------------
[Command]
name = "RisingBeat"
command = ~D, DB, B, F, a
time = 25
buffer.time = 2
[Command]
name = "RisingBeat"
command = ~D, DB, B, F, b
time = 25
buffer.time = 2
[Command]
name = "RisingBeat"
command = ~D, DB, B, F, c
time = 25
buffer.time = 2

[Command]
name = "RisingBeat"
command = ~D, DB, B, F, ~a
time = 25
buffer.time = 2
[Command]
name = "RisingBeat"
command = ~D, DB, B, F, ~b
time = 25
buffer.time = 2
[Command]
name = "RisingBeat"
command = ~D, DB, B, F, ~c
time = 25
buffer.time = 2
;----------------------Power Stream -----------------------
[Command]
name = "PowerStream"
command = ~D, DB, B, F, x
time = 25
buffer.time = 2
[Command]
name = "PowerStream"
command = ~D, DB, B, F, y
time = 25
buffer.time = 2
[Command]
name = "PowerStream"
command = ~D, DB, B, F, z
time = 25
buffer.time = 2

[Command]
name = "PowerStream"
command = ~D, DB, B, F, ~x
time = 25
buffer.time = 2
[Command]
name = "PowerStream"
command = ~D, DB, B, F, ~y
time = 25
buffer.time = 2
[Command]
name = "PowerStream"
command = ~D, DB, B, F, ~z
time = 25
buffer.time = 2
;----------------------Power Geyser------------------------
[Command]
name = "PowerHurricane"
command = ~D, DB, B, D, DB, B, a
time = 25
buffer.time = 2
[Command]
name = "PowerHurricane"
command = ~D, DB, B, D, DB, B, b
time = 25
buffer.time = 2
[Command]
name = "PowerHurricane"
command = ~D, DB, B, D, DB, B, c
time = 25
buffer.time = 2

[Command]
name = "PowerHurricane"
command = ~D, DB, B, D, DB, B, ~a
time = 25
buffer.time = 2
[Command]
name = "PowerHurricane"
command = ~D, DB, B, D, DB, B, ~b
time = 25
buffer.time = 2
[Command]
name = "PowerHurricane"
command = ~D, DB, B, D, DB, B, ~c
time = 25
buffer.time = 2
;----------------------Power Geyser------------------------
[Command]
name = "PowerGeyser"
command = ~D, DF, F, D, DF, F, x
time = 25
buffer.time = 2
[Command]
name = "PowerGeyser"
command = ~D, DF, F, D, DF, F, y
time = 25
buffer.time = 2
[Command]
name = "PowerGeyser"
command = ~D, DF, F, D, DF, F, z
time = 25
buffer.time = 2

[Command]
name = "PowerGeyser"
command = ~D, DF, F, D, DF, F, ~x
time = 25
buffer.time = 2
[Command]
name = "PowerGeyser"
command = ~D, DF, F, D, DF, F, ~y
time = 25
buffer.time = 2
[Command]
name = "PowerGeyser"
command = ~D, DF, F, D, DF, F, ~z
time = 25
buffer.time = 2

[Command]
name ="EX-PowerGeyser"
command = ~D, DF, F, D, DF, F, x+y
time = 25
buffer.time = 2
[Command]
name = "EX-PowerGeyser"
command = ~D, DF, F, D, DF, F, y+z
time = 25
buffer.time = 2
[Command]
name = "EX-PowerGeyser"
command = ~D, DF, F, D, DF, F, z+x
time = 25
buffer.time = 2
;-----------------------  High Angle Geyser ----------------------------
[Command]
name = "HighAngleGeyser"
command = ~D, DB, B, D, DB,  B, a
time = 25
buffer.time = 2
[Command]
name = "HighAngleGeyser"
command = ~D, DB, B, D, DB,  B, b
time = 25
buffer.time = 2
[Command]
name = "HighAngleGeyser"
command = ~D, DB, B, D, DB,  B, c
time = 25
buffer.time = 2

[Command]
name = "HighAngleGeyser"
command = ~D, DB, B, D, DB,  B, ~a
time = 25
buffer.time = 2
[Command]
name = "HighAngleGeyser"
command = ~D, DB, B, D, DB,  B, ~b
time = 25
buffer.time = 2
[Command]
name = "HighAngleGeyser"
command = ~D, DB, B, D, DB,  B, ~c
time = 25
buffer.time = 2
;--------------- EX ----------------------------------
[Command]
name = "EX-HighAngleGeyser"
command = ~D, F, D, F, x+y
time = 25
buffer.time = 2
[Command]
name = "EX-HighAngleGeyser"
command = ~D, F, D, F, y+z
time = 25
buffer.time = 2
[Command]
name = "EX-HighAngleGeyser"
command = ~D, F, D, F, x+z
time = 25
buffer.time = 2
;-----------------------  Buster wolf  ----------------------------
[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, a
time = 25
buffer.time = 2
[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, b
time = 25
buffer.time = 2
[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, c
time = 25
buffer.time = 2

[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, ~a
time = 25
buffer.time = 2
[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, ~b
time = 25
buffer.time = 2
[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, ~c
time = 25
buffer.time = 2
;--------------- EX -----------------
[Command]
name = "EX-BusterWolf"
command = ~D, DF, F, D, DF, F, a+b
time = 25
buffer.time = 2
[Command]
name = "EX-BusterWolf"
command = ~D, DF, F, D, DF, F, b+c
time = 25
buffer.time = 2
[Command]
name = "EX-BusterWolf"
command = ~D, DF, F, D, DF, F, c+a
time = 25
buffer.time = 2
;==========================Ex-Moves=========================
;----------------Ex-Crack Shoot------------------------
[Command]
name = "QCF_pp"
command = ~D, DF, F, x+y
buffer.time = 2
[Command]
name = "QCF_pp"
command = ~D, DF, F, x+z
buffer.time = 2
[Command]
name = "QCF_pp"
command = ~D, DF, F, y+z
buffer.time = 2
;----------------Ex-Burn knuckle-----------------------
[Command]
name = "QCB_pp"
command = ~D, DB, B, x+y
buffer.time = 2
[Command]
name = "QCB_pp"
command = ~D, DB, B, x+z
buffer.time = 2
[Command]
name = "QCB_pp"
command = ~D, DB, B, y+z
buffer.time = 2
;----------------Ex-Power Dunk-----------------------
[Command]
name = "DP_kk"
command = ~F, D, DF, a+b
buffer.time = 2
[Command]
name = "DP_kk"
command = ~F, D, DF, b+c
buffer.time = 2
[Command]
name = "DP_kk"
command = ~F, D, DF, a+c
buffer.time = 2
;----------------Ex-Rising Tackle-----------------------
[Command]
name = "DP_pp"
command = ~F, D, DF, x+y
buffer.time = 2
[Command]
name = "DP_pp"
command = ~F, D, DF, y+z
buffer.time = 2
[Command]
name = "DP_pp"
command = ~F, D, DF, x+z
buffer.time = 2
;----------------Ex-Back Kick------------------------
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+b
buffer.time = 2
[Command]
name = "QCB_kk"
command = ~D, DB, B, b+c
buffer.time = 2
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+c
buffer.time = 2
;----------------Ex-Power charge------------------------
[Command]
name = "QCF_kk"
command = ~D, DF, F, a+b
buffer.time = 2
[Command]
name = "QCF_kk"
command = ~D, DF, F, b+c
buffer.time = 2
[Command]
name = "QCF_kk"
command = ~D, DF, F, a+c
buffer.time = 2
;---------------- Ex-Power Kick ------------------------
[Command]
name = "BF_kk"
command = ~25$B, F, a+b
buffer.time = 2
[Command]
name = "BF_kk"
command = ~25$B, F, a+c
buffer.time = 2
[Command]
name = "BF_kk"
command = ~25$B, F, c+b
buffer.time = 2
;-| Special Motions |------------------------------------------------------
;------------------------Power Dunk-------------------
[Command]
name = "DP_a"
command = ~F, D, DF, a
buffer.time = 2
[Command]
name = "DP_b"
command = ~F, D, DF, b
buffer.time = 2
[Command]
name = "DP_c"
command = ~F, D, DF, c
buffer.time = 2

[Command]
name = "DP_a"
command = ~F, D, DF, ~a
buffer.time = 2
[Command]
name = "DP_b"
command = ~F, D, DF, ~b
buffer.time = 2
[Command]
name = "DP_c"
command = ~F, D, DF, ~c
buffer.time = 2
;------------------------Rising Tackle-------------------
[Command]
name = "DP_x"
command = ~F, D, DF, x
buffer.time = 2
[Command]
name = "DP_y"
command = ~F, D, DF, y
buffer.time = 2
[Command]
name = "DP_z"
command = ~F, D, DF, z
buffer.time = 2

[Command]
name = "DP_x"
command = ~F, D, DF, ~x
buffer.time = 2
[Command]
name = "DP_y"
command = ~F, D, DF, ~y
buffer.time = 2
[Command]
name = "DP_z"
command = ~F, D, DF, ~z
buffer.time = 2
;------------------------Crack Shoot---------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x
buffer.time = 2
[Command]
name = "QCF_y"
command = ~D, DF, F, y
buffer.time = 2
[Command]
name = "QCF_z"
command = ~D, DF, F, z
buffer.time = 2

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x
buffer.time = 2
[Command]
name = "QCF_y"
command = ~D, DF, F, ~y
buffer.time = 2
[Command]
name = "QCF_z"
command = ~D, DF, F, ~z
buffer.time = 2
;------------------------Power charge-------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a
buffer.time = 2
[Command]
name = "QCF_b"
command = ~D, DF, F, b
buffer.time = 2
[Command]
name = "QCF_c"
command = ~D, DF, F, c
buffer.time = 2

[Command]
name = "QCF_a"
command = ~D, DF, F, ~a
buffer.time = 2
[Command]
name = "QCF_b"
command = ~D, DF, F, ~b
buffer.time = 2
[Command]
name = "QCF_c"
command = ~D, DF, F, ~c
buffer.time = 2
;--------------------- Burn Knuckle------------
[Command]
name = "QCB_x"
command = ~D, DB, B, x
buffer.time = 2
[Command]
name = "QCB_y"
command = ~D, DB, B, y
buffer.time = 2
[Command]
name = "QCB_z"
command = ~D, DB, B, z
buffer.time = 2

[Command]
name = "QCB_x"
command = ~D, DB, B, ~x
buffer.time = 2
[Command]
name = "QCB_y"
command = ~D, DB, B, ~y
buffer.time = 2
[Command]
name = "QCB_z"
command = ~D, DB, B, ~z
buffer.time = 2
;------------------ Back Kick------------------------
[Command]
name = "QCB_a"
command = ~D,DB,B, a
buffer.time = 2
[Command]
name = "QCB_b"
command = ~D,DB,B, b
buffer.time = 2
[Command]
name = "QCB_c"
command = ~D,DB,B, c
buffer.time = 2

[Command]
name = "QCB_a"
command = ~D,DB,B, ~a
buffer.time = 2
[Command]
name = "QCB_b"
command = ~D,DB,B, ~b
buffer.time = 2
[Command]
name = "QCB_c"
command = ~D,DB,B, ~c
buffer.time = 2
;--------------------Power Kick-------------
[Command]
name = "BF_a"
command = ~25$B, F, a
buffer.time = 2
[Command]
name = "BF_b"
command = ~25$B, F, b
buffer.time = 2
[Command]
name = "BF_c"
command = ~25$B, F, c
buffer.time = 2

[Command]
name = "BF_a"
command = ~25$B, F, ~a
buffer.time = 2
[Command]
name = "BF_b"
command = ~25$B, F, ~b
buffer.time = 2
[Command]
name = "BF_c"
command = ~25$B, F, ~c
buffer.time = 2
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10
buffer.time = 2
[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
buffer.time = 2
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "recoverf"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "recoverb"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name="recovery"
command=a+x
time=1

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1
;-------------------------------------------------
[Command]
name = "chargez";"chargey"
command = /z;/y
time = 1

[Command]
name = "chargec";"chargeb"
command = /c;/b
time = 1

[Command]
name = "focusy";"chargey"
command = /y;/y
time = 1

[Command]
name = "focusb";"chargeb"
command = /b;/b
time = 1
;-------------------------- Focus Dash ---------------
[Command]
name = "focusFF"
command = F, F
time = 30
buffer.time = 2
[Command]
name = "focusBB"
command = B, B
time = 30
buffer.time = 2

;Super Jump
;[Command]
;name = "superjump"
;command = $D, $U

;[Command]
;name = "superjump"
;command = ~D, U

[Command]
name = "superjump"
command = D, $U
time = 18

;[Command]
;name = "superjump"
;command = /D, U

;---------------------------------------------------------------------------
;Single direction
[Command]
name = "Up"
command = U
time = 1
[Command]
name = "Forward"
command = F
time = 1
[Command]
name = "Down"
command = D
time = 1
[Command]
name = "Back"
command = B
time = 1
;---------------------------------------------------------------
;relase direction
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
;-----------------------------------------------------------------------
;relase button
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
;=========================================================================
;=========================================================================
[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

[State -1, Tick Fix]
type=ctrlset
triggerall= !ctrl
trigger1= (stateno=52 || stateno=105 || stateno=5120) && !animtime
trigger2= (stateno=[200,499]) && !animtime
trigger3= ((stateno=[4000,4020]) || (stateno=[700,701]) || ((stateno=760) && (statetype != A))) && !animtime
trigger4= (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
value=1

;===========================================================================
;---------------------------- AI --------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Run/Dash Fwd]
type = ChangeState
value = 102
;triggerall = var(59)<1
triggerall = stateno !=[100,106]
trigger1 = command = "FF"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
;triggerall = var(59)<1
triggerall = stateno !=[100,106]
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
;triggerall = var(59)<1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;--------------------------------------------------------------------------
[State -1, Focus Attack]
type = ChangeState
value = 790
triggerall = var(59)<1
triggerall = roundstate = 2
triggerall = !var(20)
triggerall = (command = "y" && command = "b")
triggerall = statetype != A
triggerall = stateno != 790
trigger1 = ctrl
trigger2=(stateno=[1000,1999]) && movecontact  && (power >= 300)
trigger3=(stateno=[2000,2999]) && movecontact  && (power >= 300)
trigger4=(stateno=[1000,2999]) && (numhelper(1090)) && (power >= 300)
trigger4 =helper(1090),var(5) && (power >= 300)
trigger5=(stateno=[1000,2999]) && (numhelper(2090)) && (power >= 300)
trigger5 =helper(2090),var(5)
trigger6=(stateno=[200,499]) && movecontact  && (power >= 300)
;trigger6 = stateno = 3000 && (numhelper(3090)) && (power >= 300)
;trigger6 =helper(3090),var(5)
;trigger7 = stateno = 3500 && movecontact && (power >= 300)
;trigger8 = (stateno = [3100,3101]) && movecontact && (power >= 300)
;---------------------------------------------------------------------------
[State -1, Focus Dash Fwd]
type = ChangeState
value = 793
;triggerall = var(59)<1
triggerall = (stateno = [790,791]) && ((command = "focusy" && command = "focusb")) || ((stateno = 792) && movecontact)
trigger1 = command = "focusFF"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Focus Dash Back]
type = ChangeState
value = 794
;triggerall = var(59)<1
triggerall = (stateno = [790,791]) && ((command = "focusy" && command = "focusb")) || ((stateno = 792) && movecontact)
trigger1 = command = "focusBB"
;trigger1 = statetype = S
;trigger1 = ctrl
;--------------------------------------------------------------------------
[State -1, Power Charge]
type = ChangeState
value = 780
;triggerall = var(59)<1
triggerall = roundstate = 2
triggerall = power < 3000
triggerall = !var(20)
triggerall = (command = "chargez" && command = "chargec");(command = "chargey" && command = "chargeb")
trigger1 = statetype != A
trigger1 = stateno != 780
trigger1 = ctrl ;|| (stateno = 100 && animelemtime(2) >1) || stateno = 101
;---------------------------------------------------------------------------
;Throw
[State -1, Guard Counter Forward]
type = ChangeState
value = 750
;triggerall=var(59)<1
triggerall = command = "b" && command = "y" && command = "holdfwd"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = power >= 1000
trigger1=stateno=150||stateno=152
;---------------------------------------------------------------------------
;Throw
[State -1, Guard Counter Back]
type = ChangeState
value = 750
;triggerall=var(59)<1
triggerall = command = "b" && command = "y" && command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = power >= 1000
trigger1=stateno=150||stateno=152
;---------------------------------------------------------------------------
;Throw
[State -1, Guard Roll Forward]
type = ChangeState
value = 710
;triggerall=var(59)<1
triggerall = command = "x" && command = "a" && command = "holdfwd"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = power >= 1000
trigger1=stateno=150||stateno=152
;---------------------------------------------------------------------------
;Throw
[State -1, Guard Roll Back]
type = ChangeState
value = 711
;triggerall=var(59)<1
triggerall = command = "x" && command = "a" && command = "holdback"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = power >= 1000
trigger1=stateno=150||stateno=152
;===========================================================================
[State -1, Custom Combo]
type=changestate
value=760
triggerall=var(59)<=0
trigger1 = stateno !=780
trigger1=  command = "c" && command = "z"
trigger1= roundstate=2 && power>=3000 && !var(20)
trigger1= ctrl
;---------------------------------------------------------------------------
;Throw
[State -1, Dodge forward]
type = ChangeState
value = 700
;triggerall=var(59)<1
triggerall = command = "x" && command = "a" && command = "holdfwd"
triggerall = statetype = S
triggerall = numexplod(700)=0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Throw
[State -1, Dodge back]
type = ChangeState
value = 701
;triggerall=var(59)<1
triggerall = command = "x" && command = "a" && command = "holdback"
triggerall = statetype = S
triggerall = numexplod(700)=0
trigger1 = ctrl
;---------------------------------------------------------------------------
;Throw
[State -1, Sidestep]
type = ChangeState
value = 730
;triggerall=var(59)<1
triggerall = command = "x" && command = "a"
triggerall = statetype = S
triggerall = numexplod(700)=0
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Sidestep follow Punch]
type = ChangeState
value = 731
;triggerall=var(59)<1
triggerall = command = "x" || command = "y" || command = "z"
triggerall = statetype != A
trigger1 = StateNo = 730 && Time =[14,24]
;---------------------------------------------------------------------------
[State -1, Sidestep follow Kick]
type = ChangeState
value = 732
;triggerall=var(59)<1
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = StateNo = 730 && Time =[14,24]
;---------------------------------------------------------------------------
;===========================================================================
;-----------------------------Super Attacks-------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Power Stream]
type = ChangeState
value = 3300
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "PowerStream"
triggerall = power >=3000
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1000,1999]) && movecontact
trigger4=(stateno=[1000,2999]) && (numhelper(1090))
trigger4 =helper(1090),var(5)
trigger5=(stateno=[2000,2999]) && movecontact
trigger6=(stateno=[1000,2999]) && (numhelper(2090))
trigger6 =helper(2090),var(5)
;---------------------------------------------------------------------------
[State -1, Rising Beat]
type = ChangeState
value = 3400
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "RisingBeat"
triggerall = power >=2000
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1000,1999]) && movecontact
trigger4=(stateno=[1000,2999]) && (numhelper(1090))
trigger4 =helper(1090),var(5)
trigger5=(stateno=[2000,2999]) && movecontact
trigger6=(stateno=[1000,2999]) && (numhelper(2090))
trigger6 =helper(2090),var(5)
;---------------------------------------------------------------------------
;[State -1, High Angle Geyser]
;type = ChangeState
;value = 3200
;triggerall=var(59)<1
;triggerall = Statetype != A
;triggerall = command = "HighAngleGeyser"
;triggerall = power >=2000
;triggerall = var(20) <=0
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;trigger3=(stateno=[1000,1999]) && movecontact
;trigger4=(stateno=[1000,2999]) && (numhelper(1090))
;trigger4 =helper(1090),var(5)
;trigger4=(stateno=[2000,2999]) && movecontact
;---------------------------------------------------------------------------
[State -1, EX-Power Geyser]
type = ChangeState
value = 3050
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "EX-PowerGeyser"
triggerall = power >=2000
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1000,1999]) && movecontact
trigger4=(stateno=[1000,2999]) && (numhelper(1090))
trigger4 =helper(1090),var(5)
trigger5=(stateno=[2000,2999]) && movecontact
trigger6=(stateno=[1000,2999]) && (numhelper(2090))
trigger6 =helper(2090),var(5)
;---------------------------------------------------------------------------
[State -1, EX-Buster Wolf]
type = ChangeState
value = 3150
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "EX-BusterWolf"
triggerall = power >=2000
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1000,1999]) && movecontact
trigger4=(stateno=[1000,2999]) && (numhelper(1090))
trigger4 =helper(1090),var(5)
trigger5=(stateno=[2000,2999]) && movecontact
trigger6=(stateno=[1000,2999]) && (numhelper(2090))
trigger6 =helper(2090),var(5)
;---------------------------------------------------------------------------
[State -1, Power Hurricane]
type = ChangeState
value = 3500
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "PowerHurricane"
triggerall = (power >=1000) || (var(20)>0)
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1000,1999]) && movecontact
trigger4=(stateno=[1000,2999]) && (numhelper(1090))
trigger4 =helper(1090),var(5)
trigger5=(stateno=[2000,2999]) && movecontact
trigger6=(stateno=[1000,2999]) && (numhelper(2090))
trigger6 =helper(2090),var(5)
;---------------------------------------------------------------------------
[State -1, Buster Wolf]
type = ChangeState
value = 3100
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "BusterWolf"
triggerall = (power >=1000) || (var(20)>0)
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1000,1999]) && movecontact
trigger4=(stateno=[1000,2999]) && (numhelper(1090))
trigger4 =helper(1090),var(5)
trigger5=(stateno=[2000,2999]) && movecontact
trigger6=(stateno=[1000,2999]) && (numhelper(2090))
trigger6 =helper(2090),var(5)
;---------------------------------------------------------------------------
[State -1, Power Geyser]
type = ChangeState
value = 3000
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "PowerGeyser"
triggerall = (power >=1000) || (var(20)>0)
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1000,1999]) && movecontact
trigger4=(stateno=[1000,2999]) && (numhelper(1090))
trigger4 =helper(1090),var(5)
trigger5=(stateno=[2000,2999]) && movecontact
trigger6=(stateno=[1000,2999]) && (numhelper(2090))
trigger6 =helper(2090),var(5)
;===========================================================================
;-----------------------------EX Attacks-------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -1, EX-Rising Tackle]
type = ChangeState
value = 2100
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_pp"
triggerall=power>=500
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = (stateno = [1600,1620]) && movecontact ;power charge
trigger4 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, EX-Power Wave]
type = ChangeState
value = 2000
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCF_pp"
triggerall = power>=500
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = (stateno = [1600,1620]) && movecontact ;power charge
trigger4 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, EX-Burn Knuckle]
type = ChangeState
value = 2200
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_pp"
triggerall = power>=500
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = (stateno = [1600,1620]) && movecontact ;power charge
trigger4 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, EX-Power Dunk]
type = ChangeState
value = 2400
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_kk"
triggerall=power>=500
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = (stateno = [1600,1620]) && movecontact ;power charge
trigger4 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, EX-Crack Shot]
type = ChangeState
value = 2300
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_kk"
triggerall=power>=500
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = (stateno = [1600,1620]) && movecontact ;power charge
trigger4 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, EX-Power Charge]
type = ChangeState
value = 2600
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCF_kk"
triggerall=power>=500
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;trigger3 = (stateno = [1600,1620]) && movecontact ;power charge
;trigger4 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, EX-Power Kick]
type = ChangeState
value = 2500
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "BF_kk"
triggerall=power>=500
triggerall = var(20) <=0
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = (stateno = [1600,1620]) && movecontact ;power charge
trigger4 = (stateno = 2602) && movecontact ;power charge
;===========================================================================
;-----------------------------Special Attacks-------------------------------
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Power Dunk1]
type = ChangeState
value = 1400
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_a"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Power Dunk2]
type = ChangeState
value = 1410
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_b"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Power Dunk3]
type = ChangeState
value = 1420
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_c"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Rising Tackle1]
type = ChangeState
value = 1100
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_x"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Rising Tackle2]
type = ChangeState
value = 1110
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_y"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Rising Tackle3]
type = ChangeState
value = 1120
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "DP_z"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Burn Knuckle1]
type = ChangeState
value = 1200
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_x"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Burn Knuckle2]
type = ChangeState
value = 1210
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_y"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Burn Knuckle3]
type = ChangeState
value = 1220
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_z"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Crack Shot1]
type = ChangeState
value = 1300
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_a"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Crack Shot2]
type = ChangeState
value = 1310
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Crack Shot3]
type = ChangeState
value = 1320
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Power Charge1]
type = ChangeState
value = 1600
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCF_a"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
;---------------------------------------------------------------------------
[State -1, Power Charge2]
type = ChangeState
value = 1610
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCF_b"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
;---------------------------------------------------------------------------
[State -1, Power Charge3]
type = ChangeState
value = 1620
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "QCF_c"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
;---------------------------------------------------------------------------
[State -1, Power Kick1]
type = ChangeState
value = 1500
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "BF_a"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Power Kick2]
type = ChangeState
value = 1510
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "BF_b"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Power Kick3]
type = ChangeState
value = 1520
;triggerall=var(59)<1
triggerall = Statetype != A
triggerall = command = "BF_c"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
[State -1, Power Wave]
type = ChangeState
value = 1000
;triggerall=var(59)<1
triggerall = (numhelper(1090)=0) || var(12) || var(21)
triggerall = Statetype != A
triggerall = command = "QCF_x"||command = "QCF_y"||command = "QCF_z"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
trigger3 = var(21)
trigger4 = (stateno = [1600,1620]) && movecontact ;power charge
trigger5 = (stateno = 2602) && movecontact ;power charge
;---------------------------------------------------------------------------
;Throw
[State -1, Throw kicks]
type = ChangeState
value = 820
;triggerall=var(59)<1
triggerall = (command = "a" && command = "b")  ||   (command = "b" && command = "c") || (command = "a" && command = "c")
triggerall = statetype = S
triggerall = (command = "holdfwd"  ||  command = "holdback")
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2dist x <=60
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Throw
[State -1, Throw punches]
type = ChangeState
value = 800
;triggerall=var(59)<1
triggerall = (command = "x" && command = "y")  ||   (command = "y" && command = "z") || (command = "x" && command = "z")
triggerall = (command = "holdfwd"  ||  command = "holdback")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2dist x <=60
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
[State -1, Close Stand Light Punch]
type = ChangeState
value = 205
;triggerall=var(59)<1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-20,20]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno=200||stateno=205||stateno=400||stateno=430)&&time>4
trigger3 = var(21)
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
;triggerall=var(59)<1
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno=200||stateno=205||stateno=400||stateno=430)&&time>4
trigger3 = var(21)
;---------------------------------------------------------------------------

[State -1, Close Stand Medium Punch]
type = ChangeState
value = 215
;triggerall=var(59)<1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,20]
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
;triggerall=var(59)<1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1,Close Stand Strong Punch]
type = ChangeState
value = 225
;triggerall=var(59)<1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,20]
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
;triggerall=var(59)<1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1, Stand Strong Punch F]
type = ChangeState
;triggerall=var(59)<1
triggerall = command = "z"
triggerall = command = "holdfwd"
trigger1 = animelemtime(4)<=0
trigger1 = stateno = 225
trigger1 = movehit
;trigger1 = (command = "z") && (command = "holdfwd")
value = 221
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
;triggerall=var(59)<1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1,Close Standing Medium Kick]
type = ChangeState
value = 245
;triggerall=var(59)<1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = P2BodyDist X = [-20,20]
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
;triggerall=var(59)<1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1,Overhead Kick]
type = ChangeState
value = 310
triggerall=var(59)<1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = (stateno = 100) && (anim = 100)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
;triggerall=var(59)<1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
;triggerall=var(59)<1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno=200||stateno=205||stateno=400||stateno=430)&&time>4
trigger3 = var(21)
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
;triggerall=var(59)<1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1, Uppercut]
type = ChangeState
value = 300
;triggerall=var(59)<1
triggerall = command = "z"
triggerall = command = "holddown" && Command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
;triggerall=var(59)<1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
;triggerall=var(59)<1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno=200||stateno=205||stateno=400||stateno=430)&&time>4
trigger3 = var(21)
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
;triggerall=var(59)<1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
;triggerall=var(59)<1
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
;triggerall=var(59)<1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
;triggerall=var(59)<1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
;triggerall=var(59)<1
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
;triggerall=var(59)<1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
;triggerall=var(59)<1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(21)
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
;triggerall=var(59)<1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(21)

