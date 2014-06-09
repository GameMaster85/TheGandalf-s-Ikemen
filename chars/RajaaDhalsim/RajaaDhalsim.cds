; Dhalsim By RajaaBoy

;====================<DEFAULT VALUES>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

;-| Single Dir |------------------------------------------------------------

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
time = 1

;-| Negative Edge |------------------------------------------------------

[Command]
name = "NE_fwd"
command = ~$F
time = 1
[Command]
name = "NE_back"
command = ~$B
time = 1
[Command]
name = "NE_up"
command = ~$U
time = 1
[Command]
name = "NE_down"
command = ~$D
time = 1

[Command]
name = "NE_x"
command = ~x
time = 1
[Command]
name = "NE_y"
command = ~y
time = 1
[Command]
name = "NE_z"
command = ~z
time = 1
[Command]
name = "NE_a"
command = ~a
time = 1
[Command]
name = "NE_b"
command = ~b
time = 1
[Command]
name = "NE_c"
command = ~c
time = 1

;-| Super Motions |--------------------------------------------------------

; Yoga Catastrophe;
[Command]
name = "6426P"
command = ~F, B, $D, F, x
time = 30
[Command]
name = "6426P"
command = ~F, B, $D, F, ~x
time = 30
[Command]
name = "6426P"
command = ~F, B, $D, F, y
time = 30
[Command]
name = "6426P"
command = ~F, B, $D, F, ~y
time = 30
[Command]
name = "6426P"
command = ~F, B, $D, F, z
time = 30
[Command]
name = "6426P"
command = ~F, B, $D, F, ~z
time = 30

; Yoga Tempest;
[Command]
name = "624624P"
command = ~F, $D, B, F, $D, B, x
time = 30
[Command]
name = "624624P"
command = ~F, $D, B, F, $D, B, ~x
time = 30
[Command]
name = "624624P"
command = ~F, $D, B, F, $D, B, y
time = 30
[Command]
name = "624624P"
command = ~F, $D, B, F, $D, B, ~y
time = 30
[Command]
name = "624624P"
command = ~F, $D, B, F, $D, B, z
time = 30
[Command]
name = "624624P"
command = ~F, $D, B, F, $D, B, ~z
time = 30

; Yoga Stream;
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, x
time = 30
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, ~x
time = 30
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, y
time = 30
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, ~y
time = 30
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, z
time = 30
[Command]
name = "236236P"
command = ~D, DF, F, D, DF, ~z
time = 30

; Yoga Volcano;
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, a
time = 30
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, ~a
time = 30
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, b
time = 30
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, ~b
time = 30
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, c
time = 30
[Command]
name = "236236K"
command = ~D, DF, F, D, DF, ~c
time = 30

; Yoga Legend;
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, x
time = 30
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, ~x
time = 30
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, y
time = 30
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, ~y
time = 30
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, z
time = 30
[Command]
name = "214214P"
command = ~D, DB, B, D, DB, ~z
time = 30

; Yoga Strike;
[Command]
name = "214214K"
command = ~D, DB, B, D, DB, a
time = 30
[Command]
name = "214214K"
command = ~D, DB, B, D, DB, ~a
time = 30
[Command]
name = "214214K"
command = ~D, DB, B, D, DB, b
time = 30
[Command]
name = "214214K"
command = ~D, DB, B, D, DB, ~b
time = 30
[Command]
name = "214214K"
command = ~D, DB, B, D, DB, c
time = 30
[Command]
name = "214214K"
command = ~D, DB, B, D, DB, ~c
time = 30

;-| Special Motions |------------------------------------------------------

; Yoga Flame;
[Command]
name = "624P"
command = ~F, $D, B, x
time = 21
[Command]
name = "624P"
command = ~F, $D, B, ~x
time = 21
[Command]
name = "624P"
command = ~F, $D, B, y
time = 21
[Command]
name = "624P"
command = ~F, $D, B, ~y
time = 21
[Command]
name = "624P"
command = ~F, $D, B, z
time = 21
[Command]
name = "624P"
command = ~F, $D, B, ~z
time = 21

; Yoga Blast;
[Command]
name = "624K"
command = ~F, $D, B, a
time = 21
[Command]
name = "624K"
command = ~F, $D, B, ~a
time = 21
[Command]
name = "624K"
command = ~F, $D, B, b
time = 21
[Command]
name = "624K"
command = ~F, $D, B, ~b
time = 21
[Command]
name = "624K"
command = ~F, $D, B, c
time = 21
[Command]
name = "624K"
command = ~F, $D, B, ~c
time = 21

; Yoga Teleport 1;
[command]
name = "623PP/KK"
command = ~F, D, DF, x+y
time = 18
[command]
name = "623PP/KK"
command = ~F, D, DF, x+z
time = 18
[command]
name = "623PP/KK"
command = ~F, D, DF, y+z
time = 18
[command]
name = "623PP/KK"
command = ~F, D, DF, a+b
time = 18
[command]
name = "623PP/KK"
command = ~F, D, DF, a+c
time = 18
[command]
name = "623PP/KK"
command = ~F, D, DF, b+c
time = 18

; Yoga Teleport 2;
[command]
name = "421PP/KK"
command = ~B, D, DB, x+y
time = 18
[command]
name = "421PP/KK"
command = ~B, D, DB, x+z
time = 18
[command]
name = "421PP/KK"
command = ~B, D, DB, y+z
time = 18
[command]
name = "421PP/KK"
command = ~B, D, DB, a+b
time = 18
[command]
name = "421PP/KK"
command = ~B, D, DB, a+c
time = 18
[command]
name = "421PP/KK"
command = ~B, D, DB, b+c
time = 18

; Yoga Fire;
[command]
name = "236P"
command = ~D, DF, F, x
time = 15
[command]
name = "236P"
command = ~D, DF, F, ~x
time = 15
[command]
name = "236P"
command = ~D, DF, F, y
time = 15
[command]
name = "236P"
command = ~D, DF, F, ~y
time = 15
[command]
name = "236P"
command = ~D, DF, F, z
time = 15
[command]
name = "236P"
command = ~D, DF, F, ~z
time = 15

; Yoga Grasp
[Command]
name = "236K"
command = ~D, DF, F, a
time = 15
[Command]
name = "236K"
command = ~D, DF, F, ~a
time = 15
[Command]
name = "236K"
command = ~D, DF, F, b
time = 15
[Command]
name = "236K"
command = ~D, DF, F, ~b
time = 15
[Command]
name = "236K"
command = ~D, DF, F, c
time = 15
[Command]
name = "236K"
command = ~D, DF, F, ~c
time = 15

; Yoga Levitation
[command]
name = "214KK"
command = ~D, DB, B, a+b
time = 15
[command]
name = "214KK"
command = ~D, DB, B, a+c
time = 15
[command]
name = "214KK"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "Head_Bash"
command = x
time = 1
[Command]
name = "Head_Bash"
command = y
time = 1
[Command]
name = "Head_Bash"
command = z
time = 1
[Command]
name = "Head_Bash"
command = a
time = 1
[Command]
name = "Head_Bash"
command = b
time = 1
[Command]
name = "Head_Bash"
command = c
time = 1
[Command]
name = "Head_Bash"
command = s
time = 1
[Command]
name = "Head_Bash"
command = U
time = 1
[Command]
name = "Head_Bash"
command = D
time = 1
[Command]
name = "Head_Bash"
command = F
time = 1
[Command]
name = "Head_Bash"
command = B
time = 1
[Command]
name = "Head_Bash"
command = UF
time = 1
[Command]
name = "Head_Bash"
command = UB
time = 1
[Command]
name = "Head_Bash"
command = DF
time = 1
[Command]
name = "Head_Bash"
command = DB
time = 1

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| Other |-----------------------------------------------

[Command]
name = "recovery"
command = x+a
time = 1
[Command]
name = "recovery"
command = x+b
time = 1
[Command]
name = "recovery"
command = x+c
time = 1
[Command]
name = "recovery"
command = x+y
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
command = a+c
time = 1
[Command]
name = "recovery"
command = a+y
time = 1
[Command]
name = "recovery"
command = a+z
time = 1
[Command]
name = "recovery"
command = y+b
time = 1
[Command]
name = "recovery"
command = y+c
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = b+c
time = 1
[Command]
name = "recovery"
command = b+z
time = 1
[Command]
name = "recovery"
command = c+z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "HighJmp"
command = $D,$U
time = 15

;=========================================================================
[Statedef -1]
;=========================================================================

;=========================================================================
; Status -1
;=========================================================================

[state -1, Status: In Own State]
type = varset
trigger1 = 1
var(39) = 1
ignorehitpause = 1

;=========================================================================
; SUPER MOVES
;=========================================================================

[state -1, Yoga Tempest Airborne]
type = changestate
value = 3700
triggerall = !ailevel
triggerall = command = "624624P"
triggerall = statetype = A
triggerall = power >= 2000
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)

[state -1, Yoga Tempest]
type = changestate
value = 3600
triggerall = !ailevel
triggerall = command = "624624P"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100

[state -1, Yoga Catastrophe]
type = changestate
value = 3800
triggerall = !ailevel
triggerall = command = "6426P"
triggerall = statetype != A
triggerall = power >= 3000 && !numhelper(3805)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100

[state -1, Yoga Legend]
type = changestate
value = 3500
triggerall = !ailevel
triggerall = command = "214214P"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5 || var(13) % 50 = -6 || var(13) = 200
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5 || var(14) % 50 = -6
trigger4 = var(15) = 1
trigger5 = var(18) || var(20) = 1

[state -1, Yoga Stream]
type = changestate
value = 3000
triggerall = !ailevel
triggerall = command = "236236P"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5 || var(13) % 50 = -6 || var(13) = 200
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5 || var(14) % 50 = -6
trigger4 = var(15) = 1
trigger5 = var(18) || var(20) = 1

[state -1, Yoga Super Drill]
type = changestate
value = 3400
triggerall = !ailevel
triggerall = command = "236236K"
triggerall = statetype = A
triggerall = power >= 2000
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)

[state -1, Yoga Volcano]
type = changestate
value = 3100
triggerall = !ailevel
triggerall = command = "236236K"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5 || var(13) % 50 = -6 || var(13) = 200
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5 || var(14) % 50 = -6
trigger4 = var(15) = 1
trigger5 = var(18) || var(20) = 1

[state -1, Yoga Strike]
type = changestate
value = 3300
triggerall = !ailevel
triggerall = command = "214214K"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5 || var(13) % 50 = -6 || var(13) = 200
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5 || var(14) % 50 = -6
trigger4 = 0 ; var(15) = 1
trigger5 = var(18) || var(20) = 1

;=========================================================================
; SPECIALS MOVES
;=========================================================================

[state -1, Yoga Flame Airborne]
type = changestate
value = 1300
triggerall = !ailevel
triggerall = command = "624P"
triggerall = statetype = A
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)
trigger2 = var(13) % 50 = -7 || var(13) % 50 = -8 || var(13) % 50 = -9
trigger3 = var(14) % 50 = -7 || var(14) % 50 = -8 || var(14) % 50 = -9
trigger4 = var(18)

[state -1, Yoga Flame]
type = changestate
value = 1200
triggerall = !ailevel
triggerall = command = "624P"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger4 = var(18)

[state -1, Yoga Blast]
type = changestate
value = 1400
triggerall = !ailevel
triggerall = command = "624K"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger4 = var(18)

[state -1, Yoga Recover]
type = changestate
value = 1502
triggerall = !ailevel
triggerall = alive && hitshakeover
triggerall = command = "623PP/KK" || command = "421PP/KK"
trigger1 = stateno = 5050 || stateno = 5071
trigger1 = gethitvar(fall.recover) && vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)
trigger2 = stateno = [5100, 5110]

[state -1, Yoga Teleport Airborne]
type = changestate
value = 1501
triggerall = !ailevel
triggerall = command = "623PP/KK" || command = "421PP/KK"
triggerall = statetype = A
triggerall = numhelper(4000)
triggerall = !helper(4000),var(40)
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)
trigger2 = 0 ; var(13) % 50 = -7 || var(13) % 50 = -8 || var(13) % 50 = -9
trigger3 = 0 ; var(14) % 50 = -7 || var(14) % 50 = -8 || var(14) % 50 = -9
trigger4 = var(18)

[state -1, Yoga Teleport]
type = changestate
value = 1500
triggerall = !ailevel
triggerall = command = "623PP/KK" || command = "421PP/KK"
triggerall = statetype != A
triggerall = numhelper(4000)
triggerall = !helper(4000),var(40)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger4 = var(18)

[state -1, Yoga Levitation End]
type = changestate
value = 1805
triggerall = !ailevel
triggerall = numhelper(4000)
triggerall = helper(4000),var(42)
triggerall = stateno = 1800
triggerall = animelemtime(6) >= 0
trigger1 = command = "214KK"
trigger2 = pos y >= -16
trigger2 = command = "holddown" || command = "down"
trigger2 = command = "a" || command = "b" || command = "c"

[state -1, Yoga Levitation]
type = changestate
value = 1800
triggerall = !ailevel
triggerall = command = "214KK"
triggerall = numhelper(4000)
triggerall = !helper(4000),var(42)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100

[state -1, Yoga Grasp]
type = changestate
value = 1600
triggerall = !ailevel
triggerall = command = "236K"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger4 = var(18)

[state -1, Yoga Fire Airborne]
type = changestate
value = 1100
triggerall = !ailevel
triggerall = command = "236P"
triggerall = statetype = A
triggerall = !var(40)
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)
trigger2 = var(13) % 50 = -7 || var(13) % 50 = -8 || var(13) % 50 = -9
trigger3 = var(14) % 50 = -7 || var(14) % 50 = -8 || var(14) % 50 = -9
trigger4 = var(18)

[state -1, Yoga Fire]
type = changestate
value = 1000
triggerall = !ailevel
triggerall = command = "236P"
triggerall = statetype != A
triggerall = !var(40)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger4 = var(18)

[state -1, Yoga Barrage]
type = changestate
value = 1700
triggerall = !ailevel
triggerall = command = "x" || command = "y" || command = "z"
triggerall = statetype != A
triggerall = var(41) >= 5
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger4 = var(18)

;=========================================================================
; SYSTEM
;=========================================================================

[state -1, Jump Cancel]
type = changestate
value = 40
triggerall = !ailevel
triggerall = statetype != A
triggerall = command = "up" || command = "holdup"
triggerall = var(26) = 1
trigger1 = var(17)

[state -1, Run Forward]
type = changestate
value = 100
triggerall = !ailevel
triggerall = statetype != A
trigger1 = command = "FF"
trigger1 = ctrl

[state -1, Run Backward]
type = changestate
value = 105
triggerall = !ailevel
triggerall = statetype != A
trigger1 = command = "BB"
trigger1 = stateno != [105, 106]
trigger1 = ctrl

[state -1, Grab]
type = changestate
value = 800
triggerall = !ailevel
triggerall = statetype != A
triggerall = command = "holdfwd" || command = "holdback"
triggerall = ctrl
trigger1 = command = "x" && command = "y" || command = "x" && command = "z" || command = "y" && command = "z"
trigger2 = command = "a" && command = "b" || command = "a" && command = "c" || command = "b" && command = "c"

[state -1, Air Grab]
type = null ; changestate
value = 840
triggerall = !ailevel
triggerall = statetype = A
triggerall = pos y <= -30
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "x" && command = "y" || command = "x" && command = "z" || command = "y" && command = "z"
trigger1 = ctrl

[state -1, Dodge]
type = changestate
value = 900
triggerall = !ailevel
triggerall = statetype != A
triggerall = command = "a" && command = "x" && command != "holdfwd" && command != "holdback"
triggerall = var(29) = 1 || var(29) = 5
trigger1 = ctrl || stateno = 100

[state -1, Dodge Forward]
type = changestate
value = 905
triggerall = !ailevel
triggerall = statetype != A
triggerall = command = "holdfwd"
triggerall = command = "a" && command = "x"
triggerall = var(30) = 1 || var(30) = 2
trigger1 = ctrl || stateno = 100

[state -1, Dodge Backward]
type = changestate
value = 910
triggerall = !ailevel
triggerall = statetype != A
triggerall = command = "holdback"
triggerall = command = "a" && command = "x"
triggerall = var(30) = 1 || var(30) = 3
trigger1 = ctrl || stateno = 100

[state -1, Guard Counter]
type = changestate
value = 915
triggerall = !ailevel
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command != "holddown" && command = "holdfwd"
triggerall = command = "b" && command = "y"
triggerall = var(31) = 1
trigger1 = stateno = 150 || stateno = 152

[state -1, Power charge]
type = changestate
value = 920
triggerall = !ailevel
triggerall = command = "b" && command = "y"
triggerall = power < powermax && power < const(data.power)
triggerall = statetype != A
triggerall = var(32) = 1
trigger1 = ctrl || stateno = 100

[state -1, Shield]
type = changestate
value = cond(statetype = A, 937, cond(command = "holddown", 936, 935))
triggerall = !ailevel
triggerall = command = "a" && command = "x"
triggerall = var(29) = 2 || var(29) = 3
trigger1 = ctrl || stateno = [940, 942]

[state -1, Air Jump]
type = changestate
value = 945
triggerall = !ailevel
triggerall = statetype = A
triggerall = command = "holdup"
triggerall = numhelper(4000)
triggerall = !helper(4000),var(0)
triggerall = !helper(4000),var(1)
triggerall = var(27) = 1
trigger1 = ctrl && time >= 2
trigger2 = var(17)

[state -1, Air Dash]
type = changestate
value = 950
triggerall = !ailevel
triggerall = statetype = A
triggerall = command = "FF" || command = "BB"
triggerall = numhelper(4000)
triggerall = !helper(4000),var(2)
triggerall = var(28) = 1
trigger1 = ctrl
trigger2 = var(17)

[state -1, Ground Recovery]
type = changestate
value = 5200
trigger1 = !ailevel
trigger1 = command = "recovery"
trigger1 = alive && gethitvar(fall.recover) && (stateno = 5050 || stateno = 5071) && vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)

[state -1, Air Recovery]
type = changestate
value = 5210
trigger1 = !ailevel
trigger1 = command = "recovery"
trigger1 = alive && canrecover && stateno = 5050
trigger1 = vel y > const(movement.air.gethit.airrecover.threshold)
trigger1 = pos y < const(movement.air.gethit.groundrecover.ground.threshold)

;=========================================================================
; NORMALS
;=========================================================================

[state -1, Taunt]
type = changestate
value = 4100 + 5 * statetype = A
triggerall = !ailevel
triggerall = stateno != [4100, 4105]
triggerall = command = "s"
; trigger1 = statetype != A
trigger1 = ctrl

[state -1, Yoga Drill]
type = changestate
value = 700 + cond(command = "a", 5, cond(command = "b", 10, cond(command = "c", 15, 0)))
triggerall = !ailevel
triggerall = (command = "z" || command = "a" || command = "b" || command = "c") && command = "holddown"
triggerall = statetype = A && pos y <= -40 && var(1) != [4, 5]
trigger1 = ctrl

[state -1, SWP]
type = changestate
value = 200 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "x" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)

[state -1, SMP]
type = changestate
value = 210 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "y" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)

[state -1, SSP]
type = changestate
value = 220 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "z" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)

[state -1, SWK]
type = changestate
value = 230 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "a" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)

[state -1, SMK]
type = changestate
value = 240 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "b" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)

[state -1, SSK]
type = changestate
value = 250 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "c" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)

[state -1, CWP]
type = changestate
value = 400 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "x" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)

[state -1, CMP]
type = changestate
value = 410 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "y" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)

[state -1, CSP]
type = changestate
value = 420 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "z" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)

[state -1, CWK]
type = changestate
value = 430 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)

[state -1, CMK]
type = changestate
value = 440 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "b" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)

[state -1, CSK]
type = changestate
value = 450 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "c" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)

[state -1, AWP]
type = changestate
value = 600 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl || var(16) || cond(numhelper(4000), helper(4000),var(43), 0)

[state -1, AMP]
type = changestate
value = 610 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl || var(16) || cond(numhelper(4000), helper(4000),var(43), 0)
trigger2 = var(25) = 1 && (var(13) % 50 = 7)
trigger3 = var(25) = 1 && (var(14) % 50 = 7)

[state -1, ASP]
type = changestate
value = 620 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl || var(16) || cond(numhelper(4000), helper(4000),var(43), 0)
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)

[state -1, AWK]
type = changestate
value = 630 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl || var(16) || cond(numhelper(4000), helper(4000),var(43), 0)
trigger2 = var(25) = 1 && (var(13) % 50 = 7)

[state -1, AMK]
type = changestate
value = 640 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl || var(16) || cond(numhelper(4000), helper(4000),var(43), 0)
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger3 = var(25) = 1 && (var(14) % 50 = 7)

[state -1, ASK]
type = changestate
value = 650 + 5 * command = "holdback"
triggerall = !ailevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl || var(16) || cond(numhelper(4000), helper(4000),var(43), 0)
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8 || var(13) % 50 = 9)
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)

;===========================================================================
; ARTIFICIAL INTELLIGENCE (ORDERED BY ARBITRARY PREFERENCE)
;===========================================================================

[state -1, AI Jump]
type = changestate
value = 40
; condition
trigger1 = ailevel && numenemy && roundstate = 2
trigger1 = statetype != A && stateno != 40
trigger1 = ctrl && inguarddist
trigger1 = enemynear,hitdefattr = SC,AT
trigger1 = random < 600 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Jump Cancel]
type = changestate
value = 40
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype = A && p2movetype = H
triggerall = statetype != A
triggerall = var(26) = 1
triggerall = var(17)
; condition
trigger1 = random < 248 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Recover]
type = changestate
value = 1502
triggerall = ailevel && numenemy && roundstate = 2
triggerall = alive && hitshakeover
; condition
trigger1 = stateno = 5050 || stateno = 5071
trigger1 = gethitvar(fall.recover) && vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(backedgedist <= 16, 1 + (random % 2), 3 + (random % 2)) ; level
; condition
trigger2 = stateno = [5100, 5110]
trigger2 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(backedgedist <= 16, 1 + (random % 2), 3 + (random % 2)) ; level

[state -1, AI Ground Recovery]
type = changestate
value = 5200
; condition
trigger1 = ailevel && numenemy && roundstate = 2
trigger1 = alive && gethitvar(fall.recover) && (stateno = 5050 || stateno = 5071) && vel y > 0
trigger1 = pos y + vel y > const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = random < 96 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Air Recovery]
type = changestate
value = 5210
; condition
trigger1 = ailevel && numenemy && roundstate = 2
trigger1 = alive && canrecover && stateno = 5050
trigger1 = vel y > const(movement.air.gethit.airrecover.threshold)
trigger1 = pos y < const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = random < 96 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Shield]
type = changestate
; condition
value = cond(statetype = A, 937, cond(p2statetype = C, 936, 935))
trigger1 = ailevel && numenemy && roundstate = 2
trigger1 = var(29) = 2 || var(29) = 3
trigger1 = inguarddist && p2movetype = A && enemynear,hitdefattr != SCA,AT
trigger1 = (p2bodydist x = [const(size.ground.front), 104]) && (p2dist y = [-72, 72])
trigger1 = ctrl && (stateno != [935, 942]) && (prevstateno != [935, 942])
trigger1 = random < cond(statetype = A && p2statetype != A, 96, cond(statetype != A && p2statetype = A, 0, 448)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = 0 ; time = 16 && stateno = [940, 942]
trigger2 = enemynear,animtime < -8 && enemynear,movetype = A
trigger2 = random < 256 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Guard]
type = changestate
value = 120
; condition
trigger1 = ailevel && numenemy && roundstate = 2
trigger1 = inguarddist && !numhelper(932) 
trigger1 = ctrl && (stateno != [120, 155]) && (stateno != [935, 942]) ; && (prevstateno != [935, 942])
trigger1 = p2bodydist x >= const(size.ground.front) * 2.5
trigger1 = enemynear,hitdefattr != SCA,AT && enemynear,time < 70
trigger1 = random < cond(statetype = A && p2statetype != A, 0, cond(statetype != A && p2statetype = A, 496, 896)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Run Forward]
type = changestate
value = 100
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype != A
triggerall = stateno != 11 && stateno != 100 && stateno != 106
triggerall = prevstateno != 11 && prevstateno != 100 && prevstateno != 106 
triggerall = ctrl && !inguarddist
; condition
trigger1 = p2movetype != A && p2bodydist x > 200
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = (p2statetype = L || p2statetype = A && p2movetype = H && p2stateno = 5050)  && p2bodydist x > 128
trigger2 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Run Backward]
type = changestate
value = 105
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype != A
triggerall = stateno != 11 && stateno != 100 && stateno != 106
triggerall = prevstateno != 11 && prevstateno != 100 && prevstateno != 106 
triggerall = ctrl && !inguarddist
; condition
trigger1 = frontedgedist < backedgedist && p2stateno = 5120 && p2bodydist x = [ -8, 32]
trigger1 = random < 96 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Grab]
type = changestate
value = 800
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2statetype != A && p2movetype != H && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 24]) && (p2dist y = [-72, 8])
; condition
trigger1 = ctrl
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Stream]
type = changestate
value = 3000
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 10 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 1000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 168]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5 || var(13) % 50 = -6 || var(13) = 200
trigger2 = movehit && numtarget
trigger2 = (p2bodydist x = [-8, 168]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5 ; || var(14) % 50 = -6
trigger3 = movehit && numtarget
trigger3 = (p2bodydist x = [-8, 168]) && (p2dist y = [-56, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger4 = var(15) = 1
trigger4 = movehit && numtarget
trigger4 = (p2bodydist x = [-8, 168]) && (p2dist y = [-56, 8])
trigger4 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger5 = var(20) = 1 && var(22) = 1
trigger5 = (p2bodydist x = [-8, 168]) && (p2dist y = [-56, 8])
trigger5 = p2stateno != [120, 155]
trigger5 = random < (48 + 400 * (prevstateno = 225 || prevstateno = 255)) * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger6 = var(18)
trigger6 = stateno = 3000 || stateno = 3600
trigger6 = (p2bodydist x = [-8, 168]) && (p2dist y = [-56, 8])
; trigger6 = frontedgedist <= 64 && enemynear,backedgedist <= 64
trigger6 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Blast]
type = changestate
value = 1400
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype = A && p2stateno != 5120 && p2stateno != 5201 
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 80]) && (p2dist y = [-200, -40])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 3330, 3, cond(random < 333, 2, 1)) ; level
; condition
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger2 = (p2bodydist x = [-8, 80]) && (p2dist y = [-200, -40])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 3 ; level
; condition
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger3 = (p2bodydist x = [-8, 80]) && (p2dist y = [-200, -40])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 3 ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3100
trigger4 = (p2bodydist x = [-8, 80]) && (p2dist y = [-200, 8])
trigger4 = random < 152 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 ; level
; condition
trigger5 = ctrl || stateno = 52 || stateno = 100
trigger5 = (p2bodydist x = [24, 88]) && (p2dist y = [-200, -56])
trigger5 = enemynear,statetype = A && enemynear,vel x > 0 && enemynear,vel y > 0
trigger5 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := 1 ; level

[state -1, AI Yoga Fire]
type = changestate
value = 1000
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2stateno != 5201 ; p2statetype != L && p2stateno != 5120 &&
triggerall = statetype != A
triggerall = !var(40)
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = p2bodydist x > 0 && (p2dist y = [-56, 8])
trigger1 = p2statetype != L && p2stateno != 5120
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(p2stateno = 5120 || random < 750 || p2bodydist x > 72, 3, cond(random < 750, 2, 1)) ; level
; condition
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger2 = p2bodydist x > 0 && (p2dist y = [-56, 8])
trigger2 = p2statetype != L && p2stateno != 5120
trigger2 = random < (48 + 200 * (var(13) % 50 = -3)) * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(var(13) % 50 = -3 && power >= 1000 && p2statetype != A, 1, 3) ; level
; condition
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger3 = p2bodydist x > 0 && (p2dist y = [-56, 8])
trigger3 = p2statetype != L && p2stateno != 5120
trigger3 = random < (48 + 200 * (var(14) % 50 = -3)) * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := cond(var(14) % 50 = -3 && power >= 1000 && p2statetype != A, 1, 3) ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3000 || stateno = 3600
trigger4 = p2bodydist x > 0 && (p2dist y = [-56, 8])
trigger4 = p2statetype != L && p2stateno != 5120
trigger4 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 ; level
; condition
trigger5 = ctrl || stateno = 52 || stateno = 100
trigger5 = p2bodydist x > 200 && (p2dist y = [-56, 8])
trigger5 = p2stateno = 5120
trigger5 = random < 496 * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := 3 ; level

[state -1, AI Yoga Fire Airborne]
type = changestate
value = 1100
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5201 || p2stateno = 5120 && p2bodydist x > 200
triggerall = statetype = A
triggerall = !var(40)
; condition
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)
trigger1 = p2bodydist x > 0 && (p2dist y = [-56, 56])
trigger1 = cond(vel y < 0, p2dist y < 0, p2dist y >= 0)
trigger1 = random < (16 + 96 * (p2stateno = 5120)) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(p2stateno = 5120 || random < 750 || p2bodydist x > 72, 3, cond(random < 750, 2, 1)) ; level
; condition
trigger2 = var(13) % 50 = -7 || var(13) % 50 = -8 || var(13) % 50 = -9
trigger2 = p2bodydist x > 0 && (p2dist y = [-56, 56])
trigger2 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 3 ; level
; condition
trigger3 = var(14) % 50 = -7 || var(14) % 50 = -8 || var(14) % 50 = -9
trigger3 = p2bodydist x > 0 && (p2dist y = [-56, 56])
trigger3 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 3 ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3700
trigger4 = p2bodydist x > 0 && (p2dist y = [-56, 56])
trigger4 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 ; level

[state -1, AI Yoga Volcano]
type = changestate
value = 3100
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 10 && !var(11)
triggerall = p2statetype = A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 1000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 88]) && (p2dist y = [-224, -40])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5 || var(13) % 50 = -6 || var(13) = 200
trigger2 = movehit && numtarget
trigger2 = (p2bodydist x = [-8, 88]) && (p2dist y = [-224, -40])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5 || var(14) % 50 = -6
trigger3 = movehit && numtarget
trigger3 = (p2bodydist x = [-8, 88]) && (p2dist y = [-224, -40])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger4 = var(15) = 1
trigger4 = movehit && numtarget
trigger4 = (p2bodydist x = [-8, 88]) && (p2dist y = [-224, -40])
trigger4 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger5 = var(18)
trigger5 = stateno = 3100
trigger5 = (p2bodydist x = [-8, 88]) && (p2dist y = [-224, 8])
trigger5 = random < 152 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger6 = ctrl || stateno = 52 || stateno = 100
trigger6 = (p2bodydist x = [24, 88]) && (p2dist y = [-200, -56])
trigger6 = enemynear,statetype = A && enemynear,vel x > 0 && enemynear,vel y > 0
trigger6 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability
trigger6 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level

[state -1, AI Yoga Drill Z]
type = changestate
value = 700
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [144, 200]) && p2dist y > -40
triggerall = pos y < -56
; condition
trigger1 = ctrl
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Drill A]
type = changestate
value = 705
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [144, 200]) && p2dist y > -40
triggerall = pos y < -56
; condition
trigger1 = ctrl
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Drill B]
type = changestate
value = 710
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [64, 144]) && p2dist y > -40
triggerall = pos y < -48
; condition
trigger1 = ctrl
trigger1 = random < 72 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Drill C]
type = changestate
value = 715
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [0, 64]) && p2dist y > -40
triggerall = pos y < -40
; condition
trigger1 = ctrl
trigger1 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far SSP]
type = changestate
value = 220
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 232]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near SSP]
type = changestate
value = 225
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far SSK]
type = changestate
value = 250
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = (const(size.ground.front) * 3.0, 200]) && (p2dist y = [-112, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near SSK]
type = changestate
value = 255
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 72]) && (p2dist y = [-96, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far CSP]
type = changestate
value = 420
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 184]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near CSP]
type = changestate
value = 425
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far CSK]
type = changestate
value = 450
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 112]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near CSK]
type = changestate
value = 455
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 64]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far ASP]
type = changestate
value = 620
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 112 + 16 * (vel x > 0)]) && (p2dist y = [-56, 80 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near ASP]
type = changestate
value = 625
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [-8, 56 + 16 * (vel x > 0)]) && (p2dist y = [-80, 48 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far ASK]
type = changestate
value = 650
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 168 + 16 * (vel x > 0)]) && (p2dist y = [-144, -8 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8 || var(13) % 50 = 9)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near ASK]
type = changestate
value = 655
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [-8, 48 + 16 * (vel x > 0)]) && (p2dist y = [-112, 16 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8 || var(13) % 50 = 9)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far SMP]
type = changestate
value = 210
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 192]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near SMP]
type = changestate
value = 215
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 40]) && (p2dist y = [-128, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far SMK]
type = changestate
value = 240
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = (const(size.ground.front) * 3.0, 200]) && (p2dist y = [-96, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near SMK]
type = changestate
value = 245
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 72]) && (p2dist y = [-72, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far CMP]
type = changestate
value = 410
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 192]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near CMP]
type = changestate
value = 415
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far CMK]
type = changestate
value = 440
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 96]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near CMK]
type = changestate
value = 445
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 48]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far AMP]
type = changestate
value = 610
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 136 + 16 * (vel x > 0)]) && (p2dist y = [-104, 8 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near AMP]
type = changestate
value = 615
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [-8, 56 + 16 * (vel x > 0)]) && (p2dist y = [-112, 8 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far AMK]
type = changestate
value = 640
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 136 + 16 * (vel x > 0)]) && (p2dist y = [-56, 56 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near AMK]
type = changestate
value = 645
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [-8, 72 + 16 * (vel x > 0)]) && (p2dist y = [-64, 48 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7)
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far SWP]
type = changestate
value = 200
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 72]) && (p2dist y = [-72, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near SWP]
type = changestate
value = 205
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 48]) && (p2dist y = [-72, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far SWK]
type = changestate
value = 230
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 160]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near SWK]
type = changestate
value = 235
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 72]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far CWP]
type = changestate
value = 400
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 192]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near CWP]
type = changestate
value = 405
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far CWK]
type = changestate
value = 430
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 80]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near CWK]
type = changestate
value = 435
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = (p2bodydist x = [-8, 48]) && (p2dist y = [-56, 8])
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far AWP]
type = changestate
value = 600
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [-8, 56 + 16 * (vel x > 0)]) && (p2dist y = [-24, 56 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near AWP]
type = changestate
value = 605
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [-8, 32 + 16 * (vel x > 0)]) && (p2dist y = [-72, 64 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Far AWK]
type = changestate
value = 630
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = (const(size.ground.front) * 2.0, 136 + 16 * (vel x > 0)]) && (p2dist y = [-56, 56 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Near AWK]
type = changestate
value = 635
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = (p2bodydist x = [-8, 72 + 16 * (vel x > 0)]) && (p2dist y = [-72, 48 + 32 * (vel y > 1.0)])
; condition
trigger1 = ctrl || var(16)
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Flame]
type = changestate
value = 1200
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2stateno != 5201 ; p2statetype != L && p2stateno != 5120 &&
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 88]) && (p2dist y = [-56, 8])
trigger1 = p2statetype != L &&  p2stateno != 5120 
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 333 || p2stateno = 5120, 3, cond(random < 333, 2, 1)) ; level
; condition
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger2 = (p2bodydist x = [-8, 88]) && (p2dist y = [-56, 8])
trigger2 = p2statetype != L &&  p2stateno != 5120 
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 3 ; level
; condition
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger3 = (p2bodydist x = [-8, 88]) && (p2dist y = [-56, 8])
trigger3 = p2statetype != L &&  p2stateno != 5120 
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 3 ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3000 || stateno = 3600
trigger4 = (p2bodydist x = [-8, 88]) && (p2dist y = [-56, 8])
trigger4 = p2statetype != L &&  p2stateno != 5120 
trigger4 = enemynear,backedgedist <= 16 || enemynear,frontedgedist <= 16
trigger4 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 ; level
; condition
trigger5 = ctrl || stateno = 52 || stateno = 100
trigger5 = ((enemynear,pos x - pos x) * facing = [-8, 88]) && (enemynear,pos y - pos y) = [-56, 8]
trigger5 = enemynear,stateno = 5120 && enemynear,animtime > -16
trigger5 = random < 496 * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := 3 ; level

[state -1, AI Yoga Flame Airborne]
type = changestate
value = 1300
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
; condition
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)
trigger1 = (p2bodydist x = [-8, 80]) && (p2dist y = [-56, 56])
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 333, 3, cond(random < 333, 2, 1)) ; level
; condition
trigger2 = var(13) % 50 = -7 || var(13) % 50 = -8 || var(13) % 50 = -9
trigger2 = (p2bodydist x = [-8, 80]) && (p2dist y = [-56, 56])
trigger2 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 3 ; level
; condition
trigger3 = var(14) % 50 = -7 || var(14) % 50 = -8 || var(14) % 50 = -9
trigger3 = (p2bodydist x = [-8, 80]) && (p2dist y = [-56, 56])
trigger3 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 3 ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3700
trigger4 = (p2bodydist x = [-8, 80]) && (p2dist y = [-56, 56])
trigger4 = random < 128 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 ; level

[state -1, AI Yoga Barrage]
type = changestate
value = 1700
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 10 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 96]) && (p2dist y = [-56, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 750, 3, cond(random < 750, 2, 1)) ; level
; condition
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger2 = (p2bodydist x = [-8, 96]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 3 ; level
; condition
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger3 = (p2bodydist x = [-8, 96]) && (p2dist y = [-56, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 3 ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3000 || stateno = 3600
trigger4 = (p2bodydist x = [-8, 96]) && (p2dist y = [-56, 8])
trigger4 = enemynear,backedgedist <= 16 || enemynear,frontedgedist <= 16
trigger4 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 ; level

[state -1, AI Yoga Grasp]
type = changestate
value = 1600
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype = S && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 176]) && (p2dist y = [-56, 8])
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(p2bodydist x <= 104, 1, cond(random < p2bodydist x <= 128, 2, 3)) ; level
; condition
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5
trigger2 = (p2bodydist x = [-8, 176]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 3 ; level
; condition
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5
trigger3 = (p2bodydist x = [-8, 176]) && (p2dist y = [-56, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 3 ; level

[state -1, AI Yoga Catastrophe]
type = changestate
value = 3800
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 10 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 3000 && !numhelper(3805)
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = p2bodydist x > 0 && (p2dist y = [-256, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Strike]
type = changestate
value = 3300
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 8 && !var(11)
triggerall = p2statetype = A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 1000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 88]) && (p2dist y = [-224, -72])
trigger1 = random < (24 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger2 = var(18)
trigger2 = stateno = 3100
trigger2 = (p2bodydist x = [-8, 88]) && (p2dist y = [-224, -72])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Legend]
type = changestate
value = 3500
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 15 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 1000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 40]) && (p2dist y = [-152, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger2 = var(13) % 50 = -1 || var(13) % 50 = -2 || var(13) % 50 = -3 || var(13) % 50 = -4 || var(13) % 50 = -5 || var(13) % 50 = -6 || var(13) = 200
trigger2 = movehit && numtarget
trigger2 = (p2bodydist x = [-8, 40]) && (p2dist y = [-152, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger3 = var(14) % 50 = -1 || var(14) % 50 = -2 || var(14) % 50 = -3 || var(14) % 50 = 4 || var(14) % 50 = -4 || var(14) % 50 = 5 || var(14) % 50 = -5 ; || var(14) % 50 = -6
trigger3 = movehit && numtarget
trigger3 = (p2bodydist x = [-8, 40]) && (p2dist y = [-152, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger4 = var(15) = 1
trigger4 = movehit && numtarget
trigger4 = (p2bodydist x = [-8, 40]) && (p2dist y = [-152, 8])
trigger4 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger5 = var(20) = 1
trigger5 = (p2bodydist x = [-8, 40]) && (p2dist y = [-152, 8])
trigger5 = p2stateno != [120, 155]
trigger5 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger6 = var(18)
trigger6 = stateno = 3000 || stateno = 3600
trigger6 = (p2bodydist x = [-8, 40]) && (p2dist y = [-152, 8])
trigger6 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger7 = ctrl || stateno = 52 || stateno = 100
trigger7 = (p2bodydist x = [24, 40]) && (p2dist y = [-152, 8])
trigger7 = enemynear,statetype = A && enemynear,vel x > 0 && enemynear,vel y > 0
trigger7 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability
trigger7 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level

[state -1, AI Yoga Tempest]
type = changestate
value = 3600
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 10 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 2000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 120]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Tempest Airbrone]
type = changestate
value = 3700
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 10 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 2000
; condition
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)
trigger1 = (p2bodydist x = [-8, 112]) && (p2dist y = [-56, 56])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Super Drill]
type = changestate
value = 3400
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 36 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 2000
triggerall = pos y < -40
; condition
trigger1 = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)
trigger1 = (p2bodydist x = [-8, 80]) && (p2dist y = [-56, 56])
trigger1 = !enemynear,ctrl
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Air Jump]
type = changestate
value = 945
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype = A && numhelper(4000)
triggerall = !helper(4000),var(0) && !helper(4000),var(1)
triggerall = var(27) = 1
; condition
trigger1 = ctrl && time >= 2
trigger1 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(17) && (enemynear,gethitvar(fall) || movehit && p2statetype = A)
trigger2 = random < 248 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Air Dash]
type = changestate
value = 950
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype = A && numhelper(4000)
triggerall = !helper(4000),var(2)
triggerall = var(28) = 1
; condition
trigger1 = ctrl && p2bodydist x > const(size.air.front)
trigger1 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(17) && enemynear,gethitvar(fall) && p2bodydist x > const(size.air.front)
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Guard Counter]
type = changestate
value = 915
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = power >= 1000 && statetype != A
triggerall = var(31) = 1
triggerall = (p2bodydist x = [-8, 72]) && (p2dist y = [-80, 8])
; condition
trigger1 = stateno = 150 || stateno = 152
trigger1 = life < 0.2 * lifemax
trigger1 = enemynear,vel x >= 0 && enemynear,vel y >= 0 && enemynear,life > 56
trigger1 = random < 72 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Yoga Teleport]
type = changestate
value = 1500
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = numhelper(4000)
triggerall = !helper(4000),var(40)
triggerall = ctrl || stateno = 52 || stateno = 100
; condition
trigger1 = p2bodydist x = [64, 104]
trigger1 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := 1 ; level
; condition
trigger2 = backedgedist <= 16 && enemynear,frontedgedist <= 32
trigger2 = random < (48 + 96 * numhelper(3805)) * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 1 ; level
; condition
trigger3 = p2bodydist x > 200
trigger3 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 2 ; level
; condition
trigger4 = frontedgedist <= 16 || p2movetype = A && p2bodydist x = [-8, 64]
trigger4 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 + (random % 2) ; level
; condition
trigger5 = p2dist x < -8 && backedgedist > frontedgedist
trigger5 = random < 152 * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := 3 + (random % 2) ; level

[state -1, AI Yoga Teleport Airborne]
type = changestate
value = 1501
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
triggerall = numhelper(4000)
triggerall = !helper(4000),var(40)
triggerall = pos y < -40
triggerall = ctrl || cond(numhelper(4000), helper(4000),var(43), 0)
; condition
trigger1 = p2bodydist x = [64, 104]
trigger1 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := 1 ; level
; condition
trigger2 = backedgedist <= 16 && enemynear,frontedgedist <= 32
trigger2 = random < (48 + 96 * numhelper(3805)) * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 1 ; level
; condition
trigger3 = p2bodydist x > 200
trigger3 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 2 ; level
; condition
trigger4 = frontedgedist <= 16 || p2movetype = A && p2bodydist x = [-8, 64]
trigger4 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 + (random % 2) ; level
; condition
trigger5 = p2dist x < -8 && backedgedist > frontedgedist
trigger5 = random < 152 * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := 3 + (random % 2) ; level

[state -1, AI Dodge]
type = changestate
value = 900
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = var(29) = 1 || var(29) = 5
triggerall = ctrl || stateno = 100
triggerall = enemynear,hitdefattr != SCA,AT
; condition
trigger1 = p2movetype = A && inguarddist
trigger1 = random < 96 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Dodge Forward]
type = changestate
value = 905
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = var(30) = 1 || var(30) = 2
triggerall = ctrl || stateno = 100
triggerall = enemynear,hitdefattr != SCA,AT
; condition
trigger1 = enemynear,vel x >= 0 && p2movetype = A && p2bodydist x = [-64, 64] 
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = stateno = 100 && inguarddist
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = backedgedist < frontedgedist && p2movetype = A
trigger3 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Dodge Backward]
type = changestate
value = 910
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = var(30) = 1 || var(30) = 3
triggerall = ctrl || stateno = 100
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = frontedgedist < backedgedist
; condition
trigger1 = p2stateno = 100 && p2bodydist x = [-8, 72]
trigger1 = random < 152 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = enemynear,vel x > 1 && inguarddist
trigger2 = random < 152 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Power charge]
type = changestate
value = 920
triggerall = ailevel && numenemy && roundstate = 2
triggerall = power < powermax && power < const(data.power)
triggerall = statetype != A
triggerall = var(32) = 1
; condition
trigger1 = ctrl && !inguarddist && !enemy,numproj
trigger1 = p2movetype != A && p2bodydist x > 160
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Taunt]
type = changestate
value = 4100 + 5 * statetype = A
triggerall = ailevel && numenemy && roundstate = [2, 3]
triggerall = p2statetype = L && p2movetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && stateno != [4100, 4105]
triggerall = !enemy,numproj && !enemy,ctrl
triggerall = p2bodydist x > 128
; condition
trigger1 = ctrl
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability