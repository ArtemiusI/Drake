CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#DaveBanter1","GLOBAL",0)~ THEN BGV#DAVE DRAKE-DAVE-1
~I have to say, Drake, for an agent of justice, I’d have expected you to have more qualms about killing Bassilus like that.~
DO ~SetGlobal("C0DrakeGV#DaveBanter1","GLOBAL",1)~
== BC0DRAKE ~And why do you suppose I should have hesitated to put that mad dog down? Solidarity between scum, is it?~
== BGV#DAVE ~You said it yourself. “Mad.” The man was completely insane. He believed with all his heart that those undead he’d created were his lost family, that he was just bringing them back together. Is it really justice, to stride up and execute someone who’s barely aware of their own actions?~
== BC0DRAKE ~He was plenty aware. Whatever fantasy he’d built for himself, it crumbled at the first nudge, and clarity didn’t stay his hand. I’ll not have murderers wriggle out of Tyr’s grasp just because they’re blind to their guilt. There’s enough of ‘em that walk as it is.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("GV#DAVEPidTyrran","GLOBAL",1)
Global("C0DrakeGV#DaveBanter2","GLOBAL",0)~ THEN BGV#DAVE DRAKE-DAVE-2
~Say, Drake. You wouldn’t happen to know a fellow Tyrran named Osmund, would you? About my height, hair like a haystack, pronounced his Rs a bit funny...~
DO ~SetGlobal("C0DrakeGV#DaveBanter2","GLOBAL",1)~
== BC0DRAKE ~Of the Greycolt family? Aye, so happens I do remember him. Good lad, though I’d say you’ve gifted yourself some inches if you think he’s “about your height.”~
== BGV#DAVE ~So you know his family too. That’s good. It’s just, I have this ring here that might have belonged to him.~
== BC0DRAKE ~A ring, eh?~
== BGV#DAVE ~A signet ring, I think. Silver. Probably not worth much, so there’s no point in me holding on to it. Maybe when you go back to Amn, you could bring it to his mum?~
== BC0DRAKE ~...~
== BC0DRAKE ~Osmund Greycolt. You know, now that you’ve got my mind on him, I swear I heard tell of him dying on a mission for the church. Him and a team of justiciars. Something about ferreting out an unholy temple.~
== BGV#DAVE ~I wouldn’t have the first inkling about Tyrran military operations. I’m not even sure why you’d bring that up. I just thought it might be nice for his mum to have this ring. For safekeeping.~
== BC0DRAKE ~No. No, I don’t think I’ll be playing any part in that. But I’ve had some experience in bringing things to mothers, so let me tell you of the proprieties.~
== BC0DRAKE ~You don’t send someone else to do it for you. You meet them at their doorstep with a clean shave and a pressed shirt, you introduce yourself by your name and your rank...in whatever company you belong to...and then you damn well look them in the eye and tell them the truth.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#FLAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#FlaraBanter1","GLOBAL",0)~ THEN BGV#FLAR DRAKE-FLARA-1
~I wonder, Drake, if you understand that no two deities may share a domain. As Bhaal took the aspect of murder from Jergal, and in turn had it stolen from him by Cyric...this axiom is perhaps the single greatest source of conflict among the gods.~
DO ~SetGlobal("C0DrakeGV#FlaraBanter1","GLOBAL",1)~
== BGV#FLAR ~How is it, then, that your Tyr can exist alongside the vengeful Hoar? Justice is to retribution as pretentiousness is to pomposity. Two words for the same thing.~
== BC0DRAKE ~You’re one to talk of pomposity, “dragon.” Justice is retribution, aye, tempered with grace and reason. When a man steals bread to live, the baker who’d see him hang for it is practising one and not the other.~
== BGV#FLAR ~That is your defence, then? That you are a square, not a rectangle? How flimsy. With such dull-witted creatures to shepherd, it would not surprise me if Hoar and Tyr were the same being presenting two faces to the world, that he might find worship in both shrewd men and canting zealots.~
== BC0DRAKE ~Zealots or no, we grasp the nuance while it sails over your head. There’s only one of dull wit here, by my reckoning.~
EXIT

CHAIN IF ~InParty("GV#LITT")
See("GV#LITT")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#LittlunBanter1","GLOBAL",0)~ THEN BC0DRAKE DRAKE-LITTLUN-1
~Heh. Here’s a sight. An elf-branded halfling, with the hides of a humble pilgrim and a crossbow fit for a duke. You’re a right misfit, aren’t you?~
DO ~SetGlobal("C0DrakeGV#LittlunBanter1","GLOBAL",1)~
== BGV#LITT ~Yeah, what of it? Planning to write a biography, are you?~
== BC0DRAKE ~Don’t take “misfit” for contempt, lady Plunkett. So happens I’ve often used the term of myself, and I’m far too smug for self-loathing. I’m never more at ease than with the oddballs of the world. You’ll have to tell me about this tribe of yours over an ale or two.~
== BGV#LITT ~Just one or two, eh? And what should I talk about over the next dozen?~
== BC0DRAKE ~Hah! Whatever you like, lady, whatever you like. I’ll nod and smile till the keg runs dry.~
EXIT

CHAIN IF ~InParty("GV#MOID")
See("GV#MOID")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#MOID",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#MoidreBanter1","GLOBAL",0)~ THEN BC0DRAKE DRAKE-MOIDRE-1
~Moidre, one skullcracker to another, there comes a time in a warrior’s life when he has to think about hanging up the hammer. I’d say yours is about due.~
DO ~SetGlobal("C0DrakeGV#MoidreBanter1","GLOBAL",1)~
== BGV#MOID ~Still spry enough to give you a run. You’re gonna tell someone they’re slowing down, catch up to them first.~
== BC0DRAKE ~I’m not saying you’re past your prime. Hells, if you are, I pity the poor sods that crossed you in your glory days.~
== BC0DRAKE ~I’m saying I’ve seen where you’re headed, where fighting is just an empty chore. I saw it all the time in the army. The veterans’ veterans, the ones who’ve seen too much chaos, too much blood. Dead-eyed men and women, gone grey before their time, all the life and the joy wrung out of them. Tyr willing, I’ll never see it again.~
== BGV#MOID ~Awful optimistic to think you’re not seeing it right now.~
== BC0DRAKE ~No, not you. Not yet. There’s still something beating under that breastplate, no matter what you want people to think. Keep hold of it.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGV#VyndBanter1","GLOBAL",0)~ THEN BGV#VYND DRAKE-VYND-1
~So what was it, Drake? The pointy ears? The form-fitting leather? The smouldering aura of mystique?~
DO ~SetGlobal("C0DrakeGV#VyndBanter1","GLOBAL",1)~
== BC0DRAKE ~What’s this, now? Nobody else wants to flatter you, so you took it upon yourself?~
== BGV#VYND ~I’m trying to figure out why you sat so damn close to me at the Burning Wizard. Or did you just judge me guilty of something and decide to sentence me to an awkward evening?~
== BC0DRAKE ~You sentenced yourself. Wasn’t anything to stop you finding some other seat. Or better yet, some other tavern.~
== BGV#VYND ~I had that corner well before you. If you want to earn your keep licking the long boot of the law, maybe you should learn the rule of dibs.~
== BGV#VYND ~What do you need a corner table for, anyway? You’re a respectable, upstanding member of the community, I’m a shifty-eyed coalskin lowlife. Corners are my haunt. Stay in your chancel, choir boy.~
== BC0DRAKE ~Hah! Never thought I’d live to hear me and respectable in the same sentence. I’d be touched, except by your measure it’s a low bar to clear.~
EXIT