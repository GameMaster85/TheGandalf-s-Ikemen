; Sean by Buckus
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
name="QCFHCB+2p"
command=~D,F,D,B,x+y
time=40
[Command]
name="QCFHCB+2p"
command=~D,F,D,B,x+z
time=40
[Command]
name="QCFHCB+2p"
command=~D,F,D,B,y+z
time=40

[Command]
name="2QCF+2k"
command=~D,DF,F,D,DF,a+b
time=30
[Command]
name="2QCF+2k"
command=~D,DF,F,D,DF,a+c
time=30
[Command]
name="2QCF+2k"
command=~D,DF,F,D,DF,b+c
time=30

[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,x+y
time=30
[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,x+z
time=30
[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,y+z
time=30

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
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,a
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,b
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,c
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,~a
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,~b
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,~c
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

[Command]
name = "overdrive"
command = ~D,DF,F,D,DF,F,s
time = 30
[Command]
name = "overdrive"
command = ~D,DF,F,D,DF,F,~s
time = 30

;===============================================================================
;EX-Special Motions
;===============================================================================

[Command]
name = "EXSpecial2"
command = ~D,DB,B,a+b
time = 25
[Command]
name = "EXSpecial2"
command = ~D,DB,B,a+c
time = 25
[Command]
name = "EXSpecial2"
command = ~D,DB,B,b+c
time = 25

[Command]
name = "EXSpecial3"
command = ~D,DF,F,x+y
time = 25
[Command]
name = "EXSpecial3"
command = ~D,DF,F,x+z
time = 25
[Command]
name = "EXSpecial3"
command = ~D,DF,F,y+z

;===============================================================================
;Special Motions
;===============================================================================

[Command]
name = "HCF_x"
command = ~B,DB,D,DF,F,x
time = 25
[Command]
name = "HCF_y"
command = ~B,DB,D,DF,F,y
time = 25
[Command]
name = "HCF_z"
command = ~B,DB,D,DF,F,z
time = 25
[Command]
name = "HCF_x"
command = ~B,DB,D,DF,F,~x
time = 25
[Command]
name = "HCF_y"
command = ~B,DB,D,DF,F,~y
time = 25
[Command]
name = "HCF_z"
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
name = "QCF_a"
command = D,DF,F,a
time = 20
[Command]
name = "QCF_b"
command = D,DF,F,b
time = 20
[Command]
name = "QCF_c"
command = D,DF,F,c
time = 20
[Command]
name = "QCF_a"
command = D,DF,F,~a
time = 20
[Command]
name = "QCF_b"
command = D,DF,F,~b
time = 20
[Command]
name = "QCF_c"
command = D,DF,F,~c
time = 20

[Command]
name = "QCB_a"
command = ~D,DB,B,a
time = 20
[Command]
name = "QCB_b"
command = ~D,DB,B,b
time = 20
[Command]
name = "QCB_c"
command = ~D,DB,B,c
time = 20
[Command]
name = "QCB_a"
command = ~D,DB,B,~a
time = 20
[Command]
name = "QCB_b"
command = ~D,DB,B,~b
time = 20
[Command]
name = "QCB_c"
command = ~D,DB,B,~c
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
;Lvl 3 Beatdown (uses one super bar)
;�X�}�b�V���E�J���t�[�E�E�b�p�[�i�Q�[�W���x���P�j
[State -1, Lvl 3 Beatdown]
type = ChangeState
value = 4000
triggerall = var(7)!= 1
triggerall = command = "QCFHCB+2p"
triggerall = power >= 3000
triggerall = statetype!=A && stateno!=4000
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
;trigger4 = var(3)
;---------------------------------------------------------------------------
;Lvl2 Super Combo
;�X�}�b�V���E�J���t�[�E�E�b�p�[�i�Q�[�W���x���P�j
[State -1, Lvl2 Super Combo]
type = ChangeState
value = 3080
triggerall = var(7) != 1
triggerall = command = "2QCF+2k"
triggerall = power >= 2000
triggerall = statetype != A && stateno!=3080
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Dragon Smash
;�X�}�b�V���E�J���t�[�E�E�b�p�[�i�Q�[�W���x���P�j
[State -1, Dragon Smash]
type = ChangeState
value = 3070
triggerall = var(7) != 1
triggerall = command = "2QCB+2p"
triggerall = power >= 2000
triggerall = statetype != A && stateno!=3070
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Super Combo (uses one super bar)
;�X�}�b�V���E�J���t�[�E�E�b�p�[�i�Q�[�W���x���P�j
[State -1, Super Combo]
type = ChangeState
value = 3060
triggerall = var(7) != 1
triggerall = command = "2QCB_k"
triggerall = power >= 1000
triggerall = statetype != A && stateno!=3060
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;�X�}�b�V���E�J���t�[�E�E�b�p�[�i�Q�[�W���x���P�j
[State -1, Shoryu Cannon]
type = ChangeState
value = 3050
triggerall = var(7) != 1
triggerall = command = "2QCB_p"
triggerall = power >= 1000
triggerall = statetype != A && stateno!=3050
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;�O��J���t�[�˂���i�Q�[�W���x���P�j
[State -1, HadouBurst]
type = ChangeState
value = 3000
triggerall = var(7) != 1
triggerall = command = "2QCF_p"
triggerall = power >= 1000
triggerall = statetype != A && stateno!=3000
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, EXSpecial2]
type = null;ChangeState
value = 2500
triggerall = var(7) != 1
triggerall = power>=750
triggerall = command = "EXSpecial2"
trigger1 = statetype = S
trigger1 = var(1)
trigger2 = statetype = A && ctrl
trigger3 = (stateno = [200,699]) && movecontact
;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, EXSpecial3]
type = null;ChangeState
value = 2550
triggerall = var(7) != 1
triggerall = power>=750
triggerall = command = "EXSpecial3"
trigger1 = statetype != A
trigger1 = var(1)
;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
;�����J���t�[�R��i�Q�[�W���x���P�^�R�j
[State -1, Fierce Shoryuken]
type = ChangeState
value = 1070
triggerall = var(7) != 1
triggerall = command = "upper_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Knee
;�J���t�[�R��i��j
[State -1, Light Shoryuken]
type = ChangeState
value = 1050
triggerall = var(7) != 1
triggerall = command = "upper_x"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;�J���t�[�R��i��j
[State -1, Strong Shoryuken]
type = ChangeState
value = 1060
triggerall = var(7) != 1
triggerall = command = "upper_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fierce Tackle]
type = ChangeState
value = 1020
triggerall = var(7) != 1
triggerall = command = "HCF_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Tackle]
type = ChangeState
value = 1000
triggerall = var(7) != 1
triggerall = command = "HCF_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, Strong Tackle]
type = ChangeState
value = 1010
triggerall = var(7) != 1
triggerall = command = "HCF_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fierce Flip Kick
;����J���t�[�E�E�b�p�[
[State -1, Fierce Flip Kick]
type = ChangeState
value = 1120
triggerall = var(7) != 1
triggerall = command = "QCF_c"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Flip Kick
;�J���t�[�E�E�b�p�[�i��j
[State -1, Light Flip Kick]
type = ChangeState
value = 1100
triggerall = var(7) != 1
triggerall = command = "QCF_a"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Flip Kick
;�J���t�[�E�E�b�p�[�i���j
[State -1, Strong Flip Kick]
type = ChangeState
value = 1110
triggerall = var(7) != 1
triggerall = command = "QCF_b"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fierce Tackle]
type = ChangeState
value = 1250
triggerall = var(7) != 1
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Tackle]
type = ChangeState
value = 1260
triggerall = var(7) != 1
triggerall = command = "QCB_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, Strong Tackle]
type = ChangeState
value = 1270
triggerall = var(7) != 1
triggerall = command = "QCB_z"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Hurricane Kick]
type = ChangeState
value = 1200
triggerall = var(7) != 1
triggerall = command = "QCB_a"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, Strong Hurricane Kick]
type = ChangeState
value = 1210
triggerall = var(7) != 1
triggerall = command = "QCB_b"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fast Hurricane Kick]
type = ChangeState
value = 1220
triggerall = var(7) != 1
triggerall = command = "QCB_c"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;LJHK-A
[State -1, Light Hurricane Kick Air]
type = null;ChangeState
value = 1230
triggerall = var(7) != 1
triggerall = command = "QCB_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;SJHK-A
[State -1, Strong Hurricane Kick Air]
type = null;ChangeState
value = 1240
triggerall = var(7) != 1
triggerall = command = "QCB_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;FJHK-A
[State -1, Fierce Hurricane Kick Air]
type = null;ChangeState
value = 1250
triggerall = var(7) != 1
triggerall = command = "QCB_c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(7) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(7) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------------------
[State -1, Standing Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && (statetype=S || stateno=5120)
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || stateno=5120
trigger1= var(21):=1
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
trigger1= ctrl || stateno=5120
trigger1= var(21):=2
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
trigger1= ctrl
trigger1= var(21):=3
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
triggerall = var(7)!= 1  && p2stateno != 720 && power>= 500
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
;Slam
;����
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(7) != 1
triggerall = command = "recovery"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = ctrl
;---------------------------------------------------------------------------
;Throw
;����
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(7) != 1
triggerall = command = "counter"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = ctrl
;===============================================================================
; Super Jump
;===============================================================================
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = var(7) != 1
triggerall = command = "super jump"
trigger1 = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;������p���`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(7) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
;trigger3 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Stand Strong Punch
;�������p���`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200||stateno = 400) && movecontact
trigger3 = (stateno = 230||stateno = 430) && movecontact
;trigger4 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Stand Fierce Punch
;�������p���`
[State -1, Stand Fierce Punch]
type = ChangeState
value = 220
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,211])&& movecontact||(stateno = [400,411]) && movecontact
trigger3 = (stateno = [230,240])&& movecontact||(stateno = [430,440])&& movecontact
;trigger4 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Stand Light Kick
;������L�b�N
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && time > 9
;trigger3 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Standing Strong Kick
;�������L�b�N
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact|| stateno = 400 && movecontact
trigger3 = (stateno = 230) && movecontact||(stateno = 430) && movecontact
;trigger4 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Standing Fierce Kick
;�������L�b�N
[State -1, Standing Fierce Kick]
type = ChangeState
value = 250
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,211]) && movecontact||(stateno = [400,441]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
;trigger4 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Taunt
;����
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(7) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;���Ⴊ�ݎ�p���`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(7) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Crouching Strong Punch
;���Ⴊ�݋��p���`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 =(stateno = 200)||(stateno = 400) && movecontact
trigger3 =(stateno = 230)||(stateno = 430) && movecontact
;trigger4 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Crouching Fierce Punch
;���Ⴊ�݋��p���`
[State -1, Crouching Fierce Punch]
type = ChangeState
value = 420
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 =(stateno = [200,211])||(stateno = [400,410]) && movecontact
trigger3 =(stateno = [230,240])||(stateno = [430,440]) && movecontact
;trigger4 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Crouching Light Kick
;���Ⴊ�ݎ�L�b�N
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact
;trigger3 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Crouching Strong Kick
;���Ⴊ�݋��L�b�N
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400 && movecontact
trigger3 = (stateno = 230)||(stateno = 430) && movecontact
;trigger4 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Crouching Fierce Kick
;���Ⴊ�݋��L�b�N
[State -1, Crouching Fierce Kick]
type = ChangeState
value = 450
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,211])||(stateno = [400,410]) && movecontact
trigger3 = (stateno = [230,240])||(stateno = [430,440]) && movecontact
;trigger4 = numhelper(2005)>=1 && (var(1)||var(2))
;---------------------------------------------------------------------------
;Jump Light Punch
;�󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(7) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
;trigger3 = numhelper(2005)>=1 && (stateno=[600,650]) && movecontact
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
;trigger3 = numhelper(2005)>=1 && (stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
;Jump Fierce Punch
[State -1, Jump Fierce Punch]
type = ChangeState
value = 620
triggerall = var(7) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno=600||stateno=610||stateno=630||stateno=640 ;jump_x or jump_a
trigger2 = movecontact
;trigger3 = numhelper(2005)>=1 && (stateno=[600,650]) && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(7) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = numhelper(2005)>=1 && (stateno=[600,650]) && movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;�󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(7) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
;trigger3 = numhelper(2005)>=1 && (stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
;Jump Fierce Kick
;�󒆋��L�b�N
[State -1, Jump Fierce Kick]
type = ChangeState
value = 650
triggerall = var(7) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno=600||stateno=610||stateno=630||stateno=640 ;jump_x or jump_a
trigger2 = movecontact
;trigger3 = numhelper(2005)>=1 && (stateno=[600,650]) && movecontact
;=============================================================================













;=========================A.I.===============================================
;===========================================================================
;---------------------------------------------------------------------------
;Block
[State -1, Guard]
type=changestate
value=120
trigger1= var(7)>=1
trigger1= roundstate=2 && inguarddist
trigger1= ctrl||stateno=20||stateno=100
trigger1= (stateno!=[120,155])
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<120)
trigger1= statetype!=A || p2statetype=A
trigger1= random<1000;ifelse((p2stateno=[200,699]), 500, ifelse((p2stateno=[1000,2999]), 750, 1000))

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
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<500) || ((stateno=[98,99]) && random<333)
trigger1= var(21):=1
attr=SA,AA,AP
stateno=99
slot=0
time=8

[State -1, Crouching Parry]
type=hitoverride
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<500) || ((stateno=[98,99]) && random<333)
trigger1= var(21):=2
attr=C,AA,AP
stateno=98
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl && random<500) || (stateno=97 && random<333)
trigger1= var(21):=3
attr=SA,AA,AP
stateno=97
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[97,99]) && stateno!=5120)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= var(7)<= 0 && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0

;---------------------------------------------------------------------------
[State -1, Counter]
type=changestate
value=ifelse(random<333,701,700)
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1500
triggerall= (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153)
trigger1= (p2bodydist x=[0,60]) && random<33
;--------------------------------------------------------------------------
[State -1, Guard Breaker]
type=Changestate
value=710
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && p2stateno!= 720  && power>=500
trigger1= ctrl && (p2bodydist x=[0,110])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && power >=750 && random<75
trigger2= ctrl && (p2bodydist x=[0,110])
trigger2= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && power <750 && random<15
trigger3= ctrl && p2statetype=L && (p2bodydist x=[0,110]) && power >=750 && random<75
;--------------------------------------------------------------------------
[State -1, Side Step]
type=changestate
value=ifelse(random<600,718,719)
trigger1= var(7)>=1 && roundstate=2 && statetype!=A && ctrl && random<50
trigger1= enemynear,movetype=A && p2bodydist x<80
;----------------------------------------------------------------------------
;Throw
[State -1, throw]
type=changestate
value=ifelse(random<333,900,800)
triggerall= var(7)>=1 && roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,21]) && (p2bodydist y=[-25,25]) && random<100
trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,36]) && (p2bodydist y=[-25,25]) && random<500
;---------------------------------------------------------------------------
[State -1, Lvl3BeatDown]
type=changestate
value=4000
triggerall = stateno!= 4000
triggerall = stateno!= [1000,1039]
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=3000
triggerall= !(enemynear,ctrl) && (enemynear,movetype!=A) && (enemynear,statetype!=L) && (p2stateno!=[5030,5119])
triggerall= (p2dist x=[0,100]) && (p2stateno!=40)
triggerall= ifelse((enemynear,vel y>0),(enemynear,vel x<0),(enemynear,vel y>=0))
trigger1= ctrl && (enemynear,movetype=H) && (p2bodydist x=[0,80]) && (p2dist y=[-5,5]) && random<33
trigger2= ctrl && (p2stateno=[120,155]) && p2statetype!=A && random<250
trigger3= ctrl && (p2bodydist x=[0,90]) && p2statetype=S && random<250
trigger4= (stateno=220||stateno=225||stateno=250||stateno=255||stateno=420) && p2statetype!=A && movehit && random<150
;---------------------------------------------------------------------------
;Super Combo (uses one super bar)
;�X�}�b�V���E�J���t�[�E�E�b�p�[�i�Q�[�W���x���P�j
[State -1, Lvl2SuperCombo]
type=changestate
value=3080
triggerall = stateno!= 3080
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=2000
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,70]) && (p2dist y=[-50,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
triggerall = stateno!= [1000,1039]
trigger1= (stateno=220||stateno=225||stateno=250||stateno=255||stateno=420) && p2bodydist x<45 && movehit && random<50
trigger2= stateno=3060 && movehit && anim=3061 && animelemtime(24)>=0 && random<33
trigger3= (stateno=[1000,1999]) && movehit && random<100
;---------------------------------------------------------------------------
;Dragon Smash
[State -1, DragonSmash]
type=changestate
value=3070
triggerall = stateno!= 3070
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=2000
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall = stateno!= [1000,1039]
trigger1= (stateno=220||stateno=225||stateno=250||stateno=255||stateno=420) && p2bodydist x<45 && movehit && random<50
trigger2= stateno=3060 && movehit && anim=3061 && animelemtime(24)>=0 && random<33
trigger3= (stateno=[1000,1999]) && movehit && random<100
;---------------------------------------------------------------------------
;Super Combo (uses one super bar)
;�X�}�b�V���E�J���t�[�E�E�b�p�[�i�Q�[�W���x���P�j
[State -1, SuperCombo]
type=changestate
value=3060
triggerall = stateno!= 3060
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1000
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L) && (p2statetype!=A)
triggerall= (p2bodydist x=[0,85]) && (p2dist y=[-50,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
triggerall = stateno!= [1000,1039]
trigger1= (stateno=220||stateno=225||stateno=250||stateno=255||stateno=420) && movehit && random<50
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;�X�}�b�V���E�J���t�[�E�E�b�p�[�i�Q�[�W���x���P�j
[State -1, ShouryuCannon]
type=changestate
value=3050
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=2000
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
triggerall = stateno!= [1000,1039]
triggerall = stateno!= 3050
trigger1= (stateno=220||stateno=225||stateno=250||stateno=255||stateno=420) && p2bodydist x<45 && movehit && random<50
trigger2= ((stateno=[1100,1110]) || (stateno=[1300,1310])) && movehit && random<75
trigger3= stateno=3060 && movehit && anim=3061 && animelemtime(24)>=0 && random<33
trigger4= (stateno=[1000,1999]) && movehit && random<100

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;�O��J���t�[�˂���i�Q�[�W���x���P�j
[State -1, HadouBurst]
type=changestate
value=3000
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1000
triggerall= !numhelper(3010)
triggerall = stateno!= [1000,1039]
triggerall = stateno!= 3000
triggerall= !(enemynear,ctrl) && ((p2stateno!=[120,155])||p2statetype=A)
triggerall= (p2bodydist x=[0,100]) && (p2statetype!=L)
triggerall= (p2dist y=[-100,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-2)
trigger1= ctrl && (p2bodydist x=[15,125]) && (p2movetype=H) && random<50
trigger2= (stateno=220||stateno=225||stateno=250||stateno=255||stateno=420) && movehit && random<50
trigger3= (stateno=[1000,1999]) && movehit && random<45
;------------------------------------------------------------------------
;Light Tackle
[State -1, Light Tackle]
type = ChangeState
value = 1000
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall=(stateno!=[200,211])||(stateno!=[400,411])||(stateno!=[230,241])||(stateno!=[430,441])
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)&& (stateno!=[1000,2999])
trigger1= ctrl && p2bodydist x<60 && random<15
trigger2= (stateno=[220,225])||(stateno=420)
trigger2= movehit && p2bodydist x<60 && random<33
trigger3= (stateno=[250,255])
trigger3= movehit && p2bodydist x<60 && random<33
trigger4= (stateno=[450,455])
trigger4= movehit && p2bodydist x<30 && random<500
;------------------------------------------------------------------------
;Strong Tackle
[State -1, Strong Tackle]
type = ChangeState
value = 1010
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (stateno!=[200,211])||(stateno!=[400,411])||(stateno!=[430,441])
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)&& (stateno!=[230,241])
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)&& (stateno!=[1000,2999])
trigger1= ctrl && (p2bodydist x=[40,70]) && random<15
trigger2= (stateno=[220,225])||(stateno=420)
trigger2= movehit && p2bodydist x<80 && random<33
trigger3= (stateno=[250,255])
trigger3= movehit && p2bodydist x<80 && random<33
trigger4= (stateno=[450,455])
trigger4= movehit && p2bodydist x<80 && random<500
;------------------------------------------------------------------------
;Fierce Tackle
[State -1, Fierce Tackle]
type = ChangeState
value = 1020
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (stateno!=[200,211])||(stateno!=[400,411])&& (stateno!=[230,241])||(stateno!=[430,441])
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2) && (stateno!=[1000,2999])
trigger1= ctrl && (p2bodydist x=[40,90]) && random<20
trigger2= (stateno=[220,225])||(stateno=420)
trigger2= movehit && p2bodydist x<60 && random<33
trigger3= (stateno=[250,255])
trigger3=  movehit && p2bodydist x<60 && random<33
;------------------------------------------------------------------------
[State -1, Shouryuken]
type = ChangeState
value = 1050
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<50 && random<100
trigger2= (stateno=[220,225])||(stateno=420)||(stateno=[250,255])
trigger2= movehit && p2bodydist x<30 && random<75
trigger3= (stateno=[210,215])||(stateno=410)||(stateno=[240,245])||(stateno=440)
trigger3= movehit && p2bodydist x<30 && random<33
trigger4= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
;trigger4= ctrl && prevstateno=1200 && random<200
;------------------------------------------------------------------------
[State -1, Shouryuken]
type = ChangeState
value = 1060
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<50 && random<50
trigger2= (stateno=[220,225])||(stateno=420)||(stateno=[250,255])
trigger2= movehit && p2bodydist x<30 && random<75
trigger3= (stateno=[210,215])||(stateno=410)||(stateno=[240,245])||(stateno=440)
trigger3= movehit && p2bodydist x<30 && random<33
trigger4= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
;trigger4= ctrl && prevstateno=1200 && random<200
;------------------------------------------------------------------------
[State -1, Shouryuken]
type = ChangeState
value = 1070
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<50 && random<50
trigger2= (stateno=[220,225])||(stateno=420)||(stateno=[250,255])
trigger2=  movehit && p2bodydist x<30 && random<75
trigger3= (stateno=[210,215])||(stateno=410)||(stateno=[240,245])||(stateno=440)
trigger3= movehit && p2bodydist x<30 && random<33
trigger4= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
;trigger4= ctrl && prevstateno=1200 && random<200
;===========================================================================
[State -1, FlipKick2]
type=changestate
value=ifelse(random<333,1120,1110)
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2dist x =[65,90]) && (p2dist y=[-60,0])
trigger1 = ctrl && p2statetype=C && random<33
;===========================================================================
[State -1, FlipKick]
type=changestate
value=1100
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2dist x =[0,65]) && (p2dist y=[-60,0])
trigger1 = ctrl && p2statetype=C && random<33
trigger2= stateno=220||stateno=250||stateno=420
trigger2= movehit && p2statetype=C && random<100
;---------------------------------------------------------------------------
;Light Tornado
[State -1, LightTornado]
type=changestate
value=1200
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= (stateno=[220,225])||(stateno=420)||(stateno=[250,255])
trigger1=  movehit && p2bodydist x<30 && random<75
trigger2= (stateno=[210,215])||(stateno=410)||(stateno=[240,245])||(stateno=440)
trigger2= movehit && p2bodydist x<30 && random<33

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, StrongTornado]
type=changestate
value=1210
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,80]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= (stateno=[220,225])||(stateno=420)||(stateno=[250,255])
trigger1= movehit && p2bodydist x<45 && random<75
trigger2= (stateno=[210,215])||(stateno=410)||(stateno=[240,245])||(stateno=440)
trigger2= movehit && p2bodydist x<45 && random<33
;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, FierceTornado]
type=changestate
value=1220
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,80]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= (stateno=[220,225])||(stateno=420)||(stateno=[250,255])
trigger1= movehit && p2bodydist x<30 && random<200
trigger2= (stateno=[210,215])||(stateno=410)||(stateno=[240,245])||(stateno=440)
trigger2= movehit && p2bodydist x<30 && random<33
;===========================================================================
;---------------------------------------------------------------------------
[State -1, run]
type=changestate
value=100
trigger1= var(7)>=1 && statetype=S && roundstate=2 && ctrl && random<200
trigger1= (stateno!=[100,105]) && enemynear,movetype!=A && p2bodydist x>120

[State -1, Dash Backward]
type=changestate
value=105
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype=S
triggerall= ctrl && (stateno!=[100,106])
trigger1= (enemynear,movetype=A) && backedgedist>=80 && (p2bodydist x=[80,120]) && (enemynear,vel x)
trigger1= random<ifelse((enemynear,hitdefattr=SC,AT),150,50)
trigger2= (p2bodydist x=[0,80]) && backedgebodydist>=80
trigger2= enemynear,stateno=5120 && p2bodydist x<50 && random<500


;===========================================================================
[State -1, SLP]
type=changestate
value=200
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<100
;---------------------------------------------------------------------------
[State -1, SMP]
type=changestate
value=210
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,53]) && (p2bodydist y=[-50,50]) && (p2statetype=S)
trigger1= ctrl && p2bodydist x<10 && random<20
trigger2= ctrl && p2bodydist x>10 && random<15
trigger3= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<500
trigger4= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<500
;---------------------------------------------------------------------------
[State -1, SHP]
type=changestate
value=220
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && p2bodydist x<10 && random<33
trigger2= ctrl && p2bodydist x>10 && random<15
trigger3= (stateno=[210,215])||(stateno=[410,415]) && movehit && p2bodydist x<50 && random<500
trigger4= (stateno=[240,245])||(stateno=[440,445]) && movehit && p2bodydist x<50 && random<500
;---------------------------------------------------------------------------
[State -1, SHP2]
type=changestate
value=225
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,90]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && p2bodydist x>25 && p2statetype=C && random<70
trigger2= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<50
trigger3= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<50

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, SLK]
type=changestate
value=230
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<100

[State -1, SMK2]
type=changestate
value=240
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && p2bodydist x>15 && random<10
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<500


[State -1, SHK]
type=changestate
value=250
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && p2bodydist x>30 && random<15
trigger2= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<500
trigger3= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<500

[State -1, SHK2]
type=changestate
value=255
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && p2bodydist x>40 && random<60
trigger2= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<500
trigger3= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<500

[State -1, CLP]
type=changestate
value=400
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<50

[State -1, CMP]
type=changestate
value=410
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,45]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && p2bodydist x>30 && random<40
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<500

[State -1, CHP]
type=changestate
value=420
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,33]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && p2bodydist x>30 && random<12
trigger2= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<500
trigger3= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<500

[State -1, CLK]
type=changestate
value=430
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,64]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && random<200

[State -1, CMK]
type=changestate
value=440
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,69]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && p2bodydist x>45 && random<45
trigger2= (stateno=[200,205])||(stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[230,235])||(stateno=[430,435]) && movehit && random<500

[State -1, CHK]
type=changestate
value=450
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,69]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && random<66
trigger2= (stateno=[210,215])||(stateno=[410,415]) && movehit && random<500
trigger3= (stateno=[240,245])||(stateno=[440,445]) && movehit && random<500

[State -1, ALP]
type=changestate
value=600
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,84]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<60

[State -1, AMP]
type=changestate
value=610
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && p2bodydist x>45 && random<75
trigger2= (stateno=[600,605]) && movehit && random<500
trigger3= (stateno=[630,635]) && movehit && random<500

[State -1, AHP]
type=changestate
value=620
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,110]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && p2bodydist x>45 && random<100
trigger2= (stateno=[610,615]) && movehit && random<500
trigger3= (stateno=[640,645]) && movehit && random<500

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
trigger1= ctrl && p2bodydist x>40 && random<75
trigger2= (stateno=[600,605]) && movehit && random<500
trigger3= (stateno=[630,635]) && movehit && random<500

[State -1, AHK]
type=changestate
value=650
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && p2bodydist x>45 && random<100
trigger2= (stateno=[610,615]) && movehit && random<500
trigger3= (stateno=[640,645]) && movehit && random<500

