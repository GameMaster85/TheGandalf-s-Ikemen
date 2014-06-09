<================================================< Aoko by RajaaBoy >================================================>
     
<========================< Important Notes >========================>

- Website          = www.justnopoint.com/lithues/
- Email            = litotichues@gmail.com
- Mugen Version    = 1.0+
- Character Verson = 3.1, 01-24-13

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

- Hooligan            = F + a * 3 ; An easy manual combo. Doesn't generate power after the first hit.
- Over-head Chop Kick = B + c     ; Aoko Raises her leg slowly to kick the opponent. Can't be blocked while crouching.

<------------< SPECIALS >------------>

- Wheel Kick              = HCB + K       ; A stylish overhead kick.
- Moonsault               = DPM + K       ; A stylish kick with some start-up invincibility.
- Floating Starmine       = QCB + $P      ; Set a trap for your opponents. Can be done in the air.
- Magic Draw Arrow        = QCF + P       ; shoot a piercing wave of energy.
- Blazing Starmine        = DPM + P       ; Press the ground to summon a burst of energy that aims upward.
- Raining Starmine        = QCF + P + [A] ; Swipe the air to summon a burst of energy that aims downward.
- Blowning Starbow Mirror = HCB + P       ; Conjure a mirror that can reflect projectiles and do damage.

<------------< SUPERS >------------>

- Starmine Fists          = QCF * 2 + K + [*]   ; A cool looking aray of punches and kicks.
- Blowning Starbow Portal = QCF * 2 + P + [*]   ; Open a portal to another dimensions and release a brrage of lasers.
- Severe Break Slider     = F > HCF + P + [**]  ; Obliterate your opponent with 3 huge, powerful lasers.
- Reverse Canal Creation  = F > HCF + K + [***] ; Forms an energy ball that is controlable via your D-pad or keyboard.

<========================< Version History >========================>

<------------< (v.3.2) 01-24-13 >------------>

- Cannot low jump while chain combos are active.
- Changed some sounds and effects for super pause and power charge.
- Cannot perform rain starmine unless close (befor eor after) the peak of a jump.

<------------< (v.3.1) 12-02-12 >------------>

- Readjusted AI again, again.
- Re-enabled Hooligan.
- No chip damage on Blowning Starbow Portal's light version, and chip damage is decreased for the higher versions.
- Foreground is now temporarily hidden during a super KO.

<------------< (v.3.0) 12-01-12 >------------>

- Coding is now more readable.
- Recreated artificial intelligence.
- Reverse Canal Creation is not a counter move anymore.
- Added config file.
- Added chain combos, air jumping, air dashing, jump canceling and shielding and much more. Read the config file.
- By default, some options are disbaled while others aren't.
- Adjusted super effects and hitsparks.
- General optimization of code.

<------------< (v.2.6) 09-12-11 >------------>

- Fixed hitboxes.
- Frame times and velocities are as accurate as possible, unless they aren't.

<========================< Special Thanks >========================>

<------------< Mentors and Buddies >------------>

- RajaaBoy: I need to thank myself once in a while. O_O
- DreamSlayer/Just No Point : Webspace and sprites and stuff. =P
- Cyanide: Because he put me through boot camp (and the docs) to learn coding.
- Drex: Provided Me with Knowledge to produce My Own Resources.
- Laquak: Even if he didn't do anything, he did something.
- Dshzinetz: He Didn't do anything.=O
- Cybaster: Because every character would be Crap without his Feedback. Plus, I'm using his Readme he kindly made out of nowhere for me. XD
- Mauve: Frame display tool, which I used.
- Elecbyte: Creators of Mugen.
- Typemoon: Axiomatic.

<========================< Nothing to See Here >========================>

[statedef -65536]
type = A
ctrl = 0
[state -65536]
type = null
trigger1 = 0