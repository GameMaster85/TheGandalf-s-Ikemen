Hibiki Takane, Innocent Slash
Version 1.4
Style: Zero-Style, Revision 3.14159...

Table of Contents

1. Changelog
2. Implemented and Intended Features
3. Controls
	-Basic Moves
	-Command Moves and Throws
	-Special Moves
	-Super Moves 
4. System Notes
5. Bonus Section
6. Credits


1. Changelog

Version 1.4
	AI overhaul
	Other fixes.
	
Version 1.3b
	Some minor fixes.

Version 1.3a
	...I actually don't remember.

Version 1.3
	Juggle system fixed
	Counterhit system added
	Superpauses are faster
	Other fixes

Version 1.2b 
	Minor fixes

Version 1.2a 
	Minor fixes

Version 1.2
	New juggle system.
	Other fixes.

Version 1.1a
	Beckoning Slash hitboxes fixed.
	Divine Spirit of Victory can SC on contact from Beckoning Slash.

Version 1.1
	Missing sounds/FX for Repels added
	Aerial basics are overheads

Prerelease Version 2/Version 1.0
	Added Going my Way Root 4
	Changed Commands for Going My Way
	Other Stuff

2. Features

Implemented:
	All moves from The Last Blade 2/Capcom vs. SNK 2
	Power, Speed, and EX Modes from The Last Blade 2
	Counterhit system
	
3. Controls

Basic Moves

X, Y, Z, etc, refer to MUGEN button notation.

Light Punch - X (LP)
Medium Punch - Y (MP)
Heavy Punch - Z (HP)
Light Kick - A (LK)
Medium Kick - B (MK)
Heavy Kick - C (HK)

Command Moves
	Taking Advantage of the Momentum - LP+MP
	Cutting Down - Hold Fwd/Back, LK+MK

	Continuing After the Previous One - Hold HP during close standing HP				

System
	
True to The Last Blade 2, Hibiki has 3 modes of gameplay: Power (red), Speed/Skill (blue), and EX (green). 
At the start of the first round, you may select your mode by pressing Left or Right and then pressing Start, or by letting the menu time out.
Once you select your mode, you have to play with it until the next match.

In Power Mode, Hibiki:
  - does more damage per strike (the dampener is the loosest in this mode and each strike does much more damage).
  - will do chip damage when normal moves are blocked.
  - cannot use chain combos or interrupt into special moves.
  - can do a command unblockable attack.
  - can interrupt certain special moves into her supers.
  - can use Lv. 1, 2, and 3 Super Moves.

In Speed Mode, Hibiki:
  - can chain multiple normal moves together, and interrupt into specials.
  - does less damage per hit, because of the stricter damage dampener and actual reduced damage.
  - does not do chip damage with normal moves.
  - can do a command overhead attack.
  - can only use Lv. 1 super moves.
  - can do the Combo Special (Going My Way) with 3 super meters.

In EX Mode, Hibiki:
  - does less damage per strike, slightly more than Speed (the dampener is less strict than Speed Mode's but more strict than Power Mode's.)
  - takes significantly more damage when hit.
  - can use chain combos.
  - can interrupt certain special moves into her supers.
  - can use Lv. 1, 2, and 3 Super Moves.
  - can do the Combo Special (Going My Way) with 3 super meters.

Some moves or features are available depending on the Mode that Hibiki is using. 
Moves marked with [P] are usable in Power Mode.
Moves marked with [S] are usable in Speed Mode.
Moves marked with [E] are usable in EX Mode.
Moves marked with [SC] can be super canceled in Power or EX Modes.

	Recovery - any two punch/kick buttons, if recovery is possible. If near the ground, hold Forward to roll forward as you recover.
	[P] Forward Hop - tap Fwd twice - Hibiki leaps forward quickly. Moves a set distance, can jump over downed enemies and cancel the landing
	animation with a basic attack.
	[S][E] Dash - tap Fwd twice - Hibiki runs forward as long as the forward direction is held. Can cancel freely into specials or supers.	
	[P][S][E] Repel - while standing, crouching, or jumping, press MP+MK.
	[P] Unblockable Attack - press HP+HK. Hold down both buttons to delay the attack. 
	[S][E] Overhead Attack - press HP+HK. Can be comboed out of.

-Repels cannot block special attacks, and do no damage, but leave the opponent wide open to be counterattacked. However, the opponent will remain
at the distance they were when they struck you. The effect on the opponent changes based on where they were when you reversed the move.


Special Moves
	[SC] Distance Slash - D, DF, F, P
	[SC] Beckoning Slash - D, DB, B, P
	[SC] Piercing Moon Pounce - F, D, DF, K
	Melding Being Blade - B, D, F, K
		Drawing and Slashing - after countering with Melding Being Blade, press HK
		Slashing Without Drawing - after countering with Melding Being Blade, press MK+HK
	Narrow Escape - any two kicks (if pressing LK+MK, do not hold Fwd/Back)
		Essential Crunch (Forward) - during Narrow Escape, press F+LK (if you pressed LK+MK)/MK (if you pressed MK+HK)/ HK 
		(if you pressed LK+HK)
		Essential Crunch (Backward) - during Narrow Escape, press B+LK (if you pressed LK+MK)/MK (if you pressed MK+HK)/ HK 
		(if you pressed LK+HK)

-HP Distance Slash is a low attack.

-Beckoning Slash and the Forward Essential Crunch can be delayed/continued by holding down the appropriate button. Beckoning Slash has a charge
limit based on the strength of the attack and will automatically execute after holding down the button long enough, or releasing it while holding it.

-If Beckoning Slash is not charged, it will execute after a set amount of time that varies for each version of the move.

-Melding Being Blade can counter normal and special attacks that come from the ground or the air. The stronger the version, the shorter the startup
and the active time of the counter is.

-You may attack during Essential Crunch.

Super Moves

Lv. 1
	[P][S][E] Divine Spirit of Victory - D, DB, B, DB, F, P
	
-Can hit falling opponents.

Lv. 2
	[P][E] Divine Spirit of Victory - D, DB, B, DB, F, 2P

-Can hit falling opponents.

Lv. 3/MAX 
	[P][E] No Fear Feint - F, B, D, F, HP
	[S][E] Going My Way - D, D, LK or MK
		Root 1 - LP, MP, HP, LP, MP, HP, LP, MP, QCF+HP
		Root 2 - LP, MP, HP, LP, MP, HP, LK, MK, QCF+HK
		Root 3 - LP, MP, HP, LK, MK, LK, HK
		Root 4 - LP, MP, HP, LK, HK, LK, MK, QCF+HK 

-No Fear Feint will only do maximum damage at close range, but counts as a throw when performed close.
-No Fear Feint can hit falling opponents.
-The LK version of Going My Way is an overhead. The MK version is a low attack.


4. System Notes

All Modes:
	s.LP -> c.LP -> s.LP...
	s.LK -> c.LK -> s.LK...
	s.LP -> c.LK
	c.LK -> s.LP
	c.LK -> c.LK
	c.LK -> c.LP

Speed Mode (OK on hit/whiff):
	Standing Light -> Standing Medium -> Standing Heavy

Command Cancels:
	Continuing after the Previous One (Speed/EX Mode) -> any special

Special Cancels (OK on contact)
	s.LP/MP/HP/LK/MK/HK, c.LP/MP/HP/LK/MK -> any special
	Beckoning Slash (must pass through the opponent), Piercing Moon Pounce -> Distance Slash

Power/EX Mode Super Cancels (on contact)
	Any ground basic, Distance Slash, Piercing Moon Pounce, *Beckoning Slash -> [SC] Moves

*The move can only be supercanceled when it connects.

5. Bonus Section

Move Translations

TIkioi Ikasu Nari: Taking Advantage of the Momentum (lit. Capitalizing on the Momentum)
Kirifuseru Nari: Cutting Down (lit: verb, meaning [to] cut down)

Go no Sen wo Toru Nari: (To) Anticipate a Counterattack/Continuing After the Previous One (1)

Distance Slash--Touma Nite Kiru Nari: Slashing From a Distance (lit. Cut from a Distant Interval)
Beckoning Slash--Chika Yorite Kiru Nari: Slashing While Approaching (lit. Cut while Closely Pushing) 
Piercing Moon Pounce--Suigetsu o Tsuku Nari: Thrusting Like a Moonlight Reflection (lit: Thrust the Water Moon)
Melding Being Blade--I o Awasu Nari: Matching the Existence (lit. Unite/Combine the Being)
	Nukaba Kiru Nari: Slashing After Drawing Out
	Nukazuba Kiru Nari: Slashing Without Drawing Out
Narrow Escape--Kami Hito e nite Kawasu Nari: Evading in a Hair's Breadth (lit. [Be] Like the Evading Single Sheet of Paper)
	Essential Crunch (Fwd.)--Ma o Tsumeru Koto Kanyou Nari: Closing the Distance is Essential (lit: Crunching the Interval is Essential)
	Essential Crunch (Back)--Ma o Oku Koto Kanyou Nari: Distancing is Essential (lit: Leaving Behind the Interval is Essential)

Divine Spirit of Victory--Hasshou Suru Shinki Nari: Having the Mind Set on Victory (lit: The Divine/Mental Spirit that Discharges Victory) (2)
No Fear Feint--Shi o Osorenu Kokoro Nari: Having a Heart that Fears Not Death (lit: [There is] A Heart that Does Not Fear Death)
Going my Way--Shikabane o Koete Iku Nari: Exceeding the Limits of the Body (lit: To [Continue] Exceed[ing] the Corpse) (3)

	
(1) Research with both karate and kendo terms indicates that "go no sen" is basically responding to an attack that has already been launched, and that
"sen wo toru" is to anticipate an attack. However, another site I found to help me correct this list (see credits) gives the name of the attack as 
"continuing after the previous 'one'. I leave both of them here because either could be correct so far as I'm concerned.

(2) The "Shin" in Shinki can refer either to a god or to the human mind. "Ha" refers to a beginning or a discharge of some sort, so it could be said
that a person/something divine is releasing/discharging victory with their energy or spirit. This one is a little iffy....

(3) Iku can mean "to continue", and koete is a form of koeru, which can mean "to exceed". And though I use "corpse" in the literal translation, it's
likely that the kanji "corpse" was meant to refer to the body as an inanimate thing.


Quote Translations:

Intro: "Anata o...kiru." ("I'll cut/kill you.")

Winpose 1: "Kore ga...Iai desu." ("This...is Iai.")
Winpose 2: "Kantan ni wa, katenai." ("To put it simply, you can't win.")
Winpose 3: "Shikaketeki no wa...anata ga saki o." ("I challenged you because you [challenged me] first.")

Divine Spirit of Victory: "Kimeru! Shinki...Hasshou!" ("I'll end this [lit. It's decided]! Divinity/Mental Spirit...Victory!")
No Fear Feint: "Shi o miru koto...suru ga gotoshi." ("Looking at death...is the same as doing it [killing someone].")

6. Credits

http://spirits.kaillera.ru/tckb/setsugekka/storyline/hibiki_main.htm, jisho.org, c001357 - Translating help
Cyanide - helped get Root 4 on video so I could reproduce it
Arpa et al - Beta Testers
MalaDingDong - palettes
You - for playing