BEGIN C02ELRIK

CHAIN IF WEIGHT #-1 ~Global("C02DrakeQuest","GLOBAL",3)~ THEN C02ELRIK a1
~Foul creatures! To arms, my comrades! We shall litter this earth with their black blood to<DAYNIGHT>. With me, Squire Caulfield!~
== C02DRAKJ IF ~IsValidForPartyDialog("C0Drake")~ THEN ~These are knights of the Order, <CHARNAME>! Likely the ones that were meant to arrive at the camp!~
== C02ELRIK ~You there! If you be friends of anything good and right, then aid us against these beasts! We shall take them from both sides! For the Order!~
DO ~SetGlobal("C02DrakeQuest","GLOBAL",4)~ EXIT

CHAIN IF WEIGHT #-1 ~!Detect([ENEMY])
Global("C02DrakeQuest","GLOBAL",4)~ THEN C02ELRIK a2
~Well fought, everyone! The gods surely smile upon us for sending these beasts to the Abyss. Take your time to recover from your wounds while I speak with these strangers.~
DO ~SetGlobal("C02DrakeQuest","GLOBAL",5)~
END
IF ~IsValidForPartyDialog("C0Drake")~ EXTERN C02DRAKJ a1.1
IF ~!IsValidForPartyDialog("C0Drake")~ EXTERN C02ELRIK a1.2

CHAIN C02DRAKJ a1.1
~Not all of us are strangers, Sir Elrik. Assuming you still recognize me, that is.~
== C02ELRIK ~How could I not? It is good to see you again, young Drake.~
== C02DRAKJ ~I'm glad to see you remember the brat who used to stand among his peers in the High Halls. I didn't think the Order would send someone as skilled as the 'Red Giant' on a task such as this, however?~
== C02ELRIK ~The prelate has taken your information regarding the actions and growth of the crusade most seriously, Drake. He felt it was best to send the most experienced of the Order to aid in Baldur's Gate's defense and ensure that this threat does not extend any further than it already has.~
== C02DRAKJ ~Most experienced, huh? I suppose that's a good thing. But then, what's he doing here, eh?~
== C02TOMAS ~Hmph.~
== C02DRAKJ ~It's been too long, Tomas. Is that how you're going to treat your older brother after all these months? I'm just messing with you, you know that?~
== C02TOMAS ~I know. You haven't changed, Drake. Still as insufferable as always.~
== C02DRAKJ ~And you're still my smart-mouthed brat of a brother. But that's how we like each other, isn't that right?~
== C02TOMAS ~...heh. It's good to see you again.~
== C02DRAKJ ~Same for me, lad. <CHARNAME>, this is my dearest little brother, Tomas Caulfield. Though he's grown a bit since I last saw him.~
END
++ ~I see. It's nice to meet you, Tomas.~ EXTERN C02DRAKJ a2.1
++ ~I would've thought your brother would resemble you a little more closely, Drake.~ EXTERN C02DRAKJ a2.2
++ ~As touching as this reunion is, I'd rather we get to talking about what's more important here.~ EXTERN C02DRAKJ a2.3

CHAIN C02DRAKJ a2.1
~I'm sorry I haven't been home in a while. How's the family been doing?~
== C02TOMAS ~You know how they are. Mother can't go a day without worrying if you're eating and sleeping well. Father doesn't visit much. As for our little sister, she's been improving, both in swordsmanship and painting.~
== C02DRAKJ ~That's good. I'd love to hear more, but... right now, I think I should probably talk to your superior first.~
EXTERN C02DRAKJ a2.4

CHAIN C02DRAKJ a2.2
~He takes after our mother. All of my siblings do, actually. I'm the exception there.~
EXTERN C02DRAKJ a2.1

CHAIN C02DRAKJ a2.3
~You're right, <CHARNAME>. We'll have to catch up later, kid.~
EXTERN C02DRAKJ a2.4

CHAIN C02DRAKJ a2.4
~Sir Elrik. This is <CHARNAME>, hero of Baldur's Gate. <PRO_HESHE> is leading this party to investigate the crusade before our forces enter battle against theirs.~
== C02ELRIK ~Indeed. I read both your message and the report to the Order you sent in before. This is the child of...~
== C02DRAKJ ~Sir Elrik.~
== C02ELRIK ~Of course. My apologies. My <PRO_LADYLORD> <CHARNAME>, the Order of the Radiant Heart offers aid to defend against the Shining Lady's crusade.~
END
++ ~Your help is much appreciated.~ EXTERN C02DRAKJ a2.5
++ ~Why did you mention my heritage to the Order, Drake?~ EXTERN C02DRAKJ a2.6
++ ~I suppose you will have to do.~ EXTERN C02DRAKJ a2.5

CHAIN C02DRAKJ a2.5
~Are you and your men well enough to travel after this battle, Sir Elrik? The camp is not far from here. You will find the allied forces of Baldur's Gate, Daggerford and Waterdeep. I have told the commanding officers to expect you.~
== C02ELRIK ~Then we shall make our way there forthwith. Thank you for your assistance, Drake, as well as <PRO_LADYLORD> <CHARNAME>. We shall meet again at camp.~
== C02TOMAS ~See you around, brother.~
== C02DRAKJ ~If all goes well. Take care, kid. I'll talk with you later.~
== C02ELRIK ~We take our leave. Stay safe, Drake.~
DO ~EscapeArea()~ EXIT

CHAIN C02DRAKJ a2.6
~*shrug* You didn't ever say I couldn't. Besides, would you rather they hear it from someone who doesn't favor you?~
EXTERN C02DRAKJ a2.5

CHAIN C02ELRIK a1.2
~You have our thanks for your aid, stranger. Sir Elrik Redharbour, veteran knight of the Order of the Radiant Heart at your service. May I know the name of our new ally?~
END
++ ~I'm <CHARNAME>. You must be Drake's fellow knights from Amn.~ + a1.3
++ ~My name is unimportant. Are you the knights that Drake called upon for aid?~ + a1.3

CHAIN C02ELRIK a1.3
~Aye, that we are. If you know of us, then you must be part of the allied forces fighting the crusade. It is fortunate that we have found you.~
== C02TOMAS ~Excuse me. I'm Drake's brother, Tomas Caulfield. Do you know where my brother is? Is he well?~
END
+ ~Dead("c0drake")~ + ~Unfortunately, Drake has fallen.~ EXTERN C02TOMAS a1.4
+ ~!Dead("c0drake")~ + ~He is at the coalition camp, waiting for your arrival. You should travel there immediately.~ + a1.5

CHAIN C02TOMAS a1.4
~Dead? No... no, not him too...~
== C02ELRIK ~At ease, squire. There may still be hope if we can find his remains and bring them home to the Order. His fate is not the same as Sir Gabriel's.~
EXTERN C02ELRIK a1.5

CHAIN C02ELRIK a1.5
~You have my thanks, my <PRO_LADYLORD>. We were meant to arrive many days ago, but faced much opposition on the way, from both the crusade and lawless raiders such as these orogs. We shall travel to the camp immediately and make arrangements with the leaders.~
= ~Farewell.~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
Global("bd_battle","global",0)
NumTimesTalkedTo(0)~ THEN C02ELRIK b1
~The knights of the Most Noble Order of the Radiant Heart have enlisted with the coalition forces. When the time comes, you can depend on our blades.~
EXTERN C02ELRIK b2

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
Global("bd_battle","global",0)
!NumTimesTalkedTo(0)~ THEN C02ELRIK b2
~Is there something you require, <CHARNAME>?~
END
++ ~How do your men fare, Sir Elrik?~ + b2.1
++ ~I would like to see the equipment you have in stock.~ + b2.2
++ ~Nothing for now.~ + b2.0

CHAIN C02ELRIK b2.0
~As you will. May Torm's blessings be with you.~
EXIT

CHAIN C02ELRIK b2.1
~We are prepared to fight to defend the land against the so-called Shining Lady and her crusade. Though it saddens me to see what has become of a scion of a name such as Argent, but we must be victorious here, or the safety of all that calls the Sword Coast home will be threatened.~
EXTERN C02ELRIK b2

CHAIN C02ELRIK b2.2
~Of course. The best of the Order's armory is available to you, as commanded.~
DO ~StartStore("c02dshop",Lasttalkedtoby(Myself))~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("bd_battle","global",0)
!GlobalGT("bd_battle","global",36)~ THEN C02ELRIK c1
~The Order stands ready to fight against the false heretics of the crusade!~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalLT("bd_plot","global",450)
!Dead("bdashati")~ THEN C02ELRIK c1
~By Torm's name, the crusaders will fall!~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalLT("bd_plot","global",450)
Dead("bdashati")~ THEN C02ELRIK c2
~Well fought, <CHARNAME>! The righteous have prevailed over the false light, as was ordained. Is there anything you require?~
END
++ ~I would like to see the equipment you have in stock.~ + b2.2
++ ~Nothing for now.~ + b2.0