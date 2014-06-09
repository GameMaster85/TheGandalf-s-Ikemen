; 1. Command definition
; ---------------------

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

; Normal Supers

[Command]
name = "QCB_DB_F_p"
command = ~D, DB, B, DB, F, x
time = 30

[Command]
name = "QCB_DB_F_p"
command = ~D, DB, B, DB, F, y
time = 30

[Command]
name = "QCB_DB_F_p"
command = ~D, DB, B, DB, F, z
time = 30

[Command]
name = "QCB_DB_F_2p"
command = ~D, DB, B, DB, F, x+y
time = 30

[Command]
name = "QCB_DB_F_2p"
command = ~D, DB, B, DB, F, y+z
time = 30

[Command]
name = "QCB_DB_F_2p"
command = ~D, DB, B, DB, F, x+z
time = 30

[Command]
name = "F_HCF_z"
command = ~F, B, $D, F, z
time = 30

[Command]
name = "DD_a"  
command = ~D, D, a
time = 15

[Command]
name = "DD_b"  
command = ~D, D, b
time = 15

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 15

; Negative Edge Supers

[Command]
name = "QCB_DB_F_p"
command = ~D, DB, B, DB, F, ~x
time = 30

[Command]
name = "QCB_DB_F_p"
command = ~D, DB, B, DB, F, ~y
time = 30

[Command]
name = "QCB_DB_F_p"
command = ~D, DB, B, DB, F, ~z
time = 30

[Command]
name = "F_HCF_z"
command = ~F, B, $D, F, ~z
time = 30

[Command]
name = "DD_a"  
command = ~D, D, ~a
time = 15

[Command]
name = "DD_b"  
command = ~D, D, ~b
time = 15

; Reversed Supers

[Command]
name = "QCF_DF_B_p"
command = ~D, DF,  F, DF, B, x
time = 30

[Command]
name = "QCF_DF_B_p"
command = ~D, DF,  F, DF, B, y
time = 30

[Command]
name = "QCF_DF_B_p"
command = ~D, DF,  F, DF, B, z
time = 30

[Command]
name = "QCF_DF_B_2p"
command = ~D, DF,  F, DF, B, x+y
time = 30

[Command]
name = "QCF_DF_B_2p"
command = ~D, DF, F, DF, B, y+z
time = 30

[Command]
name = "QCF_DF_B_2p"
command = ~D, DF,  F, DF, B, x+z
time = 30

[Command]
name = "B_HCB_z"
command = ~B, F, $D, B, z
time = 30

; Reversed Edge Supers

[Command]
name = "QCF_DF_B_p"
command = ~D, DF,  F, DF, B, ~x
time = 30

[Command]
name = "QCF_DF_B_p"
command = ~D, DF,  F, DF, B, ~y
time = 30

[Command]
name = "QCF_DF_B_p"
command = ~D, DF,  F, DF, B, ~z
time = 30

[Command]
name = "B_HCB_z"
command = ~B, F, $D, B, ~z
time = 30

;-| Special Motions |------------------------------------------------------

; Normal Specials

[Command]
name = "QCF_x"
command = ~D, DF,  F, x
time = 15

[Command]
name = "QCF_y"
command = ~D, DF,  F, y
time = 15

[Command]
name = "QCF_z"
command = ~D, DF,  F, z
time = 15

[Command]
name = "DP_a"
command = ~F, D, F, a
time = 15

[Command]
name = "DP_b"
command = ~F, D, F, b
time = 15

[Command]
name = "DP_c"
command = ~F, D, F, c
time = 15

[Command]
name = "HCB_a"
command = ~F, $D, B, a
time = 20

[Command]
name = "HCB_b"
command = ~F, $D, B, b
time = 20

[Command]
name = "HCB_c"
command = ~F, $D, B, c
time = 20

[Command]
name = "a+b"
command = a+b
time = 10

[Command]
name = "b+c"
command = b+c
time = 10

[Command]
name = "a+c"
command = a+c
time = 10

; Negative Edge Specials

[Command]
name = "QCF_x"
command = ~D, DF,  F, ~x
time = 15

[Command]
name = "QCF_y"
command = ~D, DF,  F, ~y
time = 15

[Command]
name = "QCF_z"
command = ~D, DF,  F, ~z
time = 15

[Command]
name = "DP_a"
command = ~F, D, F, ~a
time = 15

[Command]
name = "DP_b"
command = ~F, D, F, ~b
time = 15

[Command]
name = "DP_c"
command = ~F, D, F, ~c
time = 15

[Command]
name = "HCB_a"
command = ~F, $D, B, ~a
time = 20

[Command]
name = "HCB_b"
command = ~F, $D, B, ~b
time = 20

[Command]
name = "HCB_c"
command = ~F, $D, B, ~c
time = 20

; Reversed Specials

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 15

[Command]
name = "RDP_a"
command = ~B, D, B, a
time = 15

[Command]
name = "RDP_b"
command = ~B, D, B, b
time = 15

[Command]
name = "RDP_c"
command = ~B, D, B, c
time = 15

[Command]
name = "HCF_a"
command = ~B, $D, F, a
time = 20

[Command]
name = "HCF_b"
command = ~B, $D, F, b
time = 20

[Command]
name = "HCF_c"
command = ~B, $D, F, c
time = 20

;Reversed Edge Specials

[Command]
name = "QCB_x"
command = ~D, DB, B, ~x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, B, ~y
time = 15

[Command]
name = "QCB_z"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "RDP_a"
command = ~B, D, B, ~a
time = 15

[Command]
name = "RDP_b"
command = ~B, D, B, ~b
time = 15

[Command]
name = "RDP_c"
command = ~B, D, B, ~c
time = 15

[Command]
name = "HCF_a"
command = ~B, $D, F, ~a
time = 20

[Command]
name = "HCF_b"
command = ~B, $D, F, ~b
time = 20

[Command]
name = "HCF_c"
command = ~B, $D, F, ~c
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "highjump"
command = ~$D, $U
time = 5

[Command]
name = "highjump"
command = ~$D, U
time = 5

[Command]
name = "highjump"
command = $D, ~U
time = 5

[Command]
name = "highjump"
command = ~10$D, U
time = 5

[Command]
name = "highjump"
command = ~10$D, $U
time = 5

[Command]
name = "highjump"
command = ~10$D, ~U
time = 5

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

[Command]
name = "throw"
command = x+y
time = 1

[Command]
name = "throw2"
command = a+b
time = 1

[Command]
name = "dodge"
command = x+a
time = 1

[Command]
name = "repel"
command = y+b
time = 1

[Command]
name = "z+c"
command = z+c
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

[Statedef -1]

[State -1, Random Guard Disable]
type= Assertspecial
triggerall = StateNo != [120,160]
trigger1 = AILevel != 0
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard
;---------------------------------------------------------------------------
[State -1, AI Defense]
type = ChangeState
triggerall = stateno!= [120,160] 
triggerall = roundstate= 2
triggerall = AILevel != 0
triggerall = InGuardDist
trigger1 = ctrl 
trigger1 = random<90*(AILevel**2/64.0)
value = 120
;===========================================================================
;---------------------------------------------------------------------------
[State -1, No Fear Feint (SC)]
type = ChangeState
value = 3010
triggerall = Var(59) = 1 || Var(59) = 3
triggerall = Power = 3000
triggerall = statetype != A
triggerall = ((Anim = [1000,1002]) || (Anim = [1010,1012]) || (StateNo = [1019,1020])) && (Var(17) = [2,3]) || (Anim = 1008 && AnimElemTime(1)>0 &&AnimElemTime(3)<=0 && Var(16) = 0)
;==
trigger1 = IfElse(P2Dist X >= 0, command = "F_HCF_z", command = "B_HCB_z")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = random<40*(AILevel**2/64.0)
trigger2 = Var(17) = [2,3]
trigger2 = abs(P2Bodydist X)<=25
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=25, abs(P2BodyDist Y)=[25,55])
trigger2 = Var(15) < 4
;---------------------------------------------------------------------------
[State -1, No Fear Feint]
type = ChangeState
value = 3010
triggerall = Var(59) = 1 || Var(59) = 3
triggerall = Power = 3000
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || ((stateno = [200,450]) && (var(17) = [1,3]))
;==
trigger1 = IfElse(P2Dist X >= 0, command = "F_HCF_z", command = "B_HCB_z")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = random<35*(AILevel**2/64.0)
trigger2 = (Var(18)=[2,3]) && (Var(16) = [1,3]) || (Var(17) = [2,3])
trigger2 = abs(P2Bodydist X)<=25
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=25, abs(P2BodyDist Y)=[25,55])
trigger2 = Var(15) < 4
;---------------------------------------------------------------------------
[State -1, Going My Way (SC)]
type = ChangeState
value = 3020
triggerall = Var(59) = 3
triggerall = Power = 3000
triggerall = statetype != A
triggerall = ((Anim = [1000,1002]) || (Anim = [1010,1012]) || (StateNo = [1019,1020])) && (Var(17) = [2,3]) || (Anim = 1008 && AnimElemTime(1)>0 &&AnimElemTime(3)<=0 && Var(16) = 0)
;==
trigger1 = command = "DD_a" || command = "DD_b"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = random<25*(AILevel**2/64.0)
trigger2 = Var(17) = 2
trigger2 = abs(P2Bodydist X)<=60
trigger2 = abs(P2Bodydist Y)<=25
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, Going My Way]
type = ChangeState
value = 3020
triggerall = Var(59) = [2,3]
triggerall = Power = 3000
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || ((stateno = [200,450]) && (var(17) = [1,3]))
;==
trigger1 = command = "DD_a" || command = "DD_b"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A || EnemyNear,MoveType = I
trigger2 = (var(18) = [2,3]) && Var(16) = 1
trigger2 = random<15*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)<=100
trigger2 = abs(P2Bodydist Y)<=25
trigger2 = EnemyNear,StateNo!=[120,160]
trigger2 = var(15) = 0
;===========================================================================
;---------------------------------------------------------------------------
[State -1, Lv. 2 Heavenly Spirit of Victory (SC)]
type = ChangeState
value = 3005
triggerall = Var(59) = 1 || Var(59) = 3
triggerall = Power >= 2000
triggerall = statetype != A
triggerall = ((Anim = [1000,1002]) || (Anim = [1010,1012]) || (StateNo = [1019,1020])) && (Var(17) = [2,3]) || (Anim = 1008 || Anim = 1009) && (Var(16) = [1,2])
trigger1 = IfElse(P2Dist X >= 0,command = "QCB_DB_F_2p",command = "QCF_DF_B_2p")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = random<75*(AILevel**2/64.0)
trigger2 = var(16) = 1 && Var(17) = 2
trigger2 = Var(17) = 2
trigger2 = abs(P2Bodydist X)<=65
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=25, (abs(P2BodyDist Y)=[20,35]))
trigger2 = var(15) < 4
;---------------------------------------------------------------------------
[State -1, Lv. 1 Heavenly Spirit of Victory (SC)]
type = ChangeState
value = 3000
triggerall = Var(59) = 1 || Var(59) = 3
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = ((Anim = [1000,1002]) || (Anim = [1010,1012]) || (StateNo = [1019,1020])) && (Var(17) = [2,3]) || (Anim = 1008 || Anim = 1009) && (Var(16) = [1,2])
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCB_DB_F_p",command = "QCF_DF_B_p")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = random<75*(AILevel**2/64.0)
trigger2 = var(16) = 1 && Var(17) = 2
trigger2 = abs(P2Bodydist X)<=40
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=25, (abs(P2BodyDist Y)=[20,35]))
trigger2 = var(15) < 4
;---------------------------------------------------------------------------
[State -1, Lv. 2 Heavenly Spirit of Victory]
type = ChangeState
value = 3005
triggerall = Var(59) = 1 || Var(59) = 3
triggerall = Power >= 2000
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || ((stateno = [200,450]) && (var(17) = [1,3]))
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCB_DB_F_2p",command = "QCF_DF_B_2p")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (var(18) = [2,3]) && Var(16) = 1
trigger2 = random<15*(AILevel**2/64.0) || var(16) = 1 && (var(17) = [1,3]) 
trigger2 = abs(P2Bodydist X)<=60
trigger2 = abs(P2Bodydist X)<=40
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=25, (abs(P2BodyDist Y)=[20,40]))
trigger2 = var(15) < 4
;---------------------------------------------------------------------------
[State -1, Lv. 1 Heavenly Spirit of Victory]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || ((stateno = [200,450]) && (var(17) = [1,3]))
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCB_DB_F_p",command = "QCF_DF_B_p")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = random<10*(AILevel**2/64.0) || var(16) = 1 && (var(17) = [1,3])
trigger2 = abs(P2Bodydist X)<=40
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=25, (abs(P2BodyDist Y)=[20,40]))
trigger2 = var(15) < 4
;===========================================================================
;---------------------------------------------------------------------------
[State -1, LP Distance Slash]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCF_x",command="QCB_x")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A || EnemyNear,MoveType = I
trigger2 = random<20*(AILevel**2/64.0) || var(16) = 1 && var(17) = 1 
trigger2 = abs(P2Bodydist X)=[20,120]
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=40,(abs(P2BodyDist Y)=[25,55]))
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, MP Distance Slash]
type = ChangeState
value = 1001
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCF_y",command="QCB_y")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A || EnemyNear,MoveType = I
trigger2 = random<20*(AILevel**2/64.0) || var(16) = 1 && var(17) = 1 
trigger2 = abs(P2Bodydist X)=[20,120]
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=40,(abs(P2BodyDist Y)=[25,55]))
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, HP Distance Slash]
type = ChangeState
value = 1002
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCF_z",command="QCB_z")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A || EnemyNear,MoveType = I
trigger2 = random<20*(AILevel**2/64.0) || (var(16) = 1 && var(17) = 1 || EnemyNear, StateType = S) && random<20*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)=[20,110]
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=20,(abs(P2BodyDist Y)=[20,40]))
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, LP Distance Slash (Follow-Up)]
type = ChangeState
value = 1000
triggerall = ( Anim = 1009 || Anim = 1010 || Anim = 1020 ) && (Var(17) = [2,3])
;==
trigger1 = command = "QCF_x"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A
trigger2 = Var(17) = 2
trigger2 = random<35*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X) <= 140
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=40,  (abs(P2BodyDist Y)=[25,55]))
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, MP Distance Slash (Follow-Up)]
type = ChangeState
value = 1001
triggerall = ((Anim = 1009) || (Anim = [1010,1012]) || Anim = 1020) && (Var(17) = [2,3])
;==
trigger1 = command = "QCF_y"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A 
trigger2 = Var(17) = 2
trigger2 = random<35*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X) <= 140
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=40,  (abs(P2BodyDist Y)=[25,55]))
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, HP Distance Slash (Follow-Up)]
type = ChangeState
value = 1002
triggerall = ((Anim = 1009) || (Anim = [1010,1012]) || Anim = 1020)  && (Var(17) = [2,3])
;==
trigger1 = command = "QCF_z"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType != A 
trigger2 = Var(17) = [2,3]
trigger2 = random<35*(AILevel**2/64.0) || EnemyNear, StateType = S && random<40*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X) <= 110
trigger2 = IfElse(EnemyNear, HitFall = 0, abs(P2Bodydist Y)<=20,  (abs(P2BodyDist Y)=[20,40]))
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, LP Beckoning Slash]
type = ChangeState
value = 1005
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCB_x", command = "QCF_x")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A 
trigger2 = random<25*(AILevel**2/64.0) || ( (var(18) = [1,3]) && var(16) = 1 ) && random<50*(AILevel**2/64.0) 
trigger2 = abs(P2Bodydist X) <= 50
trigger2 = abs(P2BodyDist Y) <= 40
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, MP Beckoning Slash]
type = ChangeState
value = 1006
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCB_y", command = "QCF_y")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A
trigger2 = random<15*(AILevel**2/64.0) 
trigger2 = abs(P2Bodydist X) <= 75
trigger2 = abs(P2BodyDist Y) <= 40
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, HP Beckoning Slash]
type = ChangeState
value = 1007
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "QCB_z", command = "QCF_z")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType!=A 
trigger2 = random<15*(AILevel**2/64.0) 
trigger2 = abs(P2Bodydist X) <= 125
trigger2 = abs(P2BodyDist Y) <= 40
trigger2 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, LK Piercing Moon Pounce]
type = ChangeState
value = 1010
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "DP_a", command = "RDP_a")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear, MoveType != A
trigger2 = EnemyNear, StateType = C
trigger2 = random<10*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)<=25
trigger2 = EnemyNear,StateType != A
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, MK Piercing Moon Pounce]
type = ChangeState
value = 1011
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "DP_b", command = "RDP_b")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear, MoveType != A
trigger2 = EnemyNear, StateType = C
trigger2 = random<10*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)<=25
trigger2 = EnemyNear,StateType != A
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, HK Piercing Moon Pounce]
type = ChangeState
value = 1012
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 || var(17) = 1
;==
trigger1 = IfElse(P2Dist X >= 0,command = "DP_c", command = "RDP_c")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear, MoveType != A
trigger2 = EnemyNear, StateType = C
trigger2 = random<10*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)<=25
trigger2 = EnemyNear,StateType != A
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, LK Melding Being Blade]
type = ChangeState
value = 1015
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 
;==
trigger1 = IfElse(P2Dist X >= 0,command = "HCF_a", command = "HCB_a")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType = A
trigger2 = EnemyNear,HitDefAttr = SCA,NA,SA
trigger2 = EnemyNear, BackEdgeBodyDist >= 40
trigger2 = random<25*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)<=40
trigger2 = abs(P2Bodydist Y)<=25
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, MK Melding Being Blade]
type = ChangeState
value = 1016
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 
;==
trigger1 = IfElse(P2Dist X >= 0,command = "HCF_b", command = "HCB_b")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType = A
trigger2 = EnemyNear,HitDefAttr = SCA,NA,SA
trigger2 = EnemyNear, BackEdgeBodyDist >= 40
trigger2 = random<25*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)<=40
trigger2 = abs(P2Bodydist Y)<=25
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, HK Melding Being Blade]
type = ChangeState
value = 1017
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl || (stateno = [100,101]) || stateno = 103 
;==
trigger1 = IfElse(P2Dist X >= 0,command = "HCF_c", command = "HCB_c")
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType = A
trigger2 = EnemyNear,HitDefAttr = SCA,NA,SA
trigger2 = EnemyNear, BackEdgeBodyDist < 40
trigger2 = random<25*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)<=40
trigger2 = abs(P2Bodydist Y)<=25
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, Nukazuba Kiranu Nari]
type = ChangeState
value = 1020
triggerall = StateNo = 1018
triggerall = AnimElemTime(7)>=2
triggerall = AILevel!=0&&RoundState=2
;==
trigger1 = EnemyNear,BackEdgeBodyDist > 20
trigger1 = abs(P2Bodydist Y)=[25,45]
trigger1 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, Nukaba Kiru Nari]
type = ChangeState
value = 1019
triggerall = StateNo = 1018
triggerall = AnimElemTime(7)>=2
triggerall = AILevel!=0&&RoundState=2
;==
trigger1 = EnemyNear,BackEdgeBodyDist <= 20
trigger1 = abs(P2Bodydist Y)=(25,95]
trigger1 = var(15) < 3
;---------------------------------------------------------------------------
[State -1, Narrow Escape]
type = ChangeState
value = 1025
triggerall = ctrl
triggerall = StateType != A
;==
trigger1 = AILevel = 0
trigger1 = command != "holdfwd" && command !="holdback"
trigger1 = command = "a+b" || command = "b+c" || command = "a+c"
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<50*(AILevel**2/64.0))
trigger2 = EnemyNear,MoveType = A
trigger2 = EnemyNear,HitDefAttr = SCA,AT,AP
trigger2 = abs(P2Bodydist X)<=50
trigger2 = abs(P2Bodydist Y)<=50
trigger2 = var(15) = 0

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run/Forward Hop]
type = ChangeState
value = IfElse((Var(59)=[2,3]),100,102)
triggerall = ctrl
triggerall = StateType = S
trigger1 = AILevel = 0
trigger1 = IfElse(P2Dist X >= 0,command="FF",command="BB")
;==
;trigger2 = AILevel!=0&&RoundState=2
;trigger2 = (random<50*(AILevel**2/64.0))
;trigger2 = P2BodyDist X > 120
;trigger2 = FrontEdgeBodyDist > 50
;trigger2 = EnemyNear,StateType = L
;trigger2 = EnemyNear,MoveType != A  || EnemyNear, MoveType = I
;trigger2 = StateNo!=[100,101]
;trigger2 = PrevStateNo!=[100,101]
;---------------------------------------------------------------------------
; Backhop
[State -1, Backhop]
type = ChangeState
value = 105
triggerall= ctrl
triggerall = StateType = S
trigger1 = AILevel = 0
trigger1 = IfElse(P2Dist X >= 0,command="BB",command="FF")
;==
;trigger2 = AILevel!=0&&RoundState=2
;trigger2 = P2Bodydist X<=30
;trigger2 = BackEdgeBodyDist > 50
;trigger2 = EnemyNear,MoveType = A
;trigger2 = PrevStateNo!=[105,106]
;trigger2 = StateNo!=[105,106]
;---------------------------------------------------------------------------
[State -1, Throw (AI)]
type = ChangeState
value = 800
triggerall = var(0) = 0
triggerall = AILevel!=0&&RoundState=2
triggerall = statetype = S
triggerall = PrevStateNo != [800,805]
trigger1 = ctrl
trigger1 = abs(P2BodyDist X)<=20
trigger1 = EnemyNear,StateType!=A && EnemyNear, StateType != L
trigger1 = EnemyNear,MoveType!=A
trigger1 = (random<70*(AILevel**2/64.0)) || (EnemyNear,StateNo = [130,132])
trigger1 = FrontEdgeBodyDist < 50
;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = AILevel = 0
triggerall = StateType = S
triggerall = ctrl
trigger1 = command = "throw"
;---------------------------------------------------------------------------
[State -1, Throw 2 (AI)]
type = ChangeState
value = 805
triggerall = var(0) = 0
triggerall = AILevel!=0&&RoundState=2
triggerall = statetype = S
triggerall = PrevStateNo != [800,805]
trigger1 = ctrl
trigger1 = abs(P2BodyDist X)<=20
trigger1 = EnemyNear,StateType!=A && EnemyNear, StateType != L
trigger1 = EnemyNear,MoveType!=A
trigger1 = (random<70*(AILevel**2/64.0)) || (EnemyNear,StateNo = [130,132])
trigger1 = FrontEdgeBodyDist >= 50
;---------------------------------------------------------------------------
[State -1, Throw 2]
type = ChangeState
value = 805
triggerall = AILevel = 0
triggerall = StateType = S
triggerall = ctrl
trigger1 = command = "throw2"
;---------------------------------------------------------------------------
[State -1, Repel]
type = ChangeState
value = IfElse(StateType = S, 700, IfElse(StateType = C, 701, 702))
triggerall = ctrl
;==
trigger1 = AILevel = 0
trigger1 = command = "repel"
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = EnemyNear,MoveType = A
trigger2 = EnemyNear,HitDefAttr = SCA,NA,HA
trigger2 = random<100*(AILevel**2/64.0)
trigger2 = abs(P2Bodydist X)<=40
trigger2 = abs(P2Bodydist Y)<=30
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, Unblockable]
type = ChangeState
value = 710
triggerall = Var(59) = 1
triggerall = ctrl
triggerall = StateType != A
;==
trigger1 = AILevel = 0
trigger1 = command = "z+c"
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=55
trigger2 = P2StateType != A
trigger2 = var(15) = 0 || (EnemyNear,StateNo = [120,160])
;---------------------------------------------------------------------------
[State -1, Overhead]
type = ChangeState
value = 712
triggerall = Var(59) = [2,3]
triggerall = ctrl
triggerall = StateType != A
;==
trigger1 = AILevel = 0
trigger1 = command = "z+c"
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=35
trigger2 = abs(P2Bodydist Y)<=65
trigger2 = var(15) = 0
trigger2 = EnemyNear,StateType = C
;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "s"
trigger1 = AILevel = 0
;---------------------------------------------------------------------------
[State -1, st.LP]
type = ChangeState
value = 200
triggerall = command != "holddown"
triggerall = StateType !=A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || ( (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && Time > 6) || stateno = 1026  
trigger1 = command = "x"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=35
trigger2 = abs(P2Bodydist Y)<=45
trigger2 = var(15) = 0
ignorehitpause = 0
;---------------------------------------------------------------------------
[State -1, st.MP]
type = ChangeState
value = IfElse(abs(P2BodyDist X>=25),210,211)
triggerall = command != "holddown"
triggerall = StateType !=A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || ( (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && Time > 4 && (var(59) = [2,3]))  || stateno = 1026  
trigger1 = command = "y"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=45
trigger2 = abs(P2Bodydist Y)<=30
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, Close st.HP Punch Follow Up]
type = ChangeState
value = 222
triggerall = stateno = 221 && (Var(16) = 1 || Var(16) = 2) && AnimElemTime(5)<5
triggerall = StateType !=A
trigger1 = command = "hold_z"
trigger1 = AILevel=0
;==
trigger2 = AILevel != 0 && RoundState = 2
trigger2 = var(16) = 1
trigger2 = abs(P2BodyDist X)<=40
trigger2 = abs(P2BodyDist Y)<=45
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, st.HP]
type = ChangeState
value = IfElse(abs(P2BodyDist X)>25,220,221)
triggerall = command != "holddown"
triggerall = StateType !=A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || stateno = 1026 || ( ((stateno = [200,211]) || stateno = [230,241]) && MoveType = I && ((var(59) = [2,3])) && (Var(16) = [1,2]) ) 
trigger1 = command = "z"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=50
trigger2 = abs(P2Bodydist Y)<= IfElse(abs(P2BodyDist X < 25),75,45)
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, st.LK]
type = ChangeState
value = 230
triggerall = command != "holddown"
triggerall = StateType !=A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || ( (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && Time > 4) || stateno = 1026 
trigger1 = command = "a"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=30
trigger2 = P2StateType != A
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, st.MK]
type = ChangeState
value = IfElse(abs(P2BodyDist X)>40,240,241)
triggerall = command != "holddown"
triggerall = StateType !=A
triggerall = ctrl  || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || stateno = 1026  || (((stateno = [200,210]) || stateno = 230) && MoveType = I && ((var(59) = [2,3])))
trigger1 = command = "b"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=45
trigger2 = abs(P2Bodydist Y)<=30
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, st.HK]
type = ChangeState
value = IfElse(abs(P2BodyDist X)>25,250,251)
triggerall = command != "holddown"
triggerall = StateType !=A
triggerall = ctrl  || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || stateno = 1026  || ( (stateno = [200,211]) || (stateno = [230,241])) && MoveType = I && (Var(16) = [1,2]) && ((var(59) = [2,3]))
trigger1 = command = "c"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=IfElse(abs(P2BodyDist X) > 25,45,35)
trigger2 = abs(P2Bodydist Y)<=30
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, cr.LP]
type = ChangeState
value = 400
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl  || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || ( (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && Time > 6) || stateno = 1026  
trigger1 = command = "x"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=50
trigger2 = abs(P2Bodydist Y)<=40
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, cr.MP]
type = ChangeState
value = 410
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || stateno = 1026 
trigger1 = command = "y"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=50
trigger2 = abs(P2Bodydist Y)<=40
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, cr.HP]
type = ChangeState
value = 420
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || stateno = 1026 
trigger1 = command = "z"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)<=40
trigger2 = abs(P2Bodydist Y)<=40
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, cr.LK]
type = ChangeState
value = 430
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || ( (stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430) && Time > 4) || stateno = 1026  
trigger1 = command = "a"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<350*(AILevel**2/32.0))
trigger2 = EnemyNear,StateType = S
trigger2 = abs(P2Bodydist X)<=40
trigger2 = abs(P2Bodydist Y)<=40
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, cr.MK]
type = ChangeState
value = 440
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || stateno = 1026 
trigger1 = command = "b"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<350*(AILevel**2/32.0))
trigger2 = EnemyNear,StateType = S
trigger2 = abs(P2Bodydist X)<=45
trigger2 = abs(P2Bodydist Y)<=40
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, cr.HK]
type = ChangeState
value = 450
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = ctrl || stateno = 52 && ctrl|| (stateno = [100,101]) || stateno = 103 || stateno = 1026 
trigger1 = command = "c"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<350*(AILevel**2/32.0))
trigger2 = EnemyNear,StateType = S
trigger2 = abs(P2Bodydist X)<=50
trigger2 = abs(P2Bodydist Y)<=40
trigger2 = var(15) = 0
;---------------------------------------------------------------------------
[State -1, j.LP]
type = ChangeState
value = 600
triggerall = statetype = A && ctrl
trigger1 = command = "x"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = P2BodyDist X=[0,40]
trigger2 = enemynear,pos Y-pos Y=[-30,0]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateNo!=[53000,53015])
trigger2 = (EnemyNear,StateType!=L)
trigger2 = var(15) < 2
;---------------------------------------------------------------------------
[State -1, j.MP]
type = ChangeState
value = 610
triggerall = statetype = A && ctrl
trigger1 = command = "y"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = P2BodyDist X=[0,40]
trigger2 = enemynear,pos Y-pos Y=[-30,0]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateNo!=[53000,53015])
trigger2 = (EnemyNear,StateType!=L)
trigger2 = var(15) < 2
;---------------------------------------------------------------------------
[State -1, j.HP]
type = ChangeState
value = 620
triggerall = statetype = A && ctrl
trigger1 = command = "z"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = P2BodyDist X=[0,40]
trigger2 = enemynear,pos Y-pos Y=[-25,25]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateNo!=[53000,53015])
trigger2 = (EnemyNear,StateType!=L)
trigger2 = var(15) < 2
;---------------------------------------------------------------------------
[State -1, j.LK]
type = ChangeState
value = 630
triggerall = statetype = A && ctrl
trigger1 = command = "a"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = P2BodyDist X=[0,40]
trigger2 = enemynear,pos Y-pos Y=[0,45]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateNo!=[53000,53015])
trigger2 = (EnemyNear,StateType!=L)
trigger2 = var(15) < 2
;---------------------------------------------------------------------------
[State -1, j.MK]
type = ChangeState
value = 640
triggerall = statetype = A && ctrl
trigger1 = command = "b"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = P2BodyDist X=[0,40]
trigger2 = enemynear,pos Y-pos Y=[-30,45]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateNo!=[53000,53015])
trigger2 = (EnemyNear,StateType!=L)
trigger2 = var(15) < 2
;---------------------------------------------------------------------------
[State -1, j.HK]
type = ChangeState
value = 650
triggerall = statetype = A && ctrl
trigger1 = command = "c"
trigger1 = AILevel=0
;==
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<70*(AILevel**2/64.0))
trigger2 = P2BodyDist X=[0,40]
trigger2 = enemynear,pos Y-pos Y=[15,45]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateNo!=[53000,53015])
trigger2 = (EnemyNear,StateType!=L)
trigger2 = var(15) < 2
