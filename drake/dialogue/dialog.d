// Knight Allies

EXTEND_TOP BDANDRUS 6
+ ~InMyArea("c02elrik")
Global("C02Drake_bd_battle","GLOBAL",0)~ + ~Sir Elrik, are your knights prepared to face these trolls?~ DO ~SetGlobal("C02Drake_bd_battle","GLOBAL",12)~ EXTERN C02ELRIK elrik1
END

EXTEND_TOP BDANDRUS 9
+ ~InMyArea("c02elrik")
Global("C02Drake_bd_battle","GLOBAL",0)~ + ~Knights of the Order! Stand with me against the crusade's mages!~ DO ~SetGlobal("C02Drake_bd_battle","GLOBAL",22)~EXTERN C02ELRIK elrik2
END

EXTEND_TOP BDANDRUS 12
+ ~InMyArea("c02elrik")
Global("C02Drake_bd_battle","GLOBAL",0)~ + ~Sir Elrik, lead your knights against what the crusade has left to offer!~ DO ~SetGlobal("C02Drake_bd_battle","GLOBAL",32)~EXTERN C02ELRIK elrik3
END

CHAIN C02ELRIK elrik1
~Aye. The flaming blade of Redharbour will ensure that these monsters shall not rise again!~
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Looks like we'll be fighting side by side for the first time, kid. You ready for this?~
== C02TOMAS IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~I'm ready, Drake. Let's make the Order proud.~
EXTERN BDANDRUS 7

CHAIN C02ELRIK elrik2
~Very well, <CHARNAME>. Their magic will not prevail over the divine powers granted unto us!~
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Looks like we'll be fighting side by side for the first time, kid. You ready for this?~
== C02TOMAS IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~I'm ready, Drake. Let's make the Order proud.~
DO ~SetGlobal("bd_battle","global",22)
StartCutSceneMode()
StartCutSceneEx("bdcut40c",TRUE)~ EXIT

CHAIN C02ELRIK elrik3
~We stand with you, <CHARNAME>. My knights and I will ensure this war ends once and for all!~
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Looks like we'll be fighting side by side for the first time, kid. You ready for this?~
== C02TOMAS IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~I'm ready, Drake. Let's make the Order proud.~
DO ~SetGlobal("bd_battle","global",32)
StartCutSceneMode()
StartCutSceneEx("bdcut40d",TRUE)~ EXIT

EXTEND_TOP BDYAROK 0
+ ~Global("C02Drake_bd_battle","GLOBAL",13)~ + ~Sir Elrik! Slay these beasts!~ EXTERN C02ELRIK elrik.1
END

CHAIN C02ELRIK elrik.1
~To arms, my brothers! To<DAYNIGHT> we send these beasts to the lowest pits of the Abyss!~
== BDYAROK ~Knights! I have killed many of your kind and made trinkets of your bones. You will meet the same fate!~
EXIT

EXTEND_TOP BDCUVIER 0
+ ~Global("C02Drake_bd_battle","GLOBAL",23)~ + ~It is you who shall be smitten, mage, for the Order of the Radiant Heart stand with us!~ EXTERN C02ELRIK elrik.2
END

CHAIN C02ELRIK elrik.2
~Wizards of Caelar! Like your misguided cause, your fragile defenses will shatter before Torm's will!~
== BDCUVIER ~A suit of steel means nothing to a practitioner of the arcane, knight! You shall fall before us!~
EXIT

EXTEND_TOP BDRHAYLA 0
+ ~Global("C02Drake_bd_battle","GLOBAL",33)~ + ~Knights of the Order! Show these crusaders the falseness of their cause!~ EXTERN C02ELRIK elrik.3
END

CHAIN C02ELRIK elrik.3
~The Most Noble Order of the Radiant Heart stand with you, <CHARNAME>! The crusade shall not prevail!~
EXTERN BDRHAYLA 1