BEGIN C02SIREP

IF ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ r0
SAY ~Ha! This is one battle I couldn't walk away from if I wanted to, <CHARNAME>!~
IF ~~ DO ~SetGlobal("C02DrakeKickedmdd1330","global",1)
SetGlobal("bd_joined","locals",0)~ EXIT
END

IF ~OR(2)
	AreaCheck("BD0120")
	AreaCheck("BD0130")
	GlobalGT("bd_joined","LOCALS",0)~ p1
SAY ~Is our companionship to end so abruptly? I'm heartbroken.~
 	+ ~OR(2) AreaCheck("BD0120")
	AreaCheck("BD0130")~ + ~Just wait here until I return.~ + p2
	+ ~!AreaCheck("BD0120") !AreaCheck("BD0130")~ + ~Just wait here until I return.~ + q1
	+ ~OR(2)
		!Range("ff_camp",999)
		NextTriggerObject("ff_camp")
		!IsOverMe("C0Drake")~ + ~Only for the moment. Return to the camp and wait for me.~ + p3
 	+ ~NextTriggerObject("ff_camp") IsOverMe("C0Drake")~ + ~Only for the moment. Stay at the camp for a while.~ + q2
 	+ ~GlobalGT("bd_npc_camp_chapter","global",1)
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
EXIT

CHAIN C02DRAKP quest.5
~*sigh* Well, I'll not rest easy not knowing if anything has happened, but I suppose we've bigger concerns on our hands. All right, I'll try and convince some of the commanders of the camp to deal with it in our stead. But I hope you might keep watch for any clues regardless... just in case.~
EXIT