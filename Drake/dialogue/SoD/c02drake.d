// First meeting

BEGIN C02DRAKE

CHAIN IF WEIGHT #-1 ~Global("C02DrakeBegin","GLOBAL",1)~ THEN C02DRAKE j
~Come now, Nantrin, I can't have dried out your stock already. Where's my tankard disappeared to? I'll have another one, if you please.~
DO ~SetGlobal("C02DrakeBegin","GLOBAL",2)~
== BDNANTRI ~No, I certainly do not please. You're not getting another drop, Drake. You've had quite enough as it is, not to mention you have a long day ahead of you tomorrow.~
== C02DRAKE ~*snort* Don't remind me. I doubt I'll have drink or company half as pleasant a day or two from now. Surely you can sympathize?~
== BDNANTRI ~No. Go sleep it off. And dunk your head in a rain barrel while you're at it.~
== C02DRAKE ~Stingy bastard... never met a barkeep that's actually concerned for their patrons as opposed to the gold in their pockets back home. When I make my way back to Amn I'll be sure to... ah. Look who we have here.~
END
++ ~Looks like you're up to your usual business, Drake.~ DO ~SetGlobal("C02DrakeKnowsBG1","GLOBAL",1)~ + j1
+ ~!BeenInParty("C02Drake")~ + ~Do I know you?~ + j2

CHAIN C02DRAKE j0
~As you wish. Come by again if you have a chance. Although I wager we'll meet again sooner rather than later.~
EXIT

CHAIN C02DRAKE j1
~Ha! What would I be if I did otherwise, <CHARNAME>? Come, take a seat. I've a thing or two to say to you.~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c02dcut1")~ EXIT

CHAIN C02Drake j2
~Perhaps not. But I know you - <CHARNAME>, the living legend <PRO_HIMHER>self. I'm glad you came by.~
= ~Come, take a seat, friend. I've a thing or two to say to you.~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c02dcut1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C02DrakeBegin","GLOBAL",2)~ THEN C02DRAKE j3
~Ah! The swill at this establishment is a far cry from the Amnian special, but I've had worse.~
DO ~SetGlobal("C02DrakeBegin","GLOBAL",3)~
= ~So tell me - what brings the hero of Baldur's Gate to this rowdy, decadent place? Aren't you too good for us common folk?~
END
+ ~Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~I'm here to meet some old friends. Do you have a problem with that?~ + j4
+ ~Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~Is there a reason why you're making fun of me, my friend?~ + j4
+ ~!Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~Who are you?~ + j5
++ ~You know, I think I have somewhere else to be right now. Excuse me.~ + j0

CHAIN C02DRAKE j4
~Ha! No, not at all. It's just good to know I'm still remembered among my peers. Not that I can call myself a peer to you at this point.~
== C02DRAKE IF ~BeenInParty("Ajantis") !Dead("Ajantis")~ THEN ~I parted ways with our old friend Ajantis not long after we were done with that Iron Throne business. He's likely all the way back in Athkatla by now, if he hasn't found some other evil to fight along the way. I suggested he take this time to relax, take some time off from the Order's duties, but, well... you know him as well as I do.~
== C02DRAKE ~All joking aside, I'm glad to see you here. I thought perhaps life at the palace had gotten too comfortable for you.~
END
++ ~Not that comfortable. I just survived an assassination attempt today.~ + j4.1
++ ~What about you? How have things been?~ + j4.2
++ ~I thought you'd be halfway to Amn by now. Why are you still here?~ + j4.3

CHAIN C02DRAKE j4.1
~So soon? Can't say I'm that surprised. Not with all the rumors that have been spreading about you.~
END
++ ~What rumors?~ + j4.4

CHAIN C02DRAKE j4.2
~Oh, just splendid. My report to the Order of the Radiant Heart was well recieved, if their response is to be believed. I've been kicking back in this city since, making friends among the locals. Isn't that right, Nantrin?~
== BDNANTRI ~*snort*~
== C02DRAKE ~'Course, that's not the only reason I haven't gone home just yet. As a matter of fact, I do have a much bigger reason for staying at the Gate.~
END
++ ~What is it?~ + j8

CHAIN C02DRAKE j4.3
~I haven't explained that yet, have I? Well, to tell the truth, the Order was quite satisfied with my actions here in the north, and they're happy to let me stay here and mingle with the locals. Take my new friend here, for instance.~
== BDNANTRI ~*snort*~
== C02DRAKE ~'Course, that's not the only reason I haven't gone home just yet. As a matter of fact, I do have a much bigger reason for staying at the Gate.~
END
++ ~What is it?~ + j8

CHAIN C02DRAKE j4.4
~Don't tell me you haven't heard anything, <CHARNAME>. "What did Sarevok want with that <CHARNAME>?" "Was he really the son of a god?" "Did <CHARNAME> defeat him because they shared the same blood?"~
= ~Well... you can see where things might lead to. Especially with this crusade that's recently rose from nowhere... people are paranoid. It's really quite a mess. I can imagine one or two people who'd want to see you join your brother in the hells.~
END
++ ~Interesting, but you're mistaken. My assailants were crusaders.~ + j4.5

CHAIN C02DRAKE j4.5
~Is that so? That, I didn't expect... I can't imagine someone like the Shining Lady resorting to assassins. If that's the case, then what I'm about to say might be relevant to you.~
EXTERN C02DRAKE j8

CHAIN C02DRAKE j5
~What, did I miss the part where I introduce myself? How rude of me.~
= ~The name's Drake. Drake of House Caulfield, priest of Tyr, sworn member of the Order of the Radiant Heart. Perhaps you might've heard the name? I wouldn't be surprised. We have quite an influence across the Realms. I believe this is the first time we've met?~
= ~You, on the other hand, I know well. This city owes much to you, from what I've heard.~
END
++ ~What exactly have you heard about me?~ + j5.1
++ ~What is the Order of the Radiant Heart?~ + j5.2
++ ~I'm on my way to face the crusade and looking for capable allies. Would you be interested?~ + j5.3
++ ~I'll be on my way now.~ + j0

CHAIN C02DRAKE j5.1
~The better question is what I *haven't* about you, my friend. You, the slayer of the godchild Sarevok, hero of the city, rumored to be the offspring of the Lord of Murder...~
= ~Heh. I may have said too much. Though, fear not, <CHARNAME>. Whether you truly sprung from the loins of dead Bhaal is your own business, not mine. I'm merely... fascinated by how ordinary you seem to be. In a positive sense, of course.~
END
++ ~What is the Order of the Radiant Heart?~ + j5.2
++ ~I'm on my way to face the crusade and looking for capable allies. Would you be interested?~ + j5.3
++ ~I'll be on my way now.~ + j0

CHAIN C02DRAKE j5.2
~I might not be the best person to ask that. We're a bunch of shining display pieces who like to think we can make a difference in a wretched cesspool. The knights command a bit more respect than most. That's all you really need to know.~
= IF ~Class(Player1,PALADIN_ALL)
	  !Kit(Player1,Blackguard)~ THEN ~I'm certain they'd welcome someone such as you with open arms though. If you ever stop by Athkatla, do take a look at our headquarters. You'll see what I mean.~
END
++ ~Right. So what do you know about me then?~ + j5.1
++ ~I'm on my way to face the crusade and looking for capable allies. Would you be interested?~ + j5.3
++ ~I'll be on my way now.~ + j0

CHAIN C02DRAKE j5.3
~So you'll be on the road to Dragonspear Castle to fight against the crusade, hmm? To tell the truth, I was prepared to make the same journey.~
= ~Amn may not face an immediate threat from this so-called 'Shining Lady', but the Order would never allow me to stand by while such a force threatened these innocents that seek refuge at the gate. We'd be making the journey together, one way or another.~
= ~Aye, I think it'd be to our benefits to work as allies in this. If you'll have me, that is.~
END
++ ~Join me, then. I could use a capable priest.~ + j8.2
++ ~I don't think you're what I'm looking for.~ + j5.4

CHAIN C02DRAKE j5.4
~Suit yourself. There will be time for you to change your mind, rest assured. Farewell.~
EXIT

CHAIN C02DRAKE j8
~I should probably cut to the chase as to why I'm still here rather than on my way back to Amn. I intend to travel north with the Fist to fight the crusade.~
END
++ ~Why are you here at the Three Old Kegs? Isn't the Elfsong Tavern a more reputable establishment?~ + j9
++ ~What has Amn got to fear from the crusade?~ + j8.1
++ ~So do I. Perhaps we could work together.~ + j8.2
++ ~In that case, maybe we'll meet again in the future. Farewell for now.~ + j0

CHAIN C02DRAKE j8.1
~Not much, in my opinion, but we're a paranoid lot. Not that it's relevant, given my country's interests have nothing to do with my decision.~
= ~Have you gone by the old Iron Throne headquarters, I wonder? I reckon it's a vastly different sight to what you're familiar with. I spent some time there tending to the wounded like any respectable priest would, but I knew what those people needed was more than healing.~
= ~Those people need hope. They need to know that they'll be safe from any more tragedies, and the only way to ensure that for the moment is to destroy that crusade. If I can help make that happen, then I will.~
END
++ ~That's a respectable goal. I could use someone such as you.~ + j8.2
++ ~Good to know. Perhaps I'll see you around.~ + j0

CHAIN C02DRAKE j8.2
~You think so, do you? Well, can't say I'm opposed to the idea. Your company would be infinitely more pleasant than the Fist, given they're still not overly fond of Amnians.~
= ~Once more unto the breach then. You have my hammer, <CHARNAME>.~
DO ~AddJournalEntry(%Drake_SoD_Recruit_Journal%,INFO)
SetGlobal("bd_joined","LOCALS",1)
JoinParty()~ EXIT

CHAIN C02DRAKE j9
~This place is more to my liking. The Elfsong is... a mite pretentious for my tastes. And I was disappointed to find that the spectral singer has yet to return.~
= ~The Elfsong has its types, but I... prefer the rowdy places. It's a better place to get to know people. And lose a few teeth in a tavern brawl, but what have you.~
END
++ ~Back to the crusade. What has Amn to fear from it?~ + j8.1
++ ~Will you join my party again, Drake? I think we would work well together in fighting the crusade.~ + j8.2
++ ~I'll talk to you again some other time. Farewell, my friend.~ + j0

CHAIN IF WEIGHT #-1 ~Global("C02DrakeBegin","GLOBAL",3)~ THEN C02DRAKE k0
~Look who's back.~
= ~Is there something you require of me, <CHARNAME>? No doubt we march against the crusade soon.~
END
++ ~Would you like to join me? I could use your skills in my group.~ + j8.2
++ ~Nothing for now.~ EXIT

APPEND C02DRAKE

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_7%)~ p4
 SAY ~Well, well. Look who's here.~
	++ ~Would you join me, Drake?~ + p5
	++ ~And look who's leaving.~ + p6
END

IF ~~ p5
 SAY ~Is that even up for debate? Let's move, my friend.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~What a shame.~
IF ~~ EXIT
END

END

BEGIN C02DRAKP

IF ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ r0
SAY ~Ha! This is one battle I couldn't walk away from if I wanted to, <CHARNAME>!~
IF ~~ DO ~SetGlobal("C02DrakeKickedmdd1330","global",1)
SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~GlobalGT("bd_joined","LOCALS",0)~ p1
SAY ~Is our companionship to end so abruptly? I'm heartbroken.~
 	+ ~OR(2) AreaCheck("BD0120")
	AreaCheck("BD0130")~ + ~Just wait here until I return.~ + p2
	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130")~ + ~Just wait here until I return.~ + q1
	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130")
	OR(2)
		!Range("ff_camp",999)
		NextTriggerObject("ff_camp")
		!IsOverMe("C0Drake")~ + ~Only for the moment. Return to the camp and wait for me.~ + p3
 	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130") NextTriggerObject("ff_camp") IsOverMe("C0Drake")~ + ~Only for the moment. Stay at the camp for a while.~ + q2
 	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130") GlobalGT("bd_npc_camp_chapter","global",1)
	   GlobalLT("bd_npc_camp_chapter","global",5)
	   OR(2)
	   !Range("ff_camp",999)
	   NextTriggerObject("ff_camp")
	   !IsOverMe("C0Drake")~ + ~Only for the moment. Return to the camp and wait for me.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + q3
 	++ ~No, remain with me.~ + p0
END

IF ~~ p0
 SAY ~Smart move.~
IF ~~ DO ~JoinParty()~ EXIT
END
 
IF ~~ p2
 SAY ~Suit yourself. I'll be here, patiently waiting amidst the dust and bones.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ p3
 SAY ~If you say so. Do take care not to die, would you?~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0) EscapeAreaMove("BD0120",837,1777,NE)~ EXIT
END

IF ~Global("bd_joined","LOCALS",0)~ p4
 SAY ~Look who's back.~
	++ ~I am. Would you rejoin me, Drake?~ + p5
	++ ~And look who's leaving.~ + p6
END

IF ~~ p5
 SAY ~Is that even up for debate? Let's move, my friend.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~What a shame.~
IF ~~ EXIT
END

IF ~~ q1
SAY ~I'm sure I'll still be here when you return. Though perhaps not entirely sober... or coherent.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ q2
SAY ~Do I have a choice? Ah, do as you will. I'll be waiting.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ q3
SAY ~Do I have a choice? Ah, do as you will. You know where to find me.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

// Personal Quest

CHAIN IF ~Global("C02DrakeQuest","GLOBAL",2)~ THEN C02DRAKP quest
~Far be it from me to ask you a favor for a change, <CHARNAME>, but I do, in fact, have something that I wish to tell you, for both of our benefits.~
END
++ ~I'm listening, Drake. What's wrong?~ + quest.1
++ ~Fine, but you'd best make it quick.~ + quest.1

CHAIN C02DRAKP quest.1
~A while before we made passed Boareskyr Bridge, I sent a missive back to Amn containing details on our progress towards the march to Dragonspear Castle.~
= ~I requested aid from my superiors in the Order, and in response, they approved a small force to bring some useful resources for the Fist once we had set up the coaliton camp.~
END
++ ~What kind of resources are we talking about here?~ + quest.2
++ ~Get to the point.~ + quest.3

CHAIN C02DRAKP quest.2
~My request was for 'any resource the we may find useful'. Medical supplies, food, weaponry and the like. Those may not interest you in particular, but there were a few items of power that are more to our caliber thrown in there.~
EXTERN C02DRAKP quest.3

CHAIN C02DRAKP quest.3
~I've been counting the days, and assuming nothing has gone wrong, those supplies should have arrived at the camp by now. But I've had no message to affirm that, and the scouts I've talked to have seen nobody meeting the description of who I've been waiting for.~
= ~Of course, sometimes people get delayed, but I can't help but have a gut feeling that something may have gone wrong. If they have run afoul of crusaders en route, then their lives will be in danger, and in the worst case scenario, those supplies will end up in the hands of the crusade.~
= ~Besides the fact that 'those supplies' include a handful of magical artifacts that the Order would not be happy to lose, I worry for what might have happened to those men. While this may not be relevant to our current objective, I would rather we look into what has happened... if it pleases you.~
END
++ ~You seem genuinely worried. Alright, I'll see if I can find them.~ + quest.4
++ ~If it really matters to you, then I'll keep an eye out. But there's no guarantee I'll find anybody.~ + quest.4
++ ~I have no time for distractions right now. Our main goal should be Dragonspear Castle.~ + quest.5

CHAIN C02DRAKP quest.4
~Thank you, <CHARNAME>. It could be nothing... for all I know, they're simply held back by some small complications, but in case they're not... well, better to be safe than sorry.~
DO ~AddJournalEntry(%Drake_SoD_Quest_1%,QUEST)~ EXIT

CHAIN C02DRAKP quest.5
~*sigh* Well, I'll not rest easy not knowing if anything has happened, but I suppose we've bigger concerns on our hands. All right, I'll try and convince some of the commanders of the camp to deal with it in our stead. But I hope you might keep watch for any clues regardless... just in case.~
DO ~AddJournalEntry(%Drake_SoD_Quest_1%,QUEST)~ EXIT