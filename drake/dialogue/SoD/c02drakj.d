BEGIN C02DRAKJ

// Dialogue

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",2)~ THEN C02DRAKJ t1
~Things have really escalated. A city of leaders depending on a single person to solve their troubles. What do you think of that, <CHARNAME>?~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
++ ~Not good. It's a rather heavy burden to bear.~ + t1.1
++ ~I think that the reward I get had better be worth it.~ + t1.2
++ ~*shrug* At this point I'm used to carrying others' burdens. It's nothing.~ + t1.3
++ ~I think you should be quiet and follow. I'm not interested in small talk.~ + t1.0

CHAIN C02DRAKJ t1.0
~Yes, I'm sure you need the time to think about your current situation. Have it your way.~
EXIT

CHAIN C02DRAKJ t1.1
~I'd imagine. Just make sure it doesn't topple you and pull you under.~
EXTERN C02DRAKJ t1.4

CHAIN C02DRAKJ t1.2
~I'm sure that burden you carry with you right now will pay off its weight in gold eventually. But will that really satisfy you?~
EXTERN C02DRAKJ t1.4

CHAIN C02DRAKJ t1.3
~If you really mean what you say, then I'm impressed. And pity you. Don't take it badly though. Not many would be able to shoulder so much for so many.~
EXTERN C02DRAKJ t1.4

CHAIN C02DRAKJ t1.4
~Call me insensitive, but I mostly feel relieved that it's not me.~
END
++ ~I'm not offended. I'd feel the same way.~ + t1.5
++ ~What if it were? Would you be up for the task?~ + t1.6
++ ~Just shut up. You have no idea the sort of things I have to bear with.~ + t1.0

CHAIN C02DRAKJ t1.5
~Life's unfair sometimes, isn't it? Then again, somebody must live with the chains of commanding. If not you, then another, perhaps one less worthy. And what a disaster that'd be.~
= ~...~
= ~*laugh* Perhaps that was going a bit far, but I did mean it when I said you were worthy. It may be a hard life you lead, but I think you might be the only one capable of it.~
END
++ ~Why? What is so special about me?~ + t1.7
++ ~I don't care what you think. I just expect your skills to be of use to me.~ + t1.8

CHAIN C02DRAKJ t1.6
~I wouldn't know. Probably not. I'm not what you'd call a hero like my father, or my brother Gabriel, or even yourself... I've always been more comfortable with following orders than giving them.~
EXTERN C02DRAKJ t1.5

CHAIN C02DRAKJ t1.7
~There's the most obvious case of your heritage, but I'm not talking about that for a change. It's your ability to bring the most unlikely of men - and women - to your cause. Your ability to lead is uncanny, much like my late brother.~
= ~It's impressive. You've even gained my trust and respect as a companion, a soldier, and a knight-to-be. That's what so special about you.~
END
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~You paint a pretty picture. What else do you think of me, I wonder...?~ DO ~IncrementGlobal("C02DrakeFlirt","GLOBAL",1)~ + t1.rom
++ ~I don't see that as anything special. Anyone could do the same if they tried.~ + t1.9
++ ~You're perceptive. I didn't expect it from your rough exterior.~ + t1.10
++ ~Thank you for your words, Drake, but I think we should get moving.~ + t1.11

CHAIN C02DRAKJ t1.8
~Oh, make no mistake that I'll serve you as loyally as any self-respecting soldier would. But it seems you're less interesting than I thought. So be it.~
DO ~SetGlobal("C0DrakeTalkStopped","GLOBAL",1)~ EXIT

CHAIN C02DRAKJ t1.rom
~*laugh* I think a lot of things. If its purely the complimentary words you're after, though, then I'll have to think harder...~
EXTERN C02DRAKJ t1.11

CHAIN C02DRAKJ t1.9
~Perhaps, but it's not so easy. It's a gift, one that I wasn't fortunate enough to have developed.~
EXTERN C02DRAKJ t1.11

CHAIN C02DRAKJ t1.10
~Heh. I'm really not. It's more than likely I'm just talking out of my posterior, in truth. But then again, maybe some of those lessons from my father had an effect after all.~
EXTERN C02DRAKJ t1.11

CHAIN C02DRAKJ t1.11
~I think we've talked enough at this point anyhow. We've got a lot to do after all. Lead on, and I will follow.~
EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",4)~ THEN C02DRAKJ t2
~Fancy a meal before bedtime, <CHARNAME>? Come, take a seat. Supper's on me tonight.~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
	++ ~You're cooking? Should I be excited or concerned?~ + t2.1
	++ ~Don't mind if I do.~ + t2.2
	++ ~I'd rather not. I'm not hungry.~ + t2.3
	++ ~Thanks, but I'd rather go to bed.~ + t2.0

CHAIN C02DRAKJ t2.0
~Suit yourself. Enjoy your rest, <CHARNAME>. Maybe there'll be some left for you in the morning.~
DO ~RestParty()~ EXIT
	
CHAIN C02DRAKJ t2.1
~Ha! I'll have you know that the chef's work is a secret talent of mine. Of course, given our current locale my ingredients are... less than optimal, but now's as good a time as any to experiment, wouldn't you say?~
EXTERN C02DRAKJ t2.4

CHAIN C02DRAKJ t2.2
~Smart <MANWOMAN>. Well, admittedly it's been a while since I've tried my hand at this, and my ingredients are somewhat limited, but now's as good a time as any to experiment, wouldn't you say?~
EXTERN C02DRAKJ t2.4

CHAIN C02DRAKJ t2.3
~Well, take a seat anyways and keep me company. Cooking's less than exciting work when done on one's own. Especially with our limited ingredients, but now's as good a time as any to experiment, wouldn't you say?~
EXTERN C02DRAKJ t2.4

CHAIN C02DRAKJ t2.4
~Nothing too special. Bagged a bear with a Command while we set up camp. Cut up a few turnips, added some salt, started a fire then threw it all in the pot.~
= ~It's nothing better than you'd get from a quality tavern, but it's better than nothing. We may be doing soldiers' work right now, but there's time for taking a few liberties.~
END
	++ ~Smells good. We haven't had a proper meal in days.~ + t2.5
	++ ~Uh, turnips? Do turnips and bear meat usually go well together?~ + t2.6
	++ ~I didn't think you had such talents, Drake. Where did you learn how to cook?~ + t2.7
	++ ~I like a man who knows how to cook.~ + t2.8
	++ ~You know, I don't think I'm that hungry. Good night, Drake.~ + t2.0
	
CHAIN C02DRAKJ t2.5
~My thoughts exactly. Trail rations are well and good, but nothing beats some hot savory stew during a cold evening, you know? Good for morale.~
EXTERN C02DRAKJ t2.7

CHAIN C02DRAKJ t2.6
~*shrug* Who knows? Never tried it before. But if those crazy Jansens can be taken at their word, then turnips should go well with anything you can throw on top of a fire and then some.~
EXTERN C02DRAKJ t2.7

CHAIN C02DRAKJ t2.7
~This is just one of the skills I picked up from my mother. When you have a family of five to take care of, it means a lot of work for her. I had to learn a few things to make sure her life even the slightest bit easier, like a dutiful son.~
EXTERN C02DRAKJ t2.9

CHAIN C02DRAKJ t2.8
~Is that so? I'm glad my skills meet your approval. No, really, means a lot. Heh.~
EXTERN C02DRAKJ t2.9

CHAIN C02DRAKJ t2.9
~*sniff* Oh, would you look at that. Looks like the stew's all but ready. Would you care for a sample?~
END
++ ~Hmm... could use some salt.~ + t2.10
++ ~Not bad for a first attempt at bear-and-turnip stew.~ + t2.11
++ ~Uh... I'll pass. I'd rather not go to bed with indigestion.~ + t2.12

CHAIN C02DRAKJ t2.10
~I'll keep that in mind for next time. Assuming, of course, there is a next time. No doubt we'll be living on dried fruit and biscuits again soon enough.~
EXTERN C02DRAKJ t2.13

CHAIN C02DRAKJ t2.11
~My thoughts exactly. After all that time we spent living on tasteless matter, it's nice to have some flavor on my tongue again.~
EXTERN C02DRAKJ t2.13

CHAIN C02DRAKJ t2.12
~Ha! You break my heart, <CHARNAME>. I'm sure it's not that bad. Surely it's no worse than dried fruits and leathery jerky.~
EXTERN C02DRAKJ t2.13

CHAIN C02DRAKJ t2.13
~Well, all things considered, this has been a better evening than most. Not only because of the food, of course. Present company is agreeable as well.~
= ~Reminds me of the good old times in the Amnian military. This was when my brother Gabriel was still alive, of course. Soldiering... well, lost its appeal after he was gone.~
END
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~What about now, hmm? Hasn't my charming leadership captivated you yet?~ DO ~IncrementGlobal("C02DrakeFlirt","GLOBAL",1)~ + t2.rom
++ ~Are you comparing me to your brother?~ + t2.14
++ ~What about now, though? Still feel that way?~ + t2.15
++ ~This has been a nice evening, but I think I'll go and get some rest now.~ + t2.16

CHAIN C02DRAKJ t2.rom
~*laugh* Well, I wonder. You've got a ways to go yet, but... with the way you're going, I'll be falling head over heels for you soon enough.~
EXTERN C02DRAKJ t2.17

CHAIN C02DRAKJ t2.14
~Did my words come across that way to you? It was meant as a compliment, mind you. Gabe was one of a kind, or so I used to believe. A hero among heroes.~
EXTERN C02DRAKJ t2.17

CHAIN C02DRAKJ t2.15
~Well... heh, hard to answer that one, to tell the truth. I suppose your leadership has helped recover some of that thrill.~
EXTERN C02DRAKJ t2.17

CHAIN C02DRAKJ t2.16
~Yes, you're probably right.~
EXTERN C02DRAKJ t2.17

CHAIN C02DRAKJ t2.17
~In any case, it's been a long day, and I think I shan't keep us from the rest we rightfully deserve. No one benefits from a fatigued leader, nor an equally-fatigued healer, after all. Good night.~
DO ~RestParty()~ EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",6)~ THEN C02DRAKJ t3
~A dragon. A *dragon*, <CHARNAME>. If nothing else, that alone has made this entire journey worth it.~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
+ ~Dead("bdmorent")~ + ~It's a dead dragon now.~ + t3.4
++ ~You like dragons, Drake?~ + t3.1
++ ~It was quite a surprise, finding a creature like that here.~ + t3.2
++ ~Whatever. We've got work to do.~ + t3.0

CHAIN C02DRAKJ t3.0
~A *dragon*, <CHARNAME>. How could you not be thrilled?~
EXIT

CHAIN C02DRAKJ t3.1
~Doesn't everyone? Majestic creatures, dragons. Legends given scales and flesh.~
END
IF ~!Dead("bdmorent")~ THEN EXTERN C02DRAKJ t3.3
IF ~Dead("bdmorent")~ THEN EXTERN C02DRAKJ t3.4

CHAIN C02DRAKJ t3.2
~I never would have imagined it myself before I walked into these caverns. But by Tyr, I certainly don't regret it.~
END
IF ~!Dead("bdmorent")~ THEN EXTERN C02DRAKJ t3.3
IF ~Dead("bdmorent")~ THEN EXTERN C02DRAKJ t3.4

CHAIN C02DRAKJ t3.3
~I've been awed by the beasts ever since I was a little child. Perhaps my name is all to fitting, as well... heh. That may indeed have something to do with it.~
= ~My father - Prelate Durand - once fought a band of dark elves with my brother as well as several other skilled knights. They pursued them into the Underdark, but the devious drow led them into the lair of not one, but a pair of deep dragons.~
= ~The battle was fierce - or so they liked to tell. Scales and claws against steel, a clash worthy of song. My father's hammer and my brother's spear against some of the greatest beasts to walk Faerun. They were victorious in the end, or the few survivors of the encounter, at least. They carved the beasts' scales and forged them into mighty armor that my father has worn ever since.~
= ~One of my favorite tales, that one. 'Twas the only one that had ever truly impressed me.~
EXIT

CHAIN C02DRAKJ t3.4
~It's a great pity we had to slay it, though I suppose that is an achievement in itself. An evil beast it may have been, but still magnificent.~
EXTERN C02DRAKJ t3.3

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",8)~ THEN C02DRAKJ t4
~Have you got any ink, <CHARNAME>?~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
++ ~What for?~ + t4.1
++ ~I do, in fact. Here you go.~ + t4.2
++ ~Not the time, Drake.~ + t4.0

CHAIN C02DRAKJ t4.0
~That's too bad. I'll have to find some elsewhere.~
EXIT

CHAIN C02DRAKJ t4.1
~I've been meaning to write home for a while now. Now that I look back, it really has been a long time. I made the journey here from Amn several months ago, and I haven't had the chance to hear from my family since all that time.~
END
++ ~It must be nice to have people that think about you.~ + t4.3
++ ~Writing home sounds like a good idea. What are you going to say?~ + t4.4
++ ~Do it in your own time. I'm not interested in hearing about it.~ + t4.5

CHAIN C02DRAKJ t4.2
~Thank you.~
EXTERN C02DRAKJ t4.1

CHAIN C02DRAKJ t4.3
~I suppose so. I'll admit I do miss having my kid brother and little sister around. With my father's duties at the Order keeping him busy, it was always up to me and my mother to take care of them.~
EXTERN C02DRAKJ t4.4

CHAIN C02DRAKJ t4.4
~I don't know what I'll write yet. There's a lot to catch up on... though I suspect one way or another, I'll have to write about the slave driver I'm working for...~
END
++ ~Slave driver?!~ + t4.6
++ ~Ha ha. Very funny.~ + t4.6
++ ~Am I really that demanding?~ + t4.6
++ ~Write whatever you want. I don't care.~ + t4.5

CHAIN C02DRAKJ t4.5
~Fair enough. Thanks for the ink regardless.~
EXIT

CHAIN C02DRAKJ t4.6
~I'm joking. You're not that bad, <CHARNAME>, don't worry. Though I will write about you. One way or another, you've become rather important, after all.~
END
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~Important as a whole, or to you personally, hmm?~ DO ~IncrementGlobal("C02DrakeFlirt","GLOBAL",1)~ + t4.7
++ ~That's right. Make sure you get all my glory down on paper.~ + t4.8
++ ~I don't think I'm all that special.~ + t4.9
++ ~Whatever. Do whatever you like.~ + t4.5

CHAIN C02DRAKJ t4.7
~Well, let's not go that far just yet. Though you're not entirely wrong on either thought, let me just put it that way.~
EXTERN C02DRAKJ t4.10

CHAIN C02DRAKJ t4.8
~*laugh* I think you've got scores of bards and storytellers doing that for you already. I'm sure your tales have already spread all the way to Amn as we speak.~
EXTERN C02DRAKJ t4.10

CHAIN C02DRAKJ t4.9
~Don't think of your importance that way. People that depend on you want to see you as their hero and savior. The best you can do is at least act the part.~
EXTERN C02DRAKJ t4.10

CHAIN C02DRAKJ t4.10
~Ah, but we've spent so long talking about me here... I wonder, <CHARNAME>, what about you? Do you think about anything from Candlekeep? Do you still consider it home?~
END
++ ~Without Gorion or Imoen, or a family to return to... why would I?~ + t4.11
++ ~Sometimes. I'm not quite as attached to it as you are to your home though.~ + t4.11
++ ~I think of Candlekeep every day. Even without a family, I still see it as the only home I've known.~ + t4.11
++ ~None of your business, Drake.~ + t4.11

CHAIN C02DRAKJ t4.11
~Fair enough. Wherever you dream of returning to, if there is such a place... I think it's good to think of it now and again. Let's put this crusade to an end, then, and perhaps then we can both return home.~
EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",10)~ THEN C02DRAKJ t5
~The crusaders... they call Caelar Argent a hero. More importantly, they believe in it. What do you think of that, <CHARNAME>?~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
++ ~They're morons.~ + t5.1
++ ~I don't think anything. They're just people in my way.~ + t5.2
++ ~Caelar inspires genuine loyalty in her troops. I don't think the crusaders are geuninely evil.~ + t5.3
++ ~I think that now's not the time to be discussing our enemies' philosophies with each other. Let's move.~ + t5.0

CHAIN C02DRAKJ t5.0
~You really are boring sometimes, <CHARNAME>.~
EXIT

CHAIN C02DRAKJ t5.1
~Harsh, but probably true. Though I'd say 'woefully misguided' is more accurate.~
EXTERN C02DRAKJ t5.4

CHAIN C02DRAKJ t5.2
~You're cold. But I might as well ask anyways, considering I was thinking...~
EXTERN C02DRAKJ t5.4

CHAIN C02DRAKJ t5.3
~Perhaps. *sigh* That makes this all the more difficult.~
EXTERN C02DRAKJ t5.4

CHAIN C02DRAKJ t5.4
~Do you regret having to kill them?~
END
++ ~I always regret having to kill. This is no exception.~ + t5.5
++ ~Some of them. There are always those that deserve to die, though.~ + t5.6
++ ~Not at all. If they want to oppose us, then it's their fault that they die.~ + t5.7
++ ~I'd rather not think about it. It makes things that much more difficult.~ + t5.8

CHAIN C02DRAKJ t5.5
~It must be hard. For someone born from the Lord of Murder, in particular. But it is very admirable.~
EXTERN C02DRAKJ t5.9

CHAIN C02DRAKJ t5.6
~Everyone does something that someone will think they deserve to die for sooner or later. Who's to judge if they're right or wrong? You, or me? Can anyone?~
EXTERN C02DRAKJ t5.9

CHAIN C02DRAKJ t5.7
~Hmph. Well said from a scion of Murder. I suppose in some perverse way, you do have that right.~
EXTERN C02DRAKJ t5.9

CHAIN C02DRAKJ t5.8
~Heh. I realized the same thing while I was a soldier. It's much easier on you when you forget all about your personal morals and become an unthinking pawn, acting exactly are ordered.~
= ~I can't say it was the proudest time of my life.~
EXTERN C02DRAKJ t5.9

CHAIN C02DRAKJ t5.9
~You have your opinion, I have mine. I don't regret my part in causing the deaths of the crusaders, no more than killing anyone. They chose to hold to their own beliefs, which clashed with mine.~
= ~That's not to say that I don't have any regrets at all. I don't believe anyone truly has the right to take another's life. It's a privilege granted to those with power.~
= ~I don't like it, but many issues in life can be solved simply by killing anyone who disagrees with you. Even for a good cause, like the Order.~
END
++ ~If you believe killing is such a terrible thing, why are you still here?~ + t5.10
++ ~You're wrong. I believe there's always a better alternative to having to kill everyone in your way.~ + t5.11
++ ~I don't know anything about that. I just find it to be entertaining.~ + t5.12
++ ~This really isn't a thrilling subject for conversation, Drake. Let's stop.~ + t5.0

CHAIN C02DRAKJ t5.10
~*shrug* Good question. Sometimes I wonder why I don't just drop my weapon and go home. I suppose it's because it's still better than standing by and doing nothing. Don't you agree?~
EXTERN C02DRAKJ t5.13

CHAIN C02DRAKJ t5.11
~*snort* I would love nothing more than to be wrong, but can you truly say that? What would you have done instead, if you did not kill men like Davaeorn, Angelo or Sarevok?~
EXTERN C02DRAKJ t5.13

CHAIN C02DRAKJ t5.12
~Ha! Do you know what I consider killing without a cause? Murder. Quite apt for you, wouldn't you say?~
EXTERN C02DRAKJ t5.13

CHAIN C02DRAKJ t5.13
~You don't have to answer that. Even if you could, having an answer to these sort of questions takes the fun out in life.~
= ~Heh. I wonder if you'll lose any sleep thinking about this. I certainly will.~
EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",12)~ THEN C02DRAKJ t6
~Come share a drink, <CHARNAME>! The day has passed, and the night is long. What better time than now to relax over a warm fire and a pint of ale?~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
+ ~Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~I don't drink. I thought you knew that.~ + t6.1
+ ~!Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~I don't drink.~ + t6.2
++ ~I'm not fond of drink, but I'll keep you company.~ + t6.3
++ ~Why not. What are we drinking?~ + t6.4
++ ~I intend to. I hope you can keep up with me.~ + t6.4
++ ~I'd rather not. I'm tired and would rather go to bed.~ + t6.0

CHAIN C02DRAKJ t6.0
~You're no fun at all. Have it your way. I intend to indulge myself until the dawn.~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",2)~ EXIT

CHAIN C02DRAKJ t6.1
~Still so resolute? Are you certain that I cannot tempt you?~
EXTERN C02DRAKJ t6.4

CHAIN C02DRAKJ t6.2
~Unfortunate. But there's no better time to start, wouldn't you agree?~
EXTERN C02DRAKJ t6.4

CHAIN C02DRAKJ t6.3
~I'll take what I can get. Besides, I'm sure I'll convince you soon enough.~
EXTERN C02DRAKJ t6.4

CHAIN C02DRAKJ t6.4
~I don't intend to treat you to any cheap brew, my friend. This here is a personal treasure. A bottle of the finest Arabellan Dry wine, never to be opened until now. Best shared between close comrades in times like these.~
= ~Here, bask in its scent while you may, for I intend to empty the bottle before the sun rises.~
= ~Good, isn't it? Shall we partake?~
END
++ ~Break out the cups. Let's get completely wasted.~ + t6.5
++ ~You go ahead. I'm just here to keep you company.~ + t6.6
++ ~I'd rather just go to bed. Have fun.~ + t6.0

CHAIN C02DRAKJ t6.5
~*gulp* Ah, that's the stuff. A shame we don't have a nice roast on the fire to accompany this fine wine. Though I'm not particularly hungry anyways.~
= ~Heh. You know, I used to drink like this all the time with my old friends, back when I was in the army. My father and brother as well. We'd sing bawdy songs, reminisce about loved ones, brag about past victories...~
= ~Well, that's what my friends liked to do, anyway. Me, I'm more of a listener. (raises his glass) This is what I'm around for.~
END
++ ~Is this all you really live for, Drake?~ + t6.7
++ ~Don't you have any stories to tell at all?~ + t6.7
++ ~Fine. Let's just drink together then.~ + t6.8
++ ~In that case, I don't see a reason to stick around. Good night.~ + t6.0

CHAIN C02DRAKJ t6.6
~Suit yourself. Your cup's right there in front of you if you change your mind.~
EXTERN C02DRAKJ t6.5

CHAIN C02DRAKJ t6.7
~I'm a simple man with simple pleasures, and about as uninteresting as they come. If you want stories, I'm afraid I'm not much good.~
= ~Not to say I couldn't make something up... like most of the squires' tales I've heard. But that's not really my thing. Boasting about nonsense like slaying dragons and giants by the dozens singlehandedly... ha!~
EXTERN C02DRAKJ t6.8

CHAIN C02DRAKJ t6.8
~I see your cup's empty. Shall I fill it for you?~
END
++ ~By all means.~ + t6.9
++ ~I said I don't drink.~ + t6.10
++ ~No, thanks. I'm going to bed.~ + t6.0

CHAIN C02DRAKJ t6.9
~*gulp*~
= ~You know, I like you, <CHARNAME>. You've got a good head on you, and you keep things interesting. With you, I think I can say anything I want, while drinking as much as I want.~
= ~Not like my dear old father. He wasn't fond of my habits when I was young, so my brother and I used to sneak out to the local taverns during the night. Got caught a few times, of course, but that didn't ever stop us from trying.~
= ~Come to think of it, he never drank much outside of social gatherings to begin with. Liked the halfling pipeweed though. The estate used to smell of smoke all the time, mother hated it. Funnily enough, I kind of missed it for a while. Even when I was home, my father was usually busy with his duties as prelate of the Order.~
= ~Although... after Gabriel died, he smoked all day and night for three days while at home mourning. After that, I ended up hating it too. Like a bad memory, I still want to gag every time I smell the damn stuff.~
END
++ ~Funny, you said you weren't good at telling stories. Now I see you were wrong.~ + t6.11
++ ~Tell me more about your family. I'd like to hear more.~ + t6.12
++ ~Eh, I think I'm done for the day. I'm going to bed.~ + t6.0

CHAIN C02DRAKJ t6.10
~Suit yourself.~
EXTERN C02DRAKJ t6.9

CHAIN C02DRAKJ t6.11
~*snort* You must not have heard many good stories if you found my tale of my father's smoking interesting.~
EXTERN C02DRAKJ t6.13

CHAIN C02DRAKJ t6.12
~Sure, sure, let me think...~
EXTERN C02DRAKJ t6.13

CHAIN C02DRAKJ t6.13
~Damn, this bottle's empty. Good thing I have two more in here...~
= ~*gulp*~
= ~To tell you the truth, I prefer ale. But Arabellan red was my Gabriel's favorite. Once a month, I'll empty a bottle or two in his memory.~
= ~Personally, I've always found the aftertaste a bit much for my tongue. Good with cheese, though. A pity we don't have any.~
= ~The last time we drank together was just before the incident at Murann. He was talking about going home to marry his beloved after we won the war. If only he knew...~
END
++ ~Your brother had a betrothed?~ + t6.14
++ ~What about you? Did you have anyone at the time?~ + t6.15
++ ~You keep talking. I'm going to keep drinking.~ + t6.16
++ ~Forget this. I'm going to bed.~ + t6.0

CHAIN C02DRAKJ t6.14
~That he did. Ah... but I shouldn't tell. The last time I spoke of her while inebriated, I... well, it's best that you don't know right now.~
EXTERN C02DRAKJ t6.16

CHAIN C02DRAKJ t6.15
~Me? You must be joking. Gabriel had the hearts of all the ladies at court, and more than a few of the men. I could hardly compare.~
EXTERN C02DRAKJ t6.16

CHAIN C02DRAKJ t6.16
~Oh, my dear brother... he was too heroic until the end, and died like an honorable fool, but... I miss him. I really do.~
= ~When I drink this wine, I think of all the times talked and laughed at each others' jokes... and it's like he's with me all over again. Then I down another cup to enjoy the feeling again, then another, until...~
= ~Bah, why am I talking about this when we could be getting drunk instead? I'm pouring another. What about you, <CHARNAME>?~
END
++ ~Okay.~ + t6.17
++ ~No, thank you.~ + t6.17

CHAIN C02DRAKJ t6.17
~This has been a fun evening, <CHARNAME>. I've had fun. Let's make sure it lasts!~
DO ~RestParty()~ EXIT

CHAIN IF ~Global("C02DrakeTalk","GLOBAL",14)~ THEN C02DRAKJ t7
~Ugh, my head... I may have overindulged last night. I hope you're faring at least a little better.~
DO ~IncrementGlobal("C02DrakeTalk","GLOBAL",1)~
END
++ ~Urrrghh... huh? Wha... whatimeizit?~ + t7.1
++ ~I hope you've learned your lesson.~ + t7.2
++ ~This is the reason why I don't drink.~ + t7.3
++ ~Actually, I slept fine. That was nothing.~ + t7.4
++ ~We've got to move, Drake. Get sober quickly and pack up.~ + t7.0

CHAIN C02DRAKJ t7.0
~*grumble* Fine, fine...~
EXIT

CHAIN C02DRAKJ t7.1
~*groan* Hells if I know. I can't tell if that's the sun or a fireball over our heads. Did I even get any sleep...?~
EXTERN C02DRAKJ t7.5

CHAIN C02DRAKJ t7.2
~You sound like my father. Unfortunately, I'm stubborn. Too stubborn for my own health, it seems.~
EXTERN C02DRAKJ t7.5

CHAIN C02DRAKJ t7.3
~Maybe that's for the best. If only it were so easy for me.~
EXTERN C02DRAKJ t7.5

CHAIN C02DRAKJ t7.4
~Ugh, you are unbelievable. I'm never drinking with you again.~
EXTERN C02DRAKJ t7.5

CHAIN C02DRAKJ t7.5
~Mmmph... my memory's a blur since we started getting into the spiced wine... in case you remember anything more clearly than I do, I... didn't do or say anything out of line, did I?~
END
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~I vaguely remember us getting rather close and touchy with each other before you passed out...~ DO ~IncrementGlobal("C02DrakeFlirt","GLOBAL",1)~ + t7.6
++ ~Beats me. I'm almost certain I keeled over long before you did.~ + t7.7
++ ~You fell asleep while singing something about donkeys and massive stones. I don't remember anything other than that.~ + t7.8
++ ~I put a blanket over you after you lost consciousness then went to bed. Nothing happened.~ + t7.9
++ ~Don't ask me. We've got a long way to go anyway, so I suggest you sober up quickly.~ + t7.0

CHAIN C02DRAKJ t7.6
~Wha- oh no. I'm not falling for that one, <CHARNAME>. I know myself better than that.~
EXTERN C02DRAKJ t7.10

CHAIN C02DRAKJ t7.7
~That's too bad.~
EXTERN C02DRAKJ t7.10

CHAIN C02DRAKJ t7.8
~*groan* I can't believe I still remember that song. The squires used to poke fun of me for making it up. Excuse me while I try to drill it out of my head entirely.~
EXTERN C02DRAKJ t7.10

CHAIN C02DRAKJ t7.9
~Good, good... I suppose I should consider myself lucky I didn't damage my pride any, I suppose.~
EXTERN C02DRAKJ t7.10

CHAIN C02DRAKJ t7.10
~I can't say I didn't have fun, though. It's been a long time since I've had a drinking partner I could genuinely speak my mind to. I hope I didn't bore you.~
END
++ ~Not at all. I rather enjoyed listening.~ + t7.11
++ ~The drinks were good, at least.~ + t7.12
++ ~I don't want to hear about your personal issues again.~ + t7.13

CHAIN C02DRAKJ t7.11
~Well, I'm glad. I didn't think you would, to be honest.~
EXTERN C02DRAKJ t7.14

CHAIN C02DRAKJ t7.12
~Good to see that something kept your attention.~
EXTERN C02DRAKJ t7.14

CHAIN C02DRAKJ t7.13
~Is that so? I don't blame you. I won't bother you with them again.~
EXIT

CHAIN C02DRAKJ t7.14
~Shall we share a few drinks again some other time? You can share all your troubles with me next time. I'll promise to listen no matter how bored I get.~
END
++ ~Sure, why not.~ + t7.15
++ ~I don't think so.~ + t7.16

CHAIN C02DRAKJ t7.15
~That's a good <PRO_MANWOMAN>. I'll find a few bottles of something stronger. Then we can both wake up with massive headaches next time.~
EXIT

CHAIN C02DRAKJ t7.16
~Have it your way. It was fun while it lasted.~
EXIT

CHAIN IF ~Global("C02DrakeHellTalk","GLOBAL",2)~ THEN C02DRAKJ t8
~Avernus, the First of the Nine Hells... and I thought the holy books were exaggerating. What a place.~
DO ~IncrementGlobal("C02DrakeHellTalk","GLOBAL",1)~
END
++ ~You seem remarkably unfazed.~ + t8.1
++ ~It's pretty warm here, isn't it?~ + t8.2
++ ~What a place indeed. I never thought I'd actually end up here.~ + t8.3
++ ~This is absolutely not the place to talk, Drake. We've got to find Caelar Argent and end this.~ + t8.0

CHAIN C02DRAKJ t8.0
~True... assuming this place hasn't already claimed her. Let's find out for ourselves.~
EXIT

CHAIN C02DRAKJ t8.1
~Were it with anyone else, I might be feeling differently... but to be honest, after all the time I've spent travelling with you, I've come to expect the worst, whatever it might be.~
EXTERN C02DRAKJ t8.4

CHAIN C02DRAKJ t8.2
~Oh, certainly. A perfect place for a nice, long vacation... heh, I wish that were the case.~
EXTERN C02DRAKJ t8.4

CHAIN C02DRAKJ t8.3
~Bet you regret all those terrible things you did as a child now, hmm? I certainly do.~
EXTERN C02DRAKJ t8.4

CHAIN C02DRAKJ t8.4
~Heh. I know my humor might seem out of place in this place we're in, but I thought perhaps it might lighten the atmosphere a little. All joking aside, though... I can't deny that this place unnerves me.~
= ~But I don't blame you from bringing us here. If anything, I'd have chosen to follow you here even if I had another choice. Not only because I'm duty-bound to, but because, well...~
= ~I think you deserve that much loyalty from me, at least. You really are one of a kind, <CHARNAME>.~
END
+ ~Global("C02DrakeRomanceActive","GLOBAL",2)~ + ~Why, Drake... are you falling in love with me?~ + t8.5
++ ~Thank you, Drake. Not just for your words, but also for everything else.~ + t8.6
++ ~You're one of a kind as well, Drake. Just in a different way.~ + t8.7
++ ~Then let's find Caelar together and put an end to this madness.~ + t8.0

CHAIN C02DRAKJ t8.5
~Hmm... in any other situation, I'd laugh that off. Now, though... heh. Maybe it's the heat, but I almost feel a warm blush crawling up my cheeks. You might not be entirely wrong.~
EXTERN C02DRAKJ t8.8

CHAIN C02DRAKJ t8.6
~Thank you, <CHARNAME>. I'm touched. Genuinely so.~
EXTERN C02DRAKJ t8.8

CHAIN C02DRAKJ t8.7
~In a much less respectable way, I'm sure. That is what you were thinking, isn't it?~
END
++ ~You got that right.~ + t8.7a
++ ~Not at all. I respect you, Drake.~ + t8.7b

CHAIN C02DRAKJ t8.7a
~That hurts, <CHARNAME>, more so because you're probably right... heh.~
EXTERN C02DRAKJ t8.8

CHAIN C02DRAKJ t8.7b
~Those aren't words to be used lightly, my friend. But if you mean them, then... well, thank you, that's all I can say.~
EXTERN C02DRAKJ t8.8

CHAIN C02DRAKJ t8.8
~I've never thought of myself as a particularly respectable or heroic man. Those were always the words I'd rather use to describe my brother. I didn't think I'd use them for anyone else, but now... I'd use them for you. When I see how far you've brought yourself, and everyone who's followed you, including myself... it does make me think of him.~
= ~Assuming we both survive this hell, I'll be going home. It might be the case that we never see each other again, and if so... I think I'll remember you. And think of you sometimes.~
END
++ ~That's very touching. Unnaturally so, coming from you.~ + t8.9
++ ~I'm sure we'll meet again someday. Until then, we've still got this moment together, and the next few as well.~ + t8.10
++ ~You're being overly sentimental. You've been a loyal ally, but I don't see you as more than that.~ + t8.11
++ ~We can talk after we've found and dealt with Caelar. Let's go.~ + t8.0

CHAIN C02DRAKJ t8.9
~It is, isn't it? I'm not sure what's come over me.~
EXTERN C02DRAKJ t8.12

CHAIN C02DRAKJ t8.10
~You're right. But just in case I fall over and die for good... I'd rather say these words while you can still hear me.~
EXTERN C02DRAKJ t8.12

CHAIN C02DRAKJ t8.11
~If that's so, I won't bother you for much longer, but I still stand by my words. We don't have to be friends for me to feel respect for you.~
EXTERN C02DRAKJ t8.12

CHAIN C02DRAKJ t8.12
~Now that we've got the sentimental nonsense out of the way, what say you to putting an end to this once and for all? Let's hunt down whatever enemies remain ahead of us togther. How's that sound to you?~
END
++ ~Sounds good. Let's get to it.~ + t8.13

CHAIN C02DRAKJ t8.13
~Let's indeed. If I have one breath remaining in me I'll spend it fighting at your sake here. I swear it.~
EXIT

CHAIN IF ~Global("C02DrakeLastTalk","GLOBAL",2)~ THEN C02DRAKJ t9
~We're alive. How about that. You've done a fine job here, <CHARNAME>.~
DO ~IncrementGlobal("C02DrakeLastTalk","GLOBAL",1)~
END
++ ~We all did a fine job. Not just me.~ + t9.1
++ ~I did as I needed to.~ + t9.1
++ ~You're right. I hope I'll finally get some peace now.~ + t9.1

CHAIN C02DRAKJ t9.0
~Is that really what you'd prefer? Very well, then.~
EXIT

CHAIN C02DRAKJ t9.1
~Yes, you're right.~
= ~Let me salute you, <CHARNAME>. When they all began cheering for you, I... heh, I almost thought I was looking at Gabriel again. I never thought I'd see anything like that again.~
= ~I would shake hands with you now, <CHARNAME>, as once the celebrations are over, I'll be travelling back to Amn. It may be a long time before we meet again.~
END
++ ~I'll miss you, my friend.~ + t9.2
++ ~Of course.~ + t9.3
++ ~You've been a good friend, Drake.~ + t9.4
++ ~We can talk at length later. Right now, I'm not in the mood.~ + t9.0

CHAIN C02DRAKJ t9.2
~Yes, yes, I'll miss you too. You've been a good friend, and a damn fine leader. I'll be sorry to leave.~
EXTERN C02DRAKJ t9.3

CHAIN C02DRAKJ t9.3
~I'm sure our paths will cross again, though. And hopefully, by that time, I'll be able to raise my shield for you once again. Until then...~
= ~What say you to breaking open a few kegs together and drowning ourselves in golden showers of ale? I think we deserve that much for our deeds.~
END
+ ~Global("C02DrakeRomanceActive","GLOBAL",2)~ + ~What about the night? Do you have any plans for then?~ + t9.rom
++ ~Sounds good to me.~ + t9.5
++ ~You go ahead. I'd rather have some peace and quiet for now.~ + t9.6
++ ~How about a nice, organized dinner instead?~ + t9.7
++ ~I don't think so.~ + t9.0

CHAIN C02DRAKJ t9.rom
~Heh. That's a bit much for right now, I'm afraid. Not to mention you won't like me in your bedchamber when I'm drunk off my arse. But I am tempted... (laugh)~
EXIT

CHAIN C02DRAKJ t9.4
~As have you... my leader and my friend.~
EXTERN C02DRAKJ t9.3

CHAIN C02DRAKJ t9.5
~That's what I like to hear.~
EXIT

CHAIN C02DRAKJ t9.6
~Suit yourself. If you change your mind, though, I'll save a barrel for you. You're welcome to join in any time.~
EXIT

CHAIN C02DRAKJ t9.7
~Ha! You still don't know me well enough, then. But if that's what you'd prefer, then I'll oblige this time.~
EXIT

// Romantic dialogue

CHAIN IF ~Global("C02DrakeRomanticTalk","GLOBAL",1)~ THEN C02DRAKJ r1
~Look, <CHARNAME>, I think we should have a little talk. About the way we've been behaving to each other.~ [C0BLANK]
DO ~IncrementGlobal("C02DrakeRomanticTalk","GLOBAL",1)~
END
++ ~I think that's probably a good idea.~ + r1.1
++ ~Why, aren't you appreciating my attention?~ + r1.2
++ ~Not right now, Drake.~ + r1.0

CHAIN C02DRAKJ r1.0
~It's now or never, <CHARNAME>. Are you sure you don't feel like listening?~
END
++ ~Fair enough. I'm listening.~ + r1.1
++ ~I'm not interested.~ + r1.6

CHAIN C02DRAKJ r1.1
~We've talked a lot throughout this journey, and I'll admit I've said things to you that I'd never say to anyone else, and you have done the same. I haven't said anything about it up to now, but I'm afraid I have to make some things clear.~
= ~I don't mind that you're showing some interest in me, in fact, I find it flattering. I admire you, in more ways than one. But whether it be as friends, confidants, sworn brothers or even lovers... I would prefer to understand where we stand in regards to each other. And I want you to understand the same thing.~
= ~To be honest, were I even a few years younger I probably wouldn't care. But I've been along this path more than once. It'd spare us a lot of pain and misunderstanding if we're honest with each other.~
END
++ ~If that's the case, then I'll tell the truth. You've become more than a friend, and I want us to become closer.~ + r1.3
++ ~To be honest, I didn't think that far ahead. Everything that I said was all in good fun.~ + r1.4
++ ~Perhaps in another time, our relationship could've been more... but in truth, I'm in love with someone else.~ + r1.5
++ ~You've made a good point. I don't feel comfortable continuing this knowing your thoughts.~ + r1.6

CHAIN C02DRAKJ r1.2
~No, if it's about what I feel, then it's quite the opposite. I just think that some things need to be said.~
EXTERN C02DRAKJ r1.1

CHAIN C02DRAKJ r1.3
~A part of me... more than I expected, actually... hoped you might say that...~
END
IF ~Gender(Player1,MALE)~ + r1.7
IF ~!Gender(Player1,MALE)~ + r1.8
IF ~OR(10)
	Global("bd_neera_romanceactive","global",2)
	Global("bd_rasaad_romanceactive","global",2)
	Global("bd_dorn_romanceactive","global",2)
	Global("bd_corwin_romanceactive","global",2)
	Global("bd_glint_romanceactive","global",2)
	Global("bd_voghiln_romanceactive","global",2)
	Global("bd_viconia_romanceactive","global",2)
	Global("bd_safana_romanceactive","global",2)
	Global("C02SireneRomanceActive","global",2)
	Global("C02AuraRomanceActive","global",2)~ + r1.x

CHAIN C02DRAKJ r1.4
~Yes, I know. Still, if you felt anything for me, then...~
END
IF ~Gender(Player1,MALE)~ + r1.7
IF ~!Gender(Player1,MALE)~ + r1.8
IF ~OR(10)
	Global("bd_neera_romanceactive","global",2)
	Global("bd_rasaad_romanceactive","global",2)
	Global("bd_dorn_romanceactive","global",2)
	Global("bd_corwin_romanceactive","global",2)
	Global("bd_glint_romanceactive","global",2)
	Global("bd_voghiln_romanceactive","global",2)
	Global("bd_viconia_romanceactive","global",2)
	Global("bd_safana_romanceactive","global",2)
	Global("C02SireneRomanceActive","global",2)
	Global("C02AuraRomanceActive","global",2)~ + r1.x

CHAIN C02DRAKJ r1.5
~I suspected. Let's just forget I said anything.~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ EXIT

CHAIN C02DRAKJ r1.6
~I understand. I won't hold it against you.~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ EXIT

CHAIN C02DRAKJ r1.7
~Damn it all. I wish that one day, I could take you home with me, but given the nature of our relationship, with my status, and what is demanded of me, I know it's probably impossible.~
= ~As much as I wish it were otherwise, I know anything between us will likely not last. Is this what you really want, <CHARNAME>?~
END
++ ~I don't care. I want to be with you.~ + r1.9
++ ~Who can say what'll happen in the future? We can just enjoy the moment, and we should.~ + r1.9
++ ~Maybe you're right. Maybe this isn't what I want after all.~ + r1.6

CHAIN C02DRAKJ r1.8
~You're a proper lady, <CHARNAME>, and I can hardly compare, but if this is what you really want, then I'll act the best that I can for you.~
EXTERN C02DRAKJ r1.10

CHAIN C02DRAKJ r1.9
~(grin) You're a stubborn fool when it comes to what you want. That's the sort of man I like.~
EXTERN C02DRAKJ r1.10

CHAIN C02DRAKJ r1.10
~I'll say no more, then. Let's just continue on as we were, and whatever may come of us, we'll face it regardless.~
EXIT

CHAIN C02DRAKJ r1.x
~No, forget it. I know you're already committed to another. I should've never brought this up.~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ EXIT

CHAIN IF ~Global("C02DrakeRomanticTalk","GLOBAL",3)~ THEN C02DRAKJ r2
~It's getting close to the end. You do know that, right?~ [C0BLANK]
DO ~IncrementGlobal("C02DrakeRomanticTalk","GLOBAL",1)~
END
++ ~I know.~ + r2.1
++ ~Feeling nervous?~ + r2.2
++ ~Then let's get to it.~ + r2.1

CHAIN C02DRAKJ r2.1
~It might be a bit too early to say this, but... it's been fun. Especially with you around. I know it probably won't last forever, with my duties as a knight-to-be and all, but...~
= ~I wondered if you were serious. About me, I mean. It felt like fun and games at first, and you'd get bored of it once you found someone else, but... you really did mean all that you said, didn't you?~
= ~I may as well say the truth, <CHARNAME>. I've come to see you as a friend, as a <PRO_BROTHERSISTER>, perhaps even closer than that, but it's not my place to decide if we go any further. That's up to you.~
= ~Assuming, of course, that really is what you want. Is it?~
END
++ ~It is. I really do care about you, Drake.~ + r2.3
++ ~I'm not sure anymore. Regardless, I've had fun as well.~ + r2.3
++ ~No. I don't want it anymore. I'm not sure I ever did.~ + r2.4

CHAIN C02DRAKJ r2.2
~No. Well, yes... perhaps a little. Something doesn't feel right about this, but... it could be nothing.~
EXTERN C02DRAKJ r2.1

CHAIN C02DRAKJ r2.3
~That's good enough for me. It... makes me happy, for a change. Knowing I'm not alone out here.~
= ~Thank you, <CHARNAME>.~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",2)~ EXIT

CHAIN C02DRAKJ r2.4
~I suppose you know best. I thought perhaps you were after more... but it looks like I was wrong.~
DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ EXIT

CHAIN IF ~Global("C02DrakeLastRomanticTalk","GLOBAL",1)~ THEN C02DRAKJ r3
~I want you to have this, <CHARNAME>.~ [C0BLANK]
DO ~GiveItem("c0dlock",Player1) IncrementGlobal("C02DrakeLastRomanticTalk","GLOBAL",1)~
END
+ ~Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~This locket... isn't it your family heirloom? I can't take this!~ + r3.1
+ ~!Global("C02DrakeKnowsBG1","GLOBAL",1)~ + ~This is a locket, isn't it? Why are you giving this to me?~ + r3.2
++ ~Is this a parting gift?~ + r3.3
++ ~I don't want it.~ + r3.1

CHAIN C02DRAKJ r3.1
~Take it. I want you to. We'll be parting ways soon.. hopefully it'll make sure you won't miss my face. Or forget it.~
EXTERN C02DRAKJ r3.4

CHAIN C02DRAKJ r3.2
~It's an old family heirloom. But I'm not that attached to it. Actually, the reason I'm giving it to you is...~
EXTERN C02DRAKJ r3.4

CHAIN C02DRAKJ r3.3
~Only for now. I'm sure we'll meet again one day. Amn isn't too far from the Sword Coast, after all.~
EXTERN C02DRAKJ r3.4

CHAIN C02DRAKJ r3.4
~(Drake snaps open the locket, revealing a hand-drawn portrait of him, protected from behind glass. Drake scratches his head awkwardly.)~
= ~Eh... I was younger then. Stubble wasn't as dark, hair was a bit shorter, nose hadn't been broken several times yet. But I'm still recognizable at least.~
END
++ ~Why are you giving this to me?~ + r3.5
++ ~You still looked as smug then as you do now.~ + r3.6
++ ~It's a good gift. Thank you, Drake.~ + r3.7
++ ~I said I don't want it.~ + r3.8

CHAIN C02DRAKJ r3.5
~I don't know. I suppose I want you to have something to remember me by.~
EXTERN C02DRAKJ r3.7

CHAIN C02DRAKJ r3.6
~Heh. I suppose some thing will never change. Though I doubt I'd be smiling so broadly if I everything then that I do now.~
EXTERN C02DRAKJ r3.7

CHAIN C02DRAKJ r3.7
~The last person I gave it to didn't exactly part with me on good terms. I'd never admit it to his face, but I regret that. I didn't want it to be the same this time.~
= ~Keep it safe. I hope you'll look at it some time and remember all the good times we've had so far. I'll sleep better for it.~
EXIT

CHAIN C02DRAKJ r3.8
~Well, I certainly don't want it either. Just looking at what I used to look like makes me cringe. Do me a favor and take it off of my hands.~
EXTERN C02DRAKJ r3.7

// interjections

// Al-Alai

I_C_T BDALALAI 0 C0DrakeBDALALAI0
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Bringing a flame elemental to a tavern. Built from wood. This can't possibly go wrong in any way.~
END

// Alyth

INTERJECT BDALYTH 32 C0DrakeBDALYTH32
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Ha! Is that the sort of reputation the Elfsong's willing to bear, my lady? Putting their own profit above all else, even the requirements of the needy? I can already see where your business will lead to such a thing became known to the common folk, can't you?~
EXTERN BDALYTH 33

// Barrel

I_C_T2 BDBARREL 0 C0DrakeBDBARREL0
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~*sniff* Smells about right. Anyone got a clean ladle on hand? It's never a good idea to taint good wine with one's touch.~
END

// Bence

I_C_T BDBENCE 41 C0DrakeBDBENCE41
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~*sigh*~
END

// Bridgefort

I_C_T BDBF1 1 C0DrakeBDBF11
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Agh... any priest worth their salt recognizes an assault of negative energy when they feel it. But from where, I wonder?~
END

// Corwin

I_C_T BDSCHAEL 39 C0DrakeBDSCHAEL39
== BDSCHAEL ~There's also an Amnian priest of Tyr from Amn called Drake Caulfield that's staying at the Three Old Kegs. Strangely, actually volunteered to help the Flaming Fist in the expedition against the crusade, despite the... less than amiable relations between Amn and Baldur's Gate.~
== BDSCHAEL ~From what I've heard, he's supposedly a member of the Order of the Radiant Heart, but after my first impression of him, I find that claim a little suspect. Still, if you know of him then he might trust you.~
DO ~SetGlobal("C0DrakeBDSCHAEL39","GLOBAL",0)~
END

I_C_T BDSCHAEL 154 C0DrakeBDSCHAEL154
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~What's this indeed? Is this not the fair captain of the Flaming Fist I see following your lead, <CHARNAME>?~
== BDSCHAEL ~That's right. Schael Corwin. I believe we met briefly.~
== C02DRAKJ ~That we have, captain. I wonder if your reception will be half as warm as that which I've gotten from your colleagues.~
== BDSCHAEL ~I think you'll find that not all of us hold quite as much prejudice against Amnians as you might think, sir. And I'd thank you not to assume otherwise.~
== C02DRAKJ ~Duly noted. We are to work together soon enough, after all. Care to share a friendly drink, captain?~
== BDSCHAEL ~As you can see, I'm rather busy right now. Are you ready to leave, <CHARNAME>?~
END

I_C_T BDSCHAEL 251 C0DrakeBDSCHAEL324
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Worded most tactfully, captain.~
END

I_C_T BDCORWIJ 324 C0DrakeBDCORWIJ324
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Ha! Only with you, <CHARNAME>, only with you would such miracles happen... well, I say why not? It might offer an interesting perspective.~
END

I_C_T BDCORWIJ 106 C0DrakeBDCORWIJ106
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~He's a selfish, cowardly sleaze. Don't be sorry he's gone. It's probably the best thing he's done for your kid.~
== BDCORWIJ ~Easy for you to say, Drake. I don't suppose you've had the experience of raising a child alone.~
END

I_C_T2 BDCORWIJ 123 C0DrakeBDCORWIJ123
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~It would set a bad example of the crusade's supposed righteousness were they to stab us in the back while we were vulnerable, wouldn't you think, captain? Come, we should not waste this opportunity.~
END

// Dauston

I_C_T BDDAUSTO 2 C0DrakeBDDAUSTO2
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~*snort* Yet for some of us, it is clearly far too late.~
END

// de Lancie

I_C_T2 BDDELANC 16 C0DrakeBDDELANC16
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~You know, I never thought I'd miss the feeling of being ordered around again like some common soldier.~
END

I_C_T BDDELANC 23 C0DrakeBDDELANC23
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Not to imply that I'm advocating for anything, but weakening the enemy would also make them easier to spare... though I can't promise the soldiers will see it that way.~
END

I_C_T2 BDDELANC 26 C0DrakeBDDELANC26
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~It's probably for the best in any case, <CHARNAME>. If word gets out that we're resorting to poisoning our enemies, I can't imagine the men will fight with full confidence. Let's forget this was ever suggested to us.~
END

// Earth Elemental

I_C_T2 BDEARTHE 1 C0DrakeBDEARTHE1
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~You just had to pick the big one, didn't you?~
== BDEARTHE ~RRRUMMMMBLE!~
END

// Endless

INTERJECT BDENDLES 2 C0DrakeBDENDLES2
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake") Dead("BDZHADRO")~ THEN ~Hold, spirit! I speak as a priest and follower of Tyr the Even-Handed, and by my word, I tell you that the lich is no more. Your vigil is done.~
EXTERN BDENDLES 4

// Flaming Fist

I_C_T2 BDFFXXII 5 C0DrakeBDFFXXII5
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Well, that was... something. I do believe I have been outdone, <CHARNAME>.~
END

// Halatathlaer

I_C_T BDHALATA 4 C0DrakeBDHALATA4
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Hmm... curious. My training has given me some insight into spirits, but this one... well, let's just say I've never met one that sounds so... regretful.~
END

// Hephernaan

I_C_T BDHEPHER 10 C0DrakeBDHEPHER10
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Come for it yourself if you dare, you cowardly wretch!~
END

// Hester

EXTEND_TOP BDHESTER 6 #3
+ ~IsValidForPartyDialogue("C0Drake")~ + ~Drake, you look as though you were about to say something.~ EXTERN C02DRAKJ bdhester
END

EXTEND_TOP BDHESTER 7 #3
+ ~IsValidForPartyDialogue("C0Drake")~ + ~Drake, you look as though you were about to say something.~ EXTERN C02DRAKJ bdhester
END

CHAIN C02DRAKJ bdhester
~You remind me of myself during my first campaign with the Amnian army. I know, I know... it's always frightening to face pain or potential death for the first time, aye, but without working past that, that'll never change. No one grows by always taking the easy path.~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)~
== BDHESTER ~So by trying to avoid battle and all that comes with it, I'm missing out on my life now...?~
== C02DRAKJ ~See? You get it now. Sure, it'll be terrifying on the spot, but I guarantee you in a month from now you'll be laughing with your fellow soldiers over a mug of ale and a hot roast. Assuming you've the guts to make it through, of course.~
EXTERN BDHESTER 10

// Hyreth

INTERJECT BDHYRETH 2 C02DrakeHYRETH2
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Ahh... so this one follows the teachings of Ilmater, the god of martyrdom. Suddenly his stubbornness all makes sense.~
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake") IsValidForPartyDialogue("C0Sirene")~ THEN ~If that is the case, perhaps our lady Mercy should speak with him instead? No doubt her position as the Crying God's champion will give her voice more authority than either of ours.~
DO ~SetGlobal("BD_WOUNDED_ZEALOT_DOSIA","BD3000",1)~ EXTERN BDHYRETH 3

EXTEND_TOP BDHYRETH 4 #3
+ ~IsValidForPartyDialogue("C0Drake")~ + ~Drake? Do you have any ideas?~ EXTERN C02DRAKJ bdhyreth4
END

CHAIN C02DRAKJ bdhyreth4
~Mmm... I can't say I'm all too familiar with the Ilmatari dogma, but I've spoken with priests of the Crying God in the local Athkatlan chapels in the past, so I've learned a thing or two about the way they work. As I recall, the faithful are allowed to relieve their own pain... so long as another is willing to take it in their place.~
== C02DRAKJ ~In other words, <CHARNAME>... you want him to let go of his pain, you'll have to bleed a little in his place. Sure you're still interested?~
EXTERN BDHYRETH 8

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("bd_player_exiled","global",1)
Global("C0Drake_party_epilogue","global",1)~ + ~Where's Drake? Surely he'd have wanted to help me.~ EXTERN BDIMOEN bdimoen1
+ ~Global("bd_player_exiled","global",0)
Global("C0Drake_party_epilogue","global",1)~ + ~Where's Drake? Surely he'd have wanted to help me.~ EXTERN BDIMOEN bdimoen2
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("bd_player_exiled","global",1)
Global("C0Drake_party_epilogue","global",1)~ + ~Where's Drake? Surely he'd have wanted to help me.~ EXTERN BDIMOEN bdimoen1
+ ~Global("bd_player_exiled","global",0)
Global("C0Drake_party_epilogue","global",1)~ + ~Where's Drake? Surely he'd have wanted to help me.~ EXTERN BDIMOEN bdimoen2
END

CHAIN BDIMOEN bdimoen1
~I tried finding him, but he left the city. From what I heard, he was outraged at hearing about your trial, and said he'd bring the entire Order from Amn to here if he has to. I suppose he didn't expect me to save you first.~
EXTERN BDIMOEN 119

CHAIN BDIMOEN bdimoen2
~I dunno. I never found him. My guess is that he's gone back to Amn. Looks like he didn't trust you in the end after all.~
EXTERN BDIMOEN 119

// Litila

EXTEND_BOTTOM BDLITILA 0
+ ~IsValidForPartyDialogue("C0Drake")~ + ~Drake, can your priestly skills come into use here?~ EXTERN C02DRAKJ bdlitila
END

CHAIN C02DRAKJ bdlitila
~That they might. Hear me, spirits! We mean you no harm. Hear the truth of my words, as I speak for Tyr, the Maimed God.~
== BDSOTUK ~I hear your voice... you come into view.~
END
++ ~Thank you, Drake. Spirit, can you understand me now? Tell me who you were in life.~ DO ~AddXPObject("C0Drake",500)~ EXTERN BDLITILA 1
++ ~Finally, you speak sense. More or less. Who were you?~ EXTERN BDLITILA 1
++ ~What do you want from us, spirits?~ EXTERN BDLITILA 1

// Lluis

I_C_T BDLLUIS 5 C0DrakeBDLLUIS5
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~How about you tie yourselves up and we can leave your heads intact?~
END

// Mizhena

I_C_T BDMIZHEN 22 C0DrakeBDMIZHEN22
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Hnh. You know, my father and I used to play games of strategy all the time. It could be interesting to challenge a follower of the Lady of Strategy.~
END

// Nantrin

I_C_T BDNANTRI 7 C0DrakeBDNANTRI7
== BDNANTRI IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Looks like you've got Drake with you now. Well, that's good. He's a decent sort, even if he likes to mouth off whenever he sees a chance. I've no doubt he'll be a worthwhile companion for you.~
== BDNANTRI ~What can I do for you?~
END

// Ophyllis

I_C_T2 BDOPHYLL 40 C0DrakeBDOPHYLL40
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Well, that's some dedication for sure. I'm not sure whether to admire or pity him.~
END

// Pedro

I_C_T BDPEDRO 0 C0DrakeBDPEDRO0
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Save your effort soldier. There's no waking a man who's clearly been drowned in his drink.~
END

// Rhayla

I_C_T BDRHAYLA 0 C0DrakeBDRHAYLA0
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~It's a new experience for me to be branded a villain by anyone not trying to be ironic.~
END

// Rayphus

I_C_T BDRAYPHU 23 C0DrakeBDRAYPHU23
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~An uncommon stance for a paladin - particularly one who follows Tyr. Not that I disagree, of course. Else, I wouldn't be here myself.~
END

// Tristian

EXTEND_BOTTOM BDTRISTI 14
+ ~IsValidForPartyDialogue("C0Drake")~ + ~Drake.~ DO ~SetGlobal("C02DrakePlaysCoroniir","GLOBAL",1)~ EXTERN C02DRAKJ bdtristi
END

CHAIN C02DRAKJ bdtristi
~Been a while since I've sat down for a game of strategy. I'm sure I'll learn the rules quickly enough.~
EXTERN BDTRISTI 15

INTERJECT BDTRISTI 1 C02DrakeBDTRISTI1
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake") Global("C02DrakePlaysCoroniir","GLOBAL",1)~ THEN ~Well, that was... enlightening. The followers of the Red Knight are something else entirely, both on the board and in the real battlefield.~
END
++ ~And you won regardless. I'm impressed.~ EXTERN C02DRAKJ tristian1
++ ~You mentioned learning with your father. Which one of you was the better player?~ EXTERN C02DRAKJ tristian2
++ ~Well done. Let's go.~ EXIT

CHAIN C02DRAKJ tristian1
~Well, I had good tutors. This isn't the first time I've had to match wits with a follower of the Red Knight. Never expected those lessons to pay off this way, of course.~
EXIT

CHAIN C02DRAKJ tristian2
~Him, of course. By a mile, as well. I could even beat Gabriel when I put my mind to it. My father, though? Not even once.~
EXIT

// Uncommon Cold

EXTEND_BOTTOM BDXERRA 1
+ ~IsValidForPartyDialogue("C0Drake")~ + ~Remain calm, soldier. Drake will have a look at you.~ EXTERN C02DRAKJ bdxerra1
END

CHAIN C02DRAKJ bdxerra1
~*snort* Hardly need me to tell you that he's burning up. We'll need a way to deal with that fever, and quickly. I'm no herbalist, but I'm familiar enough with field medicine to save a life or two. Leave it to me.~ DO ~SetGlobal("bd_patient_xerra","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ 
EXTERN BDXERRA 2

EXTEND_BOTTOM BDZIDRAN 1
+ ~IsValidForPartyDialogue("C0Drake")~ + ~Would you mind giving your input, Drake?~ DO ~SetGlobal("bd_patient_zidrand","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN C02DRAKJ bdzidran1
END

CHAIN C02DRAKJ bdzidran1
~She looks worse off than the rest, and no surprise. It's never a good idea to put the sick in the middle of a dogpile with the other sick. Best move her somewhere private. Preferably somewhere with clean air.~
EXTERN BDZIDRAN 2

EXTEND_BOTTOM BDYESTIM 1
+ ~IsValidForPartyDialogue("C0Drake")~ + ~Uh, Drake? Got any advice?~ DO ~SetGlobal("bd_patient_yestimell","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN C02DRAKJ bdyestim1
END

CHAIN C02DRAKJ bdyestim1
~...~
= ~My advice? Draw your weapon. And prepare a shovel while you're at it.~
EXTERN BDYESTIM 5

EXTEND_TOP BDDOSIA 11 #3
+ ~IsValidForPartyDialogue("C0Drake")~ + ~I don't suppose you have any ideas, Drake?~ EXTERN C02DRAKJ bddosia11
END

CHAIN C02DRAKJ bddosia11
~*shrug* Medicine's not really my strong suit. Most curatives for sicknesses this extreme are costly and would need the skills of a city-trained healer. Out here, I'd say our best alternative is blackthorn bark. It's as good of a remedy as any.~
DO ~SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)
AddJournalEntry(61438,QUEST)~ EXTERN BDDOSIA 14

// Zelma

I_C_T2 BDZELMA 7 C0DrakeBDZELMA7
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~Sharp only gets you so far, pickpocket. Time to educate you in the ways of blunt, hard justice!~
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("C02_Saved_Drake","bd4500",0)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~The Tyrran priest, yes... the stench of good and holiness is apparent beneath his earthly demeanor. No doubt his soul would make a fine prize indeed.~
END
++ ~Perhaps. I'll wager Drake's soul, though I wonder if Tyr would be willing to relinquish it.~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
++ ~Drake deserves better than to become a piece in your games, fiend. I think not.~ DO ~SetGlobal("C02_Saved_Drake","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02DRAKJ ThrixWager2
++ ~I don't think so. Leave my allies out of this, and we'll wager my soul, and mine alone, understand?~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN C02DRAKJ ThrixWager2
~Why, thank you, <CHARNAME>. I can't readily admit I've had enough with my mortal coils just yet.~
EXTERN BDTHRIX ThrixWager3

CHAIN BDTHRIX ThrixWager3
~Hmph, Thrix had expected as much. Very well then.~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("C02DrakeSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Drake")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~Good... this one with ties to the gods shall give Thrix influence over them, no doubt. If you would hand him over, as we agreed, Bhaalspawn?~
END
++ ~A deal is a deal, I suppose.~ DO ~SetGlobal("C02_thrix_mark_Sirene","global",1)~ EXTERN C02DRAKJ ThrixWager5
++ ~The hells I will. A dead devil takes no souls.~ EXTERN BDTHRIX 10

CHAIN C02DRAKJ ThrixWager5
~Oh, I wouldn't be so sure about that. If you want my soul, fine... just don't expect me to make it easy for you.~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Burnt Inn

CHAIN IF ~Global("C02DrakeInnTalk","GLOBAL",1)~ THEN C02DRAKJ inntalk
~Well, this looks pleasant. The crusade's handiwork, no doubt.~
DO ~SetGlobal("C02DrakeInnTalk","GLOBAL",2)~
= ~You know, I passed by one of the villages the crusade which had the... questionable honor of providing hospitality to the crusade. They ended up giving a lot more than they ever intended.~
END
++ ~What was the name of the village?~ + inntalk.1
++ ~I'm not sure what exactly you mean.~ + inntalk.2
++ ~Now's not the time for small talk, Drake.~ + inntalk.0

CHAIN C02DRAKJ inntalk.0
~Have it your way.~
EXIT

CHAIN C02DRAKJ inntalk.1
~I don't know. The writing on the gate was completely illegible after what the crusaders... or rather, the bastards did to the place.~
EXTERN C02DRAKJ inntalk.2

CHAIN C02DRAKJ inntalk.2
~From what I heard from the poor survivors who weren't conscripted or sent packing, they offered bread and shelter... and the crusade took everything. Then they torched the village for good measure so that nothing would be left behind for their enemies.~
= ~It's commonly called the 'scorched earth' strategy among military folk. Not unheard of during wartimes, but this wasn't a wealthy, productive land we're talking about here. It was just a tiny village whose people showed too much kindness to people they had no quarrel with.~
= ~I'm not sure why they thought it was necessary. It looked just like the many raids led by bandit groups and mercenaries I had seen in the past. Pointless brutality, that's all that I saw when I looked at the blackened remains of houses and crop fields.~
END
++ ~You've seen such things many times before?~ + inntalk.3
++ ~I feel a story coming up. Are you about to tell me one?~ + inntalk.4
++ ~I'd rather not listen to this.~ + inntalk.0

CHAIN C02DRAKJ inntalk.4
~I am, yes. Are you willing to listen?~
END
++ ~I suppose. Have you seen many destroyed homes like this one?~ + inntalk.3
++ ~No, not really.~ + inntalk.0

CHAIN C02DRAKJ inntalk.3
~I wouldn't go as far as to say many. Not to the extent of what I'm describing to you right now. But that village, or what's left of it, reminded me of a similar incident years ago, in a village not so different on the borders of Amn by the name of Oakshire.~
= ~It was simple farming village built in the middle of a valley. I lived there with my uncle Derek when I was still only fourteen years of age. Why I was there... well, that doesn't concern you, let's just say that my parents weren't able to take care of me at that time. It's about as close to a peaceful life as I ever had. Until the incident, that is.~
= ~During that day, men in purple - I still don't know who they were - invaded the village, slaughtering anyone who was too slow to hide or get out of their way, burning everything to the ground... we didn't have any trained warriors save for my uncle, who hadn't lifted his sword in years. We didn't stand a chance, so the most any of us could do was stay low until it was all over. And even that wasn't enough to save everyone.~
= ~Me, I was lucky to come out of it without any lasting harm. Not so much for my uncle, who was crippled. He lost an eye and his sword hand while fighting, and hasn't been able to swing a weapon since then. And I'd say he got lucky, considering the state of some of the other men... or bodies of men... that I saw afterwards.~
END
++ ~That's horrible!~ + inntalk.5
++ ~What about you? Didn't you fight that day?~ + inntalk.6
++ ~I think I've listened to this horrid story long enough, Drake. Let's move on.~ + inntalk.0

CHAIN C02DRAKJ inntalk.6
~Me? Ha! You bet yourself that I wanted to. But my good uncle's stubbornness puts me and my father to shame. Like a mule, he is. He wouldn't have any of it, considering I was his ward.~
EXTERN C02DRAKJ inntalk.5

CHAIN C02DRAKJ inntalk.5
~Even after all the battles I've been through since, and the awful things I've seen... the massascre at Oakshire is still a clear memory in my mind.~
= ~The Order was forced to take action, and I hear the village has been rebuilt, its survivors recovered, but... I've never been back.~
= ~But I hope you can understand why I staunchly oppose the crusade and everything it is doing. The things I saw then, compared to what I'm seeing now... they're too similar. Painfully so.~
= ~If I want to prevent more tragedies like what happened years ago, where I was powerless... then I'll add my strength to yours. Things like this can't be allowed to continue.~
EXIT

// Thrix reaction - non-romanced

APPEND C02DRAKJ

IF ~Global("C02DrakeSacrifice","bd4500",1)~ ThrixTalk0
SAY ~...~
= ~Well, that was... something. Let's move on.~
+ ~Global("C02_thrix_mark_Drake","global",1)~ + ~You don't have anything to say?~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Drake","global",1)~ + ~You don't have anything to say?~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("C02_thrix_mark_Drake","global",1)~ + ~I'm sorry.~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk3
+ ~!Global("C02_thrix_mark_Drake","global",1)~ + ~I'm sorry.~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("C02_thrix_mark_Drake","global",1)~ + ~Yes. Let's.~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk5
+ ~!Global("C02_thrix_mark_Drake","global",1)~ + ~Yes. Let's.~ DO ~SetGlobal("C02DrakeSacrifice","bd4500",2)~ + ThrixTalk6
END

IF ~~ ThrixTalk1
SAY ~Why bother? I think the situation is clear enough to the both of us.~
= ~I'm not afraid for myself. Truth be told, I fear more for anyone else who gets caught in your games. Let that thought flow through your wicked mind a while.~
IF ~Global("C02DrakeRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ + ThrixTalk6
IF ~!Global("C02DrakeRomanceActive","GLOBAL",2)~ + ThrixTalk6
END

IF ~~ ThrixTalk2
SAY ~What is there to say, <CHARNAME>? Either you had full faith in your wits, or you cared little enough for what your gamble would cost you. Which would you rather I believe?~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
SAY ~No, you're not. Let's not bother with the white lies, shall we?~
IF ~Global("C02DrakeRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ + ThrixTalk6
IF ~!Global("C02DrakeRomanceActive","GLOBAL",2)~ + ThrixTalk6
END

IF ~~ ThrixTalk4
SAY ~What for? Better that we both believe you had full confidence in your own mind all along. And, well... ultimately, no harm done, I suppose.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk5
SAY ~Perhaps you expected me to be heartbroken over what just happened? Get used to disappointment.~
IF ~Global("C02DrakeRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C02DrakeRomanceActive","GLOBAL",3)~ + ThrixTalk6
IF ~!Global("C02DrakeRomanceActive","GLOBAL",2)~ + ThrixTalk6
END

IF ~~ ThrixTalk6
SAY ~If you've kindness left in you, we'll never speak of this again.~
IF ~~ EXIT
END

// Tender of the Dead

IF ~Global("C02DrakeVelsharoon","GLOBAL",1)~ velsharoon
SAY ~Well, that was unpleasant. Though given the clues given to us beforehand, I cannot say this was entirely unexpected.~
++ ~What do you mean?~ + velsharoon1
+ ~CheckStatGT(Player1,14,INT)~ + ~The 'priestess' has some explaining to do.~ + velsharoon1
++ ~Did you know this was going to happen?~ + velsharoon1
END

IF ~~ velsharoon1
SAY ~I suspected that something was off, but, well... there was no use in saying anything before anything was proven.~
= ~This was clearly the work of a priest, <CHARNAME>. A follower of Velsharoon, if I'm not mistaken. Quite a popular deity in the distant lands of Thay, as I recall. Necromancy is the art of those faithful to him.~
= ~I suggest interrogating our 'noble' priestess of Lathander. And with weapons at hand... no doubt she has more secrets that she has kept hidden from us.~
IF ~~ DO ~SetGlobal("C02DrakeVelsharoon","GLOBAL",2) SetGlobal("KNOW_VELSHAROON","GLOBAL",1)~ EXIT
END

END

INTERJECT BDJUNIA 16 C0DrakeBDJUNIA16
== C02DRAKJ IF ~IsValidForPartyDialogue("C0Drake")~ THEN ~"Morningstar"? Ha! That's a new one. Even us followers of the Triad know Lathander as the Morninglord. Do you truly know your own faith, my lady?~
EXTERN BDJUNIA 18

// Drake-Voghiln

CHAIN IF ~Global("C02DrakeVoghilnRestTalk","GLOBAL",1)
IsValidForPartyDialogue(Myself) IsValidForPartyDialogue("Voghiln")~ THEN BDVOGHIJ voghresttalk
~Your sword-arm is strong, Drake, but Voghiln has never been one to back away from a contest of strength!~
DO ~IncrementGlobal("C02DrakeVoghilnRestTalk","GLOBAL",1)~
== C02DRAKJ ~Big talk, Luskan, but the bottle's not even half empty. I'll taste the wine of victory yet. Raise your arm, skald!~
== BDVOGHIJ ~Ho ho, now this is a language Voghiln understands! Again!~
END
++ ~What's going on here?~ EXTERN C02DRAKJ voghresttalk1

CHAIN C02DRAKJ voghresttalk1
~Just a little friendly... arm-wrestling competition... ah, and there goes my focus. You won again. Drink!~
== BDVOGHIJ ~Indeed I shall! *glug glug glug*... ah!~
== C02DRAKJ ~Indulge yourself while you can, friend, for I'm not finished yet. We'll use our left arms this time. Come on!~
== BDVOGHIJ ~As you wish!~
== C02DRAKJ ~Nnngghh...~
== BDVOGHIJ ~Haahhh...~
== C02DRAKJ ~...ha! Victory is mine!~
== BDVOGHIJ ~Ach, well played, my friend. I see mine other arm still needs practice.~
== C02DRAKJ ~Carrying a shield all day and night has its benefits.~
== BDVOGHIJ ~You speak the truth. Ah, but spare some of the wine for old Voghiln! We are playing until the night is done, yes?~
== C02DRAKJ ~Of course we are. You weren't planning on backing out, were you?~
== BDVOGHIJ ~Never!~
DO ~RestParty()~ EXIT

// Personal Quest

CHAIN IF ~Global("C02DrakeQuest","GLOBAL",2)~ THEN C02DRAKJ quest
~<CHARNAME>. A moment of your time, if you please, for there is a... personal matter that has been bothering me for a while now.~
DO ~IncrementGlobal("C02DrakeQuest","GLOBAL",1)~
END
++ ~I'm listening. What's wrong?~ + quest.1
++ ~Fine, but you'd best make it quick.~ + quest.1

CHAIN C02DRAKJ quest.1
~A while before we made passed Boareskyr Bridge, I sent a missive back to Amn containing details on our progress towards the march to Dragonspear Castle.~
= ~I requested aid from my superiors in the Order, and in response, they approved a small force to bring some useful resources for the Fist once we had set up the coaliton camp.~
END
++ ~What kind of resources are we talking about here?~ + quest.2
++ ~Get to the point.~ + quest.3

CHAIN C02DRAKJ quest.2
~My request was for 'any resource the we may find useful'. Medical supplies, food, weaponry and the like. Those may not interest you in particular, but there were a few items of power that are more to our caliber thrown in there.~
EXTERN C02DRAKJ quest.3

CHAIN C02DRAKJ quest.3
~I've been counting the days, and assuming nothing has gone wrong, those supplies should have arrived at the camp by now. But I've had no message to affirm that, and the scouts I've talked to have seen nobody meeting the description of who I've been waiting for.~
= ~Of course, sometimes people get delayed, but I can't help but have a gut feeling that something may have gone wrong. If they have run afoul of crusaders en route, then their lives will be in danger, and in the worst case scenario, those supplies will end up in the hands of the crusade.~
= ~Besides the fact that 'those supplies' include a handful of magical artifacts that the Order would not be happy to lose, I worry for what might have happened to those men. While this may not be relevant to our current objective, I would rather we look into what has happened... if it pleases you.~
END
++ ~You seem genuinely worried. Alright, we'll see if we can find them.~ + quest.4
++ ~If it really matters to you, then we'll keep an eye out. But there's no guarantee we'll find anybody.~ + quest.4
++ ~We have no time for distractions right now. Our main goal should be Dragonspear Castle.~ + quest.5

CHAIN C02DRAKJ quest.4
~Thank you, <CHARNAME>. It could be nothing... for all I know, they're simply held back by some small complications, but in case they're not... well, better to be safe than sorry.~
EXIT

CHAIN C02DRAKJ quest.5
~*sigh* Well, I'll not rest easy not knowing if anything has happened to my fellows, but I suppose we've bigger concerns on our hands. All right, I'll try and convince some of the commanders of the camp to deal with it in our stead. But I hope we might keep watch for any clues regardless... just in case.~
EXIT

// ---------------------------------------------
// Player Initiated Dialogue
// ---------------------------------------------

APPEND C02DRAKJ

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN pid
 SAY ~Need something, <CHARNAME>?~ [C0DRA023]
	+ ~HPPercentGT(Myself,74) RandomNum(4,1)~ + ~How are you?~ + a1
	+ ~HPPercentGT(Myself,74) RandomNum(4,2)~ + ~How are you?~ + a2
	+ ~HPPercentGT(Myself,74) RandomNum(4,3)~ + ~How are you?~ + a3
	+ ~HPPercentGT(Myself,74) RandomNum(4,4)~ + ~How are you?~ + a4
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,1)~ + ~How are you?~ + b1
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,2)~ + ~How are you?~ + b2
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,3)~ + ~How are you?~ + b3
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,4)~ + ~How are you?~ + b4
	+ ~HPPercentLT(Myself,50) RandomNum(2,1)~ + ~How are you?~ + c1
	+ ~HPPercentLT(Myself,50) RandomNum(2,2)~ + ~How are you?~ + c2
	+ ~RandomNum(4,1)~ + ~Fancy a drink?~ + drink1
	+ ~RandomNum(4,2)~ + ~Fancy a drink?~ + drink2
	+ ~RandomNum(4,3)~ + ~Fancy a drink?~ + drink3
	+ ~RandomNum(4,4)~ + ~Fancy a drink?~ + drink4
	+ ~Class("C0Drake",FIGHTER_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~How does it feel now that you've become a warrior?~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass
	+ ~Class("C0Drake",THIEF_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~How does it feel now that you've become a rogue?~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass2
	+ ~Class("C0Drake",RANGER_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~How does it feel now that you've become a ranger?~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass3
	+ ~Class("C0Drake",MAGE_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~How does it feel now that you've become a mage?~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass4
	+ ~!Global("C0DrakeTalkStopped","GLOBAL",1)~ + ~I'd like you to talk less while on the road.~ + pausedialog
	+ ~Global("C0DrakeTalkStopped","GLOBAL",1)~ + ~I don't mind if you want to talk to me again.~ + startdialog
	++ ~Is there a problem with your voice?~ + stringfix	
	++ ~Not at the moment.~ EXIT
END

IF ~~ a1
 SAY ~I may be a mite tipsy, but I'll manage.~
IF ~~ EXIT
END

IF ~~ a2
 SAY ~Spiffing, just spiffing. Have I given you cause to think otherwise?~
IF ~~ EXIT
END

IF ~~ a3
 SAY ~I'd be happier with a stomach full of wine, but we can't always get what we want.~
IF ~~ EXIT
END

IF ~~ a4
 SAY ~Are you trying to get me to respond in turn? I'm sorry to disappoint you.~
IF ~~ EXIT
END

IF ~~ b1
 SAY ~I've been better.~
IF ~~ EXIT
END

IF ~~ b2
 SAY ~Why... I'm flattered you care, <CHARNAME>. As it happens, perhaps you haven't noticed, but I am, in fact, wounded.~
IF ~~ EXIT
END

IF ~~ b3
 SAY ~Oh, splendid. The bloodstains definitely bring out my inner beauty.~
IF ~~ EXIT
END

IF ~~ b4
 SAY ~Have I run out of spells? Because I could swear that I am bleeding. Or piss-faced drunk. Either way, it really is a bother.~
IF ~~ EXIT
END

IF ~~ c1
 SAY ~Oh, just perfect. I am certainly not bleeding out of my guts as we speak. And I definitely do not require immediate assistance, thank you. Carry on, carry on.~
IF ~~ EXIT
END

IF ~~ c2
 SAY ~This may come as quite a shock to you, but... I'm injured. Quite badly, in fact. Don't suppose either of us could do anything about it?~
IF ~~ EXIT
END

IF ~~ drink1
 SAY ~I always do, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ drink2
 SAY ~Why stop at just one? Let's put away our worries and drink until up is down.~
IF ~~ EXIT
END

IF ~~ drink3
 SAY ~As much as I'm tempted to, my migraines from my last excursion into the pits of drunkenness haven't quite departed yet. I'll pass.~
IF ~~ EXIT
END

IF ~~ drink4
 SAY ~If you've got one. But make it a strong one, if you will.~
IF ~~ EXIT
END

IF ~~ pausedialog
 SAY ~Why, I'm hurt, <CHARNAME>. But if you say so.~
IF ~~ DO ~SetGlobal("C0DrakeTalkStopped","GLOBAL",1)~ EXIT
END

IF ~~ startdialog
 SAY ~Wised up, have you? You're lucky I'm in a generous mood.~
IF ~~ DO ~SetGlobal("C0DrakeTalkStopped","GLOBAL",0)~ EXIT
END

IF ~~ dualclass
 SAY ~Fine, very fine. Reminds me of the good old days in the army. Not that there were many good old days, mind you, no matter what the veterans might say. Lots of blood, broken skulls and even more crushed morale, though.~
 = ~Not that it feels bad to swing a hammer more effectively. I was never talented in the healing arts to begin with. This is much more appropriate for my skills.~
IF ~~ EXIT
END

IF ~~ dualclass2
 SAY ~You know, it's not a bad feeling. Knowing how rogues think and act, suddenly things make a lot more sense than they used to.~
 = ~The sods at the Order would throw a fit if they know what I've been doing, but I'm still doing my job, just more efficiently now than I used to.~
IF ~~ EXIT
END

IF ~~ dualclass3
 SAY ~If you hadn't put me through all those training manuals and drilled all of this into me, I doubt it would've happened.~
 = ~I hear a few distant relatives of the Caulfield family were rangers. My grandfather on my mother's side was once a scout in the Amnian military. I think he would've approved, if he were still alive.~
IF ~~ EXIT
END

IF ~~ dualclass4
 SAY ~Me, a mage? Me, heir to a legacy of knights, giving up the armor for a bag of tomes and scrolls like the Cowled Wizards back home. Ha! I have to admit, I was completely blindsided.~
 = ~No doubt the Order will have a few choice words in light of this unusual change. But I'm sure I'll make do somehow. In the meantime, we'll see if I don't set us all on fire before I make it home, eh?~
IF ~~ EXIT
END

IF ~~ stringfix
 SAY ~Hmm... you know, you may be right. Give me a second... *cough*~
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0DRESET")~ EXIT 
END
END