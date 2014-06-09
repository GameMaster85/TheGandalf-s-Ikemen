<================================================< Dhalsim by RajaaBoy >================================================>
     
<========================< Important Notes >========================>

- Website          = www.justnopoint.com/lithues/
- Email            = litotichues@gmail.com
- Mugen Version    = 1.0+
- Character Verson = 4.4, 03-05-13

<========================< Legend >========================>

- x     = Weak Punch
- y     = Medium Punch
- z     = Strong Punch
- a     = Weak Kick
- b     = Medium Kick
- c     = Strong Kick

- U     = Up
- D     = Down
- F     = Forward
- B     = Back

- P     = Any Punch
- K     = Any Kick

- QCF   = Quarter Circle Forward
- QCB   = Quarter Circle Back
- HCF   = Half Circle Forward
- HCB   = Half Circle Back

- DPM   = Forward, Down, Forward
- DPMB  = Back, Down, Back

- B->F  = Hold Back, then Press Forward
- D->U  = Hold Down, then Press Up

- PPP   = Repeatedly Press Punch Buttons
- KKK   = Repeatedly Press Pick Buttons

*****The ommision of any of the above ([S], [C], [A]) indicates that a move is either done while grounded or while both grounded or airborne*****
- [S]   = Done While Standing
- [C]   = Done While Crouching
- [A]   = Done While Airborne

- [*]   = Needs at least 1 Power Stock
- [**]  = Needs at least 2 Power Stocks
- [***] = Needs at least 3 Power Stocks

- $     = Charge/Hold specified button. ie: $a (hold a) ; $B (hold back)
- /     = Either/or.
- >     = Continuation, not simultaneously.
- ~OR~  = interchangeable under certain conditions.

<========================< System >========================>

*****Read the Config file for system customization. The Config file will open in any text editor*****
*****Some of the system moves are disabled/enabled by default*****

- Run               = FF
- Back-dash         = BB
- Air Jump          = U + [A]
- Air Dash          = U + [A]

- Parry             = F + [S][A] ~OR~ D + [C]
- Shield            = x + a + [S][A] ~OR~ x + a + D + [C]
- Dodge             = x + a
- Directional Dodge = x + a + F ~OR~ x + a + B
- Guard Counter     = y + b + F + [*]

- Throw             = P + P ~OR~ K + K
- Recovery          = P/K + P/K
- Power-Charge      = $y + $b

- Super Cancel      = Cancel any Level 2 super into a Level 1 super or a spcial attack. Juggling rules don't apply.
- Charge Attacks    = For some normal attacks, hold the button for extra effects. Figure it out by yourself.
- Chain Attacks     = All basic attacks can be chained into a higher version of themselves. Punches can chain into kicks of the same level, but kicks can't chain into punches of the same level.

<========================< Move List >========================>

<------------< NORMALS >------------>

- Nearby Basics = $B + P/K
- Yoga Drill    = $D + a/b/c/z
- Yoga Chop     = $B + $x
- Yoga Uppercut = $B + $y
- Yoga Headbutt = $B + $z

<------------< SPECIALS >------------>

- Yoga Fire              = QCF + $P             ; Standard projectile. Can be done in the air. Charge/Hold is optional.
- Yoga Flame             = HCB + P              ; A static breath of fire. Can be done in the air. 
- Yoga Blast             = HCB + K              ; An anti-air static breath of fire.
- Yoga Teleport Forward  = DPM + P + P / K + K  ; Meditate and teleport forward. Can be done in the air.
- Yoga Teleport Backward = DPMB + P + P / K + K ; Meditate and teleport backward. Can be done in the air.
- Yoga Grasp             = QCF + K              ; Grab opponents with stretching limbs. Hold the back button to perform a body slam.
- Yoga Barrage           = PPP                  ; Attack opponents with consecutive headbutts.
- Yoga Levitation        = QCB + K + K          ; Meditate and defy gravity. Can be done in the air. Cancel by re-performing this move or going as low as possible and pressing down and a kick button.

<------------< SUPERS >------------>

- Yoga Stream      = QCF * 2 + P + [*]   ; Blow a stream of fire along the ground.
- Yoga Volcano     = QCF * 2 + K + [*]   ; Blow a stream of fire into the air.
- Yoga Strike      = QCB * 2 + K + [*]   ; Catch airborne opponents and slam them.
- Yoga Legend      = QCB * 2 + P + [*]   ; Uppercut opponents and then juggle them -- yoga style.
- Yoga Super Drill = QCF * 2 + K + [**]  ; Defy gravity and drill your opponents.
- Yoga Tempest     = HCB * 2 + P + [**]  ; Blow a powerful breath of static fire.
- Yoga Catastrophe = F > HCF + P + [***] ; A huge ball of firery energy.

<========================< Version History >========================>

<------------< (v.4.4) 03-05-13 >------------>

- Fixed the infinite teleport bug (annoying typos!)

<------------< (v.4.4) 01-24-13 >------------>

- Cannot low jump while chain combos are active.
- Changed some sounds and effects for super pause and power charge.

<------------< (v.4.3) 12-02-12 >------------>

- Readjusted AI again, again.
- AI will no longer waste atacks on an opponent it knows can't be juggled.
- AI will no longer use its shield mechanic recklessly (well, not as recklessly as before).
- Fixed an error in his teleport recovery that sends him straight to the landing state.
- Foreground is now temporarily hidden during a super KO.

<------------< (v.4.2) 12-01-12 >------------>

- Readjusted AI, again.
- Adjusted readability, again.
- Bug fixes with his fire based attacks. They won't disappear or disregard the hit counter anymore.
- Adusted super effects and hitsparks.
- General optimization.

<------------< (v.4.1) 04-24-12 >------------>

- Sally yells "Pati" when Dhalsim wins.
- Charged Yoga Fire doesn't suddenly disapper.
- Adjusted AI's intelligence.

<------------< (v.4.0) 04-22-12 >------------>

- Coding is now more readable.
- Recreated artificial intelligence.
- Fixed hitboxes.
- Stretching attacks don't hit up close.
- Added config file.
- Added chain combos, air jumping, air dashing, jump canceling and shielding and much more. Read the config file.
- Frame times and velocities are as accurate as possible, unless they aren't.

<========================< Special Thanks >========================>

<------------< Mentors and Buddies >------------>

- DreamSlayer/Just No Point : Webspace and stuff. =P
- Cyanide: Because he put me through boot camp (and the docs) to learn coding
- Drex: Provided Me with Knowledge to produce My Own Resources.
- Laquak: He Didn't do anything.
- Dshzinetz: He Didn't do anything, either.
- Cybaster: Because every character would be Crap without his Feedback. Plus, I'm using his Readme he kindly made out of nowhere for me. Well, not anymore, but still!
- NRF: I borrowed some sprites from his character. Thanks NRF.
- Elecbyte: Created Mugen.
- Capcom: The origin of this character.

<========================< Nothing to See Here >========================>

[statedef -65536]
type = A
ctrl = 0
[state -65536]
type = null
trigger1 = 0