; Aoko By RajaaBoy

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

;-| Hold Button |---------------------------------------------------------

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

;-| Hold Dir |---------------------------------------------------------

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

;-| Single Dir |---------------------------------------------------------

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

;-| Negative Edge |---------------------------------------------------------

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

;-| Super Motions |---------------------------------------------------------

; Reverse Canal Creation;
[Command]
name = "6426K"
command = ~F, B, $D, F, a
time = 30
[Command]
name = "6426K"
command = ~F, B, $D, F, ~a
time = 30
[Command]
name = "6426K"
command = ~F, B, $D, F, b
time = 30
[Command]
name = "6426K"
command = ~F, B, $D, F, ~b
time = 30
[Command]
name = "6426K"
command = ~F, B, $D, F, c
time = 30
[Command]
name = "6426K"
command = ~F, B, $D, F, ~c
time = 30

; Sever Break Slider;
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

; Blowning Starbow Portal;
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

; Starmine Fists;
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

;-| Special Motions |---------------------------------------------------------

; Blowning Starbow Mirror;
[Command]
name = "624P"
command = ~F, $D, B, x
time = 15
[Command]
name = "624P"
command = ~F, $D, B, ~x
time = 15
[Command]
name = "624P"
command = ~F, $D, B, y
time = 15
[Command]
name = "624P"
command = ~F, $D, B, ~y
time = 15
[Command]
name = "624P"
command = ~F, $D, B, z
time = 15
[Command]
name = "624P"
command = ~F, $D, B, ~z
time = 15

; Wheel Kick;
[Command]
name = "624K"
command = ~F, $D, B, a
time = 15
[Command]
name = "624K"
command = ~F, $D, B, ~a
time = 15
[Command]
name = "624K"
command = ~F, $D, B, b
time = 15
[Command]
name = "624K"
command = ~F, $D, B, ~b
time = 15
[Command]
name = "624K"
command = ~F, $D, B, c
time = 15
[Command]
name = "624K"
command = ~F, $D, B, ~c
time = 15

; Blazing Starmine;
[Command]
name = "623P"
command = ~F, D, DF, x
time = 18
[Command]
name = "623P"
command = ~F, D, DF, ~x
time = 18
[Command]
name = "623P"
command = ~F, D, DF, y
time = 18
[Command]
name = "623P"
command = ~F, D, DF, ~y
time = 18
[Command]
name = "623P"
command = ~F, D, DF, z
time = 18
[Command]
name = "623P"
command = ~F, D, DF, ~z
time = 18

; Moonsault;
[Command]
name = "623K"
command = ~F, D, DF, a
time = 18
[Command]
name = "623K"
command = ~F, D, DF, ~a
time = 18
[Command]
name = "623K"
command = ~F, D, DF, b
time = 18
[Command]
name = "623K"
command = ~F, D, DF, ~b
time = 18
[Command]
name = "623K"
command = ~F, D, DF, c
time = 18
[Command]
name = "623K"
command = ~F, D, DF, ~c
time = 18

; Magic Draw Arrow; Raining Starmine
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

; Floating Starmine
[command]
name = "214P"
command = ~D, DB, B, x
time = 15
[command]
name = "214P"
command = ~D, DB, B, ~x
time = 15
[command]
name = "214P"
command = ~D, DB, B, y
time = 15
[command]
name = "214P"
command = ~D, DB, B, ~y
time = 15
[command]
name = "214P"
command = ~D, DB, B, z
time = 15
[command]
name = "214P"
command = ~D, DB, B, ~z
time = 15

;-| Double Tap |---------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| Other |---------------------------------------------------------

[Command]
name = "recovery"
command = x + a
time = 1
[Command]
name = "recovery"
command = x + b
time = 1
[Command]
name = "recovery"
command = x + c
time = 1
[Command]
name = "recovery"
command = x + y
time = 1
[Command]
name = "recovery"
command = x + z
time = 1
[Command]
name = "recovery"
command = a + b
time = 1
[Command]
name = "recovery"
command = a + c
time = 1
[Command]
name = "recovery"
command = a + y
time = 1
[Command]
name = "recovery"
command = a + z
time = 1
[Command]
name = "recovery"
command = y + b
time = 1
[Command]
name = "recovery"
command = y + c
time = 1
[Command]
name = "recovery"
command = y + z
time = 1
[Command]
name = "recovery"
command = b + c
time = 1
[Command]
name = "recovery"
command = b + z
time = 1
[Command]
name = "recovery"
command = c + z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "HighJmp"
command = $D, $U
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

[state -1, Reverse Canal Creation]
type = changestate
value = 3300
triggerall = !ailevel
triggerall = command = "6426K"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(20) = 1

[state -1, Severe Break Slider]
type = changestate
value = 3200
triggerall = !ailevel
triggerall = command = "6426P"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(20)

[state -1, Blowning Starbow Portal]
type = changestate
value = 3100
triggerall = !ailevel
triggerall = command = "236236P"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(18) || var(20) = 1

[state -1, Starmine Fists]
type = changestate
value = 3000
triggerall = !ailevel
triggerall = command = "236236K"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(18) || var(20) = 1

;=========================================================================
; SPECIALS MOVES
;=========================================================================

[state -1, Blowning Starbow Mirror]
type = changestate
value = 1700
triggerall = !ailevel
triggerall = command = "624P"
triggerall = statetype != A
triggerall = !numhelper(1705)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(18)

[state -1, Wheel Kick]
type = changestate
value = 1000
triggerall = !ailevel
triggerall = command = "624K"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(18)

[state -1, Blazing Starmine]
type = changestate
value = 1500
triggerall = !ailevel
triggerall = command = "623P"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(18)

[state -1, Moonsault]
type = changestate
value = 1100
triggerall = !ailevel
triggerall = command = "623K"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(18)

[state -1, Raining Starmine]
type = changestate
value = 1600
triggerall = !ailevel
triggerall = command = "236P"
triggerall = statetype = A && pos y < -40
triggerall = vel y < 2.734375 && var(1) != [4, 5]
trigger1 = ctrl
trigger2 = var(13) % 50 = 7 || var(13) % 50 = 8 || var(13) % 50 = 9
trigger3 = var(14) % 50 = 7 || var(14) % 50 = 8 || var(14) % 50 = 9
trigger4 = var(18)

[state -1, Magic Draw Arrow]
type = changestate
value = 1400
triggerall = !ailevel
triggerall = command = "236P"
triggerall = statetype != A
triggerall = !numhelper(1410)
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger4 = var(18)

[state -1, Aerial Floating Starmine]
type = changestate
value = 1300
triggerall = !ailevel
triggerall = command = "214P"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18)

[state -1, Floating Starmine]
type = changestate
value = 1200
triggerall = !ailevel
triggerall = command = "214P"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || stateno = 100
trigger2 = var(18)

;=========================================================================
; SYSTEM MECHANICS
;=========================================================================

[state -1, Jump Cancel]
type = changestate
value = 40
triggerall = !ailevel
triggerall = command = "up" || command = "holdup"
triggerall = statetype != A
triggerall = var(26) = 1
trigger1 = var(17)

[state -1, Run Forward]
type = changestate
value = 100
triggerall = !ailevel
triggerall = statetype != A && stateno != 100
trigger1 = command = "FF"
trigger1 = ctrl || var(21)
trigger2 = command = "holdfwd"
trigger2 = var(21)

[state -1, Hop Backward]
type = changestate
value = 105
trigger1 = !ailevel
trigger1 = statetype != A && stateno != [105, 106]
trigger1 = command = "BB"
trigger1 = ctrl

[state -1, Grab]
type = changestate
value = 800
triggerall = !ailevel
triggerall = command = "holdfwd" || command = "holdback"
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "x" && command = "y" || command = "x" && command = "z" || command = "y" && command = "z"
trigger2 = command = "a" && command = "b" || command = "a" && command = "c" || command = "b" && command = "c"

[state -1, Air Grab]
type = changestate
value = 840
triggerall = !ailevel
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "x" && command = "y" || command = "x" && command = "z" || command = "y" && command = "z"
triggerall = statetype = A && pos y <=  -32
trigger1 = ctrl
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8 || var(13) % 50 = 9)
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8 || var(14) % 50 = 9)

[state -1, Dodge]
type = changestate
value = 900
triggerall = !ailevel
triggerall = command = "a" && command = "x" && command != "holdfwd" && command != "holdback"
triggerall = statetype != A
triggerall = var(29) = 1 || var(29) = 5
trigger1 = ctrl || stateno = 100

[state -1, Dodge Forward]
type = changestate
value = 905
triggerall = !ailevel
triggerall = command = "holdfwd"
triggerall = command = "a" && command = "x"
triggerall = statetype != A
triggerall = var(30) = 1 || var(30) = 2
trigger1 = ctrl || stateno = 100

[state -1, Dodge Backward]
type = changestate
value = 910
triggerall = !ailevel
triggerall = command = "holdback"
triggerall = command = "a" && command = "x"
triggerall = statetype != A
triggerall = var(30) = 1 || var(30) = 3
trigger1 = ctrl || stateno = 100

[state -1, Guard Counter]
type = changestate
value = 915
triggerall = !ailevel
triggerall = command != "holddown" && command = "holdfwd"
triggerall = command = "b" && command = "y"
triggerall = statetype != A
triggerall = var(31) = 1
triggerall = power >= 1000
trigger1 = stateno = 150 || stateno = 152

[state -1, Power charge]
type = changestate
value = 920
triggerall = !ailevel
triggerall = command = "b" && command = "y"
triggerall = statetype != A
triggerall = var(32) = 1
triggerall = power < powermax && power < const(data.power)
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
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(27) = 1
triggerall = numhelper(4000)
triggerall = !helper(4000), var(0) && !helper(4000), var(1)
trigger1 = ctrl && time >= 2 || var(17)

[state -1, Air Dash]
type = changestate
value = 950
triggerall = !ailevel
triggerall = command = "FF" || command = "BB"
triggerall = statetype = A
triggerall = var(28) = 1
triggerall = numhelper(4000)
triggerall = !helper(4000), var(2)
trigger1 = ctrl || var(17)

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
value = 4100
triggerall = !ailevel
triggerall = command = "s"
triggerall = statetype != A && stateno != 4100
trigger1 = ctrl

[state -1,EXA 3]
type = changestate
value = 710
triggerall = !ailevel
triggerall = command = "c"
triggerall = command = "back" || command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)

[state -1, EXA 2]
type = changestate
value = 705
triggerall = !ailevel
triggerall = command = "a"
triggerall = command = "fwd" || command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 700
trigger1 = animelemtime(5) > 0 && animelemtime(8) < 0

[state -1, EXA 1]
type = changestate
value = 700
triggerall = !ailevel
triggerall = command = "a"
triggerall = command = "fwd" || command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 230
trigger1 = animelemtime(3) > 0 && animelemtime(6) < 0

[state -1, SWP]
type = changestate
value = 200
triggerall = !ailevel
triggerall = command = "x" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)

[state -1, SMP]
type = changestate
value = 210
triggerall = !ailevel
triggerall = command = "y" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)

[state -1, SSP]
type = changestate
value = 220
triggerall = !ailevel
triggerall = command = "z" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)

[state -1, SWK]
type = changestate
value = 230
triggerall = !ailevel
triggerall = command = "a" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)

[state -1, SMK]
type = changestate
value = 240
triggerall = !ailevel
triggerall = command = "b" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)

[state -1, SSK]
type = changestate
value = 250
triggerall = !ailevel
triggerall = command = "c" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)

[state -1, CWP]
type = changestate
value = 400
triggerall = !ailevel
triggerall = command = "x" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)

[state -1, CMP]
type = changestate
value = 410
triggerall = !ailevel
triggerall = command = "y" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)

[state -1, CSP]
type = changestate
value = 420
triggerall = !ailevel
triggerall = command = "z" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)

[state -1, CWK]
type = changestate
value = 430
triggerall = !ailevel
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)

[state -1, CMK]
type = changestate
value = 440
triggerall = !ailevel
triggerall = command = "b" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)

[state -1, CSK]
type = changestate
value = 450
triggerall = !ailevel
triggerall = command = "c" && command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)

[state -1, AWP]
type = changestate
value = 600
triggerall = !ailevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl || var(16)

[state -1, AMP]
type = changestate
value = 610
triggerall = !ailevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl || var(16)
trigger2 = var(25) = 1 && (var(13) % 50 = 7)
trigger3 = var(25) = 1 && (var(14) % 50 = 7)

[state -1, ASP]
type = changestate
value = 620
triggerall = !ailevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl || var(16)
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)

[state -1, AWK]
type = changestate
value = 630
triggerall = !ailevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl || var(16)
trigger2 = var(25) = 1 && (var(13) % 50 = 7)

[state -1, AMK]
type = changestate
value = 640
triggerall = !ailevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl || var(16)
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger3 = var(25) = 1 && (var(14) % 50 = 7)

[state -1, ASK]
type = changestate
value = 650
triggerall = !ailevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl || var(16)
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)

;=========================================================================
; ARTIFICIAL INTELLIGENCE (ORDERED BY ARBITRARY PREFERENCE)
;=========================================================================

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
trigger2 = time = 16 && stateno = [940, 942]
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
trigger2 = (p2statetype = L || p2statetype = A && p2movetype = H && p2stateno = 5050) && p2bodydist x > 128
trigger2 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Hop Backward]
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

[state -1, AI Air Grab]
type = changestate
value = 840
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype = A && cond(var(25) = 1, 1, p2movetype != H)
triggerall = statetype = A && pos y <=  -32
triggerall = (p2bodydist x = [-8, 24]) && (p2dist y = [-56, 32])
; condition
trigger1 = ctrl
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8 || var(13) % 50 = 9)
trigger2 = random < 56 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8 || var(14) % 50 = 9)
trigger3 = random < 56 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger4 = var(25) = 1 && (var(13) % 50 = 9 || var(14) % 50 = 9)
trigger4 = cond(numhelper(4000), helper(4000),var(1), 0)
trigger4 = random < 248 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Reverse Canal Creation]
type = changestate
value = 3300
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 3 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 3000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = p2bodydist x > -8 && (p2dist y = [-96, 8])
trigger1 = random < (48 + 800 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Severe Break Slider]
type = changestate
value = 3200
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 26 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 2000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = p2bodydist x > 160 && (p2dist y = [-96, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Magic Draw Arrow]
type = changestate
value = 1400
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
triggerall = !numhelper(1410)
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = p2bodydist x > 152 && (p2dist y = [-72, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 333, 1, cond(random < 333, 2, 3)) ; level
; condition
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger2 = p2bodydist x > 8 && (p2dist y = [-72, 8])
trigger2 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(random < 333, 1, cond(random < 333, 2, 3)) ; level
; condition
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger3 = p2bodydist x > 8 && (p2dist y = [-72, 8])
trigger3 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := cond(random < 333, 1, cond(random < 333, 2, 3)) ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3100 && animelemtime(8) > 0
trigger4 = p2bodydist x > 8 && (p2dist y = [-72, 8])
trigger4 = random < 96 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3

[state -1, AI Moonsault]
type = changestate
value = 1100
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 7 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 48]) && (p2dist y = [-160, 8])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 333 || p2movetype = A && p2statetype = A, 2, cond(random < 333, 3, 1)) ; level
; condition
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger2 = (p2bodydist x = [-8, 32]) && (p2dist y = [-160, 8])
trigger2 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 3 ; level
; condition
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger3 = (p2bodydist x = [-8, 32]) && (p2dist y = [-160, 8])
trigger3 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 3 ; level
; condition
trigger4 = ctrl || stateno = 52 || stateno = 100
trigger4 = (p2bodydist x = [-8, 48]) && (p2dist y = [-160, 8])
trigger4 = p2movetype = A
trigger4 = random < 144 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 3 ; level
; condition
trigger5 = ctrl || stateno = 52 || stateno = 100
trigger5 = (p2bodydist x = [-8, 72]) && (p2dist y = [-160, 8])
trigger5 = enemynear,statetype = A && enemynear,vel x > 0 && enemynear,vel y > 0
trigger5 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := 3 ; level

[state -1, AI Starmine Fists]
type = changestate
value = 3000
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 9 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 1000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 104]) && (p2dist y = [-72, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6 || var(13) % 50 = 51 || var(13) % 50 = 52 || var(13) % 50 = 53 || var(13) % 50 = 54 || var(13) % 50 = 55 || var(13) % 50 = 56
trigger2 = (p2bodydist x = [-8, 104]) && (p2dist y = [-72, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5 || var(14) % 50 = 51 || var(14) % 50 = 52 || var(14) % 50 = 53 || var(14) % 50 = 54 || var(14) % 50 = 55
trigger3 = (p2bodydist x = [-8, 104]) && (p2dist y = [-72, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3000 && animelemtime(28) > 0 && animelemtime(33) < 0
trigger4 = (p2bodydist x = [-8, 104]) && (p2dist y = [-72, 8])
trigger4 = random < 96 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Blowning Starbow Portal]
type = changestate
value = 3100
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 16 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && power >= 1000
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = p2bodydist x > 152 && (p2dist y = [-160, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6 || var(13) % 50 = 51 || var(13) % 50 = 52 || var(13) % 50 = 53 || var(13) % 50 = 54 || var(13) % 50 = 55 || var(13) % 50 = 56
trigger2 = p2bodydist x > 152 && (p2dist y = [-160, 8])
trigger2 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5 || var(14) % 50 = 51 || var(14) % 50 = 52 || var(14) % 50 = 53 || var(14) % 50 = 54 || var(14) % 50 = 55
trigger3 = p2bodydist x > 152 && (p2dist y = [-160, 8])
trigger3 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := cond(random < 500, 2, cond(random < 500, 3, 1)) ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3100 && animelemtime(8) > 0
trigger4 = p2bodydist x > 8 && (p2dist y = [-160, 8])
trigger4 = random < 96 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI EXA 3]
type = changestate
value = 710
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 56]) && (p2dist y = [-72, 8])
trigger1 = p2statetype = C && p2movetype != A
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI EXA 2]
type = changestate
value = 705
; condition
trigger1 = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
trigger1 = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
trigger1 = statetype != A && stateno = 700 && movehit
trigger1 = animelemtime(5) > 0 && animelemtime(8) < 0
trigger1 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI EXA 1]
type = changestate
value = 700
; condition
trigger1 = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
trigger1 = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
trigger1 = statetype != A && stateno = 230 && movehit
trigger1 = animelemtime(3) > 0 && animelemtime(6) < 0
trigger1 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI SSP]
type = changestate
value = 220
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 72]) && (p2dist y = [-96, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = (p2bodydist x = [-8, 72]) && (p2dist y = [-96, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = (p2bodydist x = [-8, 72]) && (p2dist y = [-96, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI SSK]
type = changestate
value = 250
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 64]) && (p2dist y = [-72, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = (p2bodydist x = [-8, 64]) && (p2dist y = [-72, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = (p2bodydist x = [-8, 64]) && (p2dist y = [-72, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI CSP]
type = changestate
value = 420
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI CSK]
type = changestate
value = 450
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 4 || var(14) % 50 = 5)
trigger3 = (p2bodydist x = [-8, 56]) && (p2dist y = [-56, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI ASP]
type = changestate
value = 620
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
; condition
trigger1 = ctrl || var(16)
trigger1 = (p2bodydist x = [-8, 32 + 8 * vel x * (vel x > 0)]) && (p2dist y = [-64, 56 + 32 * vel y * (vel y > 0)]) ; (p2bodydist x = [-8, 48 + 16 * (vel x > 0)]) && (p2dist y = [-64, 104 + 32 * (vel y > 1.0)])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl || var(16)
trigger2 = vel y > 0 && p2bodydist x > 0 && p2dist y > -48 && abs(p2dist y) = [p2dist x, p2dist x + 72]
trigger2 = p2statetype != A
trigger2 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger3 = (p2bodydist x = [-8, 48 + 16 * (vel x > 0)]) && (p2dist y = [-64, 104 + 32 * (vel y > 1.0)])
trigger3 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger4 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)
trigger4 = (p2bodydist x = [-8, 48 + 16 * (vel x > 0)]) && (p2dist y = [-64, 104 + 32 * (vel y > 1.0)])
trigger4 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI ASK]
type = changestate
value = 650
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
; condition
trigger1 = ctrl || var(16)
trigger1 = (p2bodydist x = [-8, 26 + 8 * vel x * (vel x > 0)]) && (p2dist y = [-72, 64 + 32 * vel y * (vel y > 0)]) ; (p2bodydist x = [-8, 26 + 16 * (vel x > 0)]) && (p2dist y = [-72, 64 + 32 * (vel y > 1.0)])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = ctrl || var(16)
trigger2 = vel y > 0 && p2bodydist x > 0 && p2dist y > -56 && abs(p2dist y) = [p2dist x, p2dist x + 72]
trigger2 = p2statetype != A
trigger2 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger3 = (p2bodydist x = [-8, 26 + 16 * (vel x > 0)]) && (p2dist y = [-72, 64 + 32 * (vel y > 1.0)])
trigger3 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger4 = var(25) = 1 && (var(14) % 50 = 7 || var(14) % 50 = 8)
trigger4 = (p2bodydist x = [-8, 26 + 16 * (vel x > 0)]) && (p2dist y = [-72, 64 + 32 * (vel y > 1.0)])
trigger4 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Raining Starmine]
type = changestate
value = 1600
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 8 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A && pos y < -40
triggerall = vel y < 2.734375 && var(1) != [4, 5]
; condition
trigger1 = ctrl && cond(numhelper(1310), helper(1310),frontedgedist <= -32, 1)
trigger1 = (p2bodydist x = [-8, 80]) && p2dist y > -96
trigger1 = vel x <= 0 || p2movetype = H && p2statetype = L
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(p2movetype = A && vel x > 0, 3, cond(random < 333, 2, 1)) ; level
; condition
trigger2 = var(13) % 50 = 7 || var(13) % 50 = 8 || var(13) % 50 = 9
trigger2 = (p2bodydist x = [-8, 80]) && p2dist y > -96
trigger2 = random < 56 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 1 ; level
; condition
trigger3 = var(14) % 50 = 7 || var(14) % 50 = 8 || var(14) % 50 = 9
trigger3 = (p2bodydist x = [-8, 80]) && p2dist y > -96
trigger3 = random < 56 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 1 ; level
; condition
trigger4 = var(18)
trigger4 = stateno = 3000 && animelemtime(37) > 0
trigger4 = (p2bodydist x = [-8, 128]) && p2dist y > -96
trigger4 = random < 1000 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := cond(random < 333, 1, cond(random < 333, 2, 3)) ; level

[state -1, AI SMP]
type = changestate
value = 210
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 40]) && (p2dist y = [-72, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = (p2bodydist x = [-8, 40]) && (p2dist y = [-72, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = (p2bodydist x = [-8, 40]) && (p2dist y = [-72, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI SMK]
type = changestate
value = 240
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 72]) && (p2dist y = [-72, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = (p2bodydist x = [-8, 56]) && (p2dist y = [-72, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = (p2bodydist x = [-8, 56]) && (p2dist y = [-72, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI CMP]
type = changestate
value = 410
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 24]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = (p2bodydist x = [-8, 24]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = (p2bodydist x = [-8, 24]) && (p2dist y = [-56, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI CMK]
type = changestate
value = 440
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 72]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 4 || var(13) % 50 = 5)
trigger2 = (p2bodydist x = [-8, 72]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 1 || var(14) % 50 = 4)
trigger3 = (p2bodydist x = [-8, 72]) && (p2dist y = [-56, 8])
trigger3 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI AMP]
type = changestate
value = 610
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
; condition
trigger1 = ctrl || var(16)
trigger1 = (p2bodydist x = [-8, 40 + 16 * (vel x > 0)]) && (p2dist y = [-80, 40 + 32 * (vel y > 1.0)])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7)
trigger2 = (p2bodydist x = [-8, 40 + 16 * (vel x > 0)]) && (p2dist y = [-80, 40 + 32 * (vel y > 1.0)])
trigger2 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7)
trigger3 = (p2bodydist x = [-8, 40 + 16 * (vel x > 0)]) && (p2dist y = [-80, 40 + 32 * (vel y > 1.0)])
trigger3 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI AMK]
type = changestate
value = 640
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
; condition
trigger1 = ctrl || var(16)
trigger1 = (p2bodydist x = [-8, 40 + 16 * (vel x > 0)]) && (p2dist y = [-64, 56 + 32 * (vel y > 1.0)])
trigger1 = random < (48 + 96 * (stateno = [940, 942])) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7 || var(13) % 50 = 8)
trigger2 = (p2bodydist x = [-8, 40 + 16 * (vel x > 0)]) && (p2dist y = [-64, 56 + 32 * (vel y > 1.0)])
trigger2 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger3 = var(25) = 1 && (var(14) % 50 = 7)
trigger3 = (p2bodydist x = [-8, 40 + 16 * (vel x > 0)]) && (p2dist y = [-64, 56 + 32 * (vel y > 1.0)])
trigger3 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI SWP]
type = changestate
value = 200
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 32]) && (p2dist y = [-72, 8])
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI SWK]
type = changestate
value = 230
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 24]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = (p2bodydist x = [-8, 24]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI CWP]
type = changestate
value = 400
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 32]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI CWK]
type = changestate
value = 430
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 && !var(11)
triggerall = p2statetype != L && p2statetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 100 || var(16) || var(21)
trigger1 = (p2bodydist x = [-8, 32]) && (p2dist y = [-56, 8])
trigger1 = random < (48 + 96 * var(16)) * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 1 || var(13) % 50 = 4)
trigger2 = (p2bodydist x = [-8, 32]) && (p2dist y = [-56, 8])
trigger2 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI AWP]
type = changestate
value = 600
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
; condition
trigger1 = ctrl || var(16)
trigger1 = (p2bodydist x = [-8, 24 + 16 * (vel x > 0)]) && (p2dist y = [-72, 32 + 32 * (vel y > 1.0)])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI AWK]
type = changestate
value = 630
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 5 + 5 * var(25) && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
; condition
trigger1 = ctrl || var(16)
trigger1 = (p2bodydist x = [-8, 16 + 16 * (vel x > 0)]) && (p2dist y = [-112, 48 + 32 * (vel y > 1.0)])
trigger1 = random < 48 * (ailevel ** 2.0 / 64.0) ; probability
; condition
trigger2 = var(25) = 1 && (var(13) % 50 = 7)
trigger2 = (p2bodydist x = [-8, 16 + 16 * (vel x > 0)]) && (p2dist y = [-112, 48 + 32 * (vel y > 1.0)])
trigger2 = random < (48 + 200 * enemynear,gethitvar(fall)) * (ailevel ** 2.0 / 64.0) ; probability

[state -1, AI Blazing Starmine]
type = changestate
value = 1500
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 8 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 128]) && (p2dist y = [-128, 8])
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(p2bodydist x < 104, 1, cond(p2bodydist x < 112, 2, 3)) ; level
; condition
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger2 = (p2bodydist x = [-8, 104]) && (p2dist y = [-128, 8])
trigger2 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := 1 ; level
; condition
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger3 = (p2bodydist x = [-8, 104]) && (p2dist y = [-128, 8])
trigger3 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := 1 ; level
; condition
trigger4 = ctrl || stateno = 52 || stateno = 100
trigger4 = (p2bodydist x = [-8, 104]) && cond(enemynear,movetype = H && enemynear,vel y > 0, 1, (p2dist y = [-128, 8]))
trigger4 = random < 40 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 1 ; level

[state -1, AI Wheel Kick]
type = changestate
value = 1000
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 7 && !var(11)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl || stateno = 52 || stateno = 100
trigger1 = (p2bodydist x = [-8, 174]) && (p2dist y = [-96, 8])
trigger1 = random < 8 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(p2bodydist x < 128 || p2statetype = A, 1, cond(p2bodydist x < 152, 2, 3)) ; level
; condition
trigger2 = var(13) % 50 = 1 || var(13) % 50 = 2 || var(13) % 50 = 3 || var(13) % 50 = 4 || var(13) % 50 = 5 || var(13) % 50 = 6
trigger2 = (p2bodydist x = [-8, 174]) && (p2dist y = [-96, 8])
trigger2 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger2 = var(22) := cond(p2bodydist x < 128 || p2statetype = A, 1, cond(p2bodydist x < 152, 2, 3)) ; level
; condition
trigger3 = var(14) % 50 = 1 || var(14) % 50 = 2 || var(14) % 50 = 3 || var(14) % 50 = 4 || var(14) % 50 = 5
trigger3 = (p2bodydist x = [-8, 174]) && (p2dist y = [-96, 8])
trigger3 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger3 = var(22) := cond(p2bodydist x < 128 || p2statetype = A, 1, cond(p2bodydist x < 152, 2, 3)) ; level
; condition
trigger4 = ctrl || stateno = 52 || stateno = 100
trigger4 = (p2bodydist x = [-8, 112]) && (p2dist y = [-112, 8])
trigger4 = p2movetype = A && p2statetype != C
trigger4 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability
trigger4 = var(22) := 1 ; level
; condition
trigger5 = ctrl || stateno = 52 || stateno = 100
trigger5 = (p2bodydist x = [-8, 72]) && (p2dist y = [-160, 8])
trigger5 = p2statetype = C && p2movetype = A
trigger5 = random < 200 * (ailevel ** 2.0 / 64.0) ; probability
trigger5 = var(22) := 2 ; level

[state -1, AI Aerial Floating Starmine]
type = changestate
value = 1300
triggerall = ailevel && numenemy && roundstate = 2
; triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype = A
; condition
trigger1 = ctrl && cond(numhelper(1310), helper(1310),frontedgedist <= -32, 1)
trigger1 = p2bodydist x > 160 ; && (p2dist y = [-96, 8])
trigger1 = vel x <= 0 || p2movetype = H && p2statetype = L
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := 1 ; level

[state -1, AI Floating Starmine]
type = changestate
value = 1200
triggerall = ailevel && numenemy && roundstate = 2
; triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A
; condition
trigger1 = ctrl && cond(numhelper(1205), helper(1205),frontedgedist <= -32, 1)
trigger1 = p2bodydist x > 160 ; && (p2dist y = [-96, 8])
trigger1 = random < 24 * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := 1 ; level

[state -1, AI Blowning Starbow Mirror]
type = changestate
value = 1700
triggerall = ailevel && numenemy && roundstate = 2 && var(10) < 13 && !var(11)
triggerall = p2stateno != 5201 ; p2statetype != L && p2stateno != 5120 &&
triggerall = statetype != A
triggerall = !numhelper(1705)
; condition
trigger1 = ctrl
trigger1 = (p2bodydist x = [-8, 104]) && (p2dist y = [-96, 8])
trigger1 = random < (8 + 200 * (p2statetype = L || p2stateno = 5120)) * (ailevel ** 2.0 / 64.0) ; probability
trigger1 = var(22) := cond(p2statetype = L || p2stateno = 5120, 3, cond(enemy,numproj || random < 328, 1, 2)) ; level

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
triggerall = (p2bodydist x = [-8, 72]) && (p2dist y = [-96, 8])
; condition
trigger1 = stateno = 150 || stateno = 152
trigger1 = life < 0.2 * lifemax
trigger1 = enemynear,vel x >= 0 && enemynear,vel y >= 0 && enemynear,life > 56
trigger1 = random < 72 * (ailevel ** 2.0 / 64.0) ; probability

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
triggerall = ailevel && numenemy && roundstate = 2&& !numhelper(932)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = statetype != A && stateno != [935, 942]
triggerall = var(30) = 1 || var(30) = 2
triggerall = ctrl || stateno = 100
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
triggerall = ailevel && numenemy && roundstate = 2 && !numhelper(932)
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = enemynear,hitdefattr != SCA,AT
triggerall = statetype != A && stateno != [935, 942]
triggerall = frontedgedist < backedgedist
triggerall = var(30) = 1 || var(30) = 3
triggerall = ctrl || stateno = 100
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
value = 4100
triggerall = ailevel && numenemy && roundstate = [2, 3]
triggerall = p2statetype = L && p2movetype != A && p2stateno != 5120 && p2stateno != 5201
triggerall = statetype != A && stateno != 4100
triggerall = !enemy,numproj && !enemy,ctrl
triggerall = p2bodydist x > 128 || roundstate = 3
; condition
trigger1 = ctrl
trigger1 = random < 16 * (ailevel ** 2.0 / 64.0) ; probability