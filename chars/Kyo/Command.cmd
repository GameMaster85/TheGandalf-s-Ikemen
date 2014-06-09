; _________________________________________
;| Kyo Kusanagi by Jmorphman               |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

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



;====================<SINGLE BUTTON>====================

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



;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1


;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1



;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1



;====================<RELEASE DIR>====================

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



;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1



;====================<SUPER MOTIONS>====================

[Command]
name = "QCFx2+P"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "QCFx2+P"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "QCFx2+P"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "QCFx2+P"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "QCFx2+P"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "QCFx2+P"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "QCFx2+2P"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "QCFx2+2P"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "QCFx2+2P"
command = ~D, DF, F, D, DF, F, x+z
time = 32


[Command]
name = "QCFx2+K"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "QCFx2+K"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "QCFx2+K"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "QCFx2+K"
command = ~D, DF, F, D, DF, F, ~a
time = 32

[Command]
name = "QCFx2+K"
command = ~D, DF, F, D, DF, F, ~b
time = 32

[Command]
name = "QCFx2+K"
command = ~D, DF, F, D, DF, F, ~c
time = 32


[Command]
name = "QCFx2+2K"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "QCFx2+2K"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "QCFx2+2K"
command = ~D, DF, F, D, DF, F, a+c
time = 32


[Command]
name = "Orochinagi"
command = ~D, DB, B, D, DF, F, x
time = 32

[Command]
name = "Orochinagi"
command = ~D, DB, B, D, DF, F, y
time = 32

[Command]
name = "Orochinagi"
command = ~D, DB, B, D, DF, F, z
time = 32

[Command]
name = "Orochinagi"
command = ~D, DB, B, D, DF, F, ~x
time = 32

[Command]
name = "Orochinagi"
command = ~D, DB, B, D, DF, F, ~y
time = 32

[Command]
name = "Orochinagi"
command = ~D, DB, B, D, DF, F, ~z
time = 32


[Command]
name = "MAXOrochinagi"
command = ~D, DB, B, D, DF, F, x+y
time = 32

[Command]
name = "MAXOrochinagi"
command = ~D, DB, B, D, DF, F, y+z
time = 32

[Command]
name = "MAXOrochinagi"
command = ~D, DB, B, D, DF, F, x+z
time = 32


[Command]
name = "Kamigomi"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x+y
time = 64

[Command]
name = "Kamigomi"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, y+z
time = 64

[Command]
name = "Kamigomi"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x+z
time = 64


[Command]
name = "QCFx2+PGami"
command = ~D, DF, F, D, DF, F, x
time = 16

[Command]
name = "QCFx2+PGami"
command = ~D, DF, F, D, DF, F, y
time = 16

[Command]
name = "QCFx2+PGami"
command = ~D, DF, F, D, DF, F, z
time = 16

[Command]
name = "QCFx2+PGami"
command = ~D, DF, F, D, DF, F, ~x
time = 16

[Command]
name = "QCFx2+PGami"
command = ~D, DF, F, D, DF, F, ~y
time = 16

[Command]
name = "QCFx2+PGami"
command = ~D, DF, F, D, DF, F, ~z
time = 16


[Command]
name = "QCFx2+2PGami"
command = ~D, DF, F, D, DF, F, x+y
time = 16

[Command]
name = "QCFx2+2PGami"
command = ~D, DF, F, D, DF, F, y+z
time = 16

[Command]
name = "QCFx2+2PGami"
command = ~D, DF, F, D, DF, F, x+z
time = 16


[Command]
name = "QCFx2+KGami"
command = ~D, DF, F, D, DF, F, a
time = 16

[Command]
name = "QCFx2+KGami"
command = ~D, DF, F, D, DF, F, b
time = 16

[Command]
name = "QCFx2+KGami"
command = ~D, DF, F, D, DF, F, c
time = 16

[Command]
name = "QCFx2+KGami"
command = ~D, DF, F, D, DF, F, ~a
time = 16

[Command]
name = "QCFx2+KGami"
command = ~D, DF, F, D, DF, F, ~b
time = 16

[Command]
name = "QCFx2+KGami"
command = ~D, DF, F, D, DF, F, ~c
time = 16


[Command]
name = "QCFx2+2KGami"
command = ~D, DF, F, D, DF, F, a+b
time = 16

[Command]
name = "QCFx2+2KGami"
command = ~D, DF, F, D, DF, F, b+c
time = 16

[Command]
name = "QCFx2+2KGami"
command = ~D, DF, F, D, DF, F, a+c
time = 16


[Command]
name = "OrochinagiGami"
command = ~D, DB, B, D, DF, F, x
time = 16

[Command]
name = "OrochinagiGami"
command = ~D, DB, B, D, DF, F, y
time = 16

[Command]
name = "OrochinagiGami"
command = ~D, DB, B, D, DF, F, z
time = 16

[Command]
name = "OrochinagiGami"
command = ~D, DB, B, D, DF, F, ~x
time = 16

[Command]
name = "OrochinagiGami"
command = ~D, DB, B, D, DF, F, ~y
time = 16

[Command]
name = "OrochinagiGami"
command = ~D, DB, B, D, DF, F, ~z
time = 16


[Command]
name = "MAXOrochinagiGami"
command = ~D, DB, B, D, DF, F, x+y
time = 16

[Command]
name = "MAXOrochinagiGami"
command = ~D, DB, B, D, DF, F, y+z
time = 16

[Command]
name = "MAXOrochinagiGami"
command = ~D, DB, B, D, DF, F, x+z
time = 16



;====================<SPECIAL MOTIONS>====================

[Command]
name = "QCF+P"
command = ~D, DF, F, x
time = 16

[Command]
name = "QCF+P"
command = ~D, DF, F, y
time = 16

[Command]
name = "QCF+P"
command = ~D, DF, F, z
time = 16

[Command]
name = "QCF+P"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "QCF+P"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "QCF+P"
command = ~D, DF, F, ~z
time = 16


[Command]
name = "QCF+2P"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "QCF+2P"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "QCF+2P"
command = ~D, DF, F, x+z
time = 16


[Command]
name = "HCB+P"
command = ~F, DF, D, DB, B, x
time = 32

[Command]
name = "HCB+P"
command = ~F, DF, D, DB, B, y
time = 32

[Command]
name = "HCB+P"
command = ~F, DF, D, DB, B, z
time = 32

[Command]
name = "HCB+P"
command = ~F, DF, D, DB, B, ~x
time = 32

[Command]
name = "HCB+P"
command = ~F, DF, D, DB, B, ~y
time = 32

[Command]
name = "HCB+P"
command = ~F, DF, D, DB, B, ~z
time = 32


[Command]
name = "Oniyaki"
command = ~F, D, DF, x
time = 16

[Command]
name = "Oniyaki"
command = ~F, D, DF, y
time = 16

[Command]
name = "Oniyaki"
command = ~F, D, DF, z
time = 16

[Command]
name = "Oniyaki"
command = ~F, D, DF, ~x
time = 16

[Command]
name = "Oniyaki"
command = ~F, D, DF, ~y
time = 16

[Command]
name = "Oniyaki"
command = ~F, D, DF, ~z
time = 16


[Command]
name = "EXOniyaki"
command = ~F, D, DF, x+y
time = 16

[Command]
name = "EXOniyaki"
command = ~F, D, DF, y+z
time = 16

[Command]
name = "EXOniyaki"
command = ~F, D, DF, x+z
time = 16


[Command]
name = "QCF+K"
command = ~D, DF, F, a
time = 16

[Command]
name = "QCF+K"
command = ~D, DF, F, b
time = 16

[Command]
name = "QCF+K"
command = ~D, DF, F, c
time = 16

[Command]
name = "QCF+K"
command = ~D, DF, F, ~a
time = 16

[Command]
name = "QCF+K"
command = ~D, DF, F, ~b
time = 16

[Command]
name = "QCF+K"
command = ~D, DF, F, ~c
time = 16


[Command]
name = "QCF+2K"
command = ~D, DF, F, a+b
time = 16

[Command]
name = "QCF+2K"
command = ~D, DF, F, b+c
time = 16

[Command]
name = "QCF+2K"
command = ~D, DF, F, a+c
time = 16


[Command]
name = "RDP+K"
command = ~B, D, DB, a
time = 16

[Command]
name = "RDP+K"
command = ~B, D, DB, b
time = 16

[Command]
name = "RDP+K"
command = ~B, D, DB, c
time = 16

[Command]
name = "RDP+K"
command = ~B, D, DB, ~a
time = 16

[Command]
name = "RDP+K"
command = ~B, D, DB, ~b
time = 16

[Command]
name = "RDP+K"
command = ~B, D, DB, ~c
time = 16


[Command]
name = "RDP+2K"
command = ~B, D, DB, a+b
time = 16

[Command]
name = "RDP+2K"
command = ~B, D, DB, b+c
time = 16

[Command]
name = "RDP+2K"
command = ~B, D, DB, a+c
time = 16


[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, a
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, b
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, c
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, ~a
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, ~b
time = 32

[Command]
name = "HCB+K"
command = ~F, DF, D, DB, B, ~c
time = 32


[Command]
name = "HCB+2K"
command = ~F, DF, D, DB, B, a+b
time = 32

[Command]
name = "HCB+2K"
command = ~F, DF, D, DB, B, b+c
time = 32

[Command]
name = "HCB+2K"
command = ~F, DF, D, DB, B, a+c
time = 32


[Command]
name = "Aoki"
command = ~D, DB, B, x
time = 16

[Command]
name = "Aoki"
command = ~D, DB, B, y
time = 16

[Command]
name = "Aoki"
command = ~D, DB, B, z
time = 16

[Command]
name = "Aoki"
command = ~D, DB, B, ~x
time = 16

[Command]
name = "Aoki"
command = ~D, DB, B, ~y
time = 16

[Command]
name = "Aoki"
command = ~D, DB, B, ~z
time = 16


[Command]
name = "EXAoki"
command = ~D, DB, B, x+y
time = 16

[Command]
name = "EXAoki"
command = ~D, DB, B, y+z
time = 16

[Command]
name = "EXAoki"
command = ~D, DB, B, x+z
time = 16


[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16


[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16




;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15



;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10



;====================<2/3 BUTTON COMBINATION>====================

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
command = y+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1


[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1


[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1


[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1




;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, 524 Shiki: Kamigomi]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "Kamigomi" && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Saishuu Kessen Ougi "Reishiki"]
type = ChangeState
value = 3500
triggerAll = !AILevel
triggerAll = command = "QCFx2+2P" && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX 182 Shiki / MAX 1999 Shiki: Kiri Honoo]
type = ChangeState
value = 3450;3250 + 200 * var(40)
triggerAll = !AILevel && var(40)
triggerAll = (command = "QCFx2+2K" && StateNo != [1000,1199]) || (command = "QCFx2+2KGami" && StateNo = [1000,1199])
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Saishu Kessen Ougi "Mushiki"]
type = ChangeState
value = 3150
triggerAll = !AILevel && !var(40)
triggerAll = (command = "QCFx2+2P" && StateNo != [1000,1199]) || (command = "QCFx2+2PGami" && StateNo = [1000,1199])
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Ura 108 Shiki: Orochinagi]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = (command = "MAXOrochinagi" && StateNo != [1000,1199]) || (command = "MAXOrochinagiGami" && StateNo = [1000,1199])
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, 182 Shiki / 1999 Shiki: Kiri Honoo]
type = ChangeState
value = 3400;3200 + 200 * var(40)
triggerAll = !AILevel && var(40)
triggerAll = (command = "QCFx2+K" && StateNo != [1000,1199]) || (command = "QCFx2+KGami" && StateNo = [1000,1199])
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Saishu Kessen Ougi "Mushiki"]
type = ChangeState
value = 3100
triggerAll = !AILevel && !var(40)
triggerAll = (command = "QCFx2+P" && StateNo != [1000,1199]) || (command = "QCFx2+PGami" && StateNo = [1000,1199])
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Ura 108 Shiki: Orochinagi]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = (command = "Orochinagi" && StateNo != [1000,1199]) || (command = "OrochinagiGami" && StateNo = [1000,1199])
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX 212 Shiki: Kototsuki You]
type = ChangeState
value = 1550
triggerAll = !AILevel
triggerAll = command = "HCB+2K"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Shiki Kai]
type = ChangeState
value = 1330
triggerAll = !AILevel
triggerAll = command = "QCF+2K"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX R.E.D. KicK / EX 101 Shiki: Oboro Guruma]
type = ChangeState
value = 1430 + 300 * var(40)
triggerAll = !AILevel
triggerAll = command = "RDP+2K"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Aoki]
type = ChangeState
value = 1830
triggerAll = !AILevel
triggerAll = command = "EXAoki" && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX 100 Shiki: Oniyaki]
type = ChangeState
value = 1230
triggerAll = !AILevel
triggerAll = command = "EXOniyaki"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, 115 Shiki: Dokugami Kai]
type = ChangeState
value = 1150
triggerAll = !AILevel
triggerAll = command = "QCF+2P" && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Yami Barai]
type = ChangeState
value = 1630
triggerAll = !AILevel
triggerAll = command = "QCF+2P" && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, 212 Shiki: Kototsuki You]
type = ChangeState
value = 1500
triggerAll = !AILevel
triggerAll = command = "HCB+K"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Shiki Kai]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerAll = command = "QCF+K"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, R.E.D. KicK / 101 Shiki: Oboro Guruma]
type = ChangeState
value = 1400 + 300 * var(40)
triggerAll = !AILevel
triggerAll = command = "RDP+K"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Aoki]
type = ChangeState
value = 1800
triggerAll = !AILevel
triggerAll = command = "Aoki" & var(40)
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, 100 Shiki: Oniyaki]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "Oniyaki"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, 115 Shiki: Dokugami]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "QCF+P" && (command = "z" || command = "rlsz")
triggerAll = RoundState = 2 && StateType != A && !var(40)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, 114 Shiki: Aragami]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "QCF+P" && !var(40)
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Yami Barai]
type = ChangeState
value = 1600
triggerAll = !AILevel
triggerAll = command = "QCF+P" && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Hourin (Canceled)]
type = ChangeState
value = 229
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "z"
triggerAll = StateType != A
trigger1 = var(5)

[State -1, Hourin]
type = ChangeState
value = 228
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Arashin (Canceled)]
type = ChangeState
value = 219
triggerAll = !AILevel && var(40)
triggerAll = command != "holddown" && command = "holdfwd" && command = "y"
triggerAll = StateType != A
trigger1 = var(5)

[State -1, Arashin]
type = ChangeState
value = 218
triggerAll = !AILevel && var(40)
triggerAll = command != "holddown" && command = "holdfwd" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Geshiki: Goufu You (Canceled)]
type = ChangeState
value = 249
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "b"
triggerAll = StateType != A
trigger1 = var(5)

[State -1, Geshiki: Goufu You]
type = ChangeState
value = 248
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Kurogami (Canceled)]
type = ChangeState
value = 209
triggerAll = !AILevel && var(40)
triggerAll = command != "holddown" && command = "holdfwd" && command = "x"
triggerAll = StateType != A
trigger1 = var(5)

[State -1, Kurogami]
type = ChangeState
value = 209
triggerAll = !AILevel && var(40)
triggerAll = command != "holddown" && command = "holdfwd" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Geshiki: Migiri Ugachi (Command Move, Canceled)]
type = ChangeState
value = 429
triggerAll = !AILevel && var(40)
triggerAll = command = "holddown" && command = "holdfwd" && command = "z"
triggerAll = StateType != A
trigger1 = var(5)

[State -1, Geshiki: Migiri Ugachi (Command Move)]
type = ChangeState
value = 429
triggerAll = !AILevel && var(40)
triggerAll = command = "holddown" && command = "holdfwd" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, 88 Shiki (Canceled)]
type = ChangeState
value = 459
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "holdfwd" && command = "c"
triggerAll = StateType != A
trigger1 = var(5)

[State -1, 88 Shiki]
type = ChangeState
value = 459
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "holdfwd" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Geshiki: Naraku Otoshi]
type = ChangeState
value = 629
triggerAll = command = "z" && command = "holddown"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Angled Jumping Heavy Kick]
type = ChangeState
value = 651
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
triggerAll = vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
triggerAll = !vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Angled Jumping Light Kick]
type = ChangeState
value = 631
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
triggerAll = vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
triggerAll = !vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)



;==============================================================================================
;===========================================< A.I >==============================================
;==============================================================================================

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && (StateType != A || (vel x > 0 && vel y >= 0))
trigger1 = Power >= 1000 && !var(20)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger1 = (EnemyNear, MoveType = A) && (P2BodyDist x = [0,40]) && (P2Dist y = [-60,60]) && (EnemyNear, vel y >= 0)
trigger1 = (EnemyNear, StateNo = [200,699]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,24]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Oniyaki (after Shiki Kai)]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1230, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [-60,60])
triggerAll = NumTarget(1300) && var(11)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Oboro Gurama (after Shiki Kai)]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1730, 1700)
triggerAll = AILevel && NumEnemy && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [-8,200])
triggerAll = NumTarget(1300) && var(11)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, MAX Orochinagi (after Shiki Kai)]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,165])
triggerAll = NumTarget(1300) && var(11) && var(10)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Orochinagi (after Shiki Kai)]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,165])
triggerAll = NumTarget(1300) && var(11) && var(10)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Oniyaki (Custom Combo)]
type = ChangeState
value = 1200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20) > 30
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = (EnemyNear, BackEdgeBodyDist <= 8 || EnemyNear, FrontEdgeBodyDist <= 8)
triggerAll = ((P2BodyDist x = [-70,70]) && P2StateType != A) || ((P2BodyDist x = [-85,85]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger2 = StateNo = 900 && !AnimTime && ctrl
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger4 = (StateNo = 1101 || StateNo = 1201) && var(6)

[State -1, Yami Barai (Custom Combo)]
type = ChangeState
value = 1600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && var(20)
triggerAll = var(40)
triggerAll = P2StateType != A && P2StateType != L
trigger1 = var(20) > 30 && StateNo = 1110 && var(6)

[State -1, Geshiki: Naraku Otoshi]
type = ChangeState
value = 629
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-67,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, 88 Shiki]
type = ChangeState
value = 459
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [0,115]
triggerAll = var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,115]) && (p2dist y = [-49,45]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (EnemyNear, GetHitVar(HitTime) >= 8)

[State -1, Geshiki: Migiri Ugachi (Command Move)]
type = ChangeState
value = 429
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [10,92]
triggerAll = var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,92]) && (p2dist y = [-79,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101]))
trigger2 = P2StateType = L && P2StateNo != 5120
trigger3 = (ctrl || (StateNo = [100,101]))
trigger3 = Enemy, StateNo = 120 || Enemy, StateNo = 130 || Enemy, StateNo = 140

[State -1, Hourin (Canceled)]
type = ChangeState
value = 229
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [35,70]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [35,70]) && (P2Dist y = [-66,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = var(5) && Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (EnemyNear, GetHitVar(HitTime) >= 8)

[State -1, Hourin]
type = ChangeState
value = 228
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [30,70]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [30,70]) && (p2dist y = [-66,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, StateType = C

[State -1, Arashin (Canceled)]
type = ChangeState
value = 219
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [21,135]
triggerAll = var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [21,135]) && (P2Dist y = [-73,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = var(5) && Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (EnemyNear, GetHitVar(HitTime) >= 8)

[State -1, Arashin]
type = ChangeState
value = 218
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [21,135]
triggerAll = var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [21,135]) && (p2dist y = [-73,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, StateType = C

[State -1, Geshiki: Goufu You (Canceled)]
type = ChangeState
value = 249
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [-16,90]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-16,90]) && (P2Dist y = [-122,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = var(5) && Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (EnemyNear, GetHitVar(HitTime) >= 8)

[State -1, Geshiki: Goufu You]
type = ChangeState
value = 248
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [29,90]
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [29,90]) && (p2dist y = [-65,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = EnemyNear, StateType = C

[State -1, Kurogami]
type = ChangeState
value = 209
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2BodyDist x = [10,92]
triggerAll = var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,92]) && (p2dist y = [-79,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (EnemyNear, GetHitVar(HitTime) >= 8)
trigger2 = var(5) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, GetHitVar(HitTime) >= 8)

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,69]) && (P2Dist y = [-93,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist x) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,82]) && (P2Dist y = [-71,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = roundstate = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,65]) && (p2dist y = [-129,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,85]) && (P2Dist y = [-44,60]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,47]) && (P2Dist y = [-67,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650 + (vel x >= 0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-75,40]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-70,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && (P2Dist y = [-105,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,54]) && (P2Dist y = [-61,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,91]) && (P2Dist y = [-24,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,37]) && (P2Dist y = [-73,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,65]) && (P2Dist y = [-71,25]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-88,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,77]) && (P2Dist y = [-46,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,54]) && (P2Dist y = [-51,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,59]) && (P2Dist y = [-14,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-78,43]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630 + (vel x >= 0)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,25]) && (P2Dist y = [-63,55]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, Oniyaki]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1230, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-57,57]) && P2StateType != A) || ((P2BodyDist x = [-60,60]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger4 = NumTarget(1300) && !var(11)

[State -1, Shiki Kai]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1330, 1300)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200,499])
triggerAll = (P2BodyDist x = [-8,130]) && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 25 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, R.E.D. KicK]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1430, 1400)
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200,499])
triggerAll = (P2BodyDist x = [-8,200]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Aragami]
type = ChangeState
value = 1000
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,145]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveContact && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Dokugami]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1150, 1100)
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,165]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveContact && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Oboro Gurama]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1730, 1700)
triggerAll = AILevel && NumEnemy && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200,499])
triggerAll = (P2BodyDist x = [-8,200]) && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 5 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Aoki]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1830, 1800)
triggerAll = AILevel && NumEnemy && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,88]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 9

[State -1, Kototsuki You]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1550, 1500)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,300]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 9

[State -1, Yami Barai]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1630, 1600)
triggerAll = AILevel && NumEnemy && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 5 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Kamigomi]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && P2StateNo != 5201
triggerAll = P2Dist x >= 0 && P2BodyDist x <= 40
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != A && P2StateType != L && (P2Dist y = [-48,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Reishiki]
type = ChangeState
value = 3500
triggerAll = AILevel && NumEnemy && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && var(20) <= 60
triggerAll = !var(16) && var(15) < 1
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3

[State -1, MAX Kiri Honoo]
type = ChangeState
value = 3450
triggerAll = AILevel && NumEnemy && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,120])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Mushiki]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,70])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Orochinagi]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 2 || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = EnemyNear, StateType != L
triggerAll = (P2BodyDist x = [0,165]) && (P2Dist y = [-41,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Kiri Honoo]
type = ChangeState
value = 3400
triggerAll = AILevel && NumEnemy && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,105])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Mushiki]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,70])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Orochinagi]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,165]) && (P2Dist y = [-41,0]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = NumTarget(1300) && var(11); &&  Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))
