; Asura by Buckus
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
name="sgs"
command=x,x,F,a,z
time=48
[Command]
name="sgs"
command=x,x,F,a+z
time=40
[Command]
name="sgs"
command=x,x,F+a+z
time=32

[Command]
name="misogi-end"
command=~DF,D,DB,F,a+b
time=40
[Command]
name="misogi-end"
command=~DF,D,DB,F,a+c
time=40
[Command]
name="misogi-end"
command=~DF,D,DB,F,b+c
time=40

[Command]
name="2QCB+2k"
command=~D,DB,B,D,DB,a+b
time=30
[Command]
name="2QCB+2k"
command=~D,DB,B,D,DB,a+c
time=30
[Command]
name="2QCB+2k"
command=~D,DB,B,D,DB,b+c
time=30

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
name="2QCF+2p"
command=~D,DF,F,D,DF,x+y
time=30
[Command]
name="2QCF+2p"
command=~D,DF,F,D,DF,x+z
time=30
[Command]
name="2QCF+2p"
command=~D,DF,F,D,DF,y+z
time=30

[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,a
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,b
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,c
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~a
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~b
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~c
time = 30

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
name="df2p"
command=~F,D,DF,x+y
time=25
[Command]
name="df2p"
command=~F,D,DF,x+z
time=25
[Command]
name="df2p"
command=~F,D,DF,y+z
time=25

[Command]
name="db2p"
command=~B,D,DB,x+y
time=25
[Command]
name="db2p"
command=~B,D,DB,x+z
time=25
[Command]
name="db2p"
command=~B,D,DB,y+z
time=25

[Command]
name="df2k"
command=~F,D,DF,a+b
time=25
[Command]
name="df2k"
command=~F,D,DF,a+c
time=25
[Command]
name="df2k"
command=~F,D,DF,b+c
time=25

[Command]
name="db2k"
command=~B,D,DB,a+b
time=25
[Command]
name="db2k"
command=~B,D,DB,a+c
time=25
[Command]
name="db2k"
command=~B,D,DB,b+c
time=25

[Command]
name = "HCB_x"
command = ~F,DF,D,DB,B,x
time = 25
[Command]
name = "HCB_y"
command = ~F,DF,D,DB,B,y
time = 25
[Command]
name = "HCB_z"
command = ~F,DF,D,DB,B,z
time = 25
[Command]
name = "HCB_x"
command = ~F,DF,D,DB,B,~x
time = 25
[Command]
name = "HCB_y"
command = ~F,DF,D,DB,B,~y
time = 25
[Command]
name = "HCB_z"
command = ~F,DF,D,DB,B,~z
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
command = ~F,D,DF,~x
time = 20
[Command]
name = "upper_y"
command = ~F,D,DF,~y
time = 20
[Command]
name = "upper_z"
command = ~F,D,DF,~z
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
name = "QCF_x"
command = ~D,DF,F,x
time = 20
[Command]
name = "QCF_y"
command = ~D,DF,F,y
time = 20
[Command]
name = "QCF_z"
command = ~D,DF,F,z
time = 20
[Command]
name = "QCF_x"
command = ~D,DF,F,~x
time = 20
[Command]
name = "QCF_y"
command = ~D,DF,F,~y
time = 20
[Command]
name = "QCF_z"
command = ~D,DF,F,~z
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
name = "dive"
command = /DF, c

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
name="holdhadou"
command=/x
time=1
[Command]
name="holdhadou"
command=/y
time=1
[Command]
name="holdhadou"
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
[State -1, ShunGokuSatsu]
type = ChangeState
value = 4000
triggerall = var(7)!= 1
triggerall = command = "sgs"
triggerall = stateno!= 4000 && power >= 3000
triggerall = statetype != A
trigger1= ctrl || ((stateno=[200,450]) && time<=2)
trigger2= (stateno=[200,450])
trigger3= (stateno=[1100,1120])||(stateno=[1250,1270]) && movecontact
;---------------------------------------------------------------------------
[State -1, Misogi-End]
type = ChangeState
value = 4100
triggerall = var(7)!= 1
triggerall = command = "misogi-end"
triggerall = stateno!= 4100 && power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
;trigger4 = var(3)
;---------------------------------------------------------------------------
[State -1, DeadEndScreamer]
type = ChangeState
value = 3200
triggerall = command = "2QCF+2k"
triggerall = stateno!= 3200 && power >= 2000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1000,2999]) && movecontact
trigger4 = (stateno = [3070,3079]) && movecontact
trigger5 = stateno = 3010 && animelemtime(8)>=0 && (enemynear,movetype=H)
trigger6 = stateno = 3161 && movecontact
;---------------------------------------------------------------------------
[State -1, GenocideSlapper]
type = ChangeState
value = 3160
triggerall = var(7)!= 1
triggerall = command = "2QCB+2k"
triggerall = stateno!= 3160 && power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
trigger5 = stateno = 3056 && animelemtime(3)>=1
trigger6 = stateno = 3000 && anim = 3001 && animelemtime(4)>=0 && (enemynear,movetype=H)
;---------------------------------------------------------------------------
[State -1, Lvl2SuperCombo]
type = ChangeState
value = 3150
triggerall = var(7)!= 1
triggerall = command = "2QCF+2k"
triggerall = stateno!= 3150 && power >= 2000
triggerall = statetype != A
triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
trigger5 = stateno = 3056 && animelemtime(3)>=1
trigger6 = stateno = 3000 && anim = 3001 && animelemtime(4)>=0 && (enemynear,movetype=H)
;---------------------------------------------------------------------------
[State -1, Lvl2SuperAirHadouken]
type = ChangeState
value = 3100
triggerall = command = "2QCF+2p"
triggerall = stateno!= 3100 && power >= 2000
triggerall = statetype = A
triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1000,2999]) && movecontact
trigger4 = (stateno = [3070,3079]) && movecontact
trigger5 = stateno = 3010 && animelemtime(8)>=0 && (enemynear,movetype=H)
trigger6 = stateno = 3161 && movecontact
;---------------------------------------------------------------------------
[State -1, SuperHadouken]
type = ChangeState
value = 3000
triggerall = var(7)!= 1
triggerall = command = "2QCF_p"
triggerall = stateno!= 3000 && power >= 1000
triggerall = statetype != A
triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)&&!numhelper(3005)&&!numhelper(3006)&&!numhelper(3007)
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
trigger5 = stateno = 3056 && animelemtime(3)>=1
;---------------------------------------------------------------------------
[State -1, SuperAirHadouken]
type = ChangeState
value = 3010
triggerall = command = "2QCF_p"
triggerall = stateno!= 3000 && power >= 1000
triggerall = statetype = A
triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = (stateno = [1000,2999]) && movecontact
trigger4 = (stateno = [3070,3079]) && movecontact
trigger5 = stateno = 3100 && animelemtime(8)>=0 && (enemynear,movetype=H)
trigger6 = stateno = 3161 && movecontact
;---------------------------------------------------------------------------
[State -1, SuperCombo]
type = ChangeState
value = 3070
triggerall = var(7)!= 1
triggerall = command = "2QCF_k"
triggerall = stateno!= 3070 && power >= 1000
triggerall = statetype != A
triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
trigger5 = stateno = 3056 && animelemtime(3)>=1
trigger6 = stateno = 3000 && anim = 3001 && animelemtime(4)>=0 && (enemynear,movetype=H)
;---------------------------------------------------------------------------
[State -1, SuperWallSmash]
type = ChangeState
value = 3050
triggerall = var(7)!= 1
triggerall = command = "2QCB_p"
triggerall = stateno!= 3050 && power >= 1000
triggerall = statetype != A
triggerall = stateno!=3000
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;===========================================================================
[State -1, Warp]
type=changestate
value=1300
triggerall = var(7) != 1
triggerall= command="df2p" || command="db2p" || command="df2k" || command="db2k"
triggerall= roundstate=2 && statetype!=A
trigger1= ctrl || ((stateno=[200,299]) && time<=2)
trigger2 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Light Shoryuken]
type = ChangeState
value = 1050
triggerall = var(7) != 1
triggerall = command = "upper_x"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Strong Shoryuken]
type = ChangeState
value = 1060
triggerall = var(7) != 1
triggerall = command = "upper_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Fierce Shoryuken]
type = ChangeState
value = 1070
triggerall = var(7) != 1
triggerall = command = "upper_z"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Light WallSmash]
type = ChangeState
value = 1200
triggerall = var(7) != 1
triggerall = command = "HCB_x"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Strong WallSmash]
type = ChangeState
value = 1210
triggerall = var(7) != 1
triggerall = command = "HCB_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Fierce WallSmash]
type = ChangeState
value = 1220
triggerall = var(7) != 1
triggerall = command = "HCB_z"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Light HurricaneCutter]
type = ChangeState
value = 1100
triggerall = var(7) != 1
triggerall = command = "QCB_a"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Strong HurricaneCutter]
type = ChangeState
value = 1110
triggerall = var(7) != 1
triggerall = command = "QCB_b"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Fierce HurricaneCutter]
type = ChangeState
value = 1120
triggerall = var(7) != 1
triggerall = command = "QCB_c"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Light Hadouken]
type = ChangeState
value = 1000
triggerall = var(7)!= 1
triggerall = command = "QCF_x"
triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Strong Hadouken]
type = ChangeState
value = 1010
triggerall = var(7)!= 1
triggerall = command = "QCF_y"
triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Fierce Hadouken]
type = ChangeState
value = 1020
triggerall = var(7)!= 1
triggerall = command = "QCF_z"
triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Light HadouSmash]
type = ChangeState
value = 1150
triggerall = var(7)!= 1
triggerall = command = "QCF_x" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Strong HadouSmash]
type = ChangeState
value = 1160
triggerall = var(7)!= 1
triggerall = command = "QCF_y" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Fierce HadouSmash]
type = ChangeState
value = 1170
triggerall = var(7)!= 1
triggerall = command = "QCF_z" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Light DoubleKick]
type = ChangeState
value = 1250
triggerall = var(7) != 1
triggerall = command = "QCF_a"
trigger1 = var(1) ;Use combo condition (above) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Strong DoubleKick]
type = ChangeState
value = 1260
triggerall = var(7) != 1
triggerall = command = "QCF_b"
trigger1 = var(1) ;Use combo condition (above) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, Fierce DoubleKick]
type = ChangeState
value = 1270
triggerall = var(7) != 1
triggerall = command = "QCF_c"
trigger1 = var(1) ;Use combo condition (above) ;Use combo condition (above)
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
triggerall = var(7)!= 1  && p2stateno != 720 && power >= 500
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
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(7) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
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
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
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
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
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
trigger1= ctrl || stateno=702
trigger1= var(21):=3
attr=SA,AA,AP
stateno=97
forceair=1
slot=0
time=7
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
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(7) != 1
triggerall = command = "throw2"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = ctrl
;---------------------------------------------------------------------------
;===============================================================================
; Super Jump
;===============================================================================
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = var(7) != 1
trigger1 = command = "super jump"
trigger1 = ctrl && statetype != A
;trigger2 = stateno = 420
;trigger2 = (movecontact) && (command = "holdup") && time > 18
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
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = stateno=200
trigger2 = movecontact && time>10
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno=400) && movecontact
trigger3 = (stateno = 230||stateno=430) && movecontact
;---------------------------------------------------------------------------
;Stand Fierce Punch
;立ち強パンチ
[State -1, Stand Fierce Punch]
type = ChangeState
value = 220
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno=400) && movecontact
trigger3 = (stateno = 230||stateno=430) && movecontact
trigger4 = (stateno = 210||stateno=410) && movecontact
trigger5 = (stateno = 240||stateno=440) && movecontact
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype!=A
trigger1 = ctrl
;trigger2 = (stateno = 200||stateno=400) && movecontact
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno=400) && movecontact
trigger3 = (stateno = 230||stateno=430) && movecontact
;trigger4 = (stateno = 210||stateno=410) && movecontact
;---------------------------------------------------------------------------
;Standing Fierce Kick
;立ち強キック
[State -1, Standing Fierce Kick]
type = ChangeState
value = 250
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno=400) && movecontact
trigger3 = (stateno = 230||stateno=430) && movecontact
trigger4 = (stateno = 210||stateno=410) && movecontact
trigger5 = (stateno = 240||stateno=440) && movecontact
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
triggerall = statetype!=A
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
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno=400) && movecontact
trigger3 = (stateno = 230||stateno=430) && movecontact
;---------------------------------------------------------------------------
;Crouching Fierce Punch
;しゃがみ強パンチ
[State -1, Crouching Fierce Punch]
type = ChangeState
value = 420
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno=400) && movecontact
trigger3 = (stateno = 230||stateno=430) && movecontact
trigger4 = (stateno = 210||stateno=410) && movecontact
trigger5 = (stateno = 240||stateno=440) && movecontact
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype!=A
trigger1 = ctrl
;trigger2 = (stateno = 200||stateno=400) && movecontact
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno=400) && movecontact
trigger3 = (stateno = 230||stateno=430) && movecontact
;trigger4 = (stateno = 210||stateno=410) && movecontact
;---------------------------------------------------------------------------
;Crouching Fierce Kick
;しゃがみ強キック
[State -1, Crouching Fierce Kick]
type = ChangeState
value = 450
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = (stateno = 200||stateno=400) && movecontact
trigger3 = (stateno = 230||stateno=430) && movecontact
trigger4 = (stateno = 210||stateno=410) && movecontact
trigger5 = (stateno = 240||stateno=440) && movecontact
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
trigger2 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(7) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
;---------------------------------------------------------------------------
;Jump Fierce Punch
[State -1, Jump Fierce Punch]
type = ChangeState
value = 620
triggerall = var(7) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact||(stateno = 640) && movecontact
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
;trigger3 = (stateno = 600) && movecontact
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
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
;trigger4 = (stateno = 610) && movecontact
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
trigger2 = stateno = 600 || stateno = 630||stateno=610||stateno=640 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking


;===========================================================================
;===============Artifical Intelligence======================================
;===========================================================================
;---------------------------------------------------------------------------
;Block
[State -1, guard]
type=changestate
value=120
trigger1= var(7)>=1 && random<500
trigger1= roundstate=2 && (stateno!=[120,155]) && ctrl
trigger1= inguarddist && (prevstateno!=[97,99])
trigger1=!(enemynear,hitdefattr=SCA,AT)

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
[State -1, Counter]
type=changestate
value=ifelse(random<333,701,700)
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1500
triggerall= (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153)
trigger1= (p2bodydist x=[0,60]) && (life<.5*lifemax) && random<33
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Throw
[State -1, throw]
type=changestate
value=ifelse(random<333,800,900)
triggerall= var(7)>=1 && roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,21]) && (p2bodydist y=[-25,25]) && random<33
trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,36]) && (p2bodydist y=[-25,25]) && random<500
;--------------------------------------------------------------------------
[State -1, Guard Breaker]
type=changestate
value=710
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && p2stateno!= 720  && power>=500
trigger1= ctrl && (p2bodydist x=[50,110])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && power >=750 && random<75
trigger2= ctrl && p2statetype=L && (p2bodydist x=[50,110]) && power >=750 && random<75
;--------------------------------------------------------------------------
[State -1, Side Step]
type=changestate
value=ifelse(random<600,718,719)
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && ctrl; && random<50
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && p2bodydist x<80 && random<150
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, run]
type=changestate
value=100
trigger1= var(7)>=1 && statetype=S && roundstate=2 && ctrl && random<200
trigger1= (stateno!=[100,105]) && enemynear,movetype!=A && p2bodydist x>120
;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, dash]
type=changestate
value=105
triggerall= var(7)>=1
triggerall= statetype=S && roundstate=2 && ctrl
triggerall= (p2bodydist x=[0,80]) && backedgebodydist>80 && (stateno!=[100,105])
trigger1= enemynear,movetype=A && random<50
trigger2= enemynear,stateno=5120 && random<500
;----------------------------------------------------------------------------
[State -1, Jump]
type=changestate
value=40
trigger1= var(7)>=1
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

;---------------------------------------------------------------------------
;==============
; Super Jump
;===============
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = var(7)>= 1
trigger1= var(7)>=1
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT
trigger2= roundstate=2 && statetype!=A && ctrl
trigger2= enemynear,statetype=A && p2bodydist x<190 && p2bodydist y>200
;===========================================================================
; Super
;===========================================================================
[State -1, MisogiEnd]
type=changestate
value=4100
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=3000
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155]) && p2statetype!=L
triggerall= (p2stateno!=[5030,5119]) && (enemynear,vel x=[-1,1]) && (enemynear,vel y<4)
;triggerall= movetype=A || !(enemynear,hitfall)
trigger1= ctrl && (enemynear,statetype=S || enemynear,statetype=C) && (enemynear,animtime<=-30) && random<100
trigger2= ctrl && (enemynear,statetype=A) && (enemynear,pos y<=-60) && (enemynear,movetype=A) && random<500
trigger3= (stateno=[250,255]) && movehit && random<50
trigger4= (stateno=[220,225]) && movehit && random<50
trigger5= stateno=1050||stateno=1060||stateno=1070
trigger5= movehit && animelemtime(3)>=0 && random<50
trigger6= stateno=1250||stateno=1260||stateno=1270
trigger6= movehit && animelemtime(14)>=0 && random<200
;===========================================================================
[State -1, ShunGokuSatsu]
type=changestate
value=4000
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000
triggerall= !(enemynear,ctrl) && (p2stateno!=40) && (p2stateno!=[5030,5119])
triggerall= (p2bodydist x=[-160,160]) && (p2dist y=[-120,0]) && p2statetype!=L
triggerall= (enemynear,vel y=0) || (enemynear,vel y>0 && enemynear,vel x<0)
trigger1= ctrl && (p2bodydist x=[0,60]) && (enemynear,statetype!=A) && random<150
trigger2= stateno=1300 && animelemtime(6)>=0 && (p2bodydist x=[0,50]) && p2statetype!=A && random<250
;===========================================================================
[State -1, GenocideSlapper]
type=changestate
value=3160
triggerall= var(7)>=1 && statetype!=A && roundstate=2 && power>=2000 && stateno!=3160
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-30,50]) && p2statetype!=L
trigger1= ctrl && random<15
trigger2= (stateno=[250,255]) && movehit && random<100
trigger3= (stateno=[220,225]) && movehit && random<100
trigger4= stateno=1050||stateno=1060||stateno=1070
trigger4= movehit && animelemtime(3)>=0 && random<100
trigger5= stateno = 3000 && anim = 3001 && animelemtime(5)>=0 && random<33
;===========================================================================
[State -1, Lvl2SuperkickCombo]
type=changestate
value=3150
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A && power>=2000
triggerall= !(enemynear,ctrl) && ((p2stateno!=[120,155]) || p2statetype=A) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2bodydist x=[0,80]) && (p2dist y>=-180) && (enemynear,vel y>-2) && (enemynear,vel x>=0)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<33
trigger2= (stateno=[250,255]) && movehit && random<50
trigger3= (stateno=[220,225]) && movehit && random<50
trigger4= stateno=1050||stateno=1060||stateno=1070
trigger4= movehit && animelemtime(3)>=0 && random<50
trigger5= stateno=1250||stateno=1260||stateno=1270
trigger5= movehit && animelemtime(14)>=0 && random<50
;======================================================================
[State -1, DeanEndScreamer]
type=changestate
value=3200
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype=A && prevstateno!=3200
triggerall= power>=2000
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-30,90]) && p2dist y>=-15 && (enemynear,vel y<6)
trigger1= (stateno=620 || stateno=650)
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= (stateno=1050||stateno=1060||stateno=1070)
trigger2= movehit && random<250
trigger3= (stateno=[1150,1170]) && movehit && random<200
trigger4= stateno=1101
trigger4= movehit && animelemtime(19)>=0 && random<200
trigger5= stateno=1111
trigger5= movehit && animelemtime(25)>=0 && random<200
trigger6= stateno=1121
trigger6= movehit && animelemtime(35)>=0 && random<200
trigger7= stateno=1250||stateno=1260||stateno=1270
trigger7= movehit && animelemtime(14)>=0 && random<50
trigger8= stateno=3070
trigger8= movehit && animelemtime(54)>=0 && random<100
;===========================================================================
[State -1, Lvl2SuperAirHadouken2]
type=changestate
value=3100
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype=A && prevstateno!=3100
triggerall= !numhelper(3005)&&!numhelper(3006)&&!numhelper(3007) && !numhelper(3015)
triggerall= power>=2000
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,120]) && p2dist y>=-20 && (enemynear,vel y<4)
triggerall= (stateno!=[1200,1204]) && (stateno!=[3050,3054])
trigger1= (stateno=620 || stateno=650)
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= (stateno=1050||stateno=1060||stateno=1070)
trigger2= movehit && random<250
trigger3= (stateno=[1150,1170]) && movehit && random<200
trigger4= stateno=1101
trigger4= movehit && animelemtime(19)>=0 && random<200
trigger5= stateno=1111
trigger5= movehit && animelemtime(25)>=0 && random<200
trigger6= stateno=1121
trigger6= movehit && animelemtime(35)>=0 && random<200
trigger7= stateno=1250||stateno=1260||stateno=1270
trigger7= movehit && animelemtime(14)>=0 && random<50
trigger8= stateno=3070
trigger8= movehit && animelemtime(54)>=0 && random<100
;===========================================================================
[State -1, SuperHadouken]
type=changestate
value=3000
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A && prevstateno!=3000
triggerall= !numhelper(3005)&&!numhelper(3006)&&!numhelper(3007) && !numhelper(3055)
triggerall= power>=1000
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[-120,120]) && (p2dist y=[-60,0]) && (enemynear,vel y<8) && p2statetype!=L
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=220 || stateno=250)
trigger1= movehit && (p2bodydist x=[0,60]) && random<75
trigger2= stateno=1050||stateno=1060||stateno=1070
trigger2= movehit && animelemtime(3)>=0 && random<200
trigger3= stateno = 3056 &&  AnimElemTime(3)=0 && random<100
;===========================================================================
[State -1, SuperAirHadouken]
type=changestate
value=3010
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype=A && prevstateno!=3010
triggerall= !numhelper(3005)&&!numhelper(3006)&&!numhelper(3007) && !numhelper(3015)
triggerall= power>=1000
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= (p2bodydist x=[0,120]) && p2dist y>=-20 && (enemynear,vel y<4)
triggerall= (stateno!=[1200,1204]) && (stateno!=[3050,3054])
trigger1= (stateno=620 || stateno=650)
trigger1= movehit && (p2bodydist x=[0,30]) && random<100
trigger2= (stateno=1050||stateno=1060||stateno=1070)
trigger2= movehit && random<250
trigger3= (stateno=[1150,1170]) && movehit && random<200
trigger4= stateno=1101
trigger4= movehit && animelemtime(19)>=0 && random<200
trigger5= stateno=1111
trigger5= movehit && animelemtime(25)>=0 && random<200
trigger6= stateno=1121
trigger6= movehit && animelemtime(35)>=0 && random<200
trigger7= stateno=3070
trigger7= movehit && animelemtime(54)>=0 && random<100
trigger8= stateno=3100
trigger8= movehit && animelemtime(31)>=0 && random<100
;===========================================================================
[State -1, SuperWallSmash]
type=changestate
value=3050
triggerall= var(7)>=1 && statetype!=A && roundstate=2 && power>=1000
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<15
trigger2= (stateno=[250,255]) && movehit && random<75
trigger3= (stateno=[220,225]) && movehit && random<75
trigger4= stateno=1050||stateno=1060||stateno=1070
trigger4= movehit && animelemtime(3)>=0 && random<200
;===========================================================================
[State -1, SuperkickCombo]
type=changestate
value=3070
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A && power>=1000
triggerall= !(enemynear,ctrl) && ((p2stateno!=[120,155]) || p2statetype=A) && p2statetype!=L && !(enemynear,hitfall)
triggerall= (p2bodydist x=[0,80]) && (p2dist y>=-180) && (enemynear,vel y>-2) && (enemynear,vel x>=0)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && random<50
trigger2= (stateno=[210,215]) && movehit && random<33
trigger3= (stateno=[240,245]) && movehit && random<33
trigger4= (stateno=[250,255]) && movehit && random<75
trigger5= (stateno=[220,225]) && movehit && random<75
trigger6= stateno=1050||stateno=1060||stateno=1070
trigger6= movehit && animelemtime(3)>=0 && random<50
trigger5= stateno = 3000 && anim = 3001 && animelemtime(5)>=0 && random<75
;===========================================================================
; Specials
;===========================================================================
[State -1, Hadouken]
type=changestate
value=ifelse(random<333,1020,1000)
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A
triggerall= !numhelper(1005) && !numhelper(3005)&&!numhelper(3006)&&!numhelper(3007)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && (p2statetype!=L || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=100 && random<100
trigger2= stateno=210||stateno=220||stateno=240||stateno=250||stateno=410||stateno=420||stateno=440
trigger2= movehit && (p2bodydist x=[40,80]) && random<100
;===========================================================================
[State -1, Hadouken2]
type=changestate
value=1010
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A
triggerall= !numhelper(1005) && !numhelper(3005)&&!numhelper(3006)&&!numhelper(3007)
triggerall= (p2bodydist x>=0) && (p2dist y>=-25) && p2movetype!=A && (p2statetype!=L || p2stateno=5120)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl && p2bodydist x>=100 && random<100
trigger2= (stateno=[200,259])
trigger2= movehit && (p2bodydist x=[40,80]) && random<100
;------------------------------------------------------------------------
[State -1, Shouryuken]
type = ChangeState
value = 1050
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<50 && random<200
trigger2= (stateno=[220,225]) && movehit && p2bodydist x<30 && random<200
trigger2= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<200
trigger3= (stateno=[210,215]) && movehit && p2bodydist x<30 && random<75
trigger3= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<75
trigger4= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
;trigger4= ctrl && prevstateno=1200 && random<200
;------------------------------------------------------------------------
[State -1, Shouryuken]
type = ChangeState
value = 1060
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<50 && random<200
trigger2= (stateno=[220,225]) && movehit && p2bodydist x<30 && random<200
trigger2= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<200
trigger3= (stateno=[210,215]) && movehit && p2bodydist x<30 && random<75
trigger3= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<75
trigger4= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
;trigger4= ctrl && prevstateno=1200 && random<200
;------------------------------------------------------------------------
[State -1, Shouryuken]
type = ChangeState
value = 1070
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<50 && random<200
trigger2= (stateno=[220,225]) && movehit && p2bodydist x<30 && random<200
trigger2= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<200
trigger3= (stateno=[210,215]) && movehit && p2bodydist x<30 && random<75
trigger3= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<75
trigger4= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
trigger4= ctrl && prevstateno=1200 && random<200
;---------------------------------------------------------------------------
;Light Tornado
[State -1, LightTornado]
type=changestate
value=1100
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= (stateno=[220,225]) && movehit && random<200
trigger2= (stateno=[250,255]) && movehit && random<200
trigger3= (stateno=[210,215]) && movehit && random<75
trigger4= (stateno=[240,245]) && movehit && random<75
trigger5= (stateno=[240,245]) && movehit && random<75
trigger6= (stateno=[420,425]) && movehit && random<200
trigger7= stateno=450 && p2bodydist x<20 && movehit && random<333
trigger8= ctrl && p2bodydist x<48 && p2dist y<-120 && random<50
;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, StrongTornado]
type=changestate
value=1110
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= (stateno=[220,225]) && movehit && random<200
trigger2= (stateno=[250,255]) && movehit && random<200
trigger3= (stateno=[210,215]) && movehit && random<75
trigger4= (stateno=[240,245]) && movehit && random<75
trigger5= (stateno=[240,245]) && movehit && random<75
trigger6= (stateno=[420,425]) && movehit && random<200
trigger7= stateno=450 && p2bodydist x<20 && movehit && random<333
trigger8= ctrl && p2bodydist x<48 && p2dist y<-120 && random<50
;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, StrongTornado]
type=changestate
value=1120
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,60]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= (stateno=[220,225]) && movehit && random<200
trigger2= (stateno=[250,255]) && movehit && random<200
trigger3= (stateno=[210,215]) && movehit && random<75
trigger4= (stateno=[240,245]) && movehit && random<75
trigger5= (stateno=[240,245]) && movehit && random<75
trigger6= (stateno=[420,425]) && movehit && random<200
trigger7= stateno=450 && p2bodydist x<20 && movehit && random<333
trigger8= ctrl && p2bodydist x<48 && p2dist y<-120 && random<50
;===========================================================================
[State -1, HadouSmash]
type = ChangeState
value = ifelse(random<333,1170,1160)
triggerall= var(7)>=1 && roundstate=2 && statetype=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = enemynear,movetype != A
trigger1 = (abs(enemynear,Pos X - Pos X) >= 60 && abs(enemynear,Pos Y - Pos Y) >= 90) && Random <= 150 && Ctrl
trigger2= ctrl && p2bodydist x<48 && p2dist y<-30 && random<50
ignorehitpause = 0
;===========================================================================
[State -1, HadouSmash2]
type = ChangeState
value = 1150
triggerall= var(7)>=1 && roundstate=2 && statetype=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = enemynear,movetype != A
trigger1 = (abs(enemynear,Pos X - Pos X) >= 60 && abs(enemynear,Pos Y - Pos Y) >= 90) && Random <= 150 && Ctrl
trigger2 = (StateNo = 620 || StateNo = 650 ) && movehit && Random < 50
trigger3= ctrl && p2bodydist x<48 && p2dist y<-30 && random<50
ignorehitpause = 0
;===========================================================================
[State -1, WallSmash]
type=changestate
value=ifelse(random<333,1220,1200)
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<50
trigger2= (stateno=[200,205]) && movehit && random<15
trigger3= (stateno=[230,235]) && movehit && random<15
trigger4= (stateno=[210,215]) && movehit && random<50
trigger5= (stateno=[240,245]) && movehit && random<50
trigger6= (stateno=[250,255]) && movehit && random<75
trigger7= (stateno=[220,225]) && movehit && random<75
;===========================================================================
[State -1, WallSmash2]
type=changestate
value=1210
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<50
trigger2= (stateno=[200,205]) && movehit && random<15
trigger3= (stateno=[230,235]) && movehit && random<15
trigger4= (stateno=[210,215]) && movehit && random<50
trigger5= (stateno=[240,245]) && movehit && random<50
trigger6= (stateno=[250,255]) && movehit && random<75
trigger7= (stateno=[220,225]) && movehit && random<75
;===========================================================================
[State -1, DoubleKick]
type=changestate
value=1250
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype!=A
triggerall= (p2bodydist x=[0,63]) && p2statetype!=A && p2statetype!=L
trigger1= (ctrl || stateno=52 || (stateno=[100,101])) && random<100
trigger2= (stateno=[200,205]) && movehit && random<15
trigger3= (stateno=[230,235]) && movehit && random<15
trigger4= (stateno=[210,215]) && movehit && random<50
trigger5= (stateno=[240,245]) && movehit && random<50
trigger6= (stateno=[250,255]) && movehit && random<75
trigger7= (stateno=[220,225]) && movehit && random<75
;===========================================================================
[State -1, Warp]
type=changestate
value=1300
trigger1= var(7)>=1; && numenemy
trigger1= roundstate=2 && statetype!=A
trigger1= ctrl && (p2bodydist x=[-60,60])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && random<200
;===========================================================================
; Initiate Ground Combos
;===========================================================================
[State -1, SLP]
type=changestate
value=200
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= ctrl && (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && p2statetype!=C
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<300
trigger2= p2stateno = 1305 && random<500
trigger2= stateno!=[1200,1224]
;---------------------------------------------------------------------------
[State -1, SMP]
type=changestate
value=210
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,53]) && (p2bodydist y=[-50,50]) && (p2statetype=S) && (p2statetype!=C)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<75
trigger2= (stateno=[200,205]) && movehit && random<500
trigger3= (stateno=[230,235]) && movehit && random<500
;---------------------------------------------------------------------------
[State -1, SHP]
type=changestate
value=220
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<50
trigger2= (stateno=[200,205]) && movehit && random<75
trigger3= (stateno=[230,235]) && movehit && random<75
trigger4= (stateno=[210,215]) && movehit && random<200
trigger5= (stateno=[240,241]) && movehit && random<500

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, SLK]
type=changestate
value=230
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<300
;trigger2= (stateno=[200,205]) && movehit && random<500
;---------------------------------------------------------------------------
[State -1, SMK]
type=changestate
value=240
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<33
trigger2= (stateno=[200,205]) && movehit && random<500
trigger3= (stateno=[230,235]) && movehit && random<500

[State -1, SHK]
type=changestate
value=250
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<33
trigger2= (stateno=[200,205]) && movehit && random<75
trigger3= (stateno=[230,235]) && movehit && random<75
trigger4= (stateno=[210,215]) && movehit && random<500
trigger5= (stateno=[240,241]) && movehit && random<500
;===========================================================================
; Initiate Crouch Combos
;===========================================================================
[State -1, CLP]
type=changestate
value=400
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L && (p2statetype!=A)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<300
;trigger2= ctrl && (p2statetype=S) && random<300
;---------------------------------------------------------------------------
[State -1, CMP]
type=changestate
value=410
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,53]) && (p2bodydist y=[-50,50]) && (p2statetype=S) && (p2statetype!=A)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<75
trigger2= (stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[430,435]) && movehit && random<500
trigger4= ctrl && (p2statetype=S) && random<300
;---------------------------------------------------------------------------
[State -1, CHP]
type=changestate
value=420
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<75
trigger2= (stateno=[400,405]) && movehit && random<75
trigger3= (stateno=[430,435]) && movehit && random<75
trigger4= (stateno=[410,415]) && movehit && random<200
trigger5= (stateno=[440,441]) && movehit && random<500
;trigger6= ctrl && (p2statetype=S) && random<300
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, CLK]
type=changestate
value=430
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<300
trigger2= ctrl && (p2statetype=S) && random<450
;---------------------------------------------------------------------------
[State -1, CMK]
type=changestate
value=440
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<33
trigger2= (stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[430,435]) && movehit && random<500
trigger4= ctrl && (p2statetype=S) && random<450
;---------------------------------------------------------------------------
[State -1, CHK]
type=changestate
value=450
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
triggerall= stateno!=[3000,4999]
trigger1= ctrl && random<100
trigger2= (stateno=[400,405]) && movehit && random<75
trigger3= (stateno=[430,435]) && movehit && random<75
trigger4= (stateno=[410,415]) && movehit && random<200
trigger5= (stateno=[440,441]) && movehit && random<500
trigger6= ctrl && (p2statetype=S) && random<450
;---------------------------------------------------------------------------
;Air Comboes
;===========================================================================
[State -1, ALP]
type=changestate
value=600
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,84]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<50
;---------------------------------------------------------------------------
[State -1, AMP]
type=changestate
value=610
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<75
trigger2= (stateno=[600,605]) && movehit && random<500
trigger3= (stateno=[630,635]) && movehit && random<500
;---------------------------------------------------------------------------
[State -1, AHP]
type=changestate
value=620
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,110]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<100
trigger2= (stateno=[600,605]) && movehit && random<75
trigger3= (stateno=[630,635]) && movehit && random<75
trigger4= (stateno=[610,615]) && movehit && random<500
trigger5= stateno=640 && movehit && random<500
;---------------------------------------------------------------------------
[State -1, ALK]
type=changestate
value=630
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<50
;trigger2= (stateno=[600,605]) && movehit && random<500
;---------------------------------------------------------------------------
[State -1, AMK]
type=changestate
value=640
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[-50,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<75
trigger2= (stateno=[600,605]) && movehit && random<500
trigger4= (stateno=[630,635]) && movehit && random<500
;---------------------------------------------------------------------------
[State -1, AHK]
type=changestate
value=650
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<100
trigger2= (stateno=[600,605]) && movehit && random<75
trigger3= (stateno=[630,635]) && movehit && random<75
trigger4= (stateno=[610,615]) && movehit && random<500
trigger5= (stateno=[640,641]) && movehit && random<500

