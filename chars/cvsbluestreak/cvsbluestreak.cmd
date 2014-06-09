; The CMD file. Don't fuck with any of this.
;
; REQUIRED.
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[Defaults]
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------
[Command]
name = "QCFx2_lp"
command = ~D,DF,F,D,DF,x
time = 21
[Command]
name = "QCFx2_mp"
command = ~D,DF,F,D,DF,y
time = 21
[Command]
name = "QCFx2_hp"
command = ~D,DF,F,D,DF,z
time = 21

[Command]
name = "QCFx2_lp"
command = ~D,DF,F,D,DF,~x
time = 21
[Command]
name = "QCFx2_mp"
command = ~D,DF,F,D,DF,~y
time = 21
[Command]
name = "QCFx2_hp"
command = ~D,DF,F,D,DF,~z
time = 21

[Command]
name = "QCBx2_lp"
command = ~D,DB,B,D,DB,x
time = 21
[Command]
name = "QCBx2_mp"
command = ~D,DB,B,D,DB,y
time = 21
[Command]
name = "QCBx2_hp"
command = ~D,DB,B,D,DB,z
time = 21

[Command]
name = "QCBx2_lp"
command = ~D,DB,B,D,DB,~x
time = 21
[Command]
name = "QCBx2_mp"
command = ~D,DB,B,D,DB,~y
time = 21
[Command]
name = "QCBx2_hp"
command = ~D,DB,B,D,DB,~z
time = 21

[Command]
name = "QCBx2_lk"
command = ~D,DB,B,D,DB,a
time = 21
[Command]
name = "QCBx2_mk"
command = ~D,DB,B,D,DB,b
time = 21
[Command]
name = "QCBx2_hk"
command = ~D,DB,B,D,DB,c
time = 21

[Command]
name = "QCBx2_lk"
command = ~D,DB,B,D,DB,~a
time = 21
[Command]
name = "QCBx2_mk"
command = ~D,DB,B,D,DB,~b
time = 21
[Command]
name = "QCBx2_hk"
command = ~D,DB,B,D,DB,~c
time = 21

[Command]
name = "QCFx2_lk"
command = ~D,DF,F,D,DF,a
time = 21
[Command]
name = "QCFx2_mk"
command = ~D,DF,F,D,DF,b
time = 21
[Command]
name = "QCFx2_hk"
command = ~D,DF,F,D,DF,c
time = 21

[Command]
name = "QCFx2_lk"
command = ~D,DF,F,D,DF,~a
time = 21
[Command]
name = "QCFx2_mk"
command = ~D,DF,F,D,DF,~b
time = 21
[Command]
name = "QCFx2_hk"
command = ~D,DF,F,D,DF,~c
time = 21

;-| Special Motions |------------------------------------------------------
[Command]
name = "DP_lp"
command = ~F,D,DF,x
time = 12
[Command]
name = "DP_mp"
command = ~F,D,DF,y
time = 12
[Command]
name = "DP_hp"
command = ~F,D,DF,z
time = 12

[Command]
name = "DP_lp"
command = ~F,D,DF,~x
time = 12
[Command]
name = "DP_mp"
command = ~F,D,DF,~y
time = 12
[Command]
name = "DP_hp"
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
name = "DP_lk"
command = ~F,D,DF,a
time = 12
[Command]
name = "DP_mk"
command = ~F,D,DF,b
time = 12
[Command]
name = "DP_hk"
command = ~F,D,DF,c
time = 12

[Command]
name = "DP_lk"
command = ~F,D,DF,~a
time = 12
[Command]
name = "DP_mk"
command = ~F,D,DF,~b
time = 12
[Command]
name = "DP_hk"
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
name = "HCF_lk"
command = ~B,DB,D,DF,F,a
time = 18
[Command]
name = "HCF_mk"
command = ~B,DB,D,DF,F,b
time = 18
[Command]
name = "HCF_hk"
command = ~B,DB,D,DF,F,c
time = 18

[Command]
name = "HCF_lk"
command = ~B,DB,D,DF,F,~a
time = 18
[Command]
name = "HCF_mk"
command = ~B,DB,D,DF,F,~b
time = 18
[Command]
name = "HCF_hk"
command = ~B,DB,D,DF,F,~c
time = 18

[Command]
name = "HCB_lk"
command = ~F,DF,D,DB,B,a
time = 18
[Command]
name = "HCB_mk"
command = ~F,DF,D,DB,B,b
time = 18
[Command]
name = "HCB_hk"
command = ~F,DF,D,DB,B,c
time = 18

[Command]
name = "HCB_lk"
command = ~F,DF,D,DB,B,~a
time = 18
[Command]
name = "HCB_mk"
command = ~F,DF,D,DB,B,~b
time = 18
[Command]
name = "HCB_hk"
command = ~F,DF,D,DB,B,~c
time = 18

[Command]
name = "DD_lp"
command = ~D,D,x
time = 10
[Command]
name = "DD_mp"
command = ~D,D,y
time = 10
[Command]
name = "DD_hp"
command = ~D,D,z
time = 10

[Command]
name = "DD_lp"
command = ~D,D,~x
time = 10
[Command]
name = "DD_mp"
command = ~D,D,~y
time = 10
[Command]
name = "DD_hp"
command = ~D,D,~z
time = 10

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

;-| Release Dir |-----------------------------------------------------------
[Command]
name = "release_fwd"
command = ~$F
time = 1

[Command]
name = "release_down"
command = ~$D
time = 1

[Command]
name = "release_back"
command = ~$B
time = 1

[Command]
name = "release_up"
command = ~$U
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
; I said don't fuck with it, you stupid bitch.
[Statedef -1]
; Parrying/Just Defend Voice
[State -2, PlaySnd]
type = Playsnd
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
trigger4 = StateNo = 150 && Var(14) = 1
trigger5 = StateNo = 152 && Var(14) = 1
trigger6 = StateNo = 154 && Var(14) = 1
value = S8,12
channel = 0

[State 710, Explod]; Parry spark
type = Explod
triggerall = Time = 0
trigger1 = StateNo = 700
trigger2 = StateNo = 710
trigger3 = StateNo = 720
anim = 7500
;pos = ifElse(StateNo=720,49,ifElse(StateNo=710,56,49)),ifElse(StateNo=720,-21,ifElse(StateNo=710,-49,-77)) ;basic code
pos = ifElse(StateNo=710,56,49),ifElse(StateNo=720,-21,ifElse(StateNo=710,-49,-77))
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 15
[State 500, Explod]; Just Defend spark
type = Explod
triggerall = Time = 0
triggerall = Var(14) = 1
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154
anim = 7000
;pos = ifElse(StateNo=154,0,ifElse(StateNo=152,21,0)),ifElse(StateNo=154,-63,ifElse(StateNo=152,-35,-56)) ;basic code
pos = ifElse(StateNo=152,21,0),ifElse(StateNo=154,-63,ifElse(StateNo=152,-35,-56))
sprpriority = 3
ownpal = 1
scale = .5,.5
pausemovetime = 4

;==========================================================================;
;                              HUMAN COMMANDS                              ;
;==========================================================================;

;---------------------------------------------------------------------------
; Zeus Major
[State -1, Zeus Major]
type = ChangeState
value = 3200
;triggerall = !AILevel
triggerall = ifElse((Anim !=[5,6]), (command = "QCBx2_lp" || command = "QCBx2_mp" || command = "QCBx2_hp"), (command = "QCFx2_lp" || command = "QCFx2_mp" || command = "QCFx2_hp"))
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 3) && Power >= 3000) || (Var(10) = 4 && (100*life/const(data.life))<=30 && Var(17)) || (Var(29) && Power >= 1000) || Var(19)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(50) && (((var(5)&16)>0) || Var(30))
ignorehitpause = 0

;---------------------------------------------------------------------------
; Arc Cannon
[State -1, Arc Cannon]
type = ChangeState
value = 3100
;triggerall = !AILevel
triggerall = ifElse((Anim !=[5,6]), (command = "QCFx2_lp" || command = "QCFx2_mp" || command = "QCFx2_hp"), (command = "QCBx2_lp" || command = "QCBx2_mp" || command = "QCBx2_hp"))
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(50) && (((var(5)&16)>0) || Var(30))
trigger17 = StateNo = 1000 && numHelper(1005) && (((var(5)&16)>0) || Var(30))
trigger17 = helper(1005), moveHit = 1
trigger18 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
;trigger19 = NumHelper(3100)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Unfair Tatsumaki
[State -1, Unfair Tatsumaki]
type = ChangeState
value = 3000
;triggerall = !AILevel
triggerall = ifElse((Anim !=[5,6]), (command = "QCFx2_lk" || command = "QCFx2_mk" || command = "QCFx2_hk"), (command = "QCBx2_lk" || command = "QCBx2_mk" || command = "QCBx2_hk"))
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || (Var(10) = 4 && ((100*Life)/(Const(data.life))<=30)) || Var(19) || Var(17) || Var(30)
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(50) && (((var(5)&16)>0) || Var(30))
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
;triggerall = !AILevel
triggerall = RoundState = 2
triggerall = (Power < 1000 && Var(10) = 4) || (Var(10) = 0 && Power < 3000)
triggerall = !Var(17) && !Var(29)
triggerall = command = "MAX"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; MAX Activation
[State -1, MAX Activation]
type = ChangeState
value = 960
;triggerall = !AILevel
triggerall = (Var(10) = 5 && command = "MAX")
triggerall = Power >= 1000
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Custom Combo
[State -1, Standing Custom Combo]
type = ChangeState
value = 970
;triggerall = !AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000 && Command = "MAX"
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time < 2
trigger3 = StateNo = 205 && Time < 2
trigger4 = StateNo = 210 && Time < 2
trigger5 = StateNo = 215 && Time < 2
trigger6 = StateNo = 220 && Time < 2
trigger7 = StateNo = 225 && Time < 2
trigger8 = StateNo = 230 && Time < 2
trigger9 = StateNo = 235 && Time < 2
trigger10 = StateNo = 240 && Time < 2
trigger11 = StateNo = 245 && Time < 2
trigger12 = StateNo = 250 && Time < 2
trigger13 = StateNo = 255 && Time < 2
trigger14 = StateNo = 400 && Time < 2
trigger15 = (StateNo = 410 || StateNo = 415) && Time < 2
trigger16 = StateNo = 420 && Time < 2
trigger17 = StateNo = 430 && Time < 2
trigger18 = StateNo = 440 && Time < 2
trigger19 = StateNo = 450 && Time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Attack
[State -1, Counter Attack]
type = ChangeState
value = 2800
;triggerall = !AILevel
triggerall = roundstate = 2
triggerall = StateNo = 150 || stateno = 151 || stateno = 152 || stateno = 153
triggerall = command = "cancel" && command != "holddown" && Command = "holdfwd"
triggerall = (var(5)&32)>0
trigger1 = Power >= 1000 && (Var(10) = 0 || Var(10) = 1 || Var(10) = 5)
trigger2 = Power >= 1500 && Var(10) = 2
trigger3 = Power >= 3000 && (Var(10) = 3 || Var(10) = 4)
trigger4 = Var(19)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Aerial Custom Combo
[State -1, Aerial Custom Combo]
type = ChangeState
value = 975
;triggerall = !AILevel
triggerall = Var(10) = 2
triggerall = Power >= 3000 && Command = "MAX"
triggerall = !Var(29) && !Var(30)
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600 && Time < 2
trigger3 = StateNo = 610 && Time < 2
trigger4 = StateNo = 620 && Time < 2
trigger5 = StateNo = 630 && time < 2
trigger6 = StateNo = 640 && Time < 2
trigger7 = StateNo = 650 && time < 2
ignorehitpause = 0

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = ifElse(((Var(5)&2)>0),100,102)
;triggerall = !AILevel
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
;triggerall = !AILevel
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
ignorehitpause = 0

;---------------------------------------------------------------------------
; Safe Fall
[State -1, Safe Fall]
type = ChangeState
value = 5201
;triggerall = !AILevel
triggerall = !Var(15)
triggerall = (var(5)&128)>0
triggerall = Alive
triggerall = StateNo = 5050 || StateNo = 5071 || StateNo = 5100 || StateNo = 15050 || StateNo = 15071 ||StateNo = 15100
triggerall = Pos Y + Vel Y >= 0
trigger1 = command = "recovery"
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
;triggerall = !AILevel
triggerall = command = "start"
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Movement (forward)
[State -1, Counter Movement (forward)]
type = ChangeState
value = 320
;triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = command = "recovery" && command != "holddown" && command = "holdfwd"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Counter Movement (back)
[State -1, Counter Movement (back)]
type = ChangeState
value = 330
;triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (var(5)&64)>0
triggerall = ((Var(10) = 0 || Var(10) = 1 || Var(10) = 5) && Power >= 1000) || (Var(10) = 2 && Power >= 1500) || (Var(10) = 3 && Power >= 3000) || Var(19) || Var(17)
triggerall = command = "recovery" && command != "holddown" && command = "holdback"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153
ignorehitpause = 0

;---------------------------------------------------------------------------
; Roll/Dodge
[State -1, Roll/Dodge]
type = ChangeState
value = IfElse((Var(9)=1 && Var(10) > 0) || (Var(10) = 0 && command = "holdfwd"),300,310)
triggerall = !FVar(38)
triggerall = Var(9) != 3
triggerall = command = "recovery"
triggerall = StateType != A
triggerall = !NumHelper(10000)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time <= 2
trigger3 = StateNo = 205 && Time <= 2
trigger5 = StateNo = 210 && Time <= 2
trigger6 = StateNo = 215 && Time <= 2
trigger7 = StateNo = 220 && Time <= 2
trigger8 = StateNo = 225 && Time <= 2
trigger9 = StateNo = 230 && Time <= 2
trigger10 = StateNo = 235 && Time <= 2
trigger11 = StateNo = 240 && Time <= 2
trigger12 = StateNo = 245 && Time <= 2
trigger13 = StateNo = 250 && Time <= 2
trigger14 = StateNo = 255 && Time <= 2
trigger15 = StateNo = 400 && Time <= 2
trigger16 = StateNo = 410 && Time <= 2
trigger17 = StateNo = 420 && Time <= 2
trigger18 = StateNo = 430 && Time <= 2
trigger19 = StateNo = 440 && Time <= 2
trigger20 = StateNo = 450 && Time <= 2
trigger21 = StateNo = 260 && Time <= 2
trigger22 = StateNo = 270 && Time <= 2
trigger23 = StateNo = 280 && Time <= 2
trigger24 = StateNo = 281 && Time <= 2
trigger25 = StateNo = 282 && Time <= 2
trigger26 = StateNo = 283 && Time <= 2
trigger27 = StateNo = 284 && Time <= 2
trigger28 = ((StateNo = [195,299]) || (StateNo = [400,450])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger29 = (StateNo = [1000,1999]) && Var(30) && Var(50)
ignorehitpause = 0

;---------------------------------------------------------------------------
; ORAORAORA
[State -1, ORAORAORA]
type = ChangeState
value = 1800
triggerall = ifElse((Anim !=[5,6]), (command = "QCF_lp" || command = "QCF_mp" || command = "QCF_hp"), (command = "QCB_lp" || command = "QCB_mp" || command = "QCB_hp"))
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = Var(6) < 2
trigger1 = ctrl
trigger2 = StateNo = 600 && ((Var(50)=[1,2]) && AnimElemTime(7) < 0)
trigger3 = StateNo = 610 && ((Var(50)=[1,2]) && AnimElemTime(5) < 0)
trigger4 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
trigger5 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger6 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Shadow Kick
[State -1, Shadow Kick]
type = ChangeState
value = 1500
triggerall = ifElse((Anim !=[5,6]), (command = "HCF_lk" || command = "HCF_mk" || command = "HCF_hk"), (command = "HCB_lk" || command = "HCB_mk" || command = "HCB_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !NumHelper(10000)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Zeus
[State -1, Zeus]
type = ChangeState
value = 1300
;triggerall = !AILevel
triggerall = ifElse((Anim !=[5,6]), (command = "QCB_lp" || command = "QCB_mp" || command = "QCB_hp"), (command = "QCF_lp" || command = "QCF_mp" || command = "QCF_hp"))
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !NumHelper(10000)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Arc Shot
[State -1, Arc Shot]
type = ChangeState
value = 1000
;triggerall = !AILevel
triggerall = ifElse((Anim !=[5,6]), (command = "QCF_lp" || command = "QCF_mp" || command = "QCF_hp"), (command = "QCB_lp" || command = "QCB_mp" || command = "QCB_hp"))
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !NumHelper(10000)
;triggerall = !NumHelper(1005)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Tatsumaki Senpuukyaku
[State -1, Tatsumaki Senpuukyaku]
type = ChangeState
value = 1200
;triggerall = !AILevel
triggerall = ifElse((Anim !=[5,6]), (command = "QCB_lk" || command = "QCB_mk" || command = "QCB_hk"), (command = "QCF_lk" || command = "QCF_mk" || command = "QCF_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !NumHelper(10000)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Tatsumaki Senpuukyaku (Air)
[State -1, Tatsumaki Senpuukyaku (Air)]
type = ChangeState
value = 1250
triggerall = (command = "QCB_lk" || command = "QCB_mk" || command = "QCB_hk")
triggerall = statetype = A && StateNo != 840 && StateNo != 845
triggerall = Var(6) < 2
trigger1 = ctrl
trigger2 = StateNo = 600 && ((Var(50)=[1,2]) && AnimElemTime(7) < 0)
trigger3 = StateNo = 610 && ((Var(50)=[1,2]) && AnimElemTime(5) < 0)
trigger4 = StateNo = 640 && ((Var(50)=[1,2]) && AnimElemTime(5) < 0)
trigger5 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
trigger6 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger7 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Batwing Revolver
[State -1, Batwing Revolver]
type = ChangeState
value = 1400
triggerall = ifElse((Anim !=[5,6]), (command = "DP_lk" || command = "DP_mk" || command = "DP_hk"), (command = "DB_lk" || command = "DB_mk" || command = "DB_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !NumHelper(10000)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Electromagnetic Burst
[State -1, Electromagnetic Burst]
type = ChangeState
value = 1600
triggerall = command = "DD_lp" || command = "DD_mp" || command = "DD_hp"
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !NumHelper(10000)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; THE KNEE
[State -1, THE KNEE]
type = ChangeState
value = 1700
triggerall = ifElse((Anim !=[5,6]), (command = "QCF_lk" || command = "QCF_mk" || command = "QCF_hk"), (command = "QCB_lk" || command = "QCB_mk" || command = "QCB_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !NumHelper(10000)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Running Start (REMOVED)
[State -1, Running Start (REMOVED)]
type = Null;ChangeState
value = 1100
triggerall = ifElse((Anim !=[5,6]), (command = "QCF_lk" || command = "QCF_mk" || command = "QCF_hk"), (command = "QCB_lk" || command = "QCB_mk" || command = "QCB_hk"))
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = !NumHelper(10000)
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101 || StateNo = 40 || (StateNo = 52 && Anim = 47 && Time >= 2)
trigger2 = (StateNo = [200,205])
trigger3 = StateNo = 281
trigger4 = StateNo = 210 && AnimElemTime(4) < 0
trigger5 = StateNo = 215 && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && AnimElemTime(4) < 0
trigger7 = StateNo = 282 && AnimElemTime(3) < 0
trigger8 = StateNo = 235 && AnimElemTime(4) < 0
trigger9 = StateNo = 245 && AnimElemTime(4) < 0
trigger10 = StateNo = 284 && AnimElemTime(4) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(3) < 0
trigger13 = StateNo = 430 && AnimElemTime(3) < 0
trigger14 = StateNo = 440 && AnimElemTime(3) < 0
trigger15 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger16 = (StateNo = [1000,1999]) && Var(30) && Var(50)
trigger17 = (StateNo = [3000,3199]) && Var(22) = 1 && (Var(50) = 1||Var(50) = 3)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Throw 1
[State -1, Throw 1]
type = ChangeState
value = 800
;triggerall = !AILevel
triggerall = (command = "holdfwd" || command = "holdback") && (command = "z")
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
;triggerall = !AILevel
triggerall = (command = "holdfwd" || command = "holdback") && (command = "c")
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
;triggerall = !AILevel
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback" || command = "holddown") && command = "z"
triggerall = statetype = A
triggerall = ctrl
triggerall = P2bodydist X = [-1,9]
triggerall = P2bodydist Y = [-70,-enemynear,const(size.head.pos.y)-63]
trigger1 = p2statetype = A
trigger1 = p2movetype != H || Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Loop Kick
[State -1, Loop Kick]
type = ChangeState
value = 260
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown" && Command = "holdfwd"
triggerall = StateType != A
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger3 = (StateNo = [1000,1999]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Low Roundhouse
[State -1, Low Roundhouse]
type = ChangeState
value = 290
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown" && Command = "holdfwd"
triggerall = StateType != A
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger3 = (StateNo = [1000,1999]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Target Combo
[State -1, Target Combo]
type = ChangeState
value = 280
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown" && Command = "holdback"
triggerall = StateType != A
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger3 = (StateNo = [1000,1999]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Spinning Back Knuckle
[State -1, Spinning Back Knuckle]
type = ChangeState
value = 270
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = command != "holddown" && Command = "holdfwd"
triggerall = StateType != A
trigger1 = ctrl || (Stateno = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = 1||Var(50) = 2) && Var(30)
trigger3 = (StateNo = [1000,1999]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch (self-cancel)
[State -1, Stand Light Punch (self-cancel)]
type = ChangeState
value = 205
triggerall = StateNo = 200 || PrevStateNo = 200 || StateNo = 281 || PrevStateNo = 281
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 200 && Time > 4
trigger3 = StateNo = 281 && Time > 4
trigger4 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger5 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = StateNo = 205 && Time > 4
trigger3 = StateNo = 400 && Time > 4
trigger4 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger5 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch (close)
[State -1, Stand Medium Punch (close)]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Stand Strong Punch (close)
[State -1, Stand Strong Punch (close)]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (P)
[State -1, Dodge Attack (P)]
type = ChangeState
value = 220
triggerall = roundstate = 2
triggerall = command = "x" || command = "y" || command = "z"
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick (close)
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 4
trigger3 = StateNo = 281 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger7 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 4
trigger3 = StateNo = 400 && Time > 4
trigger4 = StateNo = 430 && Time > 4
trigger5 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger6 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Dodge Attack (K)
[State -1, Dodge Attack (K)]
type = ChangeState
value = 245
triggerall = roundstate = 2
triggerall = command = "a" || command = "b" || command = "c"
trigger1 = StateNo = 310 && Time = [14,24]

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Strong Kick (close)
[State -1, Standing Strong Kick (close)]
type = ChangeState
value = 255
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2BodyDist X = [-25,25]
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
;triggerall = !AILevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 4
trigger3 = StateNo = 281 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger7 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = (StateNo = [200,205]) && Time > 4
trigger3 = StateNo = 281 && Time > 4
trigger4 = StateNo = 400 && Time > 4
trigger5 = StateNo = 430 && Time > 4
trigger6 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger7 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
;triggerall = !AILevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || (StateNo = 100 && AnimElemTime(2) >1) || StateNo = 101
trigger2 = ((StateNo = [195,299]) || (StateNo = [400,450]) || (StateNo = [600,650])) && (Var(50) = [1,2]) && Var(30)
trigger3 = (StateNo = [1000,1499]) && Var(50) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
;triggerall = !AILevel
triggerall = command = "x"
triggerall= statetype = A && StateNo != 840 && StateNo != 845
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
;triggerall = !AILevel
triggerall = command = "y"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
;triggerall = !AILevel
triggerall = command = "z"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
;triggerall = !AILevel
triggerall = command = "a"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
;triggerall = !AILevel
triggerall = command = "b"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
;triggerall = !AILevel
triggerall = command = "c"
triggerall = statetype = A && StateNo != 840 && StateNo != 845
trigger1 = ctrl
trigger2 = (StateNo = [600,650]) && (Var(50) = [1,2]) && Var(30)
ignorehitpause = 0
