CHAIN IF ~InParty("V#1WHI")
See("V#1WHI")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeWhite1","GLOBAL",0)~ THEN V#1WHIB C0DrakeWhite1
~So... you like hammers, huh?~
DO ~SetGlobal("C0DrakeWhite1","GLOBAL",1)~
== BC0Drake ~I find them rather agreeable in the battlefield, aye. I take it you approve?~
== V#1WHIB ~Oh, yes. I prefer something blunt and heavy to break some bones with. Two of them, in fact. It doesn't always to be a hammer, maces are nice, too. I never cared much for swords. Always found them rather overrated.~
== BC0Drake ~Hmm. I suppose we have that particular taste in common. Very sensible, White.~
== V#1WHIB ~Right... 'taste', that's a fine way to put it. I'll admit, I'm not all that fond of priests. There's are too many fanatics among your lot, but you? You're not so bad. At least you have a good taste in weapons.~
== BC0Drake ~Is there a point to this conversation, White, or do you just fancy some 'weapons talk' from time to time?~
== V#1WHIB ~Something like that. You seem to be enjoying it.~
== BC0Drake ~Right... I was just curious, when this discussion about our blunt weaponry at our sides will suddenly move onto those of another kind. Is this some kind of subtle attempt at innuendo, White? If so, I'd say you need to work on it. Subtlety isn't really your thing.~
== V#1WHIB ~Heh, actually not what I had in mind, believe it or not. Though now that you're mentioning it...~
== BC0Drake ~Maybe some other time. A very distant time, in fact. This might come as a surprise, but I'd rather the talk of the tools concealed below my belt remain there. Now, might we leave this awkward conversation behind us?~
EXIT

CHAIN IF ~InParty("V#1WHI")
See("V#1WHI")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeWhite2","GLOBAL",0)~ THEN V#1WHIB C0DrakeWhite2
~You've got some nice scars, Drake. I'm surprised there isn't a pack of women lining up to count and caress them. Maybe even a few men. They always fall for that gloomy, hardened aura that you have.~
DO ~SetGlobal("C0DrakeWhite2","GLOBAL",1)~
== BC0Drake ~...Right.~
== V#1WHIB ~Not to mention the beard. Heh. I'm sure you're quite the heartbreaker back home.~
== BC0Drake ~I really ought to shave one of these days. I'd rather hearts not be shattered on my behalf, flattering though that may be.~
== V#1WHIB ~Whose hearts, Drake? Women's, or men's?~
== BC0Drake IF ~Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~Wouldn't you like to know. Though I'm sure yours will be excluded, given your attention is all on our dear leader.~
== BC0Drake IF ~!Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~Wouldn't you like to know.~
== V#1WHIB ~I'm just curious.~
== BC0Drake ~Just curious? Forgive me if I have difficulty believing that.~
== V#1WHIB ~It's the truth. Did you think I had something else in mind?~
== BC0Drake IF ~Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~Perhaps. I was thinking that you felt one man wasn't enough to share your company in the cold, lonely evenings.~
== BC0Drake IF ~!Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~Perhaps. I was thinking that you were feeling a little alone in your bedroll at night, if you catch my drift.~
== V#1WHIB IF ~Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~That's harsh, Drake. No, believe it or not, I'm happy enough being with <CHARNAME>. I just thought you and I could break out a few pints of ale and share a story or two. It doesn't have to go further than that. I know where to draw the line.~
== V#1WHIB IF ~!Global("WhiteRomanceActive","GLOBAL",2)~ THEN ~That's harsh, Drake. No, believe it or not, I've got no intention of seducing you. I just thought you and I could break out a few pints of ale and share a story or two. It doesn't have to go further than that. I know where to draw the line.~
== BC0Drake ~That so? Perhaps I've misjudged you, then. Fine, then. If it's ale and company you wish, I'll indulge you as my own way of apologizing. Just don't expect me to prostrate myself before you for forgiveness. I reserve that for the gods.~
== V#1WHIB ~Heh. Wouldn't dream of it.~
EXIT