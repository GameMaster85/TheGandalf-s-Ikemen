; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Kyokushi_Nanaya"
command =~D,F,D,B,x
time = 20

[Command]
name = "Kyokushi_Nanaya"
command =~D,F,D,B,~x
time = 20

[Command]
name = "Kyokushi_Nanaya"
command =~D,F,D,B,y
time = 20

[Command]
name = "Kyokushi_Nanaya"
command =~D,F,D,B,~y
time = 20

[Command]
name = "Kyokushi_Nanaya"
command =~D,F,D,B,z
time = 20

[Command]
name = "Kyokushi_Nanaya"
command =~D,F,D,B,~z
time = 20

[Command]
name = "Meigokushamon_MAX"
command =~D,DF,F,D,DF,F,x+y
time = 25

[Command]
name = "Meigokushamon_MAX"
command =~D,DF,F,D,DF,F,x+z
time = 25

[Command]
name = "Meigokushamon_MAX"
command =~D,DF,F,D,DF,F,y+z
time = 25

[Command]
name = "Meigokushamon"
command =~D,DF,F,D,DF,F,x
time = 20

[Command]
name = "Meigokushamon"
command =~D,DF,F,D,DF,F,~x
time = 20

[Command]
name = "Meigokushamon"
command =~D,DF,F,D,DF,F,y
time = 20

[Command]
name = "Meigokushamon"
command =~D,DF,F,D,DF,F,~y
time = 20

[Command]
name = "Meigokushamon"
command =~D,DF,F,D,DF,F,z
time = 20

[Command]
name = "Meigokushamon"
command =~D,DF,F,D,DF,F,~z
time = 20

[Command]
name = "Ichiriyotsuji_MAX"
command =~D,DB,B,D,DB,B,a+b
time = 25

[Command]
name = "Ichiriyotsuji_MAX"
command =~D,DB,B,D,DB,B,a+c
time = 25

[Command]
name = "Ichiriyotsuji_MAX"
command =~D,DB,B,D,DB,B,b+c
time = 20

[Command]
name = "Ichiriyotsuji"
command =~D,DB,B,D,DB,B,a
time = 20

[Command]
name = "Ichiriyotsuji"
command =~D,DB,B,D,DB,B,~a
time = 20

[Command]
name = "Ichiriyotsuji"
command =~D,DB,B,D,DB,B,b
time = 20

[Command]
name = "Ichiriyotsuji"
command =~D,DB,B,D,DB,B,~b
time = 20

[Command]
name = "Ichiriyotsuji"
command =~D,DB,B,D,DB,B,c
time = 20

[Command]
name = "Ichiriyotsuji"
command =~D,DB,B,D,DB,B,~c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "Hattenshou_Light"
command =~D,F,x
Time = 18

[Command]
name = "Hattenshou_Light"
command =~D,F,~x
Time = 18

[Command]
name = "Hattenshou_Medium"
command =~D,F,y
Time = 18

[Command]
name = "Hattenshou_Medium"
command =~D,F,~y
Time = 18

[Command]
name = "Hattenshou_Heavy"
command =~D,F,z
Time = 18

[Command]
name = "Hattenshou_Heavy"
command =~D,F,~z
Time = 18

[Command]
name = "Hattenshou_EX"
command =~D,F,x+y
Time = 18

[Command]
name = "Hattenshou_EX"
command =~D,F,x+z
Time = 18

[Command]
name = "Hattenshou_EX"
command =~D,F,y+z
Time = 18

[Command]
name = "Sensa_Hassen"
command =~D,B,x
Time = 18

[Command]
name = "Sensa_Hassen"
command =~D,B,~x
Time = 18

[Command]
name = "Sensa_Nanaya"
command =~D,B,y
Time = 18

[Command]
name = "Sensa_Nanaya"
command =~D,B,~y
Time = 18

[Command]
name = "Sensa_Hitokaze"
command =~D,B,z
Time = 18

[Command]
name = "Sensa_Hitokaze"
command =~D,B,~z
Time = 18

[Command]
name = "Ikka_Light"
command =~D,B,a
Time = 18

[Command]
name = "Ikka_Light"
command =~D,B,~a
Time = 18

[Command]
name = "Ikka_Medium"
command =~D,B,b
Time = 18

[Command]
name = "Ikka_Medium"
command =~D,B,~b
Time = 18

[Command]
name = "Ikka_Heavy"
command =~D,B,c
Time = 18

[Command]
name = "Ikka_Heavy"
command =~D,B,~c
Time = 18

[Command]
name = "Ikka_EX"
command =~D,B,a+b
Time = 18

[Command]
name = "Ikka_EX"
command =~D,B,a+c
Time = 18

[Command]
name = "Ikka_EX"
command =~D,B,b+c
Time = 18

[Command]
name = "Rikuto_Light"
command =~F,D,DF,a
Time = 18

[Command]
name = "Rikuto_Light"
command =~F,D,DF,a
Time = 18

[Command]
name = "Rikuto_Medium"
command =~F,D,DF,b
Time = 18

[Command]
name = "Rikuto_Medium"
command =~F,D,DF,b
Time = 18

[Command]
name = "Rikuto_Heavy"
command =~F,D,DF,c
Time = 18

[Command]
name = "Rikuto_Heavy"
command =~F,D,DF,c
Time = 18

[Command]
name = "Rikuto_EX"
command =~F,D,DF,a+b
Time = 18

[Command]
name = "Rikuto_EX"
command =~F,D,DF,a+c
Time = 18

[Command]
name = "Rikuto_EX"
command =~F,D,DF,b+c
Time = 18

[Command]
name = "Guard_Counter"
command = b+y
time = 1

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

[command]
name="rls_dir"
command=~U
time=1

[command]
name="rls_dir"
command=~U
time=1

[command]
name="rls_dir"
command=~UF
time=1

[command]
name="rls_dir"
command=~F
time=1

[command]
name="rls_dir"
command=~DF
time=1

[command]
name="rls_dir"
command=~D
time=1

[command]
name="rls_dir"
command=~DB
time=1

[command]
name="rls_dir"
command=~B
time=1

[command]
name="rls_dir"
command=~UB
time=1

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

[State -1, Parry]
type = changestate
value = 852
triggerall = numhelper(855) && numhelper(856)
trigger1 = Helper(855),stateno = 858 || Helper(856),stateno = 858
trigger1 = Ctrl

[State -1, Dodge forward]
type = ChangeState
value = 750
triggerall = command = "x" && command = "a" && command = "holdfwd"
triggerall = statetype = S
triggerall = numexplod(700) = 0
trigger1 = ctrl

[State -1, Dodge back]
type = ChangeState
value = 751
triggerall = command = "x" && command = "a" && command = "holdback"
triggerall = statetype = S
triggerall = numexplod(700) = 0
trigger1 = ctrl

[State -1, Side Step]
type = ChangeState
value = 700
triggerall = command = "x" && command = "a"
triggerall = statetype != A
trigger1 = ctrl

[State -1, Max Mode]
type = ChangeState
value = 6000
triggerall = var(45) <= 0
triggerall = StateType != A
triggerall = power >= 3000
triggerall = command = "c" && command = "z"
triggerall = Stateno != [2000,4999]
triggerall = MoveType != H
trigger1 = Ctrl
trigger2 = (Stateno = [200,499]) && (movecontact || movereversed)
trigger3 = (Stateno = [1000,1999]) && (movecontact || movereversed)
trigger4 = (Stateno = [200,499])
trigger5 = (Stateno = [1000,1999])

[State -1, Kyokushi Nanaya]
type = ChangeState
value = 4000
triggerall = command = "Kyokushi_Nanaya"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = Stateno != 4000
triggerall = var(45) <= 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)

[State -1, Sensa Meigokushamon]
type = ChangeState
value = 3000
triggerall = command = "Meigokushamon_MAX"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = Stateno != [3000,3010]
triggerall = var(45) <= 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)

[State -1, Sensa Ichiriyotsuji]
type = ChangeState
value = 3100
triggerall = command = "Ichiriyotsuji_MAX"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = Stateno != [3100,3110]
triggerall = var(45) <= 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = var(22)

[State -1, Meigokushamon]
type = ChangeState
value = 2000
triggerall = command = "Meigokushamon"
triggerall = power >= IfElse(Var(45) > 0,0,1000)
triggerall = statetype != A
triggerall = Stateno != [2000,2010]
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)

[State -1, Ichiriyotsuji]
type = ChangeState
value = 2100
triggerall = command = "Ichiriyotsuji"
triggerall = power >= IfElse(Var(45) > 0,0,1000)
triggerall = statetype != A
triggerall = Stateno != [2100,2110]
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)
trigger3 = var(21)
trigger4 = var(22)

;===========================================================================
;---------------------------------------------------------------------------

[State -1, Rikuto EX]
type = Changestate
value = 1130
triggerall = command = "Rikuto_EX"
triggerall = statetype != A
triggerall = power >= IfElse(Var(45) > 0,0,500)
triggerall = !NumHelper(1131)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1,  Rikuto Light]
type = ChangeState
value = 1100
triggerall = Statetype != A
triggerall = command = "Rikuto_Light"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1,  Rikuto Medium]
type = ChangeState
value = 1110
triggerall = Statetype != A
triggerall = command = "Rikuto_Medium"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1,  Rikuto Heavy]
type = ChangeState
value = 1120
triggerall = Statetype != A
triggerall = command = "Rikuto_Heavy"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Hattenshou EX]
type = Changestate
value = 1030
triggerall = command = "Hattenshou_EX"
triggerall = statetype != A
triggerall = power >= IfElse(Var(45) > 0,0,500)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Hattenshou Light]
type = ChangeState
value = 1000
triggerall = Statetype != A
triggerall = command = "Hattenshou_Light"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Hattenshou Medium]
type = ChangeState
value = 1010
triggerall = Statetype != A
triggerall = command = "Hattenshou_Medium"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Hattenshou Heavy]
type = ChangeState
value = 1020
triggerall = Statetype != A
triggerall = command = "Hattenshou_Heavy"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Sensa Hassen]
type = ChangeState
value = 1200
triggerall = Statetype != A
triggerall = command = "Sensa_Hassen"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Sensa Nanaya]
type = ChangeState
value = 1210
triggerall = Statetype != A
triggerall = command = "Sensa_Nanaya"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Sensa Hitokaze]
type = ChangeState
value = 1220
triggerall = Statetype != A
triggerall = command = "Sensa_Hitokaze"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Ikka EX]
type = Changestate
value = 1330
triggerall = command = "Ikka_EX"
triggerall = statetype != A
triggerall = power >= IfElse(Var(45) > 0,0,500)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Ikka Light]
type = ChangeState
value = 1300
triggerall = Statetype != A
triggerall = command = "Ikka_Light"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Ikka Medium]
type = ChangeState
value = 1310
triggerall = Statetype != A
triggerall = command = "Ikka_Medium"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Ikka Heavy]
type = ChangeState
value = 1320
triggerall = Statetype != A
triggerall = command = "Ikka_Heavy"
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(20)

[State -1, Warui Ne Light]
type = ChangeState
value = 1400
triggerall = Statetype = A
triggerall = Command = "holddown"
triggerall = Command = "a"
trigger1 = Vel Y = [-3.4,2.4]
trigger1 = StateNo = 50 && Anim = [41,42]

[State -1, Warui Ne Medium]
type = ChangeState
value = 1410
triggerall = Statetype = A
triggerall = Command = "holddown"
triggerall = Command = "b"
trigger1 = Vel Y = [-3.4,2.4]
trigger1 = StateNo = 50 && Anim = [41,42]

[State -1, Warui Ne Heavy]
type = ChangeState
value = 1420
triggerall = Statetype = A
triggerall = Command = "holddown"
triggerall = Command = "c"
trigger1 = Vel Y = [-3.4,2.4]
trigger1 = StateNo = 50 && Anim = [41,42]

[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = var(45) <= 0
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && power < powermax
trigger1 = ctrl || (stateno = [100,101])

[State -1, Guard Counter]
type = ChangeState
value = 950
triggerall = StateType != A
triggerall = power >= IfElse(Var(45) > 0,0,1000)
triggerall = Command = "Guard_Counter" && Command != "holddown" && Command = "holdfwd"
trigger1 = Stateno = 150 || Stateno = 152

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z" || command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 240) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 200) && movecontact||(stateno = 230) && movecontact
trigger3 = (stateno = 400) && movecontact||(stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [230,240]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = 200) && movecontact||(stateno = 400) && movecontact
trigger3 = (stateno = 230) && movecontact||(stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact||(stateno = 430) && movecontact
trigger4 = (stateno = 210) && movecontact||(stateno = 410) && movecontact
trigger5 = (stateno = 240) && movecontact||(stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact||(stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
trigger3 = (stateno = 610) && movecontact||(stateno = 640) && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact||(stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630||stateno=610||stateno=640
trigger2 = movecontact

;---------------------------------------------------------------------------
