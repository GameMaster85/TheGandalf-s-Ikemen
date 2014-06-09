; The CMD file. Don't fuck with any of this.
;
[Defaults]
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------
[Command]
name = "QCF_rQCD_3p"
command = ~D,DF,F,B,DB,D,x+y+z
time = 24
[Command]
name = "QCB_rQCD_3p"
command = ~D,DB,B,F,DF,D,x+y+z
time = 24

[Command]
name = "QCF_rQCD_2p"
command = ~D,DF,F,B,DB,D,x+y
time = 24
[Command]
name = "QCF_rQCD_2p"
command = ~D,DF,F,B,DB,D,y+z
time = 24
[Command]
name = "QCF_rQCD_2p"
command = ~D,DF,F,B,DB,D,x+z
time = 24

[Command]
name = "QCB_rQCD_2p"
command = ~D,DB,B,F,DF,D,x+y
time = 24
[Command]
name = "QCB_rQCD_2p"
command = ~D,DB,B,F,DF,D,y+z
time = 24
name = "QCB_rQCD_2p"
command = ~D,DB,B,F,DF,D,x+z
time = 24

[Command]
name = "QCF_2p"
command = ~D,DF,F,x+y
time = 12
[Command]
name = "QCF_2p"
command = ~D,DF,F,y+z
time = 12
[Command]
name = "QCF_2p"
command = ~D,DF,F,x+z
time = 12

[Command]
name = "QCB_2p"
command = ~D,DB,B,x+y
time = 12
[Command]
name = "QCB_2p"
command = ~D,DB,B,y+z
time = 12
[Command]
name = "QCB_2p"
command = ~D,DB,B,x+z
time = 12

[Command]
name = "QCF_2k"
command = ~D,DF,F,a+b
time = 12
[Command]
name = "QCF_2k"
command = ~D,DF,F,b+c
time = 12
[Command]
name = "QCF_2k"
command = ~D,DF,F,a+c
time = 12

[Command]
name = "QCB_2k"
command = ~D,DB,B,a+b
time = 12
[Command]
name = "QCB_2k"
command = ~D,DB,B,b+c
time = 12
[Command]
name = "QCB_2k"
command = ~D,DB,B,a+c
time = 12

[Command]
name = "DK_2k"
command = ~F,D,DF,a+b
time = 12
[Command]
name = "DK_2k"
command = ~F,D,DF,b+c
time = 12
[Command]
name = "DK_2k"
command = ~F,D,DF,a+c
time = 12

[Command]
name = "DB_2k"
command = ~B,D,DB,a+b
time = 12
[Command]
name = "DB_2k"
command = ~B,D,DB,b+c
time = 12
[Command]
name = "DB_2k"
command = ~B,D,DB,a+c
time = 12

[Command]
name = "CS_2p"
command = ~F,D,DF,x+y
time = 12
[Command]
name = "CS_2p"
command = ~F,D,DF,y+z
time = 12
[Command]
name = "CS_2p"
command = ~F,D,DF,x+z
time = 12

[Command]
name = "DB_2p"
command = ~B,D,DB,x+y
time = 12
[Command]
name = "DB_2p"
command = ~B,D,DB,y+z
time = 12
[Command]
name = "DB_2p"
command = ~B,D,DB,x+z
time = 12

[Command]
name = "HCF_2p"
command = ~B,D,F,x+y
time = 20
[Command]
name = "HCF_2p"
command = ~B,D,F,y+z
time = 20
[Command]
name = "HCF_2p"
command = ~B,D,F,x+z
time = 20

[Command]
name = "HCB_2p"
command = ~F,D,B,x+y
time = 20
[Command]
name = "HCB_2p"
command = ~F,D,B,y+z
time = 20
[Command]
name = "HCB_2p"
command = ~F,D,B,x+z
time = 20

[Command]
name = "HCF_LK+MK"
command = ~B,D,F,a+b
time = 20
[Command]
name = "HCF_MK+HK"
command = ~B,D,F,b+c
time = 20
[Command]
name = "HCF_LK+HK"
command = ~B,D,F,a+c
time = 20

[Command]
name = "HCB_LK+MK"
command = ~F,D,B,a+b
time = 20
[Command]
name = "HCB_MK+HK"
command = ~F,D,B,b+c
time = 20
[Command]
name = "HCB_LK+HK"
command = ~F,D,B,a+c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCF_lk"
command = ~D,DF,F,a
time = 12
[Command]
name = "QCF_mk"
command = ~D,DF,F,b
time = 12
[Command]
name = "QCF_hk"
command = ~D,DF,F,c
time = 12

[Command]
name = "QCF_lk"
command = ~D,DF,F,~a
time = 12
[Command]
name = "QCF_mk"
command = ~D,DF,F,~b
time = 12
[Command]
name = "QCF_hk"
command = ~D,DF,F,~c
time = 12

[Command]
name = "QCB_lk"
command = ~D,DB,B,a
time = 12
[Command]
name = "QCB_mk"
command = ~D,DB,B,b
time = 12
[Command]
name = "QCB_hk"
command = ~D,DB,B,c
time = 12

[Command]
name = "QCB_lk"
command = ~D,DB,B,~a
time = 12
[Command]
name = "QCB_mk"
command = ~D,DB,B,~b
time = 12
[Command]
name = "QCB_hk"
command = ~D,DB,B,~c
time = 12

[Command]
name = "QCF_lp"
command = ~D,DF,F,x
time = 12
[Command]
name = "QCF_mp"
command = ~D,DF,F,y
time = 12
[Command]
name = "QCF_hp"
command = ~D,DF,F,z
time = 12

[Command]
name = "QCF_lp"
command = ~D,DF,F,~x
time = 12
[Command]
name = "QCF_mp"
command = ~D,DF,F,~y
time = 12
[Command]
name = "QCF_hp"
command = ~D,DF,F,~z
time = 12

[Command]
name = "QCB_lp"
command = ~D,DB,B,x
time = 12
[Command]
name = "QCB_mp"
command = ~D,DB,B,y
time = 12
[Command]
name = "QCB_hp"
command = ~D,DB,B,z
time = 12

[Command]
name = "QCB_lp"
command = ~D,DB,B,~x
time = 12
[Command]
name = "QCB_mp"
command = ~D,DB,B,~y
time = 12
[Command]
name = "QCB_hp"
command = ~D,DB,B,~z
time = 12

[Command]
name = "DK_lk"
command = ~F,D,DF,a
time = 12
[Command]
name = "DK_mk"
command = ~F,D,DF,b
time = 12
[Command]
name = "DK_hk"
command = ~F,D,DF,c
time = 12

[Command]
name = "DK_lk"
command = ~F,D,DF,~a
time = 12
[Command]
name = "DK_mk"
command = ~F,D,DF,~b
time = 12
[Command]
name = "DK_hk"
command = ~F,D,DF,~c
time = 12

[Command]
name = "DB_lk"
command = ~B,D,DB,a
time = 12
[Command]
name = "DB_mk"
command = ~B,D,DB,b
time = 12
[Command]
name = "DB_hk"
command = ~B,D,DB,c
time = 12

[Command]
name = "DB_lk"
command = ~B,D,DB,~a
time = 12
[Command]
name = "DB_mk"
command = ~B,D,DB,~b
time = 12
[Command]
name = "DB_hk"
command = ~B,D,DB,~c
time = 12

[Command]
name = "CS_lp"
command = ~F,D,DF,x
time = 12
[Command]
name = "CS_mp"
command = ~F,D,DF,y
time = 12
[Command]
name = "CS_hp"
command = ~F,D,DF,z
time = 12

[Command]
name = "CS_lp"
command = ~F,D,DF,~x
time = 12
[Command]
name = "CS_mp"
command = ~F,D,DF,~y
time = 12
[Command]
name = "CS_hp"
command = ~F,D,DF,~z
time = 12

[Command]
name = "DB_lp"
command = ~B,D,DB,x
time = 12
[Command]
name = "DB_mp"
command = ~B,D,DB,y
time = 12
[Command]
name = "DB_hp"
command = ~B,D,DB,z
time = 12

[Command]
name = "DB_lp"
command = ~B,D,DB,~x
time = 12
[Command]
name = "DB_mp"
command = ~B,D,DB,~y
time = 12
[Command]
name = "DB_hp"
command = ~B,D,DB,~z
time = 12

[Command]
name = "HCF_lp"
command = ~B,DB,D,DF,F,x
time = 20
[Command]
name = "HCF_mp"
command = ~B,DB,D,DF,F,y
time = 20
[Command]
name = "HCF_hp"
command = ~B,DB,D,DF,F,z
time = 20

[Command]
name = "HCF_lp"
command = ~B,DB,D,DF,F,~x
time = 20
[Command]
name = "HCF_mp"
command = ~B,DB,D,DF,F,~y
time = 20
[Command]
name = "HCF_hp"
command = ~B,DB,D,DF,F,~z
time = 20

[Command]
name = "HCB_lp"
command = ~F,DF,D,DB,B,x
time = 20
[Command]
name = "HCB_mp"
command = ~F,DF,D,DB,B,y
time = 20
[Command]
name = "HCB_hp"
command = ~F,DF,D,DB,B,z
time = 20

[Command]
name = "HCB_lp"
command = ~F,DF,D,DB,B,~x
time = 20
[Command]
name = "HCB_mp"
command = ~F,DF,D,DB,B,~y
time = 20
[Command]
name = "HCB_hp"
command = ~F,DF,D,DB,B,~z
time = 20

[Command]
name = "HCB_mk"
command = ~F,DF,D,DB,B,b
time = 20
[Command]
name = "HCB_hk"
command = ~F,DF,D,DB,B,c
time = 20

[Command]
name = "HCB_mk"
command = ~F,DF,D,DB,B,~b
time = 20
[Command]
name = "HCB_hk"
command = ~F,DF,D,DB,B,~c
time = 20

[Command]
name = "HCF_mk"
command = ~B,DB,D,DF,F,b
time = 20
[Command]
name = "HCF_hk"
command = ~B,DB,D,DF,F,c
time = 20

[Command]
name = "HCF_mk"
command = ~B,DB,D,DF,F,~b
time = 20
[Command]
name = "HCF_hk"
command = ~B,DB,D,DF,F,~c
time = 20

[Command]
name = "dd_LK+MK"
command = $D,$D,a+b
time = 12
[Command]
name = "dd_MK+HK"
command = $D,$D,b+c
time = 12
[Command]
name = "dd_LK+HK"
command = $D,$D,a+c
time = 12

[Command]
name = "dd_2P"
command = $D,$D,x+y
time = 12
[Command]
name = "dd_2P"
command = $D,$D,y+z
time = 12
[Command]
name = "dd_2P"
command = $D,$D,x+z
time = 12

[Command]
name = "dd_P"
command = $D,$D,x
time = 12
[Command]
name = "dd_P"
command = $D,$D,y
time = 12
[Command]
name = "dd_P"
command = $D,$D,z
time = 12

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "pursuit"
command = $U,x
time = 3
[Command]
name = "pursuit"
command = $U,y
time = 3
[Command]
name = "pursuit"
command = $U,z
time = 3
[Command]
name = "pursuit"
command = $U,a
time = 3
[Command]
name = "pursuit"
command = $U,b
time = 3
[Command]
name = "pursuit"
command = $U,c
time = 3

[Command]
name = "ES pursuit"
command = $U,x+y
time = 3
[Command]
name = "ES pursuit"
command = $U,y+z
time = 3
[Command]
name = "ES pursuit"
command = $U,x+z
time = 3
[Command]
name = "ES pursuit"
command = $U,a+b
time = 3
[Command]
name = "ES pursuit"
command = $U,b+c
time = 3
[Command]
name = "ES pursuit"
command = $U,a+c
time = 3

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "longjump"
command = D,$U
time = 18

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
command = x+a
time = 10

[Command]
name = "MAX"
command = z+c
time = 10

[Command]
name = "cancel"
command = y+b
time = 10

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
name = "a1"
command = a
time = 1
buffer.time = 10
[Command]
name = "b1"
command = b
time = 1
buffer.time = 10
[Command]
name = "c1"
command = c
time = 1
buffer.time = 10
[Command]
name = "x1"
command = x
time = 1
buffer.time = 10
[Command]
name = "y1"
command = y
time = 1
buffer.time = 10
[Command]
name = "z1"
command = z
time = 1
buffer.time = 10

[Command]
name = "start"
command = s
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
time = 1

[Command]
name = "parry"
command = F
time = 1

[Command]
name = "parry2"
command = D
time = 1

[Command]
name = "rich"
command = U
time = 1

[Command]
name = "up"
command = U
time = 3

[Command]
name = "down"
command = D
time = 3

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
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

;-| Release Button |---------------------------------------------------------
[Command]
name = "release_a"
command = ~a
time = 1

[Command]
name = "release_b"
command = ~b
time = 1

[Command]
name = "release_c"
command = ~c
time = 1

[Command]
name = "release_x"
command = ~x
time = 1

[Command]
name = "release_y"
command = ~y
time = 1

[Command]
name = "release_z"
command = ~z
time = 1

[Command]
name = "release_start"
command = ~s
time = 1

;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
[State -1, Chain]
type = CtrlSet
triggerall = !Ctrl
trigger1 =  (StateNo = 52 || StateNo = 101 || StateNo = 106 || StateNo = 5120 || StateNo = 1305 || StateNo = 503) && AnimTime = 0 ;Land States
trigger2 =  (StateNo = [200,499]) && AnimTime = 0 && Anim != 300 ;Standing and Crouching Basics
;trigger3 =  (StateNo = [600,699]) && AnimTime = 0 ;Aerial Basics
trigger3 = ((StateNo = 5201) || (StateNo = [900,999])) && Anim != 900 && AnimTime = 0 ;System States
trigger4 =   StateNo = 2800 && AnimTime = 0       ;Counter Attacks
trigger5 =  (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value= 1
;==========================================================================;
;                              HUMAN COMMANDS                              ;
;==========================================================================;
;---------------------------------------------------------------------------
; Please Help Me!
[State -1, Please Help Me!]
type = ChangeState
value = 3100
triggerall = !FVar(38)
triggerall = Var(10) > 0
triggerall = !NumHelper(3103) && !NumHelper(3106) && !NumHelper(3120) && !NumHelper(3130)
triggerall = ifElse((Anim !=[5,6]), (command = "HCF_LK+MK" || command = "HCF_MK+HK" || command = "HCF_LK+HK"), (command = "HCB_LK+MK" || command = "HCB_MK+HK" || command = "HCB_LK+HK"))
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dancing Flash (VP
[State -1, Dancing Flash (VP)]
type = ChangeState
value = 3000
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]), ifElse(Var(34)=1,command="QCF_rQCD_2p",command="QCF_rQCD_3p"), ifElse(Var(34)=1,command="QCB_rQCD_2p",command="QCB_rQCD_3p"))
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dancing Flash
[State -1, Dancing Flash]
type = ChangeState
value = 3000
triggerall = !FVar(38)
triggerall = Var(10) > 0
triggerall = ifElse((Anim !=[5,6]), ifElse(Var(10)=1,command="CS_2p",command = "HCF_2p"), ifElse(Var(10)=1,command="DB_2p",command = "HCB_2p"))
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Cancel Dark Force
[State -1, Cancel Dark Force]
type = ChangeState
value = 3505
triggerall = !FVar(38)
triggerall = StateType != A
trigger1 = Var(10) = 2 && Var(14)
trigger1 = command = "recovery" || command = "MAX" || command = "cancel" 
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = ifElse(Var(10)=2,Var(14),Var(29))
trigger2 = ctrl && !ifElse(Var(10)=2,Var(13),Var(28))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Kitty the Helper (DARK FORCE)
[State -1, Kitty the Helper (DARK FORCE)]
type = ChangeState
value = 3500
triggerall = !FVar(38)
triggerall = Var(10) = 2
triggerall = !NumHelper(3107)
triggerall = Power >= 1000
triggerall = command = "recovery" || command = "MAX" || command = "cancel" 
trigger1 = statetype = S
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = statetype = C
trigger2 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Kitty the Helper
[State -1, Kitty the Helper (VS2)]
type = ChangeState
value = 3500
triggerall = !FVar(38)
triggerall = Var(10) > 2
triggerall = !NumHelper(3107)
triggerall = Power >= 1000
triggerall = ifElse((Anim !=[5,6]), ifElse(Var(10)=3,command="DB_2k",command = "DK_2k"), ifElse(Var(10)=3,command="DK_2k",command = "DB_2k"))
triggerall = StateType != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dark Force (VS2)
[State -1, Dark Force (VS2)]
type = ChangeState
value = 1
triggerall = !FVar(38)
triggerall = Var(10) > 2
triggerall = !Var(14)
triggerall = Power >= 1000
triggerall = command = "recovery" || command = "MAX" || command = "cancel" 
trigger1 = statetype = S
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = statetype = C
trigger2 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Attack
[State -1, Guard Cancel]
type = ChangeState
value = 2800
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = StateNo = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = Power >= 1000
trigger1 = Var(10) = [2,3]
trigger1 = ifElse((Anim !=[5,6]), (command = "DK_lk" || command = "DK_mk" || command = "DK_hk"), (command = "DB_lk" || command = "DB_mk" || command = "DB_hk"))
trigger2 = Var(10) = 4
trigger2 = ifElse((Anim !=[5,6]), (command = "DB_lk" || command = "DB_mk" || command = "DB_hk"), (command = "DK_lk" || command = "DK_mk" || command = "DK_hk"))
ignorehitpause = 0

;---------------------------------------------------------------------------
; ESPursuit Attack
[State -1, Pursuit Attack]
type = ChangeState
value = 960
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = command = "ES pursuit"
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = Var(10) > 0
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = p2StateNo = 5071 || p2StateNo = 5110 || p2StateNo = 5101 || (p2StateNo = 888 && p2MoveType = H) || p2StateNo = [3901,3910]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Pursuit Attack
[State -1, Pursuit Attack]
type = ChangeState
value = 960
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = command = "pursuit"
triggerall = StateType != A
triggerall = Var(10) > 0
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = p2StateNo = 5071 || p2StateNo = 5110 || p2StateNo = 5101 || (p2StateNo = 888 && p2MoveType = H) || p2StateNo = [3901,3910]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = !FVar(38)
triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !FVar(38)
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Recovery Roll
[State -1, Recovery Roll]
type = ChangeState
value = 500
triggerall = !FVar(38)
triggerall = Alive
triggerall = StateNo = 5120
triggerall = Pos Y + Vel Y >= 0
trigger1 = Var(17)
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
; Taunt (VP)
[State -1, Taunt (VP)]
type = ChangeState
value = 195
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = command = "start"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !FVar(38)
triggerall = Var(10) > 0
triggerall = command = "start"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Wall Cling (back)
[State -1, Wall Cling (back)]
type = ChangeState
value = 88
triggerall = !FVar(38)
triggerall = StateNo != 5050 && Alive
triggerall = statetype = A
triggerall = ctrl
triggerall = StateNo = 50 && PrevStateNo != 840
triggerall = Pos Y < -40
trigger1 = backedgebodydist < 1 && command = "back"
ignorehitpause = 0

;---------------------------------------------------------------------------
; Wall Cling (forward)
[State -1, Wall Cling (forward)]
type = ChangeState
value = 89
triggerall = !FVar(38)
triggerall = StateNo != 5050 && Alive
triggerall = statetype = A
triggerall = ctrl
triggerall = StateNo = 50 && PrevStateNo != 845
triggerall = Pos Y < -40
trigger1 = frontedgebodydist < 1 && command = "parry"
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Toy Touch
[State -1, ES Toy Touch]
type = ChangeState
value = 2600
triggerall = !FVar(38)
triggerall = Var(10) > 1
triggerall = roundstate = 2
triggerall = command = "dd_2P"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = p2StateNo = 5071 || p2StateNo = 5110 || p2StateNo = 5101 || (p2StateNo = 888 && p2MoveType = H) || p2StateNo = [3901,3910]
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Cat Spike
[State -1, ES Cat Spike]
type = ChangeState
value = 2200
triggerall = !FVar(38)
triggerall = Var(10) > 1
triggerall = !numHelper(2250)
triggerall = ifElse((Anim !=[5,6]), command = "CS_2p", command = "DB_2p")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Delta Kick (VP)
[State -1, ES Delta Kick (VP)]
type = ChangeState
value = 2305
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]), ifElse((Var(10)=[2,3]),command="DK_2k",command = "DB_2k"), ifElse((Var(10)=[2,3]),command="DB_2k",command = "DK_2k"))
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Delta Kick
[State -1, ES Delta Kick]
type = ChangeState
value = 2300
triggerall = !FVar(38)
triggerall = Var(10) > 0
triggerall = ifElse((Anim !=[5,6]), ifElse((Var(10)=[2,3]),command="DK_2k",command = "DB_2k"), ifElse((Var(10)=[2,3]),command="DB_2k",command = "DK_2k"))
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Rolling Buckler (VP)
[State -1, ES Rolling Buckler (VP)]
type = ChangeState
value = 2005
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]), command = "HCF_2p", command = "HCB_2p")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Rolling Buckler
[State -1, ES Rolling Buckler]
type = ChangeState
value = 2000
triggerall = !FVar(38)
triggerall = Var(10) > 0
triggerall = ifElse((Anim !=[5,6]), command = "QCF_2p", command = "QCB_2p")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Rolling Scratch (VP)
[State -1, ES Rolling Scratch (VP)]
type = ChangeState
value = 2400
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]), command = "HCB_2p", command = "HCF_2p")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Rolling Scratch
[State -1, ES Rolling Scratch]
type = ChangeState
value = 2400
triggerall = !FVar(38)
triggerall = Var(10) = 1 || Var(10) = 4
triggerall = ifElse((Anim !=[5,6]), command = "QCB_2p", command = "QCF_2p")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Sand Splash (VP)
[State -1, ES Sand Splash (VP)]
type = ChangeState
value = 2100
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]), command = "QCF_2k", command = "QCB_2k")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Sand Splash
[State -1, ES Sand Splash]
type = ChangeState
value = 2100
triggerall = !FVar(38)
triggerall = Var(10) = 1 || Var(10) = 4
triggerall = ifElse((Anim !=[5,6]), command = "QCF_2k", command = "QCB_2k")
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; ES Hellcat
[State -1, ES Hellcat]
type = ChangeState
value = 2500
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = ifElse((Anim !=[5,6]), (command = "HCB_LK+MK" || command = "HCB_MK+HK" || command = "HCB_LK+HK"), (command = "HCF_LK+MK" || command = "HCF_MK+HK" || command = "HCF_LK+HK"))
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = P2BodyDist X <= 10
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = !FVar(38)
triggerall = RoundState = 2
triggerall = Var(10) > 1
triggerall = Power < Const(data.power)
triggerall = command = "dd_LK+MK" || command = "dd_MK+HK" || command = "dd_LK+HK"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger7 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger8 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger9 = StateNo = 400 && AnimElemTime(3) < 0
trigger10 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger13 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Toy Touch
[State -1, Toy Touch]
type = ChangeState
value = 1600
triggerall = !FVar(38)
triggerall = Var(10) > 1
triggerall = roundstate = 2
triggerall = command = "dd_P"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger1 = p2StateNo = 5071 || p2StateNo = 5110 || p2StateNo = 5101 || (p2StateNo = 888 && p2MoveType = H) || p2StateNo = [3901,3910]
ignorehitpause = 0

;---------------------------------------------------------------------------
; Cat Spike (Light)
[State -1, Cat Spike (Light)]
type = ChangeState
value = 1200
triggerall = !FVar(38)
triggerall = Var(10) > 1
triggerall = ifElse((Anim !=[5,6]), command = "CS_lp", command = "DB_lp")
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Cat Spike (Medium)
[State -1, Cat Spike (Medium)]
type = ChangeState
value = 1210
triggerall = !FVar(38)
triggerall = Var(10) > 1
triggerall = ifElse((Anim !=[5,6]), command = "CS_mp", command = "DB_mp")
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Cat Spike (Heavy)
[State -1, Cat Spike (Heavy)]
type = ChangeState
value = 1220
triggerall = !FVar(38)
triggerall = Var(10) > 1
triggerall = ifElse((Anim !=[5,6]), command = "CS_hp", command = "DB_hp")
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Delta Kick (VP)
[State -1, Delta Kick (VP)]
type = ChangeState
value = 1300
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]),(command = "DB_lk" || command = "DB_mk" || command = "DB_hk"),(command = "DK_lk" || command = "DK_mk" || command = "DK_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Delta Kick
[State -1, Delta Kick]
type = ChangeState
value = 1300
triggerall = !FVar(38)
triggerall = Var(10) = 1 || Var(10) = 4
triggerall = ifElse((Anim !=[5,6]),(command = "DB_lk" || command = "DB_mk" || command = "DB_hk"),(command = "DK_lk" || command = "DK_mk" || command = "DK_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Delta Kick (VS)
[State -1, Delta Kick (VS)]
type = ChangeState
value = 1300
triggerall = !FVar(38)
triggerall = (Var(10) = [2,3])
triggerall = ifElse((Anim !=[5,6]),(command = "DK_lk" || command = "DK_mk" || command = "DK_hk"),(command = "DB_lk" || command = "DB_mk" || command = "DB_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Rolling Buckler (VP)
[State -1, Rolling Buckler (VP)]
type = ChangeState
value = 1006
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]), (command = "HCF_lp" || command = "HCF_mp" || command = "HCF_hp"), (command = "HCB_lp" || command = "HCB_mp" || command = "HCB_hp"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Rolling Buckler
[State -1, Rolling Buckler]
type = ChangeState
value = 1000
triggerall = !FVar(38)
triggerall = Var(10) > 0
triggerall = ifElse((Anim !=[5,6]), (command = "QCF_lp" || command = "QCF_mp" || command = "QCF_hp"), (command = "QCB_lp" || command = "QCB_mp" || command = "QCB_hp"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Rolling Scratch (VP)
[State -1, Rolling Scratch (VP)]
type = ChangeState
value = 1407
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]), (command = "HCB_lp" || command = "HCB_mp" || command = "HCB_hp"), (command = "HCF_lp" || command = "HCF_mp" || command = "HCF_hp"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Rolling Scratch
[State -1, Rolling Scratch]
type = ChangeState
value = 1400
triggerall = !FVar(38)
triggerall = Var(10) = 1 || Var(10) = 4
triggerall = ifElse((Anim !=[5,6]), (command = "QCB_lp" || command = "QCB_mp" || command = "QCB_hp"), (command = "QCF_lp" || command = "QCF_mp" || command = "QCF_hp"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Sand Splash (VP)
[State -1, Sand Splash (VP)]
type = ChangeState
value = 1100
triggerall = !FVar(38)
triggerall = Var(10) = 0
triggerall = ifElse((Anim !=[5,6]), (command = "QCF_lk" || command = "QCF_mk" || command = "QCF_hk"), (command = "QCB_lk" || command = "QCB_mk" || command = "QCB_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(3) < 0)
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(4) < 0)
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0)
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0)
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0)
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0)
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0)
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0)
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0)
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0)
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0)
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0)
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0)
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0)
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0)
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Sand Splash
[State -1, Sand Splash]
type = ChangeState
value = 1100
triggerall = !FVar(38)
triggerall = Var(10) = 1 || Var(10) = 4
triggerall = ifElse((Anim !=[5,6]), (command = "QCF_lk" || command = "QCF_mk" || command = "QCF_hk"), (command = "QCB_lk" || command = "QCB_mk" || command = "QCB_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Hellcat
[State -1, Hellcat]
type = ChangeState
value = 1500
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = ifElse((Anim !=[5,6]), (command = "HCB_mk" || command = "HCB_hk"), (command = "HCF_mk" || command = "HCF_hk"))
triggerall = statetype != A
triggerall = P2BodyDist X <= 10
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = StateNo = 200 && AnimElemTime(3) < 0
trigger3 = StateNo = 205 && AnimElemTime(4) < 0
trigger4 = StateNo = 210 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger5 = StateNo = 215 && (Var(30) || AnimElemTime(5) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger6 = StateNo = 220 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger7 = StateNo = 225 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger8 = StateNo = 230 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger9 = StateNo = 235 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger10 = StateNo = 240 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger11 = StateNo = 245 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger12 = StateNo = 250 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger13 = StateNo = 255 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger14 = StateNo = 400 && AnimElemTime(3) < 0
trigger15 = StateNo = 410 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger16 = StateNo = 415 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger17 = StateNo = 420 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger18 = StateNo = 430 && (Var(30) || AnimElemTime(4) < 0) && !(!Var(30) && (PrevStateNo = [200,205]) || (PrevStateNo = 400))
trigger19 = StateNo = 440 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
trigger20 = StateNo = 450 && (Var(30) || AnimElemTime(3) < 0) && !(!Var(30) && (PrevStateNo = [200,255]) || (PrevStateNo = [400,450]))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback") && ((command = "y") || (command = "z"))
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X <= 22
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 2
[State -1, Throw 2]
type = ChangeState
value = 830
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback") && ((command = "b") || (command = "c"))
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X <= 22
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H
ignorehitpause = 0

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback" || command = "holddown") && (command = "y" || command = "z")
triggerall = statetype = A
triggerall = ctrl
triggerall = P2bodydist X = [-1,9]
triggerall = P2bodydist Y = [-70,-enemynear,const(size.head.pos.y)-35]
trigger1 = p2statetype = A
trigger1 = p2movetype != H || Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch (close)
[State -1, Stand Light Punch (close)]
type = ChangeState
value = 205
triggerall = !FVar(38)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 10
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || (StateNo = 52 && Anim = 57 && Time >= 2)
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 205 && Time > 4
trigger4 = StateNo = 400 && Time > 4
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !FVar(38)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X >= 10
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 205 && Time > 4
trigger4 = StateNo = 400 && Time > 4
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch (close)
[State -1, Stand Medium Punch (close)]
type = ChangeState
value = 215
triggerall = !FVar(38)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 10
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 230 && MoveContact = 1
trigger4 = StateNo = 205 && MoveContact = 1
trigger5 = StateNo = 235 && MoveContact = 1
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !FVar(38)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 230 && MoveContact = 1
trigger4 = StateNo = 205 && MoveContact = 1
trigger5 = StateNo = 235 && MoveContact = 1
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Strong Punch (close)
[State -1, Stand Strong Punch (close)]
type = ChangeState
value = 225
triggerall = !FVar(38)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 10
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 240 && MoveContact = 1
trigger6 = StateNo = 205 && MoveContact = 1
trigger7 = StateNo = 215 && MoveContact = 1
trigger8 = StateNo = 235 && MoveContact = 1 
trigger9 = StateNo = 245 && MoveContact = 1 && PrevStateNo != 310
trigger10 = StateNo = 400 && MoveContact = 1
trigger11 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) 
trigger12 = StateNo = 430 && MoveContact = 1
trigger13 = StateNo = 440 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (P)
[State -1, Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = command = "x" || command = "y" || command = "z"
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !FVar(38)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2BodyDist X > 10
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 240 && MoveContact = 1
trigger6 = StateNo = 205 && MoveContact = 1
trigger7 = StateNo = 215 && MoveContact = 1
trigger8 = StateNo = 235 && MoveContact = 1 
trigger9 = StateNo = 245 && MoveContact = 1 && PrevStateNo != 310
trigger10 = StateNo = 400 && MoveContact = 1
trigger11 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) 
trigger12 = StateNo = 430 && MoveContact = 1
trigger13 = StateNo = 440 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick (close)
[State -1, Stand Light Kick (close)]
type = ChangeState
value = 235
triggerall = !FVar(38)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 10
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 230 && Time > 4
trigger3 = StateNo = 235 && Time > 4
trigger4 = StateNo = 430 && Time > 4
trigger5 = StateNo = 200 && MoveContact = 1 && Var(10) > 0
trigger6 = StateNo = 205 && MoveContact = 1 && Var(10) > 0
trigger7 = StateNo = 400 && MoveContact = 1 && Var(10) > 0
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !FVar(38)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 230 && Time > 4
trigger3 = StateNo = 235 && Time > 4
trigger4 = StateNo = 430 && Time > 4
trigger5 = StateNo = 200 && MoveContact = 1 && Var(10) > 0
trigger6 = StateNo = 205 && MoveContact = 1 && Var(10) > 0
trigger7 = StateNo = 400 && MoveContact = 1 && Var(10) > 0
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Medium Kick (close)
[State -1, Standing Medium Kick (close)]
type = ChangeState
value = 245
triggerall = !FVar(38)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 10
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1 && Var(10) > 0
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 205 && MoveContact = 1
trigger6 = StateNo = 215 && MoveContact = 1 && Var(10) > 0
trigger7 = StateNo = 235 && MoveContact = 1
trigger8 = StateNo = 400 && MoveContact = 1
trigger9 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) && MoveContact = 1 && Var(10) > 0
trigger10 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !FVar(38)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1 && Var(10) > 0
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 205 && MoveContact = 1
trigger6 = StateNo = 215 && MoveContact = 1 && Var(10) > 0
trigger7 = StateNo = 235 && MoveContact = 1
trigger8 = StateNo = 400 && MoveContact = 1
trigger9 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) && MoveContact = 1 && Var(10) > 0
trigger10 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (K)
[State -1, Dodge Attack (K)]
type = ChangeState
value = 245
triggerall = !FVar(38)
triggerall = roundstate = 2
triggerall = command = "a" || command = "b" || command = "c"
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Standing Strong Kick (close)
[State -1, Standing Strong Kick (close)]
type = ChangeState
value = 255
triggerall = !FVar(38)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 10
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 240 && MoveContact = 1
trigger6 = StateNo = 205 && MoveContact = 1
trigger7 = StateNo = 215 && MoveContact = 1
trigger8 = StateNo = 220 && MoveContact = 1 && AnimElemTime(4) < 0 && Var(10) > 0
trigger9 = StateNo = 225 && MoveContact = 1 && AnimElemTime(5) < 0 && Var(10) > 0
trigger10 = StateNo = 235 && MoveContact = 1
trigger11 = StateNo = 245 && MoveContact = 1 && PrevStateNo != 310
trigger12 = StateNo = 400 && MoveContact = 1
trigger13 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) && MoveContact = 1
trigger14 = StateNo = 420 && MoveContact = 1 && Var(10) > 0
trigger15 = StateNo = 430 && MoveContact = 1
trigger16 = StateNo = 440 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !FVar(38)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 240 && MoveContact = 1
trigger6 = StateNo = 205 && MoveContact = 1
trigger7 = StateNo = 215 && MoveContact = 1
trigger8 = StateNo = 235 && MoveContact = 1
trigger9 = StateNo = 245 && MoveContact = 1 && PrevStateNo != 310
trigger10 = StateNo = 220 && MoveContact = 1 && AnimElemTime(4) < 0 && Var(10) > 0
trigger11 = StateNo = 225 && MoveContact = 1 && AnimElemTime(5) < 0 && Var(10) > 0
trigger12 = StateNo = 400 && MoveContact = 1
trigger13 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) && MoveContact = 1
trigger14 = StateNo = 420 && MoveContact = 1 && Var(10) > 0
trigger15 = StateNo = 430 && MoveContact = 1
trigger16 = StateNo = 440 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !FVar(38)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 205 && Time > 4
trigger4 = StateNo = 400 && Time > 4
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Punch (VH)
[State -1, Crouching Medium Punch (VH)]
type = ChangeState
value = 415
triggerall = !FVar(38)
triggerall = command = "y"
triggerall = Var(10) < 2 || Var(10) = 4
triggerall = command = "holddown" && ifElse(Var(10)=4,Command = "holdfwd",1)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 230 && MoveContact = 1
trigger4 = StateNo = 205 && MoveContact = 1
trigger5 = StateNo = 235 && MoveContact = 1
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Punch (VS)
[State -1, Crouching Medium Punch (VS)]
type = ChangeState
value = 410
triggerall = !FVar(38)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Var(10) > 1
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 230 && MoveContact = 1
trigger4 = StateNo = 205 && MoveContact = 1
trigger5 = StateNo = 235 && MoveContact = 1
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !FVar(38)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 240 && MoveContact = 1
trigger6 = StateNo = 205 && MoveContact = 1
trigger7 = StateNo = 215 && MoveContact = 1
trigger8 = StateNo = 235 && MoveContact = 1
trigger9 = StateNo = 245 && MoveContact = 1 && PrevStateNo != 310
trigger10 = StateNo = 400 && MoveContact = 1
trigger11 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) && MoveContact = 1
trigger12 = StateNo = 430 && MoveContact = 1
trigger13 = StateNo = 440 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !FVar(38)
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 230 && Time > 4
trigger3 = StateNo = 235 && Time > 4
trigger4 = StateNo = 430 && Time > 4
trigger5 = StateNo = 200 && MoveContact = 1 && Var(10) > 0
trigger6 = StateNo = 205 && MoveContact = 1 && Var(10) > 0
trigger7 = StateNo = 400 && MoveContact = 1 && Var(10) > 0
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !FVar(38)
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1 && Var(10) > 0
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 205 && MoveContact = 1
trigger6 = StateNo = 215 && MoveContact = 1 && Var(10) > 0
trigger7 = StateNo = 235 && MoveContact = 1
trigger8 = StateNo = 400 && MoveContact = 1
trigger9 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) && MoveContact = 1 && Var(10) > 0
trigger10 = StateNo = 430 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !FVar(38)
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 230 && MoveContact = 1
trigger5 = StateNo = 240 && MoveContact = 1
trigger6 = StateNo = 205 && MoveContact = 1
trigger7 = StateNo = 215 && MoveContact = 1
trigger8 = StateNo = 220 && MoveContact = 1 && AnimElemTime(4) < 0 && Var(10) > 0
trigger9 = StateNo = 225 && MoveContact = 1 && AnimElemTime(5) < 0 && Var(10) > 0
trigger10 = StateNo = 235 && MoveContact = 1
trigger11 = StateNo = 245 && MoveContact = 1 && PrevStateNo != 310
trigger12 = StateNo = 400 && MoveContact = 1 && Var(10) > 0
trigger13 = (StateNo = 410 || (StateNo = 415 && ifElse(Var(10)>0,(AnimElemTime(4) < 0),1))) && MoveContact = 1
trigger14 = StateNo = 430 && MoveContact = 1
trigger15 = StateNo = 440 && MoveContact = 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !FVar(38)
triggerall = !((Var(2)&2)>0)
triggerall = command = "x"
triggerall= statetype = A && StateNo != 840 && StateNo != 845
triggerall = roundstate = 2
triggerall = PrevStateNo != 600
trigger1 = ctrl || (StateNo = 102 && AnimElemTime(2) > 0) || (StateNo = 105 && AnimElemTime(2) > 0)
trigger2 = StateNo = 630 && (MoveContact != 1 && Time > 2 && Var(10) < 2)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !FVar(38)
triggerall = !((Var(2)&4)>0)
triggerall = command = "y"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = roundstate = 2
triggerall = PrevStateNo != 610
trigger1 = ctrl || (StateNo = 102 && AnimElemTime(2) > 0) || (StateNo = 105 && AnimElemTime(2) > 0)
trigger2 = StateNo = 600 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
trigger3 = StateNo = 630 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !FVar(38)
triggerall = !((Var(2)&8)>0)
triggerall = command = "z"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = roundstate = 2
triggerall = PrevStateNo != 620
trigger1 = ctrl || (StateNo = 102 && AnimElemTime(2) > 0) || (StateNo = 105 && AnimElemTime(2) > 0)
trigger2 = StateNo = 600 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
trigger3 = StateNo = 610 && MoveContact = 1 && PrevStateNo!=102 && Var(10) > 1
trigger4 = StateNo = 630 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
trigger5 = StateNo = 640 && MoveContact = 1 && PrevStateNo!=102 && Var(10) > 1
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !FVar(38)
triggerall = !((Var(2)&16)>0)
triggerall = command = "a"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = roundstate = 2
triggerall = PrevStateNo != 630
trigger1 = ctrl || (StateNo = 102 && AnimElemTime(2) > 0) || (StateNo = 105 && AnimElemTime(2) > 0)
trigger2 = StateNo = 600 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !FVar(38)
triggerall = !((Var(2)&32)>0)
triggerall = command = "b"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = roundstate = 2
triggerall = PrevStateNo != 640
trigger1 = ctrl || (StateNo = 102 && AnimElemTime(2) > 0) || (StateNo = 105 && AnimElemTime(2) > 0)
trigger2 = StateNo = 600 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
trigger3 = StateNo = 610 && MoveContact = 1 && PrevStateNo!=102 && Var(10) > 1
trigger4 = StateNo = 630 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !FVar(38)
triggerall = !((Var(2)&64)>0)
triggerall = command = "c"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = roundstate = 2
triggerall = PrevStateNo != 650
trigger1 = ctrl || (StateNo = 102 && AnimElemTime(2) > 0) || (StateNo = 105 && AnimElemTime(2) > 0)
trigger2 = StateNo = 600 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
trigger3 = StateNo = 610 && MoveContact = 1 && PrevStateNo!=102 && Var(10) > 1
trigger4 = StateNo = 620 && MoveContact = 1 && PrevStateNo!=102 && Var(10) > 1
trigger5 = StateNo = 630 && ((MoveContact = 1 && Var(10) > 1 && PrevStateNo!=102) || (MoveContact != 1 && Time > 2 && Var(10) < 2))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, AI]
type = null;ChangeState
value = 650
triggerall = !FVar(38)
triggerall = !((Var(2)&64)>0)
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = roundstate = 2
triggerall = PrevStateNo != 650
trigger1 = StateNo = 630 && !AnimTime
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !FVar(38)
triggerall = !((Var(2)&64)>0)
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = roundstate = 2
triggerall = PrevStateNo != 650
trigger1 = Var(16) && MoveContact > 10 && PrevStateNo != 102 && Var(10) > 1
ignorehitpause = 0