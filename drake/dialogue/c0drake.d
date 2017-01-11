// First meeting

BEGIN C0DRAKE

IF ~Global("C0DrakeBG1Intro","GLOBAL",0)~ THEN BEGIN j0
 SAY ~Ho there! Yours is a fresh face I don't think I've seen around here. New to Beregost, are you?~
 + ~Gender(Player1,MALE)~ + ~I am, sir.~ DO ~SetGlobal("C0DrakeBG1Intro","GLOBAL",1)~ + j0.1a
 + ~Gender(Player1,FEMALE)~ + ~I am, sir.~ DO ~SetGlobal("C0DrakeBG1Intro","GLOBAL",1)~ + j0.1b
 ++ ~You don't seem like a local either.~ DO ~SetGlobal("C0DrakeBG1Intro","GLOBAL",1)~ + j0.2
 ++ ~What business is that of yours?~ DO ~SetGlobal("C0DrakeBG1Intro","GLOBAL",1)~ + j0.3
 ++ ~I'm sorry, but I don't have the time to talk right now.~ + j0.x
END

IF ~~ j0.x
 SAY ~Your loss. Come by again, if you've got the interest.~
IF ~~ EXIT
END

IF ~~ j0.1a
 SAY ~Come, have a drink on me, friend. A traveller like you must make for better company than anyone else here. Tyr knows I haven't had any better for near a tenday.~
IF ~~ + j0.4
END

IF ~~ j0.1b
 SAY ~Come, have a drink on me. A pretty lass like you must make for better company than anyone else here. Tyr knows I haven't had any better for near a tenday.~
IF ~~ + j0.4
END

IF ~~ j0.2
 SAY ~No, I'm not. Caught on to that, did you? Not bad.~
IF ~Gender(Player1,MALE)~ + j0.1a
IF ~Gender(Player1,FEMALE)~ + j0.1b
END

IF ~~ j0.3
 SAY ~None whatsoever. But what has that got to do with anything, then? Talking with total strangers, what could possibly go wrong?~
IF ~Gender(Player1,MALE)~ + j0.1a
IF ~Gender(Player1,FEMALE)~ + j0.1b
END

IF ~~ j0.4
 SAY ~Ah, but I really should remember my manners... that is, where I put them. The name's Drake Caulfield, priest of Tyr and member of the Radiant Heart, Most Holy Order of blah blah blah, you probably don't want to hear all about it, pleasure to meet you and all that.~
 + ~!IsValidForPartyDialog("Ajantis")~ + ~Most Holy Order of what now?~ + j0.5a
 + ~IsValidForPartyDialog("Ajantis")~ + ~Most Holy Order of what now?~ EXTERN AJANTJ j0.5b
 + ~Gender(Player1,MALE)~ + ~I'm <CHARNAME>.~ + j0.6a
 + ~Gender(Player1,FEMALE)~ + ~I'm <CHARNAME>.~ + j0.6b
 + ~!IsValidForPartyDialog("Ajantis")~ + ~You don't seem much like a Tyrran priest.~ + j0.7a
 + ~IsValidForPartyDialog("Ajantis")~ + ~You don't seem much like a Tyrran priest.~ EXTERN AJANTJ j0.5b
END

IF ~~ j0.5a
 SAY ~Radiant Heart. More precisely, I am a recruit of the auxiliary forces, in other words, less than a knight. So you can drop that 'sir' nonsense, if you were intending on it.~
IF ~~ + j0.5c
END

IF ~~ j0.5c
 SAY ~But I still haven't had the pleasure of knowing your name, friend. Perhaps you would be kind enough to grant it then, aye?~
 + ~Gender(Player1,MALE)~ + ~<CHARNAME>.~ + j0.6a
 + ~Gender(Player1,FEMALE)~ + ~<CHARNAME>.~ + j0.6b
 ++ ~I'd rather not. Good day.~ + j0.8
END

IF ~~ j0.6a
 SAY ~Pleasure to meet you, <CHARNAME>. Now that the pleasantries are out of the way, I don't suppose you're willing to hear out a proposal? This may interest you.~
 ++ ~Is there gold involved?~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",1)~ + j0.9
 ++ ~I'm listening.~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",1)~ + j0.10
 ++ ~No, thanks.~ + j0.8
END

IF ~~ j0.6b
 SAY ~<CHARNAME>? Nice name, fitting for a charming woman like you. Now that I think of it, I should have asked your name beforehand. You'll forgive me for being drunk off my arse.~
IF ~~ + j0.6a
END

IF ~~ j0.7a
 SAY ~Guilty as charged. Now, if you came to me before I had several tankards of ale in me, well... I'd still be like this, in fact. Ha! Who am I kidding?~
IF ~~ + j0.5c
END

IF ~~ j0.8
 SAY ~A shame. Try not to let the door hit you on the way out.~
IF ~~ EXIT
END

IF ~~ j0.9
 SAY ~Ha! Yes, the most important question. Yes, in fact, there is. I suppose that means you are willing to hear me out?~
IF ~~ + j0.10
END

IF ~~ j0.10
 SAY ~You may or may not know this, but there is a bit of a... threat to the humble town of Beregost as of the moment. A vile follower of Cyric known as Bassilus terrorizes the locals, some claiming he has kidnapped others and is raising them as foul undead.~
 = ~I've been hunting the bastard for close to two weeks as of today, and had no luck in finding him. But from what I have heard, he is raising an army with the corpses of his victims... a rather large one, in fact.~
 = ~The mayor of this town, Dawnmaster Kelddath Ormlyr - a good man, I should mention - wishes this scum dead as much... nearly as much as I do, and is offering a massive bounty for proof of his death... no less than five thousand gold, in fact.~
 = ~Now, because I'm saintly and generous, my offer to you is this - we seek out this Cyricist together, eliminate him, and you may keep all the gold. In other words, should we succeed, you get a small fortune, the satisfaction of removing a blight from the face of Faerun, and most importantly, the experience of having my exalted company in the meantime. Oh, and just as a gesture of good faith, I'll throw in a hundred gold from my own pockets just for accepting. A better deal you will not find anywhere else. What do you say, hmm?~
 + ~Global("BassilusDead","GLOBAL",2)~ + ~Actually, I've already killed him, and turned in his holy symbol for the bounty.~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",2)~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") PartyHasItem("misc04")~ + ~Actually, I've already killed him. Here's his holy symbol.~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",2)~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") !PartyHasItem("misc04")~ + ~Actually, I've already killed him.~ + j0.12
 ++ ~You seem to think very highly of yourself. Why do you need me?~ + j0.13
 + ~!Global("BassilusDead","GLOBAL",2) !Dead("bassil")~ + ~I agree. We'll seek out this murderer together.~ + j0.14
 ++ ~I don't think so. Goodbye.~ + j0.15
END

IF ~~ j0.11
 SAY ~Is that so? Well, it's a shame I couldn't have a hand in bringing him down. Evil bastard he was, and that's even considering I never met him.~
 = ~All's well that ends well, however. You have done a good deed, getting rid of Bassilus. You know... if you're after even more cruel and black-hearted scum here in the Sword Coast, I might be of use to you.~
 = ~With this iron crisis going on, I can't exactly return to my home in Amn with my head held high without having at least done something to contribute to its resolution. If you're willing, I would offer you my hammer and clerical services. Consider this my own reward for what you have done. How about it?~
 ++ ~I'd be happy to have your assistance.~ + j0.16
 ++ ~No, thanks.~ + j0.17
END

IF ~~ j0.12
 SAY ~Is that so? Have you any proof of your deed, then? Perhaps an item only he would possess, such as his holy symbol of Cyric?~
 = ~No? I would have thought someone competent enough to slay Bassilus would have considered such a simple thing. No matter, I'm sure it's still lying in the dirt somewhere out there. Since I'm feeling generous, how about I join you on your way to picking it up, hmm?~
 ++ ~Certainly.~ + j0.12a
 ++ ~I don't need your help.~ + j0.12b
END

IF ~~ j0.12a
 SAY ~Let's get a move on, then. Can't have some scavenger picking up the ticket to your rightful reward, eh?~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j0.12b
 SAY ~Right, right. No need for me to hold your hand with something so simple. Well, get a move on, would you?~
IF ~~ EXIT
END

IF ~~ j0.13
 SAY ~Well now, I'm glad you noticed. 'Tis true, I might be capable of getting rid of Bassilus with my own power. But why take such a risk, especially when I have no interest in gold, when I could have the assistance of capable of hands instead?~
 = ~Of course, I would prefer to have more experienced aides at my side, but it hardly seems as though I will get many in this town. Especially when the Flaming Fist have all but stopped caring about its well-being.~
 + ~Global("BassilusDead","GLOBAL",2)~ + ~Actually, I've already killed him, and turned in his holy symbol for the bounty.~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",2)~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") PartyHasItem("misc04")~ + ~Actually, I've already killed him. Here's his holy symbol.~ DO ~SetGlobal("C0DrakeOffer","GLOBAL",2)~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") !PartyHasItem("misc04")~ + ~Actually, I've already killed him.~ + j0.12
 + ~!Global("BassilusDead","GLOBAL",2) !Dead("bassil")~ + ~Very well. I accept your offer.~ + j0.14
 ++ ~I think not. Find someone else.~ + j0.15
END

IF ~~ j0.14
 SAY ~Ah, very good, very good indeed! And here I thought I might have been hallucinating from one drink too many when I saw you coming through the door. Let's waste no time in finding out the mad Bassilus and showing him some real justice, eh?~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j0.15
 SAY ~That's a shame. I thought the gold would have enticed you for certain. Ah, well. If you change your mind, I'll still be here, slowly drinking away my sobriety and dignity.~
IF ~~ EXIT
END

IF ~~ j0.16
 SAY ~As well you should, my friend. You will find that I am more than capable, especially when I'm sober. Well, let's not stand around waiting for the grass to grow, hmm?~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j0.17
 SAY ~Ah, rejection! My old friend, we meet again. I am well used to it from my admirers, but from a total stranger, it hurts my soul. Very well, then. The offer stands.~
IF ~~ EXIT
END

CHAIN AJANTJ j0.5b
~If I may, <CHARNAME>. This man is, in fact, one of my fellows, although I hesitate to brand him as such. His... reputation precedes him.~
== C0DRAKE ~Well, at least I am remembered among the Order, so I'll consider that a compliment. I recognize your emblem, squire. House Ilvastarr, is it?~
== AJANTJ ~Yes. It is an... honor to meet you, master Caulfield.~
EXTERN C0DRAKE j0.5c

// Talked to again, not in party

APPEND C0DRAKE

IF ~Global("C0DrakeBG1Intro","GLOBAL",1)~ THEN BEGIN j1
 SAY ~Well now, look who it is, my newest best friend. Returned to see ol' Drake, have you? I knew you couldn't resist.~
IF ~Global("C0DrakeOffer","GLOBAL",2)~ + j1.3
IF ~Global("C0DrakeOffer","GLOBAL",1)~ + j1.1
IF ~Global("C0DrakeOffer","GLOBAL",0)~ + j1.2
END

IF ~~ j1.x
 SAY ~As you will. Perhaps I will change my approach next time to entertain you? Heh, simply a thought.~
IF ~~ EXIT
END

IF ~~ j1.1
 SAY ~Since you have seen fit to return, I assume that you have changed your mind regarding my offer?~
 + ~Global("BassilusDead","GLOBAL",2)~ + ~Bassilus is dead. I have received the bounty from the mayor.~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") PartyHasItem("misc04")~ + ~Bassilus is dead. Here is his holy symbol.~ + j0.11
 + ~!Global("BassilusDead","GLOBAL",2) Dead("bassil") !PartyHasItem("misc04")~ + ~Bassilus is dead.~ + j0.12
 ++ ~You seem to think very highly of yourself. Why do you need me?~ + j0.13
 + ~!Global("BassilusDead","GLOBAL",2) !Dead("bassil")~ + ~Yes. Join me, and we'll seek out this Bassilus together.~ + j0.14
 ++ ~I don't think so. Goodbye.~ + j0.15
END

IF ~~ j1.2
 SAY ~I assume you're interested in hearing about my offer this time? Come, take a seat.~
 ++ ~Very well.~ + j0.10
 ++ ~I think not.~ + j1.x
END

IF ~~ j1.3
 SAY ~As I have said, my offer of service towards you stands. If you are willing to endure my wit and charm, then I am at your disposal.~
 ++ ~I'd be happy to have your assistance.~ + j0.16
 ++ ~No, thanks.~ + j0.17
END
END