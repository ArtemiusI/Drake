BEGIN C0DSTONE

CHAIN IF WEIGHT #-1
~!See("C0Drake")
!InParty("C0Drake")
Global("C0DrakeStoneheart","GLOBAL",0)~ THEN C0DSTONE stoneheart
~I'm a busy man, friend. Get a move on, would you?~
EXIT

CHAIN IF WEIGHT #-1
~See("C0Drake")
InParty("C0Drake")
Global("C0DrakeStoneheart","GLOBAL",0)~ THEN C0DSTONE stoneheart2
~Well, well. Look who's sober enough to have finally made their way here. Long time, Caulfield.~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",1)~
== C0DRAKEJ ~Stoneheart. What an unexpected... pleasure.~ [C0DRAK19]
== C0DSTONE ~You've had me counting the days on my fingers before you finally arrived, my old friend. Slacking on the job? If I didn't know you, I'd think there was something wrong with you. As it stands, I'm amazed you're here at all.~
== C0DRAKEJ ~You have no idea what I've been through. It's been nothing but work for me.~
== C0DSTONE ~Yes, I'm sure. I'd ask you to sit down for a drink, but I'd assume you'd be out of it by the end of the day and leave me with the tab, as always.~
== C0DRAKEJ ~Cut the crap, Stoneheart. Why are you here? Did the Chief Inspector get tired of your simpering? Or did you come all the way from Athkatla just to mock me?~
== C0DSTONE ~Please. You think you're worth the effort, Caulfield? My business in the Gate has nothing to do with you.~
== C0DRAKEJ ~Well then? Actually, forget it. I don't care. Just seeing you makes me want to drink myself into a stupor and forget this talk ever happened.~
== C0DSTONE ~Now, now, Caulfield. You're embarrassing yourself in front of your friend. My apologies, my <PRO_LORDLADY> <CHARNAME>. Agent Stoneheart of Amn, at your humble service.~
END
++ ~You know who I am?~ EXTERN C0DSTONE stoneheart3
++ ~Agent?~ EXTERN C0DRAKEJ stoneheart4
++ ~I see you're a friend of Drake's. Nice to meet you.~ EXTERN C0DRAKEJ stoneheart5

CHAIN C0DSTONE stoneheart3
~Word of your deeds travel quickly, <CHARNAME>, and I have an ear closer to the ground than most, as my duties demand of me.~
== C0DRAKEJ ~So, what is this then, Stoneheart? Sizing up your prey? Do you intend to gauge how much of a risk <CHARNAME> is to the higher-ups? Because I have a thing or two to say if you're intending to-~
== C0DSTONE ~No, no, no. I have no intention of posing any sort of threat to <CHARNAME>. My business is with a darker, far more dangerous group... and I would have your assistance.~
== C0DRAKEJ ~The almighty prodigy Stoneheart requires *assistance*? Oh, this is too rich. Am I dreaming here?~
== C0DSTONE ~There are Shadow Thieves here in the Gate, Caulfield.~
== C0DRAKEJ ~...~
== C0DSTONE ~...~
== C0DRAKEJ ~You're serious.~
== C0DSTONE ~Afraid so, my friend. No one else seems to have seen the signs, but I know them all too well. They're here, unseen, no doubt underground. And they are up to something.~
== C0DRAKEJ ~What could the Shadow Thieves possibly have in plan for Baldur's Gate? In the current state of things, I hardly see what they could possibly stand to gain by...~
== C0DSTONE ~I have only speculation. They likely intend to assassinate one of the Grand Dukes... and escalate the rising tensions into full on war.~
== C0DRAKEJ ~Gah... by Tyr's buttocks, I pray you're wrong about that.~
END
++ ~What are the Shadow Thieves?~ EXTERN C0DSTONE stoneheart6
++ ~How would anyone benefit from beginning a war?~ EXTERN C0DSTONE stoneheart7
++ ~Go on. Tell me more.~ EXTERN C0DSTONE stoneheart7

CHAIN C0DRAKEJ stoneheart4
~Don't let him fool you, <CHARNAME>, his heart's as cold as his name suggests. His job's to perform the 'dirty work' that the magistrate, the Chief Inspector, and anyone else within the Amnian bureaucracy can't stain their hands with. Isn't that right, old friend?~
== C0DSTONE ~...yes, quite.~
EXTERN C0DSTONE stoneheart3

CHAIN C0DRAKEJ stoneheart5
~Friend... ha! You wouldn't know the half of it, <CHARNAME>.~
EXTERN C0DSTONE stoneheart3

CHAIN C0DSTONE stoneheart6
~The Shadow Thieves are the prominent guild of thieves within Amn, and the roots of nearly all corruption, crime and murder could be traced back to them. Even the Council of Six, the rulers of Amn, are not free of their influence.~
== C0DRAKEJ ~He's not exaggerating about that, boss. There's more too, eh, Stoneheart?~
== C0DSTONE ~*sigh* Yes... I was once among their ranks. Are you pleased I spelled it out for your leader, Caulfield?~
== C0DRAKEJ ~Just making sure you're not keeping any secrets, my friend. Past experiences have taught me a thing or two.~
EXTERN C0DSTONE stoneheart8

CHAIN C0DSTONE stoneheart7
~No doubt they plan to abuse the chaos that is sure to follow... though in what way, I cannot imagine.~
== C0DRAKEJ ~Really? I thought you, of all people, would know better than anyone else here, Stoneheart. Go on, tell <PRO_HIMHER>.~
== C0DSTONE ~*sigh* Yes... I was once among their ranks. Are you pleased I spelled it out for your leader, Caulfield?~
== C0DRAKEJ ~Just making sure you're not keeping any secrets, my friend. Past experiences have taught me a thing or two.~
EXTERN C0DSTONE stoneheart8

CHAIN C0DSTONE stoneheart8
~Whatever their plans are, I'm here to make sure they don't come to fruition, and that means rooting them out and exterminating them before they try anything. I could use your help.~
== C0DRAKEJ ~...~
== C0DSTONE ~I know we haven't had the best working relationship for some time, Caulfield, but surely on this you're willing to put the past aside for the sake of justice. I know you're at least capable of that.~
== C0DRAKEJ ~Ha! Alright, if it means I get to take the Shadow Thief scum down a peg, then I'm game. But it's ultimately up to <CHARNAME> whether we help you or not.~
END
++ ~I'm willing to help. What do you need us to do?~ EXTERN C0DSTONE stoneheart9
++ ~What's in this for us?~ EXTERN C0DSTONE stoneheart10
++ ~I don't think so. I'm not interested in crossing the most powerful criminal organization in Amn.~ EXTERN C0DSTONE stoneheart11

CHAIN C0DSTONE stoneheart9
~You have my full gratitude, <CHARNAME>. I assure you, you will be well compensated for the risks.~
== C0DRAKEJ ~Yes, yes, this is all well and good, but do you even know where these Shadow Thief agents are?~
== C0DSTONE ~Don't think so little of me, Drake. I may not know what they're up to, but I know enough to track them down.~
== C0DSTONE ~The sewage system beneath Baldur's Gate is complex and full of danger - the common person avoids delving too deeply within them, and even the Fist rarely enter. It is no doubt a safe haven for criminals capable of holding their own in a fight... a perfect place for our quarry to hide.~
== C0DRAKEJ ~So, they're hiding in the sewers. Sounds simple enough. Care to be more precise? You know which hidey-hole they're cooped up in?~
== C0DSTONE ~I do, as a matter of fact. I know exactly where they're hiding.~
== C0DSTONE ~Moving together will draw upon too much attention, however. If I lead you there, they'll catch us coming long before we make it. There is a grate in the southern district of the city that will lead you to the right tunnels. Hopefully, I'll meet you there.~
== C0DRAKEJ ~We'll be there. Won't we, <CHARNAME>?~
== C0DSTONE ~I hope so. See you around.~
END
IF ~~ DO ~AddJournalEntry(%Drake_BG1_Quest_1%,QUEST) EscapeAreaMove("%CentralSewers%",3613,2221,SE)~ EXIT

CHAIN C0DSTONE stoneheart10
~I fear I have little to offer from my own pockets. I have no personal wealth, unlike your friend Caulfield here, and acquiring a reward from my superiors will take time.~
== C0DSTONE ~However, consider this: the Shadow Thieves have no doubt sent a number of their best for whatever they have in mind here. No doubt they carry many items of value. I must claim some as evidence, of course, but anything... irrelevant is yours to take.~
END
++ ~Good enough. What do you need us to do?~ EXTERN C0DSTONE stoneheart9
++ ~I don't think so. I'm not interested in crossing the most powerful criminal organization in Amn.~ EXTERN C0DSTONE stoneheart11

CHAIN C0DSTONE stoneheart11
~I see... that is a pity, indeed. I fear I have little time left to spare, and if you will not assist me, then I must continue my mission. Alone, if I must.~
== C0DRAKEJ ~Wait, Stoneheart. At least tell us where you intend to go. Perhaps <CHARNAME> may change <PRO_HISHER> mind.~
== C0DSTONE ~True enough... I have reason to believe the Shadow Thieves have made their home in the sewers beneath Baldur's Gate. Go to the southern district and search for a grate. It will bring you to the right tunnels. Hopefully, you'll change your mind soon... and I'll still be there.~
== C0DRAKEJ ~Think on it, <CHARNAME>. The Shadow Thieves are among the worst scum in human skin to walk Amn. It's a rare chance to be able to deal a blow to them.~
== C0DSTONE ~I have no more time to spare, sadly. See you around... I hope.~
END
IF ~~ DO ~AddJournalEntry(%Drake_BG1_Quest_1%,QUEST) EscapeAreaMove("%CentralSewers%",3613,2221,SE)~ EXIT

CHAIN IF WEIGHT #-1
~OR(2)
!InParty("C0Drake")
Dead("C0Drake")
Global("C0DrakeStoneheart","GLOBAL",1)~ THEN C0DSTONE sh2
~I see you have come, <CHARNAME>. Is Drake not coming with us?~
END
++ ~What exactly is your history with Drake, Stoneheart?~ EXTERN C0DSTONE sh2.1
++ ~He's not joining us for this one. Let's go without him.~ EXTERN C0DSTONE sh2.2
++ ~I'll be back.~ EXTERN C0DSTONE sh2.0

CHAIN C0DSTONE sh2.0
~And I'll be waiting.~
EXIT

CHAIN C0DSTONE sh2.1
~Did he not tell you? If that's the case, then perhaps it's better if you heard it from his own mouth.~
= ~Drake's a good man, despite his... crudeness. Regardless of what you see between our speech, it's all tough love. My own account of what's gone on between us wouldn't be fair on him if he wasn't listening here with us. That's all I'll say.~
= ~But for now, this business with the Shadow Thieves is more important. Will Drake be joining us?~
END
++ ~No. We're going without him.~ EXTERN C0DSTONE sh2.2
++ ~I'll be back.~ EXTERN C0DSTONE sh2.0

CHAIN C0DSTONE sh2.2
~Hm, pity. I doubt he would have passed on such a chance willingly. I suppose it's how it is, though.~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",2)~
EXTERN C0DSTONE sh1.2

CHAIN IF WEIGHT #-1
~InParty("C0Drake")
Global("C0DrakeStoneheart","GLOBAL",1)~ THEN C0DSTONE sh1
~Ah, good, you came. I'm glad you're both here. I just saw one of the scum passing through this very tunnel. They're here, all right.~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",2)~
== C0DRAKEJ ~Well, then what are we waiting for? Let's go and teach them a lesson.~
== C0DSTONE ~I, ah, took the time to have a closer look. From what I could tell, there's three of them where they're hiding.~
== C0DRAKEJ ~Only three? Hardly unmatchable odds.~
== C0DSTONE ~Don't underestimate them. Two of them are magic-users, from the look of their attire and gear. That means they're likely high-ranking agents, not your regular thug.~
EXTERN C0DSTONE sh1.3

CHAIN C0DSTONE sh1.2
~I, ah, took the time to have a closer look. From what I could tell, there's three of them where they're hiding. Two of them are magic-users as well, from the look of their attire and gear. That means they're likely high-ranking agents, not your regular thug.~
EXTERN C0DSTONE sh1.3

CHAIN C0DSTONE sh1.3
~One of them I recognize - Aiden Vail. He was once a low-ranking cutthroat in one of the branch guilds. I don't know how he climbed so quickly up the ranks, but he's not to be underestimated. His skill with a blade was notorious even when I was part of the guild.~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~Won't do him much good against the swing of a hammer.~
== C0DSTONE ~We should strike now while they still haven't noticed we're lurking here. Are you ready, <CHARNAME>?~
END
++ ~Yes. Let's go.~ EXTERN C0DSTONE sh1.4
++ ~Not yet.~ EXTERN C0DSTONE sh1.5

CHAIN C0DSTONE sh1.4
~Alright. Follow me, and try not to make any noise. We'll be sure to catch them off guard.~
DO ~StartCutsceneMode()
	FadeToColor([10.0],0)
	Wait(4)
	DestroySelf()
    ActionOverride(Player1,LeaveAreaLUA("c0dar1","",[248.401],N))
    ActionOverride(Player2,LeaveAreaLUA("c0dar1","",[294.404],N))
    ActionOverride(Player3,LeaveAreaLUA("c0dar1","",[236.432],N))
    ActionOverride(Player4,LeaveAreaLUA("c0dar1","",[278.445],N))
    ActionOverride(Player5,LeaveAreaLUA("c0dar1","",[215.481],N))
    ActionOverride(Player6,LeaveAreaLUA("c0dar1","",[273.497],N))
	EndCutsceneMode()~ EXIT

CHAIN C0DSTONE sh1.5
~Do what you must, but make it quick. If they realize we're on their tails, things will become much harder.~
EXIT

CHAIN IF WEIGHT #-1
~Global("C0DrakeStoneheart","GLOBAL",2)~ THEN C0DSTONE sh3
~Look who's back. You ready to hunt down some thieves, <CHARNAME>?~
END
++ ~Yes. Let's go.~ EXTERN C0DSTONE sh1.4
++ ~Not yet.~ EXTERN C0DSTONE sh1.5

CHAIN IF WEIGHT #-1
~InParty("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("C0DrakeStoneheart","GLOBAL",4)~ THEN C0DSTONE sh4
~A nasty bit of business, but I'm glad it's over with. Hopefully, that will keep the Shadow Thieves from trying anything in the near future.~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",5)~
== C0DRAKEJ ~Found any clues on what it was they were trying to begin with?~
== C0DSTONE ~Hmm, perhaps... these documents they were arguing over look interesting...~
== C0DRAKEJ ~Well? Don't leave us in suspense, tell us what's written on them!~
== C0DSTONE ~Wait, that can't be right... what? No, that's... impossible.~
== C0DSTONE ~It seems as if... we were all misled.~
== C0DRAKEJ ~What in the Hells are you talking about, Vance? What's written on those damned papers?~
EXTERN C0DSTONE sh4.1

CHAIN IF WEIGHT #-1
~OR(2)
!InParty("C0Drake")
StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("C0DrakeStoneheart","GLOBAL",4)~ THEN C0DSTONE sh5
~A nasty bit of business, but I'm glad it's over with. Hopefully, that will keep the Shadow Thieves from trying anything in the near future.~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",5)~
END
++ ~Find anything on why they were here?~ EXTERN C0DSTONE sh5.1

CHAIN C0DSTONE sh5.1
~Hmm, perhaps... these documents they were arguing over look interesting...~
== C0DSTONE ~Wait, that can't be right... what? No, that's... impossible.~
END
++ ~What's wrong?~ EXTERN C0DSTONE sh5.2

CHAIN C0DSTONE sh5.2
~It seems as if... we were all misled.~
EXTERN C0DSTONE sh4.1

CHAIN C0DSTONE sh4.1
~If these documents are not wrong... then the Shadow Thieves were here to investigate a third party. A party that they suspect are the true instigators of the rising tensions between here and Amn...~
END
+ ~InParty("C0Drake")~ + ~You're saying they were framed?~ EXTERN C0DRAKEJ sh4.2
+ ~!InParty("C0Drake")~ + ~You're saying they were framed?~ EXTERN C0DSTONE sh4.3

CHAIN C0DRAKEJ sh4.2
~*snort* As if it makes a difference. Never met a Shadow Thief that deserves anything less than this.~
EXTERN C0DSTONE sh4.3

CHAIN C0DSTONE sh4.3
~If this is true, then... my work is not yet done. Whoever is behind this is a threat to the entirety of the Sword Coast, and if they seek to frame the Shadow Thieves, then they must have something to gain from the war.~
== C0DSTONE ~I apologize for bringing you into this, <CHARNAME>. It seems I have put you at risk for a false lead.~
END
+ ~InParty("C0Drake")~ + ~It's no problem. These men needed to be brought down.~ EXTERN C0DRAKEJ sh4.4
+ ~!InParty("C0Drake")~ + ~It's no problem. These men needed to be brought down.~ EXTERN C0DSTONE sh4.5
++ ~What will you do now, Stoneheart?~ EXTERN C0DSTONE sh4.5
+ ~InParty("C0Drake")~ + ~You'd better be sorry.~ EXTERN C0DSTONE sh4.5
+ ~!InParty("C0Drake")~ + ~You'd better be sorry.~ EXTERN C0DRAKEJ sh4.4

CHAIN C0DRAKEJ sh4.4
~So what now, Vance? You'll have to investigate the organizations here at the Gate, won't you? That won't be nearly as easy as finding some underground agents, I wager.~
EXTERN C0DSTONE sh4.5

CHAIN C0DSTONE sh4.5
~It seems my job has suddenly become a lot more difficult. I will need to continue my investigations here, in the city. The Iron Throne is most suspect, so I should begin there.~
== C0DSTONE IF ~InParty("C0Drake")~ THEN ~But first I must make my report to the council, so they are aware of what has occurred here. That will take time... it is likely we will not meet again for some time, Drake.~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~Pity. I was just starting to forgive you, too.~
== C0DSTONE IF ~InParty("C0Drake")~ THEN ~Heh. It's good to know you have it in you, at least. Regardless, it is... good to work together with you again, Drake. And you as well, <CHARNAME>.~
== C0DSTONE IF ~!InParty("C0Drake")~ THEN ~But first I must make my report to the council, so they are aware of what has occurred here. It has been a pleasure working with you, <CHARNAME>.~
END
+ ~!InParty("C0Drake")~ + ~Likewise. May we meet again.~ EXTERN C0DSTONE sh4.6
+ ~InParty("C0Drake")~ + ~Likewise. May we meet again.~ EXTERN C0DRAKEJ sh4.7
+ ~!InParty("C0Drake")~ + ~Just make sure you have a reward for me next time we meet.~ EXTERN C0DSTONE sh4.6
+ ~InParty("C0Drake")~ + ~Just make sure you have a reward for me next time we meet.~ EXTERN C0DRAKEJ sh4.7

CHAIN C0DRAKEJ sh4.7
~See you, Vance. Try not to overdo it in the meantime. If you go and get yourself killed, I might just shed a tear or two. The damage dealt to my pride would be irreparable.~
== C0DSTONE ~Heh, I'll keep that in mind. Farewell, Drake.~
EXTERN C0DSTONE sh4.6

CHAIN C0DSTONE sh4.6
~Oh, yes, I almost forgot... you should have a reward for your assistance, <CHARNAME>. I may have no gold to offer, but perhaps these items will be useful to you. I found a box containing these magical scrolls somewhere in the sewer passages, no doubt left behind by some mage. And as for the locket, well...~
DO ~GiveItemCreate("book06",Player1,0,0,0) GiveItemCreate("scrl1w",Player1,0,0,0) GiveItemCreate("scrl2g",Player1,0,0,0) GiveItemCreate("c0dlock",Player1,0,0,0)~
= ~Drake should recognize it - after all, he was the one who gifted it to me a long time ago. It's a Caulfield family heirloom - one of two, as I recall, the other being their ancestral hammer, Coldfaith. Don't ask him why he gave it to me. It's quite an embarrassing tale.~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~You've told <PRO_HIMHER> enough just by opening your big mouth, you damned fool.~
== C0DSTONE IF ~InParty("C0Drake")~ THEN ~Maybe you're right. Still, you should have it back. Your father would throw a fit if it became known you gave it away, after all.~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~*snort* As though we didn't already spit fire at each other every time we spoke?~
== C0DSTONE ~I hope this will suffice. With that, I think I will take my leave. May the gods watch over you, friend.~
END
IF ~~ DO ~RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",600) EscapeArea() AddJournalEntry(%Drake_BG1_Quest_2%,QUEST_DONE)~ EXIT