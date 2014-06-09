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
[command]
name = "avenger"
command = ~D,DB,B,z
time = 15

[command]
name = "10hit"
command = ~F,D,DF,z
time = 15

[command]
name = "EI"
command = ~D,DF,F,z
time = 15
;-| Special Motions |------------------------------------------------------
[command]
name = "tw"
command = ~F,D,B,y
time = 15

[command]
name = "tw2"
command = ~F,D,B,x
time = 15

[command]
name = "exliftkick"
command = ~F,D,DF,b+a
time = 20

[command]
name = "liftkick"
command = ~F,D,DF,~b
time = 15

[command]
name = "liftkick2"
command = ~F,D,DF,~a
time = 15

[command]
name = "liftkick"
command = ~F,D,DF,b
time = 15

[command]
name = "liftkick2"
command = ~F,D,DF,a
time = 15

[command]
name = "flare"
command = ~D,DB,B,~b
time = 15

[command]
name = "flare2"
command = ~D,DB,B,~a
time = 15

[command]
name = "flare"
command = ~D,DB,B,b
time = 15

[command]
name = "flare2"
command = ~D,DB,B,a
time = 15

[command]
name = "exsrk"
command = ~F,D,DF,y+x
time = 20

[command]
name = "srk"
command = ~F,D,DF,~y
time = 15

[command]
name = "srk2"
command = ~F,D,DF,~x
time = 15

[command]
name = "srk"
command = ~F,D,DF,y
time = 15

[command]
name = "srk2"
command = ~F,D,DF,x
time = 15

[command]
name = "exdemonspaw"
command = ~D,DF,F,y+x
time = 20

[command]
name = "demonspaw"
command = ~D,DF,F,~y
time = 15

[command]
name = "demonspaw2"
command = ~D,DF,F,~x
time = 15

[command]
name = "demonspaw"
command = ~D,DF,F,y
time = 15

[command]
name = "demonspaw2"
command = ~D,DF,F,x
time = 15

[command]
name = "exsavagesword"
command = ~B,D,DB,y+x
time = 20

[command]
name = "savagesword"
command = ~B,D,DB,~y
time = 15

[command]
name = "savagesword2"
command = ~B,D,DB,~x
time = 15

[command]
name = "savagesword"
command = ~B,D,DB,y
time = 15

[command]
name = "savagesword2"
command = ~B,D,DB,x
time = 15
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

;AI10Hit
[State -1, AI10Hit]
type = ChangeState
value = 2200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1500 && movecontact
trigger17 = stateno = 1501 && movecontact
trigger18 = stateno = 1700 && movecontact
trigger19 = stateno = 1701 && movecontact

;AIEI
[State -1, AIEI]
type = ChangeState
value = 2100
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*1.1
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1500 && movecontact
trigger17 = stateno = 1501 && movecontact
trigger18 = stateno = 1700 && movecontact
trigger19 = stateno = 1701 && movecontact

;AIavenger
[State -1, AIavenger]
type = ChangeState
value = 2000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.2
Triggerall=AILevel>=4
Triggerall=!Inguarddist
triggerall = power >= 2000
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1500 && movecontact
trigger17 = stateno = 1501 && movecontact
trigger18 = stateno = 1700 && movecontact
trigger19 = stateno = 1701 && movecontact

;AIexsavagesword
[State -1, AIexsavagesword]
type = ChangeState
value = 1702
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.4
triggerall = power >= 500
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
Triggerall=!Inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIsavagesword
[State -1, AIsavagesword]
type = ChangeState
value = 1700
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.2
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
Triggerall=!Inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIsavagesword2
[State -1, AIsavagesword2]
type = ChangeState
value = 1701
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*1.2
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
Triggerall=!Inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AItw
[State -1, AItw]
type = ChangeState
value = 1800
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<40
Triggerall=abs(P2Bodydist y)=0
Triggerall=random<var(50)*1.4
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = p2stateno != [150,152]
triggerall = p2movetype != H
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;AItw2
[State -1, AItw2]
type = ChangeState
value = 1805
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=abs(P2Bodydist y)=0
Triggerall=random<var(50)*1.4
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = p2stateno != [150,152]
triggerall = p2movetype != H
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;AIexWM
[State -1, AIexWM]
type = ChangeState
value = 1002
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.3
triggerall = power >= 500
Triggerall=AILevel>=5
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIWM
[State -1, AIWM]
type = ChangeState
value = 1000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.1
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIWM2
[State -1, AIWM2]
type = ChangeState
value = 1001
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<70
Triggerall=random<var(50)*1.1
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIEXdemonspaw
[State -1, AIexdemonspaw]
type = ChangeState
value = 1502
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
triggerall = power >= 500
Triggerall=random<var(50)*1.3
Triggerall=AILevel>=4
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIdemonspaw
[State -1, AIdemonspaw]
type = ChangeState
value = 1500
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<150
Triggerall=random<var(50)*1.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIdemonspaw2
[State -1, AIdemonspaw2]
type = ChangeState
value = 1501
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<110
Triggerall=random<var(50)*0.8
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIexliftkick
[State -1, AIexliftkick]
type = ChangeState
value = 1102
triggerall = var(59) > 0
triggerall = ((p2bodydist y =[-120,-25])&&p2statetype=A) || p2statetype!=A
triggerall = (p2bodydist x=[0,75])|| ((p2bodydist x=[0,90])&& p2statetype=A)
Triggerall=random<var(50)*1.0
triggerall = power >= 500
Triggerall=AILevel>=5
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIliftkick
[State -1, AIliftkick]
type = ChangeState
value = 1100
triggerall = var(59) > 0
triggerall = ((p2bodydist y =[-120,-25])&&p2statetype=A) || p2statetype!=A
triggerall = (p2bodydist x=[0,75])|| ((p2bodydist x=[0,90])&& p2statetype=A)
Triggerall=random<var(50)*1.2
Triggerall=AILevel>=1
Triggerall=P2StateType=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;liftkick2
[State -1, AIliftkick2]
type = ChangeState
value = 1101
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*1.0
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;AIflare
[State -1, AIflare]
type = ChangeState
value = 1300
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.2
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 1550 && movecontact
trigger3 = stateno = 14400 && movecontact
trigger4 = stateno = 212 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 211 && movecontact
trigger14 = stateno = 246 && movecontact

;AIflare2
[State -1, AIflare2]
type = ChangeState
value = 1301
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*0.8
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 1550 && movecontact
trigger3 = stateno = 14400 && movecontact
trigger4 = stateno = 212 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 211 && movecontact
trigger14 = stateno = 246 && movecontact

;AIlaunch
[State -1, AIupfwd]
Type = changestate
value = 40000
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*0.8
Triggerall=AILevel>=3
triggerall = !inguarddist
triggerall = numproj = 0
triggerall = numhelper = 0
trigger1 = (StateNo = 410)
trigger1 = movehit
trigger2 = (StateNo = 1000)
trigger2 = movehit
trigger3 = (StateNo = 1001)
trigger3 = movehit

;AIfthrow
[state -1, AIfthrow]
Type = changestate
value = 850
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<40
Triggerall=random<var(50)*1.1
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = p2stateno != [150,152]
triggerall = p2movetype != H
triggerall = backedgebodydist <= 60
trigger1 = (statetype != a) && ctrl

;AIthrow
[state -1, AIthrow]
Type = changestate
value = 800
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<40
Triggerall=random<var(50)*1.1
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = p2stateno != [150,152]
triggerall = p2movetype != H
triggerall = backedgebodydist > 60
trigger1 = (statetype != a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

[State -1, AI run]
type=changestate
value=100
triggerall = roundstate = 2
triggerall=AILevel>1 && statetype!=A && ctrl
triggerall = (stateno!=[100,105])
triggerall = p2bodydist y =[-150,0]
triggerall = p2bodydist x >80
trigger1= p2movetype!=A && (p2bodydist x=[140,788])&& random < 99
trigger2= p2movetype=H && p2statetype=A && p2bodydist x>40&& random < 399

[State -1, AIRun Back]
type = ChangeState
value = 105
triggerall = AILevel >0
triggerall = stateno !=105
triggerall = statetype != A
triggerall = random <  19*AILevel
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = (p2statetype =L || p2movetype = A) && (p2bodydist x=[-99,15])

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;AI DCP
[State -1, AIDCP]
type = ChangeState
value = 1400
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.5
Triggerall=AILevel>=2
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
;AI FWD+HP
[State -1, AIFWD+HP]
type = ChangeState
value = 212
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<100
Triggerall=random<var(50)*1.1
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 211 && movecontact
trigger11 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
;AI F+HK
[State -1, AIF+HK]
type = ChangeState
value = 1550
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.2
Triggerall=AILevel>=1
Triggerall=P2StateType=S
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;AI B+HK
[State -1, AIB+HK]
type = ChangeState
value = 245
triggerall = var(59) > 0
triggerall = ((p2bodydist y =[-120,-25])&&p2statetype=A) || p2statetype!=A
triggerall = (p2bodydist x=[0,75])|| ((p2bodydist x=[0,90])&& p2statetype=A)
Triggerall=random<var(50)*1.2
Triggerall=AILevel>=3
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
;AI Stand Light Punch
[State -1, AIStand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=random<var(50)*0.8
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 6

;---------------------------------------------------------------------------
;AIStand Strong Punch
[State -1, AIStand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<70
Triggerall=random<var(50)*1.0
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
;AI Stand Light Kick
[State -1, AIStand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=random<var(50)*0.7
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
;AI Standing Strong Kick
[State -1, AIStanding Strong Kick]
type = ChangeState
value = 240
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<70
Triggerall=random<var(50)*1.1
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
;AI Crouching Light Punch
[State -1, AICrouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<50
Triggerall=random<var(50)*1.0
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && time >= 6

;---------------------------------------------------------------------------
;AI Crouching Strong Punch
[State -1, AICrouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*0.5
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
triggerall = !inguarddist
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
;AI Crouching Light Kick
[State -1, AICrouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<60
Triggerall=random<var(50)*1.0
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 430 && time >= 8

;---------------------------------------------------------------------------
; AICrouching Strong Kick
[State -1, AICrouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) > 0
Triggerall=abs(P2Bodydist X)<80
Triggerall=random<var(50)*1.3
Triggerall=AILevel>=1
Triggerall=P2StateType!=A
Triggerall=P2StateType!=L
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó’†Žãƒpƒ“ƒ`
[State -1, AI9]
type = ChangeState
value = 600
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
triggerall = vel y <0 ||p2statetype=A
Triggerall = (P2BodyDist X = [0,50])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,20]
triggerall = p2statetype=A
trigger1 = ctrl





;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, AI9]
type = ChangeState
value = 610
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=620
triggerall = stateno !=650
Triggerall = (P2BodyDist X = [0,60])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall = movecontact || p2statetype!=A
triggerall = vel y >=0 ||(p2statetype=A)
triggerall= p2bodydist y =[-20,60]
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------

[State -1, AI9]
type = ChangeState
value = 630
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=610
triggerall = stateno !=640
Triggerall = (P2BodyDist X = [0,65])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall= p2bodydist y =[-20,40]
triggerall =(p2statetype=A)
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, AI9]
type = ChangeState
value = 640
triggerall = AILevel >0
triggerall = statetype = A
triggerall = stateno !=620
triggerall = stateno !=650
Triggerall = (P2BodyDist X = [0,70])
Triggerall = Random <= 70*AILevel
triggerall = roundstate = 2
triggerall = stateno!=[100,105]
triggerall = movecontact || p2statetype!=A
triggerall = vel y >=0 ||(p2statetype=A)
triggerall= p2bodydist y =[-20,75]
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;10Hit
[State -1, 10Hit]
type = ChangeState
value = 2200
triggerall = command = "10hit"
triggerall = power >= 3000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1500 && movecontact
trigger17 = stateno = 1501 && movecontact
trigger18 = stateno = 1700 && movecontact
trigger19 = stateno = 1701 && movecontact

;EI
[State -1, EI]
type = ChangeState
value = 2100
triggerall = command = "EI"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1500 && movecontact
trigger17 = stateno = 1501 && movecontact
trigger18 = stateno = 1700 && movecontact
trigger19 = stateno = 1701 && movecontact
trigger20 = stateno = 1702 && movecontact
trigger21 = stateno = 1502 && movecontact

;avenger
[State -1, avenger]
type = ChangeState
value = 2000
triggerall = command = "avenger"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1001 && movecontact
trigger16 = stateno = 1500 && movecontact
trigger17 = stateno = 1501 && movecontact
trigger18 = stateno = 1700 && movecontact
trigger19 = stateno = 1701 && movecontact

;exsavagesword
[State -1, exsavagesword]
type = ChangeState
value = 1702
triggerall = command = "exsavagesword"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;savagesword
[State -1, savagesword]
type = ChangeState
value = 1700
triggerall = command = "savagesword"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;savagesword2
[State -1, savagesword2]
type = ChangeState
value = 1701
triggerall = command = "savagesword2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;tw
[State -1, tw]
type = ChangeState
value = 1800
triggerall = command = "tw"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;tw2
[State -1, tw2]
type = ChangeState
value = 1805
triggerall = command = "tw2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;EXWM
[State -1, EXWM]
type = ChangeState
value = 1002
triggerall = command = "exsrk"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;WM
[State -1, WM]
type = ChangeState
value = 1000
triggerall = command = "srk"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;WM2
[State -1, WM2]
type = ChangeState
value = 1001
triggerall = command = "srk2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;exdemonspaw
[State -1, exdemonspaw]
type = ChangeState
value = 1502
triggerall = command = "exdemonspaw"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;demonspaw
[State -1, demonspaw]
type = ChangeState
value = 1500
triggerall = command = "demonspaw"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;demonspaw2
[State -1, demonspaw2]
type = ChangeState
value = 1501
triggerall = command = "demonspaw2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;exliftkick
[State -1, exliftkick]
type = ChangeState
value = 1102
triggerall = command = "exliftkick"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;liftkick
[State -1, liftkick]
type = ChangeState
value = 1100
triggerall = command = "liftkick"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;liftkick2
[State -1, liftkick2]
type = ChangeState
value = 1101
triggerall = command = "liftkick2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 14400 && movecontact
trigger3 = stateno = 212 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 200 && movecontact
trigger6 = stateno = 210 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 211 && movecontact
trigger13 = stateno = 246 && movecontact

;flare
[State -1, flare]
type = ChangeState
value = 1300
triggerall = command = "flare"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 1550 && movecontact
trigger3 = stateno = 14400 && movecontact
trigger4 = stateno = 212 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 211 && movecontact
trigger14 = stateno = 246 && movecontact

;flare2
[State -1, flare2]
type = ChangeState
value = 1301
triggerall = command = "flare2"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 1550 && movecontact
trigger3 = stateno = 14400 && movecontact
trigger4 = stateno = 212 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 200 && movecontact
trigger7 = stateno = 210 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 400 && movecontact
trigger11 = stateno = 410 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 211 && movecontact
trigger14 = stateno = 246 && movecontact

;launch
[State -1, upfwd]
Type = changestate
value = 40000
triggerall = command = "upfwd" || command = "up"
triggerall = numproj = 0
triggerall = numhelper = 0
triggerall = var(59) = 0
trigger1 = (StateNo = 410)
trigger1 = movehit
trigger2 = (StateNo = 1000)
trigger2 = movehit
trigger3 = (StateNo = 1001)
trigger3 = movehit

;dodgekick
[state -1, dodgekick]
Type = changestate
value = 240
triggerall = command = "b" || command = "a"
trigger1 = stateno = 260 && time > 15

;dodgepunch
[state -1, dodgepunch]
Type = changestate
value = 210
triggerall = command = "y" || command = "x"
trigger1 = stateno = 260 && time > 15

;dodge
[state -1, dodge]
Type = changestate
value = 260
triggerall = command = "a" && command = "x"
trigger1 = (statetype != a) && ctrl

;fthrow
[state -1, fthrow]
Type = changestate
value = 850
triggerall = command = "c" && command = "holdback"
trigger1 = (statetype != a) && ctrl

;throw
[state -1, throw]
Type = changestate
value = 800
triggerall = command = "c"
trigger1 = (statetype != a) && ctrl

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Air Dash
;[State -1, Air Dash]
;type = ChangeState
;value = 110
;triggerall = pos y <= -35
;trigger1 = command = "FF"
;trigger1 = statetype = a
;trigger1 = ctrl

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


;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 1600
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; DCP
[State -1, DCP]
type = ChangeState
value = 1400
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; FWD+HP
[State -1, FWD+HP]
type = ChangeState
value = 212
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 211 && movecontact
trigger11 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
; F+HK
[State -1, F+HK]
type = ChangeState
value = 1550
triggerall = command = "b" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
; B+HK
[State -1, B+HK]
type = ChangeState
value = 245
triggerall = command = "b" && command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 240 && movecontact
trigger10 = stateno = 211 && movecontact

;---------------------------------------------------------------------------
; B+LP
[State -1, B+LP]
type = ChangeState
value = 201
triggerall = command = "x" && command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 6

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && time >= 6

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 201 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 400 && time >= 6

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 240 && movecontact
trigger8 = stateno = 210 && movecontact
trigger9 = stateno = 211 && movecontact
trigger10 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 430 && time >= 8

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl || (stateno=[100,101])
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 201 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
