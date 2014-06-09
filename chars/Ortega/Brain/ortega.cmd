; Victor Ortega by Buckus
;
;===============================================================================
;Button Remaping
;===============================================================================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;===============================================================================
;Default Values
;===============================================================================

[Defaults]

command.time = 15
command.buffer.time = 1


;===============================================================================
;A.I.
;===============================================================================

[Command]
name = "cpu1"
command = U, D, F
time = 1

[Command]
name = "cpu2"
command = U, B, F
time = 1

[Command]
name = "cpu3"
command = U, D, D
time = 1

[Command]
name = "cpu4"
command = F, B, U
time = 1

[Command]
name = "cpu5"
command = U, F, U, B
time = 1

[Command]
name = "cpu6"
command = U, D, B
time = 1

[Command]
name = "cpu7"
command = F, F, B
time = 1

[Command]
name = "cpu8"
command = U, D, U
time = 1

[Command]
name = "cpu9"
command = F, B, B
time = 1

[Command]
name = "cpu10"
command = F, F, B, B
time = 1

[Command]
name = "cpu11"
command = U, U, F
time = 1

[Command]
name = "cpu12"
command = U, B, B
time = 1

[Command]
name = "cpu13"
command = U, B, F, F
time = 1

[Command]
name = "cpu14"
command = U, F, B, U
time = 1

[Command]
name = "cpu15"
command = U, B, F, U
time = 1

[Command]
name = "cpu16"
command = U, B, B, B
time = 1

[Command]
name = "cpu17"
command = U, D, B, F
time = 1

[Command]
name = "cpu18"
command = U, D, B, D
time = 1

[Command]
name = "cpu19"
command = U, D, F, U
time = 1

[Command]
name = "cpu20"
command = U, D, U, B
time = 1

[Command]
name = "cpu21"
command = U, D, F, F
time = 1

[Command]
name = "cpu22"
command = F, F, F, F
time = 1

[Command]
name = "cpu23"
command = U, U, U, D
time = 1

[Command]
name = "cpu24"
command = B, B, B
time = 1

[Command]
name = "cpu25"
command = D, D, D, D
time = 1

[Command]
name = "cpu26"
command = D, D, D
time = 1

[Command]
name = "cpu27"
command = F, F, F
time = 1

[Command]
name = "cpu28"
command = U, U, U
time = 1

[Command]
name = "cpu29"
command = U, U, B, B
time = 1

[Command]
name = "cpu30"
command = D, D, F, F
time = 1

;===============================================================================
;Super Motions
;===============================================================================

[Command]
name="Lvl3"
command=~DF,D,DB,F,a+b
time=40
[Command]
name="Lvl3"
command=~DF,D,DB,F,a+c
time=40
[Command]
name="Lvl3"
command=~DF,D,DB,F,b+c
time=40

[Command]
name="QCBHCF_p"
command=~D,B,D,F,x
time=40
[Command]
name="QCBHCF_p"
command=~D,B,D,F,y
time=40
[Command]
name="QCBHCF_p"
command=~D,B,D,F,z
time=40
[Command]
name="QCBHCF_p"
command=~D,B,D,F,~x
time=40
[Command]
name="QCBHCF_p"
command=~D,B,D,F,~y
time=40
[Command]
name="QCBHCF_p"
command=~D,B,D,F,~z
time=40

[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,x
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,y
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,z
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~x
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~y
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~z
time = 30

[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,x
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,y
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,z
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~x
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~y
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~z
time = 30

;===============================================================================
;Special Motions
;===============================================================================

[Command]
name = "HCF_p"
command = ~B,DB,D,DF,F,x
time = 25
[Command]
name = "HCF_p"
command = ~B,DB,D,DF,F,y
time = 25
[Command]
name = "HCF_p"
command = ~B,DB,D,DF,F,z
time = 25
[Command]
name = "HCF_p"
command = ~B,DB,D,DF,F,~x
time = 25
[Command]
name = "HCF_p"
command = ~B,DB,D,DF,F,~y
time = 25
[Command]
name = "HCF_p"
command = ~B,DB,D,DF,F,~z
time = 25

[Command]
name = "upper_x"
command = ~F,D,DF,x
time = 20
[Command]
name = "upper_y"
command = ~F,D,DF,y
time = 20
[Command]
name = "upper_z"
command = ~F,D,DF,z
time = 20
[Command]
name = "upper_x"
command = ~F,D,DF,x
time = 20
[Command]
name = "upper_y"
command = ~F,D,DF,y
time = 20
[Command]
name = "upper_z"
command = ~F,D,DF,z
time = 20

[Command]
name = "QCF_p"
command = ~D,DF,F,x
time = 20
[Command]
name = "QCF_p"
command = ~D,DF,F,y
time = 20
[Command]
name = "QCF_p"
command = ~D,DF,F,z
time = 20
[Command]
name = "QCF_p"
command = ~D,DF,F,~x
time = 20
[Command]
name = "QCF_p"
command = ~D,DF,F,~y
time = 20
[Command]
name = "QCF_p"
command = ~D,DF,F,~z
time = 20

[Command]
name = "QCB_x"
command = ~D,DB,B,x
time = 20
[Command]
name = "QCB_y"
command = ~D,DB,B,y
time = 20
[Command]
name = "QCB_z"
command = ~D,DB,B,z
time = 20
[Command]
name = "QCB_x"
command = ~D,DB,B,~x
time = 20
[Command]
name = "QCB_y"
command = ~D,DB,B,~y
time = 20
[Command]
name = "QCB_z"
command = ~D,DB,B,~z
time = 20

[Command]
name = "jumpslam_x"
command = ~F, DF, D, DB, B, x
time = 25

[Command]
name = "jumpslam_y"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "jumpslam_z"
command = ~F, DF, D, DB, B, z
time = 15

[Command]
name = "superslam_x"
command = ~B, D, DB, x
time = 25

[Command]
name = "superslam_y"
command = ~B, D, DB, y
time = 20

[Command]
name = "superslam_z"
command = ~B, D, DB, z
time = 15

[Command]
name = "stomp"
command = ~D, DF, F, x

[Command]
name = "stomp"
command = ~D, DF, F, y

[Command]
name = "stomp"
command = ~D, DF, F, z

[Command]
name = "backdrop"
command = ~D, DB, B, x

[Command]
name = "backdrop"
command = ~D, DB, B, y

[Command]
name = "backdrop"
command = ~D, DB, B, z

[Command]
name = "powerbomb"
command = ~D, DF, F, a

[Command]
name = "powerbomb"
command = ~D, DF, F, b

[Command]
name = "powerbomb"
command = ~D, DF, F, c

[Command]
name = "toss"
command = ~D, DB, B, a

[Command]
name = "toss"
command = ~D, DB, B, b

[Command]
name = "toss"
command = ~D, DB, B, c

[Command]
name = "grapple"
command = ~B, F, x+y

[Command]
name = "grapple"
command = ~B, F, y+z

[Command]
name = "grapple"
command = ~B, F, x+z


;-| Grapple |--------------------------------------------------------------

[Command]
name = "fwd_slam"
command = /F, x
time = 1

[Command]
name = "fwd_slam"
command = /F, y
time = 1

[Command]
name = "fwd_slam"
command = /F, z
time = 1

[Command]
name = "back_slam"
command = /B, x
time = 1

[Command]
name = "back_slam"
command = /B, y
time = 1

[Command]
name = "back_slam"
command = /B, z
time = 1

[Command]
name = "down_slam"
command = /D, x
time = 1

[Command]
name = "down_slam"
command = /D, y
time = 1

[Command]
name = "down_slam"
command = /D, z
time = 1

[Command]
name = "up_slam"
command = /U, x
time = 1

[Command]
name = "up_slam"
command = /U, y
time = 1

[Command]
name = "up_slam"
command = /U, z
time = 1

[Command]
name = "ropes"
command = /F, a
time = 1

[Command]
name = "ropes"
command = /F, b
time = 1

[Command]
name = "ropes"
command = /F, c
time = 1

[Command]
name = "Bropes"
command = /B, a
time = 1

[Command]
name = "Bropes"
command = /B, b
time = 1

[Command]
name = "Bropes"
command = /B, c
time = 1

[Command]
name = "hold_slam"
command = /x
time = 1

[Command]
name = "hold_slam"
command = /y
time = 1

[Command]
name = "hold_slam"
command = /z
time = 1

;===============================================================================
;Double Tap
;===============================================================================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "super jump"
command = $D, $U

;===============================================================================
;2/3 Button Combinations
;===============================================================================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "counter"
command = a+b
time = 1

[Command]
name = "throw1"
command = x+y
time = 1
[Command]
name = "throw1"
command = y+z
time = 1
[Command]
name = "throw1"
command = x+z
time = 1

[Command]
name = "throw2"
command = a+b
time = 1
[Command]
name = "throw2"
command = b+c
time = 1
[Command]
name = "throw2"
command = a+c
time = 1

;===============================================================================
;Dir + Buttons
;===============================================================================

[Command]
name = "forward_a"
command = /$F,a
time = 1
[Command]
name = "forward_b"
command = /$F,b
time = 1
[Command]
name = "forward_c"
command = /$F,c
time = 1

[Command]
name = "forward_x"
command = /$F,x
time = 1
[Command]
name = "forward_y"
command = /$F,y
time = 1
[Command]
name = "forward_z"
command = /$F,z
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

;===============================================================================
;Single Buttons
;===============================================================================

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

;===============================================================================
;Single Dir
;===============================================================================
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

;===============================================================================
;Hold Dir
;===============================================================================

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

[Command]
name = "Launcher"
command = $U
time = 20

;===============================================================================
;Hold Buttons
;===============================================================================

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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AI TRIGGER]
type = Varset
triggerall = RoundState = 2
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
v = 7
value = 1

;===========================================================================
;---------------------------------------------------------------------------
;Final Muscle Bomber
[State -1, Final Muscle Bomber]
type = ChangeState
value = 4000
triggerall = var(7)!= 1 && stateno!=4000
triggerall = command = "Lvl3"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
;trigger4 = var(3)
;---------------------------------------------------------------------------
;Double Muscle Bomber
[State -1, Double Muscle Bomber]
type = ChangeState
value = 3060
triggerall = var(7)!= 1 && stateno!=3060
triggerall = command = "QCBHCF_p"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Super Combo
[State -1, Super Combo]
type = ChangeState
value = 3050
triggerall = var(7)!= 1 && stateno!=3050
triggerall = command = "2QCB_p"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Triple Knuckle Bomb
[State -1, Triple Knuckle Bomb]
type = ChangeState
value = 3000
triggerall = var(7)!= 1 && stateno!=3000
triggerall = command = "2QCF_p"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Walking Grapple
[State -1, Kung Fu Throw]
type = ChangeState
value = 810
triggerall = var(7)!= 1
triggerall = command = "grapple"
triggerall = statetype = S
triggerall = stateno != 100
trigger1 = var(1)
;---------------------------------------------------------------------------
;Light Fireball
[State -1, Light Fireball]
type = ChangeState
value = 1100
triggerall = var(7)!= 1
triggerall = command = "upper_x"
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Strong Fireball
[State -1, Strong Fireball]
type = ChangeState
value = 1110
triggerall = var(7)!= 1
triggerall = command = "upper_y"
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fierce Fireball
[State -1, Fierce Fireball]
type = ChangeState
value = 1120
triggerall = var(7)!= 1
triggerall = command = "upper_z"
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Knuckle Bomb
[State -1, Knuckle Bomb]
type = ChangeState
value = 1000
triggerall = var(7)!= 1
triggerall = command = "QCF_p"
triggerall = statetype !=A
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Light Dash Punch
[State -1, Light Dash Punch]
type = ChangeState
value = 1150
triggerall = var(7)!= 1
triggerall = command = "QCB_x"
triggerall = statetype !=A
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Strong Dash Punch
[State -1, Strong Dash Punch]
type = ChangeState
value = 1160
triggerall = var(7)!= 1
triggerall = command = "QCB_y"
triggerall = statetype !=A
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fierce Dash Punch
[State -1, Fierce Dash Punch]
type = ChangeState
value = 1170
triggerall = var(7)!= 1
triggerall = command = "QCB_z"
triggerall = statetype !=A
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
; Clothesline
[State -1, Clothesline]
type = ChangeState
value = 1201
triggerall = var(7)!= 1
triggerall = statetype !=A
triggerall = Command = "x"||Command = "y"||Command = "z"
trigger1 = StateNo = 100
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(7)!= 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(7)!= 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = var(7)!= 1
triggerall = command = "super jump"
trigger1 = statetype != A
trigger1 = ctrl = 1
;----------------------------------------------------
[State -1, Standing Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && (statetype=S || stateno=5120)
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
attr=SA,AA,AP
stateno=99
slot=0
time=8
;----------------------------------------------------
[State -1, Crouching Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && statetype!=A
trigger1= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
attr=C,AA,AP
stateno=98
slot=0
time=8
;-----------------------------------------------------
[State -1, Air Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && statetype=A
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || stateno=702
attr=SA,AA,AP
stateno=97
forceair=1
slot=0
time=7
;---------------------------------------------------------------------------
[State -1, Counter- Away]
type = ChangeState
value = 700
triggerall = var(7) != 1
triggerall = command = "throw1" && statetype != A
trigger1 = (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger2 = command = "holdfwd" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger3 = command = "holdback" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
;---------------------------------------------------------------------------
[State -1, Counter- Stun]
type = ChangeState
value = 701
triggerall = var(7) != 1
triggerall = command = "throw2" && statetype != A
trigger1 = (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger2 = command = "holdfwd" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger3 = command = "holdback" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
;---------------------------------------------------------------------------
[State -1, Guard Breaker]
type = ChangeState
value = 710
triggerall = var(7)!= 1  && p2stateno != 720 && power>= 180
trigger1 = ctrl && (command = "y" && command = "b") && statetype != A
;---------------------------------------------------------------------------
[State -1, Back Side Step]
type = ChangeState
value = 718
triggerall = var(7)!= 1
trigger1 = ctrl && (command = "x" && command = "a" && command = "holdback") && statetype != A
;---------------------------------------------------------------------------
[State -1, Forward Side Step]
type = ChangeState
value = 719
triggerall = var(7)!= 1
trigger1 = ctrl && (command = "x" && command = "a" && command = "holdfwd") && statetype != A
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(7) != 1
triggerall = command = "throw1"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = ctrl
;--------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(7) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 10

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 400)
trigger2 = movecontact
trigger3 = (stateno = 230||stateno = 430)
trigger3 = movecontact
;---------------------------------------------------------------------------
;Stand Fierce Punch
;立ち強パンチ
[State -1, Stand Fierce Punch]
type = ChangeState
value = 220
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,211])||(stateno = [400,411])
trigger2 = movecontact
trigger3 = (stateno = [230,240])||(stateno = [430,440])
trigger3 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && movecontact
trigger2 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200|| stateno = 400
trigger2 = movecontact
trigger3 = (stateno = 230)||(stateno = 430)
trigger3 = movecontact
;---------------------------------------------------------------------------
;Standing Fierce Kick
;立ち強キック
[State -1, Standing Fierce Kick]
type = ChangeState
value = 250
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,211])||(stateno = [400,241])
trigger2 = movecontact
trigger3 = (stateno = [230,240])||(stateno = [430,440])
trigger3 = movecontact
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(7) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(7) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 =(stateno = 200)||(stateno = 400)
trigger2 = movecontact
trigger3 =(stateno = 230)||(stateno = 430)
trigger3 = movecontact
;---------------------------------------------------------------------------
;Crouching Fierce Punch
;しゃがみ強パンチ
[State -1, Crouching Fierce Punch]
type = ChangeState
value = 420
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 =(stateno = [200,211])||(stateno = [400,410])
trigger2 = movecontact
trigger3 =(stateno = [230,240])||(stateno = [430,440])
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger3 = (stateno = 230)||(stateno = 430)
trigger3 = movecontact
;---------------------------------------------------------------------------
;Crouching Fierce Kick
;しゃがみ強キック
[State -1, Crouching Fierce Kick]
type = ChangeState
value = 450
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,211])||(stateno = [400,410])
trigger2 = movecontact
trigger3 = (stateno = [230,240])||(stateno = [430,440])
trigger3 = movecontact
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(7) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(7) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Fierce Punch
[State -1, Jump Fierce Punch]
type = ChangeState
value = 620
triggerall = var(7) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(7) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(7) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Fierce Kick
;空中強キック
[State -1, Jump Fierce Kick]
type = ChangeState
value = 650
triggerall = var(7) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
;=============================================================================



















;=========================A.I.===============================================
;===========================================================================
;---------------------------------------------------------------------------
;Block
[State -1, guard]
type=changestate
value=120
trigger1= var(7)>=1
trigger1= roundstate=2 && (stateno!=[120,155]) && ctrl
trigger1= inguarddist && (prevstateno!=[97,99])
trigger1=!(enemynear,hitdefattr=SCA,AT)
;--------------------------------------------------------------------------

[State -1, dash]
type=changestate
value=105
triggerall= var(7)>=1 && numenemy
triggerall= statetype=S && roundstate=2 && ctrl
triggerall= (p2bodydist x=[0,80]) && backedgebodydist>80 && (stateno!=[100,105])
trigger1= enemynear,movetype=A && random<50
trigger2= enemynear,stateno=5120 && enemynear,animtime=-3 && random<500

;Taunt
[State -1, taunt]
type=changestate
value=195
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
trigger1= p2dist x>160 && (enemynear,vel y>0) && ctrl && random<100
trigger1= !(enemynear,ctrl) && (enemynear,movetype=H)
;---------------------------------------------------------------------------
;A.I. Parry
;---------------------------------------------------------------------------
[State -1, Standing Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<200) || ((stateno=[98,99]) && random<333)
trigger1= var(21):=1
attr=SA,AA,AP
stateno=99
slot=0
time=8

[State -1, Crouching Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<200) || ((stateno=[98,99]) && random<333)
trigger1= var(21):=2
attr=C,AA,AP
stateno=98
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl && random<200) || (stateno=97 && random<333)
trigger1= var(21):=3
attr=SA,AA,AP
stateno=97
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[97,99]) && stateno!=5120) || var(20)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= var(7)<= 0 && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Counter]
type=changestate
value=ifelse(random<333,701,700)
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1500
triggerall= (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153)
trigger1= (p2bodydist x=[0,60]) && random<33
;--------------------------------------------------------------------------
[State -1, Guard Breaker]
type=changestate
value=710
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && p2stateno!= 720  && power>=180
trigger1= ctrl && (p2bodydist x=[50,110])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && power >=750 && random<75
trigger2= ctrl && p2statetype=L && (p2bodydist x=[50,110]) && power >=750 && random<75
;--------------------------------------------------------------------------
[State -1, Back Step]
type=changestate
value=718;ifelse(random<600,718,719)
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && ctrl; && random<50
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA,AT) && p2bodydist x<80 && random<333
trigger2 = ctrl || stateno = 21 || stateno = 100
trigger2 = P2bodydist X >= 100 && Random = [640,650]
trigger3 = ctrl || stateno = 21 || stateno = 100
trigger3 = P2bodydist X >= 50 && Random = [650,700]
trigger3 = inguarddist
;--------------------------------------------------------------------------
[State -1, Side Step]
type=changestate
value=719;ifelse(random<600,718,719)
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && ctrl; && random<50
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA,AP) && p2bodydist x<80 && random<333
trigger2 = ctrl || stateno = 21 || stateno = 100
trigger2 = P2bodydist X >= 100 && Random = [640,650]
trigger3 = ctrl || stateno = 21 || stateno = 100
trigger3 = P2bodydist X >= 50 && Random = [650,700]
trigger3 = inguarddist
;---------------------------------------------------------------------------
[State -1, Grapple]
type=changestate
value=800
triggerall= var(7)>=1 && roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,45]) && (p2bodydist y=[-25,25]) && random<250
trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,36]) && (p2bodydist y=[-25,25]) && random<500
;---------------------------------------------------------------------------
[State -1, Walking Grapple]
type = ChangeState
value = 810
triggerall = stateno!= 4000
;triggerall = stateno!= [1400,1439]
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,movetype!=A) && (enemynear,statetype!=L) && (p2stateno!=[5030,5119])
triggerall= (p2dist x=[0,110]) && (p2stateno!=40)
triggerall= ifelse((enemynear,vel y>0),(enemynear,vel x<0),(enemynear,vel y>=0))
trigger1= ctrl && (p2bodydist x=[ceil(0*const(size.xscale)),ceil(110*const(size.xscale))]) && (p2dist y=[-5,5]) && random<150
trigger2= ctrl && (p2stateno=[120,155]) && p2statetype!=A && random<250
trigger3= ctrl && (p2bodydist x=[ceil(0*const(size.xscale)),ceil(110*const(size.xscale))]) && (p2dist y=[-5,5]) && random<150
;trigger4= (stateno=[220,225]) && (p2bodydist x=[ceil(0*const(size.xscale)),ceil(110*const(size.xscale))]) && movehit && random<200
;trigger5= (stateno=[420,425]) && (p2bodydist x=[ceil(0*const(size.xscale)),ceil(110*const(size.xscale))]) && movehit && random<200

;===========================================================================
;Final Muscle Bomber
[State -1, FinalMuscleBomber]
type=changestate
value=4000
triggerall = stateno!= 4000
triggerall = stateno!= [800,899]
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=3000
triggerall= !(enemynear,ctrl) && (enemynear,movetype!=A) && (enemynear,statetype!=L) && (p2stateno!=[5030,5119])
triggerall= (p2dist x=[0,110]) && (p2stateno!=40)
triggerall= ifelse((enemynear,vel y>0),(enemynear,vel x<0),(enemynear,vel y>=0))
trigger1= ctrl && (p2bodydist x=[0,55]) && (p2bodydist y=[-25,25]) && random<250
trigger2= ctrl && (p2stateno!=[120,155]) && (p2bodydist x=[0,50]) && (p2bodydist y=[-25,25]) && random<500
trigger3= (stateno=[220,225]) && (p2bodydist x=[ceil(0*const(size.xscale)),ceil(110*const(size.xscale))])&& movehit && random<200
trigger4= (stateno=[420,425]) && (p2bodydist x=[ceil(0*const(size.xscale)),ceil(110*const(size.xscale))]) && movehit && random<200
;---------------------------------------------------------------------------
;Double Muscle Bomber (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, DoubleMuscleBomber]
type = ChangeState
value = 3060
triggerall= var(7)>=1 && statetype!=A && power>=2000 && roundstate=2
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=A)&& (p2statetype!=L) && ctrl
triggerall= (p2bodydist x=[ceil(0*const(size.xscale)),ceil(50*const(size.xscale))])
trigger1= ctrl && random<50
trigger2= (stateno=210||stateno=220||stateno=250) && movehit && random<50
trigger3= (stateno=[1100,1120]) && movehit && animelemtime(5)>=0 && random<100
trigger4= (stateno=[1150,1170]) && movehit && animelemtime(6)>=0 && random<100
trigger5= (stateno!=[1200,1399]) && (stateno!=[3000,4000]) && (stateno!=[800,899])
;---------------------------------------------------------------------------
;Super Hammer (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, SuperKnuckle]
type=changestate
value=3000
triggerall = stateno!= 3000
triggerall= var(7)>=1 && statetype!=A && power>=1000 && roundstate=2
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,75]) && (p2dist y=[-50,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
;triggerall = stateno!= [1400,1439]
trigger1= ctrl && random<50
trigger2= (stateno=220||stateno=225||stateno=250||stateno=255) && movehit && random<50
trigger3= (stateno=[1000,1999]) && movehit && random<75
;---------------------------------------------------------------------------
;Super Combo (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, SuperCombo]
type=changestate
value=3050
triggerall = stateno!= 3050
triggerall= var(7)>=1 && statetype!=A && power>=1000 && roundstate=2
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,65]) && (p2dist y=[-50,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
;triggerall = stateno!= [1400,1439]
trigger1= ctrl && random<50
trigger2= (stateno=220||stateno=225||stateno=250||stateno=255) && movehit && random<50
;---------------------------------------------------------------------------
;Light Hammer
;カンフー突き手（弱）
[State -1, Light Hammer]
type=changestate
value=1000
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[ceil(20*const(size.xscale)),ceil(120*const(size.xscale))]) && (p2statetype!=L)
trigger1= ctrl && random<33
trigger2= (stateno=[210,215]) && movehit && random<100
trigger3= (stateno=[240,245]) && movehit && random<100
trigger4= (stateno=[220,225]) && movehit && random<333
trigger5= (stateno=[250,255]) && movehit && random<333
;=====================================================================
[State -1, Light Fierball]
type=changestate
value=1100
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2stateno!=[120,155]) && (enemynear,vel y>-1)
trigger1= ctrl && (p2bodydist x=[0,120]) && p2dist y<-80 && random<33
trigger2= (stateno=[210,215]) && movehit && p2bodydist x <= 30 && random<75
trigger3= (stateno=[240,245]) && movehit && p2bodydist x <= 30 && random<75
trigger4= (stateno=[220,225]) && movehit && p2bodydist x <= 30 && random<100
trigger5= (stateno=[250,255]) && movehit && p2bodydist x <= 30 && random<100
;trigger6= ctrl && (p2bodydist x=[0,50]) && random<75
;---------------------------------------------------------------------------
;Light Hammer
[State -1, Light Dash Punch]
type=changestate
value=1150
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,75]) && (p2statetype!=L)
trigger1= ctrl && random<75
trigger2= (stateno=[210,215]) && movehit && (p2bodydist x=[0,30]) && random<75
trigger3= (stateno=[240,245]) && movehit && (p2bodydist x=[0,30]) && random<75
trigger4= (stateno=[220,225]) && movehit && (p2bodydist x=[0,30]) && random<200
trigger5= (stateno=[250,255]) && movehit && (p2bodydist x=[0,30]) && random<200
;---------------------------------------------------------------------------
;Strong Hammer
[State -1, Strong Dash Punch]
type=changestate
value=1160
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,75]) && (p2statetype!=L)
trigger1= ctrl && random<50
trigger2= (stateno=[210,215]) && movehit && (p2bodydist x=[0,30]) && random<75
trigger3= (stateno=[240,245]) && movehit && (p2bodydist x=[0,30]) && random<75
trigger4= (stateno=[220,225]) && movehit && (p2bodydist x=[0,30]) && random<200
trigger5= (stateno=[250,255]) && movehit && (p2bodydist x=[0,30]) && random<200
;---------------------------------------------------------------------------
;Fierce Hammer
[State -1, Fierce Dash Punch]
type=changestate
value=1170
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,75]) && (p2statetype!=L)
trigger1= ctrl && random<50
trigger2= (stateno=[210,215]) && movehit && (p2bodydist x=[0,30]) && random<75
trigger3= (stateno=[240,245]) && movehit && (p2bodydist x=[0,30]) && random<75
trigger4= (stateno=[220,225]) && movehit && (p2bodydist x=[0,30]) && random<200
trigger5= (stateno=[250,255]) && movehit && (p2bodydist x=[0,30]) && random<200
;===========================================================================
[State -1, SLP]
type=changestate
value=200
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,55]) && (p2bodydist y=[-50,50]) && p2statetype!=L && (p2statetype!=C)
trigger1= ctrl && random<300
;---------------------------------------------------------------------------
[State -1, SMP]
type=changestate
value=210
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,82]) && (p2bodydist y=[-50,50]) && (p2statetype=S)
trigger1= ctrl && random<100
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<500
;---------------------------------------------------------------------------
[State -1, SHP]
type=changestate
value=220
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,103]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<75
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<75
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<75
trigger4= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<500
trigger5= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<500
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, SLK]
type=changestate
value=230
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<300

[State -1, SMK]
type=changestate
value=240
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<100
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<500


[State -1, SHK]
type=changestate
value=250
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,62]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<20
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<75
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<75
trigger4= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<500
trigger5= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<500

[State -1, CLP]
type=changestate
value=400
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<300

[State -1, CMP]
type=changestate
value=410
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,45]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<75
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<500

[State -1, CHP]
type=changestate
value=420
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<50
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<75
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<75
trigger4= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<500
trigger5= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<500

[State -1, CLK]
type=changestate
value=430
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,54]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && random<300

[State -1, CMK]
type=changestate
value=440
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,80]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && random<75
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<500

[State -1, CHK]
type=changestate
value=450
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,80]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && random<100
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<75
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<75
trigger4= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<500
trigger5= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<500

[State -1, ALP]
type=changestate
value=600
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,84]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<50

[State -1, AMP]
type=changestate
value=610
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<75
trigger2= (stateno=[600,605]) && movehit && random<500
trigger3= (stateno=[630,635]) && movehit && random<500

[State -1, AHP]
type=changestate
value=620
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,110]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<100
trigger2= (stateno=[600,605]) && movehit && random<75
trigger3= (stateno=[630,635]) && movehit && random<75
;trigger4= (stateno=[610,615]) && movehit && random<500
;trigger5= (stateno=[640,645]) && movehit && random<500

[State -1, ALK]
type=changestate
value=630
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<50


[State -1, AMK]
type=changestate
value=640
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[-50,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<75
trigger2= (stateno=[600,605]) && movehit && random<500
trigger3= (stateno=[630,635]) && movehit && random<500

[State -1, AHK]
type=changestate
value=650
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<100
trigger2= (stateno=[600,605]) && movehit && random<75
trigger3= (stateno=[630,635]) && movehit && random<75
;trigger4= (stateno=[610,615]) && movehit && random<500
;trigger5= (stateno=[640,645]) && movehit && random<500


