CHAIN IF ~InParty("L#1Verr")
See("L#1Verr")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeVerr","GLOBAL",0)~ THEN BC0Drake C0DrakeVerr1
~You know, rakshasa, there are paintings in the High Halls of the Radiant Heart that depict your kind.~
DO ~SetGlobal("C0DrakeVerr","GLOBAL",1)~
== L#1VerrB ~Really? (grin) I'm not stupid enough to assume they're there as a sign of respect. Enlighten me, human. Why do they exist?~
== BC0Drake ~As a warning, of course. Some scholars believe that celestial beings that become corrupted, or willingly stray down the path of evil, are cursed to become your kind in their next life. It serves as a lesson that even the greatest forces of good are not immune to the lure of darkness.~
== L#1VerrB ~Interesting. Good to know that even the most righteous can be knocked down a peg or two. (laugh)~
== BC0Drake ~If such a belief is true, then I wonder, Verr'Sza - were you such a being in a previous life? What evil did you commit to become the beast in human shape you are now?~
== L#1VerrB ~Hopefully, something devious and exciting. But I'm not the sort who easily believes in that sort of nonsense.~
== BC0Drake ~Neither am I. Because if such a tale were true, the thought that something like you could have once been something pure and good sickens me. Better that you were always the creature you are now, so I would have no pity on you on the day you die.~
== L#1VerrB ~Heh. You're surprisingly cold for a holy man. I can almost respect that.~
== BC0Drake ~Don't expect me to return the gesture... fiend.~
EXIT

CHAIN IF ~InParty("L#1Verr")
See("L#1Verr")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeVerr","GLOBAL",1)~ THEN BC0Drake C0DrakeVerr2
~The rich folk do like decorating their homes and clothing with furs. Does it ever make you nervous when you see one?~
DO ~SetGlobal("C0DrakeVerr","GLOBAL",2)~
== L#1VerrB ~Not really. Should it?~
== BC0Drake ~Aren't you ever worried someone would like to make a nice, warm coat out of that shiny black fur of yours? Or perhaps a blanket to tuck themselves in and keep warm at night?~
== BC0Drake IF ~GlobalGT("L#1VerrRomanceTalk","GLOBAL",8)
OR(2)
Global("L#1VerrRomanceActive","GLOBAL",1)
Global("L#1VerrRomanceActive","GLOBAL",2)~ THEN ~Though I suppose you already do the latter well enough while alive. For <CHARNAME>, anyway.~
== L#1VerrB ~(grin) I'd love to see someone try. I'd skin them first.~
== BC0Drake ~Is it the reverse where you come from, I wonder? Beasts wearing human hide? I could certainly see it being the case, if you're indicative of anything.~
== L#1VerrB ~I'm a hunter, not a savage, human. The only skin I wear comes with the whole living body. It's much... warmer that way.~
== BC0Drake ~Heh, fair enough. You may be a crazy, mangy beast of a cat, but at least you know your business. That's something, at least.~
EXIT