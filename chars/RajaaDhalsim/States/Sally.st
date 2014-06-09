; Dhalsim By RajaaBoy

;=========================================================================
; Spectate
;=========================================================================
[statedef 10000]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 0
velset = 0, 0
sprpriority = -65536

[state 10000, Change Animation]
type = changeanim
trigger1 = rootdist x < 0
trigger1 = anim != 10000
value = 10000

[state 10000, Change Animation]
type = changeanim
trigger1 = rootdist x > 0
trigger1 = anim != 10001
value = 10001

[state 10000, Palette]
type = remappal
trigger1 = !var(0)
trigger1 = var(0) := 1
source = 1, 4
dest = 1, palno

[state 10000, Special Effect]
type = assertspecial
trigger1 = root,numhelper(6215)
trigger2 = numenemy
trigger2 = enemy,authorname = "RajaaBoy"
trigger2 = enemy,numhelper(6215)
trigger2 = enemy,stateno = [3000, 3999]
flag = invisible

; Clap
[state 10000, End State]
type = changestate
trigger1 = numenemy
trigger1 = !enemynear,hitover
value = 10010

; Look Away
[state 10000, End State]
type = changestate
trigger1 = !root,hitover
trigger2 = root,hitfall
trigger3 = root,stateno = 175
trigger4 = root,movetype = H
value = 10020

; Taunt
[state 10000, End State]
type = changestate
trigger1 = root,stateno = [8000, 8005]
trigger1 = !root,animelemtime(1)
trigger1 = random < 125
value = 10025

; Win / Lose
[state 10000, End State]
type = changestate
trigger1 = root,win
trigger1 = root,stateno = [181, 189]
trigger2 = root,lose
trigger2 = root,stateno = 170 || root,stateno = 5150
value = cond(root,win, 10030, 10040)

; Simul Lose
[state 10000, End State]
type = changestate
trigger1 = root,stateno = 5150
value = 10040

;=========================================================================
; Clap
;=========================================================================
[statedef 10010]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 0
velset = 0, 0

[state 10010, Change Avimation]
type = changeanim
trigger1 = rootdist x < 0
trigger1 = anim != 10010
value = 10010

[state 10010, Change Avimation]
type = changeanim
trigger1 = rootdist x > 0
trigger1 = anim != 10011
value = 10011

[state 10010, Special Effect]
type = assertspecial
trigger1 = root,numhelper(6215)
trigger2 = numenemy
trigger2 = enemy,authorname = "RajaaBoy"
trigger2 = enemy,numhelper(6215)
trigger2 = enemy,stateno = [3000, 3999]
flag = invisible

; Spectate
[state 10010, End State]
type = changestate
trigger1 = time > 96
trigger1 = !animtime
trigger1 = numenemy
trigger1 = enemynear,hitover
value = 10000

; Look Away
[state 10010, End State]
type = changestate
trigger1 = !root,hitover
trigger2 = root,hitfall
value = 10020

; Win / Lose
[state 10010, End State]
type = changestate
trigger1 = root,win
trigger1 = root,stateno = [181, 189]
trigger2 = root,lose
trigger2 = root,stateno = 170 || root,stateno = 5150
value = cond(root,win, 10030, 10040)

; Simul Lose
[state 10010, End State]
type = changestate
trigger1 = root,stateno = 5150
value = 10040

;=========================================================================
; Look Away
;=========================================================================
[statedef 10020]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 0
velset = 0, 0

[state 10020, Change Animation]
type = changeanim
trigger1 = !time
value = 10020

; Shake Head
[state 10020, Change Animation]
type = changeanim
trigger1 = anim = 10020
trigger1 = animelemno(0) = 7
trigger1 = root,movetype = H
value = 10021

; Shake Head
[state 10020, Change Animation]
type = changeanim
trigger1 = anim = 10021
trigger1 = animelemno(0) = 1
trigger1 = root,movetype != H
value = 10022

[state 10020, Special Effect]
type = assertspecial
trigger1 = root,numhelper(6215)
trigger2 = numenemy
trigger2 = enemy,authorname = "RajaaBoy"
trigger2 = enemy,numhelper(6215)
trigger2 = enemy,stateno = [3000, 3999]
flag = invisible

; Spectate
[state 10020, End State]
type = changestate
trigger1 = !animtime
trigger1 = anim = 10020 || anim = 10022
value = 10000

; Clap
[state 10020, End State]
type = changestate
trigger1 = root,hitover
trigger1 = !root,hitfall
trigger1 = numenemy
trigger1 = !enemynear,hitover
value = 10010

; Win / Lose
[state 10020, End State]
type = changestate
trigger1 = root,win
trigger1 = root,stateno = [181, 189]
trigger2 = root,lose
trigger2 = root,stateno = 170 || root,stateno = 5150
value = cond(root,win, 10030, 10040)

; Simul Lose
[state 10020, End State]
type = changestate
trigger1 = root,stateno = 5150
value = 10040

;=========================================================================
; Taunt
;=========================================================================
[statedef 10025]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 0
velset = 0, 0

[state 10025, Change Animation]
type = changeanim
trigger1 = rootdist x > 0
trigger1 = !time
value = 10030

[state 10025, Change Animation]
type = changeanim
trigger1 = rootdist x < 0
trigger1 = !time
value = 10031

[state 10025, Special Effect]
type = assertspecial
trigger1 = root,numhelper(6215)
trigger2 = numenemy
trigger2 = enemy,authorname = "RajaaBoy"
trigger2 = enemy,numhelper(6215)
trigger2 = enemy,stateno = [3000, 3999]
flag = invisible

[state 10025, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 10000, 0
volumescale = 100
persistent = 0

; Spectate
[state 10025, End State]
type = changestate
trigger1 = !animtime
value = 10000

;=========================================================================
; Win
;=========================================================================
[statedef 10030]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 0
velset = 0, 0

[state 10030, Change Animation]
type = changeanim
triggerall = rootdist x > 0
trigger1 = !time
trigger2 = !animtime
trigger2 = anim != 10030
value = 10030

[state 10030, Change Animation]
type = changeanim
triggerall = rootdist x < 0
trigger1 = !time
trigger2 = !animtime
trigger2 = anim != 10031
value = 10031

[state 10030, Special Effect]
type = assertspecial
trigger1 = root,numhelper(6215)
trigger2 = numenemy
trigger2 = enemy,authorname = "RajaaBoy"
trigger2 = enemy,numhelper(6215)
trigger2 = enemy,stateno = [3000, 3999]
flag = invisible

[state 10030, Voice]
type = playsnd
trigger1 = !animelemtime(4)
value = 10000, 0
volumescale = 100
persistent = 0

;=========================================================================
; Lose
;=========================================================================
[statedef 10040]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 0
velset = 0, 0

[state 10040, Change Animation]
type = changeanim
trigger1 = !time
value = 10040

[state 10040, Special Effect]
type = assertspecial
trigger1 = root,numhelper(6215)
trigger2 = numenemy
trigger2 = enemy,authorname = "RajaaBoy"
trigger2 = enemy,numhelper(6215)
trigger2 = enemy,stateno = [3000, 3999]
flag = invisible