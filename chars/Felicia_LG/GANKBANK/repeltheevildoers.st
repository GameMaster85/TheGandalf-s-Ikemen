;This file will lead you to salvation should you believe in such things.
;Anti-Rape system Version 1.1 by aokmaniac13 & Jesuszilla
;var(10) - DO WE FIRE THE WEAPONS?

[Statedef 321]
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 0

[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(15951)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(15952)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(15953)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(15905) ; GIVE
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4521)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4520)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(51221)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(51241) ;  IT
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4720)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4721)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4821)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(3821)  ;  UP
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(15907)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(15908)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(19230)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(51219) ;  ƒA
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(18700)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(51240)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4632)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(82151) ;  ƒL
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(15800)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(15802)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(54321)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(54322) ;  ƒ‰
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(54350)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4621)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4622)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4623)  ;  ƒ
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4624)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4625)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4626)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4627)  ;  ƒ
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4631)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(51242)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(51220)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(54323)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4629)
var(3) = 1
[State -2, VarAdd]
type = VarAdd
triggerall = !Time
trigger1 = Enemy, SelfAnimExist(4628)
var(3) = 1

[State 201, Nevermind.]
type = varset
triggerall = numhelper(202) = 1
triggerall = var(10) = 1
trigger1 = root, anim != [15000,16000]
trigger1 = root, anim != [9005,9020]
trigger1 = root, anim != [18200,19230]
trigger1 = root, anim != 7696
trigger1 = root, anim != [4000,4999]
trigger1 = enemy, StateNo != [50000,59999]
trigger1 = root, anim != [1000,1999]
trigger1 = enemy, anim != [20000,29999]
trigger2 = ! (root, gethitvar(isbound))
trigger2 = root, alive
trigger3 = root, ctrl
v = 10
value = 0
ignorehitpause = 1

[State 201, Nevermind.]
type = varset
triggerall = numhelper(202) = 1
triggerall = var(3) > 3
triggerall = var(10) = 2
;trigger1 = root, anim != [3520,3831]
trigger1 = selfanimexist(root, anim)
trigger1 = ! (root, gethitvar(isbound))
trigger1 = root, alive
v = 10
value = 0
ignorehitpause = 1

[State 201, Nevermind.]
type = varset
triggerall = numhelper(202) = 1
triggerall = enemy, name = "Haruhi Suzumiya"
triggerall = var(10) = 3
trigger1 = ! (root, gethitvar(isbound))
trigger1 = root, alive
v = 10
value = 0
ignorehitpause = 1

;The ever watchful eye...
[State 201, FIRE ALL WEAPONS]
type = varset
triggerall = numhelper(202) = 0
triggerall = !var(10)
triggerall = var(3) > 3
triggerall = root, gethitvar(isbound)
trigger1 = root, anim = [15100,15953]
trigger2 = root, anim = [9005,9020]
trigger3 = root, anim = [18200,19230]
trigger4 = root, anim = 7696
trigger5 = root, anim = [4000,4999]
trigger6 = root, anim = [1000,1999]
trigger7 = enemy, StateNo = [50000,59999]
trigger8 = enemy, anim = [20000,29999]
v = 10
value = 1
ignorehitpause = 1

;The ever watchful eye...
[State 201, KEEP FIRING!]
type = varset
triggerall = numhelper(202) = 0
triggerall = !var(10)
triggerall = root, gethitvar(isbound)
triggerall = var(3) > 3
trigger1 = !selfanimexist(root, anim)
trigger2 = root, anim = 6621
trigger3 = root, anim = [1010,1059]
trigger4 = root, anim = [1500,1699]
v = 10
value = 2
ignorehitpause = 1

;The ever watchful eye...
[State 201, AAAAH MOTHERLAND!]
type = varset
triggerall = numhelper(202) = 0
triggerall = !var(10)
triggerall = root, gethitvar(isbound)
triggerall = enemy, name = "Haruhi Suzumiya"
trigger1 = !SelfAnimExist(root, anim)
v = 10
value = 3
ignorehitpause = 1

[State 201, WHO TOUCHED MY GUN?]
type = helper
triggerall = numhelper(202) = 0
trigger1 = var(10)
ID = 202
postype = left
pos = 0,0
stateno = 322
pausemovetime = 999
ignorehitpause = 1


;Naturally, it works silently.
[State 201, Invisible]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

;And unnoticeably.
[State 201, playerpush]
type = playerpush
trigger1 = 1
value = 0

;THIS MEANS WAR FUCKER
[Statedef 322]
movetype = I
physics = N
ctrl = 0
velset = 0,0

[State Quote BG]
type = Explod
trigger1 = !numexplod(9001)
trigger1 = parent, var(10)
ID = 9001
anim = 9001
pos = 0,0
postype = left
facing = 1
removetime = 20000
supermovetime = 65535
pausemovetime = 65535
sprpriority = 997
bindtime = -1
ontop = 1
ownpal = 1
scale = .5,.5
ignorehitpause = 1

;Naturally, it works silently.
[State 202, Invisible]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = nomusic
flag3 = nobardisplay
ignorehitpause = 1

;And unnoticeably.
[State 202, playerpush]
type = playerpush
trigger1 = 1
value = 0

[State 202, playsnd]
type = playsnd
trigger1 = time = 0
value = S666,666
channel = 4
ignorehitpause=1

[State 201, StopSound]
type = stopsnd
trigger1 = parent, var(10) = 0
channel = 4
ignorehitpause = 1

[State 201, RemoveGankbank]
type = removeexplod
trigger1 = parent, var(10) = 0
trigger1 = numexplod(9001)
ID = 9001
ignorehitpause = 1

[State 202, destroyself]
type = destroyself
trigger1 = !numexplod(9001)
trigger1 = parent, var(10) = 0
ignorehitpause = 1
