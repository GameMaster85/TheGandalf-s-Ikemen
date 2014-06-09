                            _______________________________________
===========================| Chun-Li by Jmorphman                  |===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯           [04.27.12]

 - Contact: 	Jmorphman@aol.com
 - Website:	http://network.mugenguild.com/jmorphman/


 - Customized version of Capcom's Chun-Li character, for MUGEN 1.0


=====<Features>=====

 - All the essential stuff
 - Details and moves taken from her various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SFIII
 - Special intros versus Ryuji Yamazaki, Mai Shiranui, Yun, and evil characters.



=====<Mode Overview>=====

This character has two different modes:

<Chun-Li>
- Regular Chun-Li
- Based primarily on her SFIII and above moveset

<Shadow Lady>
- A cyborg version of Chun-Li made by Shadaloo
- Based primarily on her SFA moveset



=====<.DEF Overview>=====

This character has three different .def files, here's what each one does:

<CHUN-LI.def>
The mode is selected via palette:

Palettes 1, 2, 3, 4, 5, 6    -> Chun-Li mode
Palettes 7, 8, 9, 10, 11, 12 -> Shadow Lady mode

To add her to your Mugen, add the following line to your select.def, under [Characters]:
Chun-Li,

<NORMALCHUN-LI.def>
Only Normal Chun-Li mode.
To add her to your Mugen, add the following line to your select.def, under [Characters]:
Chun-Li/NormalChun-Li.def,

<SHADOWLADY.def>
Only Shadow Lady mode.
To add her to your Mugen, add the following line to your select.def, under [Characters]:
Chun-Li/ShadowLady.def,


=====<Palette Selection>=====

This character has an unique method of selecting palettes. In the folder "Palette Configuration", there are three text files, one for each .def file discussed above. The palettes chosen in each text file determine which palettes are able to be selected in MUGEN. Inside the "Palette Configuration" folder, there is another folder called "Palette Guides"; inside, there are images of all the avaliable palettes, each has a number in its filename. Choose what button you want the pal to be assigned by editing it like in the following example: 
 
 
[State 5900, Palette 1 (x)] 
type = VarSet 
trigger1 = PalNo = 1 
var(0) = 1 ;CHANGE THIS LINE
 
This represents the palette chosen if you select Chun-Li using the x button. Simply change the number to the right of "var(O) =" with the desired palette number. So, if we wanted the palette number 3 to be used for x we would use 
 
[State 5900, Palette 1 (x)] 
type = VarSet 
trigger1 = PalNo = 1 
var(0) = 3 ;CHANGE THIS LINE


You can also change the way Shadow Lady's super eye sparks work in the very same config file;

[State 5900, Shadow Lady Eye Spark (0 = Delay, 1 = No delay)]
type = VarSet
trigger1 = 1
var(1) = 0 ;CHANGE THIS LINE

If "Delay" is chosen, when Shadow Lady performs a super the super spark will be delayed until the eye spark disappears; if "No delay" is chosen, the super will proceed normally.


=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.


<NORMAL>

.Chudanrenshu			a, a (during standing far light kick)
.Kakusenshu			F + b
.Yokusenkyaku			F + c
.Kakukyakuraku			DF + c
.Yoshiken (Air):		z (during angled jumping heavy punch)
.Yosokyaku (Air):		D + b
.Koshuto:			F/B + 2p   (near opponent)
.Kirinshu:                   	F/B + 2k   (near opponent)
.Ryuseiraku:			F/B + 2p   (Air, near opponent)


<SPECIAL - NORMAL MODE>

.Kikoken (EX):         		B, DB, D, DF, F, p
.Hyakuretsukyaku (EX):        	k, k, k, k, k
.Spinning Bird Kick (EX):	(charge) D, U, k
.Hazanshu (EX):			F, DF, D, DB, B, k


<SPECIAL - SHADOW LADY MODE>

.Kikoken (EX):         		B, DB, D, DF, F, p
.Hyakuretsukyaku (EX):        	k, k, k, k, k
.Tenshyokyaku (EX):		(charge) D, U, k
.Senenshu (EX):			F, DF, D, DB, B, k


<SUPER - NORMAL MODE>

.Kikosho (MAX):              	D, DF, F, D, DF, F, P
.Hoyokusen (MAX):		D, DF, F, D, DF, F, k
.Tenseiranka (MAX):		D, DB, B, D, DB, B, k


<SUPER - SHADOW LADY MODE>

.Kikosho (MAX):              	D, DF, F, D, DF, F, P
.Senretsukyaku (MAX):		(charge) B, F, B, F, k
.Hazan Tenshyokyaku (MAX):	(charge) DB, D, DF, F, UF, k


<LV3 SUPER - NORMAL MODE>

.Hosenka:			(charge) B, F, B, F, 2k


<LV3 SUPER - SHADOW LADY MODE>

.Final Mission:			(charge) B, F, B, F, 2p


<SYSTEM>

.Forward Dash:                  F, F
   .Run:                        hold
.Backward Dash:                 B, B
.Low Jump:                      tap U
.High Jump:                     tap D, U
.Long Low Jump:                 tap D, tap U            
.Sankaku Tobi:           	UF / UB 	(in air, near edge of screen)
.Sidestep:                      a + x
   .Sidestep Attack:            p / k
.Forward Roll:                  F + a + x
.Backward Roll:                 B + a + x
.Parry High:                    tap F
.Parry Low:                     tap D
.Air Parry:                     tap F           (Air)
.Power Charge:                  hold b + y
.Zero Counter:                  B, DB, D, p / k (during standing or crouching guard)
.Custom Combo:                  c + z           (Air also)
.Fall Recovery:                 2p / a + x      (while falling and allowed)



=====<Move Details>=====

 - You can cancel out of a close standing heavy kick by performing a high jump; this also resets your juggle
   points.
 - Yosokyaku can be performed up to three times in succession.
 - The last button used when performing Hyakuretsukyaku determines its strength. If it is two kick
   buttons the EX version is triggered,
 - Senenshu can avoid high attacks from the start of the move until Chun-Li flips forward
 - Hazanshu, Senenshu, and the final hit of Tenseiranka are overheads.
 - You can cancel out of Hoyokusen after the final hit by performing a high jump; this also resets your juggle
   points.
 - In addition to the regular command, you can also perform Hazan Tenshyokyaku with the classic command
   ([charge] DB, DF, DB, UF, k).



=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage


CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing faster and  
   brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start



=====<Version History>=====


<v.04/27/12>
 - Increased Hyakuretsukyaku guard hitvels
 - Revised some hitboxs
 - Hoyokusen range increased
 - New Tenseiranka shockwave effect by 2OS
 - Senretsukyaku and Hazan Tenshyokyaku damage adjustment
 - Kikosho startup invincibility increased
 - Winquotes revised

<v.04/07/12>
 - Fixed some AI issues
 - Removed a Kikosho juggling bug
 - Fixed some afterimage issues
 - Decreased Hyakuretsukyaku hitvels

<v.04/04/12>
 - Massive update, 
 - Added Shadow Lady mode, adding Senenshu, Senretsukyaku, and Final Mission. Normal mode is now 
   unable to perform Tenshyokyaku or Hazan Tenshyokyaku.
 - New small portrait, and new Kikosho and Hosenka effects
 - Major CLSN overhaul 
 - Changed around canceling rules
 - Added high jump cancel to standing close heavy kick
 - Kick Zero Counter now uses crouching medium kick animation, as in SFA2
 - Projectiles recoded
 - Throw damage changed
 - Can now perform Yokusenkyaku up close
 - Decreased pausetimes on Hyakuretsukyaku, can now link from it
 - Added invulverability frames to EX Spinning Bird Kick
 - Hazanshu hittimes increased, can now link light attacks from it
 - Tenshyokyaku velocities are now more accurate
 - The projectile for MAX Kikosho lasts longer
 - Level 1 Hoyokusen now launches opponents lower than MAX Hoyokusen
 - Added AI

<v.08/01/10>
 - Decreased some Hosenka pausetimes
 - Fixed Kikoken sound error.
 - Removed a canceling bug.
 - Removed ability to do a custom combo after canceling Hoyokusen.
 - Modified juggling behavior of Hoyokusen and Kikosho.
 - Made so minor changes to the CLSN's for most non-normal moves.
 - Fixed a bounce into air animation bug.
 - Removed a bug that made the first hit of Hosenka unblockable.
 - Added some more winquotes, and removed a couple.

<v.07/28/10>
 - First release



=====<Special Thanks>=====
 - JustNoPoint/Dreamslayer for sprite rips
 - P.o.t.S. for code, effects, hitsparks, LP Kikoken sprites, and formatting style
 - FeLo_Llop for sprite edits
 - VioFitz for the MAX Senretsukyaku finish sprites
 - Hoshi for the air throw attempt sprites, small edits to the second Midnight Bliss sprite, and the Kikosho
   effects
 - Drex for the Kikoken effects
 - CrazyKoopa for the Hosenka wind effects
 - 2OS for the Shadow Lady warp effects and the Tenseiranka shockwave effect
 - zero de armentis and Hoshi for some small edits to the Midnight Bliss sprite
 - Cyanide for his help with some coding issues in EX Spinning Bird Kick and Hosenka
 - Jesuszilla for the alternate small portrait
 - Dshiznetz the main Lv3 Super Portrait
 - Rojenomu for the alternate Lv3 Super Portrait
 - AnthemHero, Banxman3, Basara-kun, Blackmore, CGU, Chosis, ComboKyo, Cyan Paul, Cyclysm, Drex, gamespy, Girard,
   Goodaldo, Hades, Hero, Hoshi, Insanius, Iced, Jesuszilla, Kirishima, Knuckles8864, LurkerSupreme, MalaDingDong,
   MC2, PsychoKrusher, ShoShingo, Takato-kun, Titiln, and Zero-Sennin for palettes
 - Everybody at the MUGEN Fighters Guild for feedback.
 - The MUGEN Fighters Guild for providing hosting.


=====<Disclaimer>=====

 - The Chun-Li character is property of Capcom
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes