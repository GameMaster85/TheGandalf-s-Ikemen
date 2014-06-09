                                _______________________________
===============================| Nash by Phantom.of.the.Server |===============================
                                ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯          [12.01.2010]

- Contact: potsmugen@yahoo.com.br
- Website: http://www.mugenguild.com/pots/

- Customized version of Capcom's Nash character
- For Mugen 1.0 only



=====<Features>=====

- All the essential stuff
- Details and moves taken from his various video-game appearances and storyline
- Gameplay mixed from several Capcom games, including CvS2, SFZ3 and SF3
- Original and edited effects from various games
- Sounds from various games, including CvS2 and SFZ3
- Voice samples from SFZ3 and XvSF
- Various intros, win poses and special animations
- Special intros versus Guile, Vega and my Shin Gouki
- Shadow mode
- 5 extra portraits
- 13 palettes
- A.I.



=====<Movelist>=====

U - up          x - weak punch         a - weak kick
D - down        y - medium punch       b - medium kick
F - forward     z - strong punch       c - strong kick
B - back        p - any punch          k - any kick
s - start       2p- two punches        2k- two kicks

(Air)     - Move must be performed in the air.
(Air also)- Move can be performed either on the ground or in the air.
(EX)      - Move has an EX version, performed by pressing two punch/kick buttons.
(charge)  - Hold said direction for about 2 seconds before releasing.


<NORMAL>

.Dragon Suplex:         F/B + 2p (near opponent)
.Knee Gatling:          F/B + 2k (near opponent)
.Flying Buster Drop:    F/B + 2p (near opponent / Air)
.Airjack:               F/B + 2k (near opponent / Air)
.Knee Bazooka:          F/B + a
.Step Kick:             F/B + c

<SPECIAL>

.Sonic Boom (EX):       (charge) B, F, p
.Somersault Shell (EX): (charge) D, U, k
.Moonsault Slash (EX):  U, UF, F, k (Air)
.Shadow Warp:           D, DF, F, k (Shadow mode only)

<Lv1 SUPER>

.Sonic Break:           (charge) B, F, B, F, p
.Crossfire Blitz:       (charge) B, F, B, F, k
.Reversed Sommersault:  (charge) DB, DF, DB, U, p
.Moonsault Strike:      D, DF, F, D, DF, F, k (Air)

<Lv2 SUPER>

.Somersault Justice:    (charge) DB, DF, DB, U, k
.Crossfire Blitz:       (charge) B, F, B, F, 2k

<Lv3 SUPER>

.Sonic Blade:           (charge) B, F, B, F, 2p  (Nash mode only)
.Final Mission:         (charge) B, F, B, F, 2p  (Shadow mode only)


<SYSTEM>

.Forward Dash:          F, F
.Backward Dash:         B, B
.Dodge:                 a + x
.Dodge Attack:          p or k (while dodging)
.Roll:                  F/B + a + x
.Parry High:            (tap) F
.Parry Low:             (tap) D
.Air Parry:             (tap) F (Air)
.Power Charge:          (hold) b+y
.Zero Counter:          B, DB, D, p/k  (during standing or crouching guard)
.Excel Combo:           c+z (Air also)
.Fall Recovery:         2p (while falling from a hit)
.Recovery Roll:         2k (while falling from a hit)
.Low Jump:              U (tap)
.High Jump:             D, U
.Long Low Jump:         D, U (tap)
.Chouhatsu:             s



=====<Move Details>=====

- During Knee Gatling, you and your opponent can mash buttons to respectively increase or
decrease the number of hits;

- EX Moonsault Slash has autoguard against normal and special attacks;

- During Sonic Break, pressing any punch button will make Nash shoot up to 3 extra Sonic Booms;

- Moonsault Strike will only knock down the opponent on the last hit. So, if you do it close
enough to the ground, the last hit will miss entirely and the opponent will still be standing,
allowing you to land another Super;

- Final Mission comes out faster when done close to the opponent;



=====<Miscellaneous>=====

- To select Shadow mode, hold start as you select Nash.

- To change his size to TV aspect ratio (a.k.a. CvS scale), open the .def file and replace
"ConstantsSFZ.cns" with "ConstantsCvS.cns".

- If you don't like having to charge directions to perform Super moves, open the .def file and
replace "Command.cmd" with "CommandEasy.cmd".
  All charge charge commands used in Supers will be replaced with double quarter circle
motions, as follows:

(charge) B, F, B, F     ->  D, DF, F, D, DF, F
(charge) DB, DF, DB, U  ->  D, DB, B, D, DB, B


- Holding down a button as Nash wins a round allows you to select his win pose, as follows:

X/B/C -> Puts on his glasses
Y -> Turns his back, salutes and says "Too easy!"
Z -> Adjusts his jacket and says "Hmph."
A -> Cleans his glasses and says "Hmph."

Shadow has a special win pose at the end of a match.


- This character respects the following community standards:

<Animations>
Guard Crush: 5910, 5911, 5912, 5915, 5920, 5930
Collapse: 5130, 5131, 5950
Tech Hit: 5940, 5945
Electrocuted: 7696
Burned: 7697
Midnight Bliss: 9020, 66660, 66661, 66662
Winane's AI Method: 9741, 74140108
Character Traits: 8055000, 8055999 (more)

<States>
Collapse: 5130, 5131

For details, visit The Mugen Fighters Guild or Random Select forums:
- http://mugenguild.com/forumx/
- http://randomselect.i-xcell.com/forum/



=====<Version History>=====

<12.01.2010>
- For Mugen 1.0 now
- Revised some invulnerability times on supers
- Final Mission is considerably faster, but punishable and less damaging
- Sonic Blade is less damaging
- Juggle system no longer depends on whether or not P2 can fall recover, only on juggle points

<27.03.09>
- Some fixes

<14.12.08>
- Lv2 Crossfire Blitz now continues even if player 2 reverses it
- Sonic Boom hit boxes extended further down, means fewer chars can crouch under them
- Lv2 Crossfire Blitz is two frames slower, meaning the range at which it can catch an opponent
that wasn't guarding during the super pause is shorter

<v.1.25>
- Decreased range of Reversed Sommersault
- Doesn't need to charge for supers when Super Cancelling
- Strong Somersault Shell now does more hits on block like the original
- EX Somersault Shell does more hits
- EX Somersault Shell projectile now comes out a bit later in Nash's anim, but connects better
and has a better vertical range
- Standing weak kick is no longer rapid-fire
- Looser juggle system in Simul mode, will reset juggle points if either opponent is idle
- Special intro versus my Shin Gouki
- Reduced speed of Sonic Booms to better fit Mugen's screen (narrower than CPS)
- Recovers a lot faster from Knee Bazooka
- Lowered priority of crouching medium kick
- Tweaked Final Mission's custom states so that the opponent only gets up after a fixed
ammount of time


<v.1.2>
- Moonsault Slash can no longer be performed too close to the ground


<v.1.1>
- Nash no longer goes through thin opponents during Sonic Blade
- Can now Super Cancel EX Sonic Boom
- Added Moonsault Strike
- Added Midnight Bliss special animation
- Added A.I.
- Added some Kara Canceling
- Reduced damage of Sommersault Justice
- Reduced damage for Super Cancels
- EX Sonic Boom and EX Sommersault Shell now come out faster
- Final Mission is now overall a better move, coming out faster when close to the opponent and
having better anti-air priority
- Sonic Blade's invulnerability lasts slightly longer
- Changed a bit the way Final Mission looks
- Reduced Step Kick's damage, in order to somewhat weaken its Excel Combo
- The autoguard on EX Moonsault Slash can now block any Normal or Special attack
- Air throws can now juggle


<v.1.0>
- Added Excel Combo Finish effect
- Tweaked Final Mission velocities
- Knee Bazooka is now considered an aerial attack (can be air guarded)
- Can now use Recovery Roll after guarding an attack mid-air
- Added Reversed Sommersault, Sonic Blade and Shadow Warp
- Supers done at the end of an Excel Combo now do less damage
- Changed the Counter Hit special effect
- Added Shadow mode
- Added Power Charge anim
- Added palettes


<v.0.85>
- First release



=====<What's Missing>=====

- Nothing?



=====<Special Thanks>=====

- H" and Warusaki3, for some CvS2 effects
- The Dreamslayer, for ripping the MvC-exclusive Nash sprites
- Winane, for the A.I. activation code
- Anise, for Immaterial and Missing Power sprite rips
- 8th Gate Of Hell, BBH, Byakko, Messatsu, mh777 and Winane for useful feedback
- All the good folks in the community, for support and motivation
- www.GameFAQs.com, for... the game FAQs =P
- You, for downloading my char ;)



=====<Disclaimer>=====

- Nash and Street Fighter Zero are property of Capcom
- This Mugen character is a non-profit fan work, it cannot be used for any commercial purposes