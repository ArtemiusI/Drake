BEGIN BC0DRAKE

// Ajantis
CHAIN IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAjantis1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeAjantis1
~What did the Order send you out here for, Ajantis? Thought the boy needed some experience before making him a man, is that it?~
DO ~SetGlobal("C0DrakeAjantis1","GLOBAL",1)~
== BAJANT ~My presence here in the Sword Coast was a matter of responsibility, as you should know well, sir.~
== BC0DRAKE ~Sure, sure, did I claim otherwise? Actually, I approve - kids like you should come out and see the world for what it is. It'll do you good.~
== BAJANT ~If that is the case, then why are you out here, Drake? I only know what I have heard, but you have served at your current position for nearly a decade, twice the time of a usual term. How is it you have not been granted knighthood yet?~
== BC0DRAKE ~I like it where I am, squire. It helps me keep a closer eye on kids like you.~
== BAJANT ~I... see. Surely prelate Durand does not approve.~
== BC0DRAKE ~*snort* Of course not. Fear not, Ajantis. Unlike me, the Order will be happy to initiate you into the true ranks. Just don't let it get to your head.~
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAjantis2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeAjantis2
~So, how's Sir Firecam doing these days?~
DO ~SetGlobal("C0DrakeAjantis2","GLOBAL",1)~
== BAJANT ~Well enough, Sir Caulfield, last I saw of him.~
== BC0DRAKE ~Really. I suppose that means he's had time at home then? His relations with his wife were rather strained, last I checked.~
== BAJANT ~The personal affairs of my superior are hardly my business, sir. But, yes... from what I have heard, he has had little time to see his family.~
== BC0DRAKE ~So in essence, nothing's changed since I was gone.~
== BAJANT ~Why does this matter concern you so? Sir Keldorn has rarely spoken of you in the past. I was not aware you were friends.~
== BC0DRAKE ~We're not. But... ehhhh, if things are how I imagine them in Athkatla, then I pray to Tyr he sees his wife soon. For his own good.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAjantis3","GLOBAL",0)~ THEN BAJANT C0DrakeAjantis3
~I have been considering how little I see prelate Durand within the High Halls of the Radiant Heart. Is he often busy?~
DO ~SetGlobal("C0DrakeAjantis3","GLOBAL",1)~
== BC0DRAKE ~Oh, yes. He prefers a more active duty, that's something we share. I don't really think promotion's suited him at all, to be honest.~
== BAJANT ~I see little of the venerable prelate, but he always seemed a fair, yet often agitated man.~
== BC0DRAKE ~That's not entirely because of the Order, actually. Half of it must be because I drive him up the wall.~
== BAJANT ~For shame, Drake! Do you have no respect for your own father?~
== BC0DRAKE ~Make no mistake, kid, I like my father just fine. I just don't always agree with him, is all.~
== BAJANT ~That is hardly an excuse for all of your... inappropriate behaviour!~
== BC0DRAKE ~What? Oh, you're getting confused. That part is just how I am. The noble prelate has nothing to do with that. No, what we disagree on is how things are ran.~
== BAJANT ~Do you... disagree with the Order's methods?~
== BC0DRAKE ~I have my issues with it, but... I think anything I tell you would only be lost in your inexperience, Ajantis. Perhaps another time, I'll tell you how I think.~
EXIT

// Alora

CHAIN IF ~InParty("Alora")
See("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAlora1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeAlora1
~Hey, brat.~
DO ~SetGlobal("C0DrakeAlora1","GLOBAL",1)~
== BALORA ~Ooh, pretty... whoops! H-hey, Drakey. What's up?~
== BC0DRAKE ~My face, glaring down at you with disapproval. I think you know why.~
== BALORA ~Wh-what? I don't have a clue what you're talking about.~
== BC0DRAKE ~Give it back.~
== BALORA ~Aw, but I don't want toooo! It's too cute!~
== BC0DRAKE ~You give that to me right now... young lady.~
== BALORA ~Hmf... okay, okay. But I didn't think a gruff, big guy like you would carry around a little glass pony like that. Hee-hee... got a little secret or two?~
== BC0DRAKE ~Not in the way you'd think, kid. It's a present from my little sister.~
== BALORA ~Oh. I'm sorry, Drakey, I didn't know. But you shouldn't keep something as valuable as that in your pocket. What if someone steals it?~
== BC0DRAKE ~You mean someone like you?~
== BALORA ~Er, right. I get your point. Sorry, I won't do it again.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeAlora2","GLOBAL",0)~ THEN BALORA C0DrakeAlora2
~Drakey! You're looking so, so, sooooo grumpy right now. Can't I do anything to make you happy?~
DO ~SetGlobal("C0DrakeAlora2","GLOBAL",1)~
== BC0DRAKE ~You can stop being a pain in my arse that's twice your own size. That'd be a good start.~
== BALORA ~Hee-hee! No can do, I'm under contract to bother you until you smile! I'm being a good samaritan here!~
== BC0DRAKE ~Well, then, stop calling me Drakey. I have a manly front to uphold, after all. Although I suppose my moments of drunkenness have broken that front several times over.~
== BALORA ~Aww, you don't like Drakey? I thought the name was cute!~
== BC0DRAKE ~It sounds like the sort of baby name my little sister Claudia would think of. Unfortunately, you're not half as adorable as her for it to be nearly tolerable.~
== BALORA ~Pooh, so I'm not cute enough, is that it? Well, you just wait, Drakey! I'll become so sweet your teeth will rot off! Just you wait and see, hmf!~
== BC0DRAKE ~Well, this... is a first.~
EXIT

// Branwen

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeBranwen1","GLOBAL",0)~ THEN BBRANW C0DrakeBranwen1
~Ho there, Drake! 'Tis good to see another fine priest who knows the value of a heavy hammer in hand.~
DO ~SetGlobal("C0DrakeBranwen1","GLOBAL",1)~
== BC0DRAKE ~My thoughts exactly. It's nice to see a woman who appreciates a man who knows the value of a great, heavy hammer.~
== BBRANW ~Now... whatever could you be implying, hmm? I was merely making an offhand comment about your prowess in battle.~
== BC0DRAKE ~I have prowess in more fields than just battle, milady.~
== BBRANW ~Do you now? That is good to know. Do you like knitting, I wonder? My favorite socks could use some patching.~
== BC0DRAKE ~Your act doesn't fool me, Branwen.~
== BBRANW ~A shame. I was starting to have fun.~
EXIT

CHAIN IF ~InParty("Branwen")
See("Branwen")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeBranwen2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeBranwen2
~Oh, stop, stop that. You're making me want to cry, Branwen.~
DO ~SetGlobal("C0DrakeBranwen2","GLOBAL",1)~
== BBRANW ~What is it, Drake? What could I possibly be doing to offend you?~
== BC0DRAKE ~No, no, don't ask, just do that motion again, but using this stick instead for safety.~
== BBRANW ~As you wish. Hah! Tempus!~
== BC0DRAKE ~There, stop! Watch your damn arm! My dear old father would have beat me black and blue if he caught me swinging my weapon in such a broad arc.~
== BBRANW ~I find that my technique makes the most use of my arm's strength. Would you not agree?~
== BC0DRAKE ~Oh, you'd cave in a head easily enough, just not the one you'd expect. Damn it, Branwen, you're wielding a hammer, not a fish on a stick! If I lost my grip due to my weapon's weight, I'd take out the person behind me instead of in front!~
== BBRANW ~I do not appreciate you presuming to teach me in warfare, Drake. My skills were bestowed upon me by the battlemasters of Tempus.~
== BC0DRAKE ~Gods, then they must be as stubborn as you are. I'd best not stand anywhere close to you in battle, so long as you keep swinging your weapon like that.~
EXIT

// Coran

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeCoran1","GLOBAL",0)~ THEN BCORAN C0DrakeCoran1
~Ho there, Drake, my new favorite human in these lands! Fancy a drink, my understanding friend?~
DO ~SetGlobal("C0DrakeCoran1","GLOBAL",1)~
== BC0DRAKE ~When am I not? Come, share an ale with me.~
== BCORAN ~I thought perhaps we could bond over a more... cultured drink. As it happens, I have a bottle of the finest Elverquisst, brewed in faraway Evereska. How about it?~
== BC0DRAKE ~Hmm, can't say I've tried many elven wines before. Fine, get the cups, elf. We'll drink ourselves into the dirt by day's end.~
== BCORAN ~Err... perhaps I should show you the proper methods to enjoying elven beverages. One step at a time, then...~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(CITY)
Global("C0DrakeCoran2","GLOBAL",0)~ THEN BCORAN C0DrakeCoran2
~So, what do you think of that blonde lass over yonder, hmm?~
DO ~SetGlobal("C0DrakeCoran2","GLOBAL",1)~
== BC0DRAKE ~Too skinny. She's clearly not a barmaid or a laborer.~
== BCORAN ~Erm... yes, but what of her fair features? Have any thoughts on that?~
== BC0DRAKE ~Not much that you can't imagine for yourself. I do know that she'll slap you silly if you made a pass at her, though.~
== BCORAN ~I'll take your word for it. But how about you, hmm? Perhaps she'd have more success with one of her own kind?~
== BC0DRAKE ~Like I said, she's too skinny.~
== BCORAN ~Fair enough.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeCoran3","GLOBAL",0)~ THEN BCORAN C0DrakeCoran3
~You are full of surprises, Drake. For a man so devoted to his own masculinity, I never expected to find that your possessions were so... sentimental.~
DO ~SetGlobal("C0DrakeCoran3","GLOBAL",1)~
== BC0DRAKE ~Been filching things from my pack, have you, elf? Here I thought that we were friendly.~
== BCORAN ~'Filch' is such an ugly word, my friend. I merely saw fit to make sure nothing had gone missing. The thought of informing you just, er, slipped my mind.~
== BC0DRAKE ~I'm sure it's not the first thought to do so. Your mind is more slippery than a sweaty merchant's backside.~
== BCORAN ~Guilty as charged, my friend, but back on track here... those... trinkets cannot truly be your own, can they? A straw doll and wooden toy soldier? Not to mention the horse made of pink glass? That's not like you.~
== BC0DRAKE ~There's a lot of me you don't know, elf. Let's just say that I value gifts from those close to me, and leave it at that.~
EXIT

// Dynaheir

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeDynaheir1","GLOBAL",0)~ THEN BDYNAH C0DrakeDynaheir1
~I wouldst think the clergy of Tyr would hath a stricter demand of their priesthood, Drake. Thy behavior is... far from what I am familiar. How is it one such as thou remains?~
DO ~SetGlobal("C0DrakeDynaheir1","GLOBAL",1)~
== BC0DRAKE ~Why, you wound me, madam Dynaheir. Are you saying that one who appreciates living life to the fullest cannot share a zeal towards justice and honor?~
== BDYNAH ~True, but thou wouldst seem to place thy personal desires upon a higher priority than thy creed.~
== BC0DRAKE ~Is that so, madam? 'Hath' I ever failed to do my duty, under 'thy' eye? Did I allow Bassilus to walk free?~
== BDYNAH ~Thou shifted the burden of thy duty to <CHARNAME>'s shoulder. And thy mockery of me is most unseemly.~
== BC0DRAKE ~I'm a pragmatist, madam. Not enough of those exist in our faith, and so I remain, much as others may wish me gone. I hope that answer will satisfy 'thee'.~
EXIT

// Edwin

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeEdwin1_BG1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeEdwin1
~Well now, Edwin, you may be an insufferable git, but I can't deny you have a sense of fashion. Red is the new black, is that it?~
DO ~SetGlobal("C0DrakeEdwin1_BG1","GLOBAL",1)~
== BEDWIN ~I wear this color as a symbol of color and prestige, drunkard. I see you do not wear anything of the like. Or are my words beyond your understanding?~
== BC0DRAKE ~Ha! No, I understand you well enough. To be honest, even if you'd kept your trap shut I'd know enough. Back in my home, you'd be called a 'deviant' or a 'walking threat'.~
== BEDWIN ~I see. In that case, I think it is apt to return the favor by informing you that you would be worth little more than a common indentured laborer in grand Thay.~
== BC0DRAKE ~Oh, is that so? Tell me, do they parade their slaves in broad daylight? Because that'd make the trade more honest than in Amn, at least.~
== BEDWIN ~Better, fool. Thayvian slaves are thrown to the gladiator pits, where they are matched against other beasts like themselves for the amusement of more enlightened beings.~
== BC0DRAKE ~Really. In that case, why weren't you fighting with them? I could call you many things, but 'enlightened' certainly isn't among them.~
== BEDWIN ~Why you insolent... this foolish bickering is beneath me. Be a good simian and find your amusement elsewhere. Perhaps you might find yourself a banana. (Yes, I am certain that would keep you preoccupied...)~
EXIT

// Eldoth

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeEldoth1","GLOBAL",0)~ THEN BELDOT C0DrakeEldoth1
~Until now, I believed that those of the Radiant Farts were all fools with pins between their legs and no taste for the fine things in life. It seems I wasn't entirely right. Good on you, Drake.~
DO ~SetGlobal("C0DrakeEldoth1","GLOBAL",1)~
== BC0DRAKE ~From anyone else, I'd consider that a compliment. You, on the other hand, Eldoth... I think your compliments leave much to be desired as opposed to your insults, and I'd rather hear the latter instead.~
== BELDOT ~What's this? You would actually prefer to be insulted than praised? You are a rare kind indeed! Come witness, <CHARNAME>, I believe we have ourselves a never-before seen beast!~
== BC0DRAKE ~Oh, no. I just thought I could use an excuse to beat your sleazy arse to next week. Your face could look better with a broken nose and a few teeth missing.~
== BELDOT ~I believe I will rescind my previous impression of you after all. You actually are more of a fool than I initially expected. Quite impressive.~
EXIT

CHAIN IF ~InParty("Eldoth")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeEldoth2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeEldoth2
~Ho there, minstrel! A word of advice for you, when we next enter the fields of battle.~
DO ~SetGlobal("C0DrakeEldoth2","GLOBAL",1)~ 
== BELDOT ~I am certain any advice you give would be better recited to a mule, but do tell. It could be amusing.~
== BC0DRAKE ~Aye, well, when we face our next enemy, I suggest substituting your bow for your lute. I'm certain that would be more lethal to our enemies.~
== BELDOT ~Are you implying that my tunes could kill? I'm not sure whether to feel flattered or insulted.~
== BC0DRAKE ~I might be. Or I'm suggesting that your aim is so poor, I'm more concerned for the person standing next to you than in front.~
== BELDOT ~Why don't you guard my side in our next skirmish then, to see if that holds true? I will be sure to reserve a poisoned arrow or two... for the sake of demonstration, of course.~
== BC0DRAKE ~Oh, please. As if I don't spend enough time covering your worthless arse as is.~
EXIT

// Faldorn

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeFaldorn","GLOBAL",0)~ THEN BFALDO C0DrakeFaldorn
~Your stench embodies the worst of civilization, priest. When you walk among Nature, its children shrivel and turn away at your scent.~
DO ~SetGlobal("C0DrakeFaldorn","GLOBAL",1)~ 
== BC0DRAKE ~I bathe as much as anyone else here, Faldorn. More when compared to you, I think. Perhaps you could consider entering a bathhouse at some point.~
== BFALDO ~Pfeh! If we frequented the forest more often, I would cleanse myself of city filth in an instant. Sadly, that is not to be.~
== BC0DRAKE ~Then perhaps people in glass houses shouldn't throw stones.~
== BFALDO ~The stench I speak of is that born of your addiction to those foul city-made brews. No doubt they have poisoned your mind as much as your body.~
== BC0DRAKE ~So I drink a little. What harm does that do to anyone else? At least I don't cut down trees for a living.~
== BFALDO ~True, but you are content to drown yourself within the filth of humanity, wasting away the life Nature has granted you. That alone is an offense to me.~
== BC0DRAKE ~Well, Nature clearly gave me this life to do with as I please. So, if you'll pardon me for saying this... suck it up, wolf-girl.~
== BFALDO ~Your ignorance revolts me. I will speak with you no further.~
EXIT

// Garrick

CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeGarrick1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeGarrick1
~For a bard, Garrick, you seem to have a hard time figuring out where and when words begin and end. Are you sure this profession is truly the right one for you?~
DO ~SetGlobal("C0DrakeGarrick1","GLOBAL",1)~ 
== BGARRI ~There is surely no cause for such hurtful words, sir. My bardic skills may not be the most refined, but I put every ounce of my soul into my performance.~
== BC0DRAKE ~What soul you have must be heavily diminished if it is measured in mere ounces.~
== BGARRI ~How rude! Have I done something to offend you, sir, that you would insult me in such a fashion?~
== BC0DRAKE ~Oh, no, just a word of warning. Forcing yourself into something you clearly have little talent for will only end in disaster. Best to seek where your strength lies, lest you be seen as a fop in front of those you would rather not be.~
EXIT

// Imoen

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeImoen1_BG1","GLOBAL",0)~ THEN BIMOEN C0DrakeImoen1
~Hey, hey, Drake! Got a minute?~
DO ~SetGlobal("C0DrakeImoen1_BG1","GLOBAL",1)~
== BC0DRAKE ~Not now, kid. Go play somewhere else.~
== BIMOEN ~Pooh! You're such a jerk! Aren't you priest-types supposed to be more patient and... I dunno, nicer?~
== BC0DRAKE ~I serve the god of justice, kid, not niceness. And often times justice is... not nice.~
== BIMOEN ~But it's always fair, right?~
== BC0DRAKE ~Ha! Not bad. You're learning.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeImoen2_BG1","GLOBAL",0)~ THEN BIMOEN C0DrakeImoen2
~Ooh, what's this? Such a pretty shade of amber... I wonder if it tastes as good as it looks?~
DO ~SetGlobal("C0DrakeImoen2_BG1","GLOBAL",1)~
== BC0DRAKE ~Hey, no, I don't think so! You're not supposed to have a single drop of that stuff.~
== BIMOEN ~Don't treat me like a kid, Drake! I'm of age. Besides, I've had plenty of ol' Puffgut's specialties.~
== BC0DRAKE ~I'm sure, but that particular bottle of brandy is far too good for your tongue.~
== BIMOEN ~Aw, c'mon, Drake. You're really gonna be a spoilsport when you drink ale like water? C'mon, just one sip!~
== BC0DRAKE ~*sigh* How can anyone be such a huge pain in the arse?~
== BIMOEN ~Ha! With lots of practice annoying <CHARNAME>, how else?~
== BC0DRAKE ~Bah, just go away. I need to find a better place to hide this. Damn close...~
EXIT

CHAIN IF ~InParty("BIMOEN")
See("BIMOEN")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeImoen3_BG1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeImoen3
~Hey, kid. I know what you did. No use pretending.~
DO ~SetGlobal("C0DrakeImoen3_BG1","GLOBAL",1)~
== BIMOEN ~Pfft... e-hehehe! Yep, ya caught me! The look on your face wasn't as horrified as I expected, though. I was kinda disappointed by that.~
== BC0DRAKE ~I'm not sure what kind of reaction you expected by drawing these ridiculous pictures in my prayer book. I think a raised eyebrow and a frown was appropriate, don't you?~
== BIMOEN ~Yeah, sure. But y'know, I saw your lips twitch a little, like you were trying to stop yourself from laughing.~
== BC0DRAKE ~Well, it was rather amusing, if juvenile. You've got a dirty mind for a kid with the innocent act going on, I'll admit.~
== BIMOEN ~Ha! You know it!~
== BC0DRAKE ~Still, I think this counts as defiling a holy item of Tyr. You sure you're not worried about being struck by lightning?~
== BIMOEN ~Uhh... now that you mention it... you'll make sure that doesn't happen, right?~
== BC0DRAKE ~No promises. You're lucky I found this just a little funny.~
== BIMOEN ~(Please don't let him see the 'improvements' I made to his prayers...)~
EXIT

// Jaheira

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeJaheira1_BG1","GLOBAL",0)~ THEN BJAHEI C0DrakeJaheira1
~Have a care for where your eyes are wandering, Drake. Should you come to harm due to your daydreaming, I shall not tend to you.~
DO ~SetGlobal("C0DrakeJaheira1_BG1","GLOBAL",1)~
== BC0DRAKE ~My eyes are aimed towards our front, my lady. You are simply walking ahead of me.~
== BJAHEI ~I have no patience for your childish games, Drake. Whenever I slow my pace, you follow suit to remain behind me. I have no doubts as to where your attention truly is.~
== BC0DRAKE ~Ha! My apologies, Jaheira, truly. Though by the sound of it, you have noticed for quite some time, yet only saw fit to speak up now.~
== BJAHEI ~I felt it was fair to give you the benefit of the doubt at first. I know most Tyrrans to have enough standards to not ogle a married woman.~
== BC0DRAKE ~Ah. Sharp words, my lady. I can see why your husband is so easily cowed by your every word.~
== BJAHEI ~What? Why you-~
== BC0DRAKE ~Ha! I jest, Jaheira. Fear not, I will not offend you with my gaze again. 'Twas simply amusing to see your fury turn to embarrassment.~
== BJAHEI ~*sigh* Why did you ever allow this bounder in our midst, <CHARNAME>?~
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeJaheira2_BG1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeJaheira2
~Harpers, hmm? As I recall, there were Harpers operating in Amn as well. I owe a few of them for their assistance in the past. Are you familiar with them?~
DO ~SetGlobal("C0DrakeJaheira2_BG1","GLOBAL",1)~
== BJAHEI ~...Yes. A few. Though it is concerning that you, of all people, would come into contact with a Harper. What could you have done to draw their attention?~
== BC0DRAKE ~I... may have... stepped into their business from time to time. Ironic, given the Harpers' reputation for doing the same.~
== BJAHEI ~That is... worrisome to know. I ask that you tell me of your encounter with my fellows.~
== BC0DRAKE ~Oh, it's hardly a grand tale. I spend a lot of time in the lower class districts of Athkatla. One time, I met a stranger at a local tavern. We spoke and shared a few drinks before the man let slip that he was after a group of Zhentarim agents.~
== BJAHEI ~He simply told you that? I have never known a Harper to be so foolish.~
== BC0DRAKE ~I may have... encouraged him. I have a talent for doing that... now, don't glare at me that way! I had no way of knowing. Anyways, I couldn't just let such a thing slide, so I decided to seek those agents out myself so I could give them a friendly welcome.~
== BC0DRAKE ~Well, I found them, all right. As did my new Harper friend... we eliminated them, and that was when I learned that the other man was a Harper. He said he should kill me as well, but I suppose he was feeling merciful after those friendly drinks we shared. We parted under peaceful terms, and I never saw him again. Though I've occasionally had... tip-offs from unknown sources.~
== BJAHEI ~You are more fortunate than you know, Drake. Some Harpers are merciless in maintaining secrecy. I hope you learned your lesson after such an experience.~
EXIT

// Kagain

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeKagain1","GLOBAL",0)~ THEN BKAGAI C0DrakeKagain1
~Ye allowed no less than five thousand gold crowns to slip from yer hands right into <CHARNAME>'s pocket, Drake. Were ye born daft, or has yer indentured servitude to yer precious Order drained ye of yer wits?~ 
DO ~SetGlobal("C0DrakeKagain1","GLOBAL",1)~
== BC0DRAKE ~I was merely being sensible, my avaricious not-friend. If that gold fell into my hands, I would have no doubt squandered it in showers of golden ale.~
== BKAGAI ~Hmph. At least ye would not be wastin' it in the hands of some statue of Tyr or other rubbish.~
== BC0DRAKE ~Precisely, Kagain. When has that gold done any good for those who needed it, after all?~
== BKAGAI ~But ye could've still done much for yerself with all that gold. Now ye'll never see it again, not in this lifetime.~
== BC0DRAKE ~Gold is worthless resting in one's pockets, as a merchant should well know. Isn't it more worthwhile to invest into <CHARNAME>'s success? You've made similar decisions, no doubt... including your present service to <PRO_HISHER>.~
== BKAGAI ~Hmm. Ye've made yer point, church-boy. Yer not such a fool after all.~
EXIT

// Khalid

CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeKhalid1","GLOBAL",0)~ THEN BKHALI C0DrakeKhalid1
~Y-you know, Drake...~
DO ~SetGlobal("C0DrakeKhalid1","GLOBAL",1)~
== BC0DRAKE ~Pardon? Hm, I could've sworn you said something, Khalid.~
== BKHALI ~I was going to b-b-bring up your peculiar battle stance. It's a common one taught to Amnian soldiers, is it not?~
== BC0DRAKE ~Oh, so you recognize it, do you? I never would've thought you'd have experience in the army, my friend.~
== BKHALI ~A-actually, I spent a few years training in the C-calimshan militia.~
== BC0DRAKE ~Really? By choice, or were you conscripted? I'm inclined to believe the latter, but I'd best hear it from your own mouth.~
== BKHALI ~It was m-my... my own choice, in fact. I... I was not my father's favorite, and it was the only thing I could find p-purpose in.~
== BC0DRAKE ~...You as well, eh? Look, if I have said anything that you found offensive, don't take it personally. I tend to speak my mind without thinking.~
== BKHALI ~N-no offense taken, Drake. Perhaps another time, we c-could compare our experiences as soldiers?~
== BC0DRAKE ~Don't see why not. I'll have drinks ready.~
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(OUTDOOR)
!TimeOfDay(NIGHT)
Global("C0DrakeKhalid2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeKhalid2
~Good morrow, Khalid, my valiant friend! Surely the day is ripe to vanquish some evil, don't you think?~ 
DO ~SetGlobal("C0DrakeKhalid2","GLOBAL",1)~
== BKHALI ~Y-yes... exactly as you s-say, Drake.~
== BC0DRAKE ~What is this I hear, my friend? Dread? No, surely not! We face foes, both man and beast, each day, side by side in the frontline. Whatever could be the issue, I wonder?~
== BKHALI ~I-is there a cause for such d-dramatic statements, Drake? I d-do not wish to misjudge, but it sounds as though you are m-mocking me.~
== BC0DRAKE ~Come now, do you really think so little of me? Haven't we done more in the past than what I have spoken of?~
== BKHALI ~C-certainly we have. But wh-~
== BC0DRAKE ~Then why does my mentioning what we do normally, which you usually face with such valor, suddenly cause you such distress, hmm?~
== BKHALI ~W-when you put it like that... it does seem a little s-silly to worry.~
== BC0DRAKE ~Good to know you feel the same way, my friend. Come now, let's go find that evil I was mentioning and teach it a thing or two about justice.~
EXIT

// Kivan

CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeKivan1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeKivan1
~You know, Kivan, others might say your pursuit of revenge is unhealthy or suicidal, but if I were you, I'd be plenty mad too.~
DO ~SetGlobal("C0DrakeKivan1","GLOBAL",1)~
== BKIVAN ~Then you are among the first, Drake. Have you lost one dear to yourself to a cruel and evil monster, as I have?~
== BC0DRAKE ~Maybe not as close as you to your wife, but aye, I've lost many dear friends and watched their murderers walk free. Some of those very men are those I've been ordered to serve.~
== BKIVAN ~What manner of justice is it which cannot even bring peace to those you love?~
== BC0DRAKE ~Question of my life, my sharp-eared friend. If anything, I think you have it easier. No one would bat an eye if I took a hammer to Tazok's skull. In fact, they might even start respecting me for it.~
== BKIVAN ~You believe I have it easier? I know you have good intentions, but I would appreciate it if you did not trivialize my situation so.~
== BC0DRAKE ~Fair enough, no more talk of this, then. In a situation like this, I think it's most appropriate to get piss drunk and forget about our sorrows instead. How's it sound?~
== BKIVAN ~I appreciate the offer, but I will pass. Some of us must use our tools with a level of finesse.~
EXIT

// Minsc

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeMinsc1_BG1","GLOBAL",0)~ THEN BMINSC C0DrakeMinsc1
~Drake, you are mighty with in battle with your hammer! But you do not consider yourself a warrior. Boo is confused at this.~
DO ~SetGlobal("C0DrakeMinsc1_BG1","GLOBAL",1)~
== BC0DRAKE ~I'm a little concerned that you need your pet... uh, friend, to be confused for you, big man. True, I've had some years of training from both the church of Tyr and the army. But I'm still a priest, first and foremost.~
== BMINSC ~Minsc remembers there were many wise men and women back in Rashemen who knew the way of herbs and healing of wound and back-scratching itches. They said many wise things, though Minsc sometimes did not understand them. But Minsc has never seen them pick up a weapon and embark on the route of butt-kicking.~
== BC0DRAKE ~Well... what can I say? I suppose we southerners like to be efficient and train in many talents. Though I admit, I've never been the best at remembering herblore. Don't come to me if you've got an itch.~
== BMINSC ~Now Boo is even more confused. You are a warrior, but not a warrior. But you are also a wise man, but not a wise man! You are talking in circles!~
== BC0DRAKE ~I- oh, mighty Tyr, what have I gotten myself in to? I'll be explaining myself to you all <DAYNIGHT>...~
== BC0DRAKE IF ~InParty("DYNAHEIR")~ THEN ~Is this what you must experience day and night, madam? You have my sympathies.~
== BDYNAH IF ~InParty("DYNAHEIR")~ THEN ~It... becomes easier with knowledge. Thou shouldst leave our friend be, Minsc.~
EXIT

// Montaron

CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeMontaron1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeMontaron1
~Guts, Montaron. Those are guts hanging from your belt. Dried ones. Please tell me they're not from a human.~
DO ~SetGlobal("C0DrakeMontaron1","GLOBAL",1)~
== BMONTA ~What else? (grin) Want a taste?~
== BC0DRAKE ~Much as I am tempted, no. I doubt such a thing would be good for my digestion. Or my long-term health, for that matter.~
== BMONTA ~Ah, just pullin' yer leg anyway, weak-knees.~
== BC0DRAKE ~Then why are you holding them to your mouth?~
== BMONTA ~Heh heh. Never said anything about meself, did I, aye?~
== BC0DRAKE ~Somehow I think you're still messing with me. At least, I hope to Tyr you are.~
EXIT

// Quayle

CHAIN IF ~InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeQuayle","GLOBAL",0)~ THEN BC0DRAKE C0DrakeQuayle
~Can't say I've met any gnomes in my lifetime, but every one I've come across in Amn seemed to be a turnip-crazed nutter. You're only half of that, Quayle. What happened to the rest of you?~
DO ~SetGlobal("C0DrakeQuayle","GLOBAL",1)~
== BQUAYL ~Do you even need to ask, tall tin-head? Why, of course you do. After all, not everyone can share my great intellect.~
== BC0DRAKE ~Enlighten me, oh-so-'smert' one.~
== BQUAYL ~You see, and this may be too much for your little brain to comprehend, but I was born with my endless knowledge. All the other gnomes around me were jealous, and tried to imitate me to no avail. And rather than accept their inferiority, they turned to other talents in order to differentiate themselves from my brilliance. Keeping up so far?~
== BC0DRAKE ~Interesting, but... I have seen something alike between each gnome I've ever met. You have little in common with any of them.~
== BQUAYL ~That's because there is no one else quite like me, my big friend. Me and my amazing brain are one-of-a-kind.~
== BC0DRAKE ~Of that I have no doubt. *snicker*~
EXIT

// Safana

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSafana1","GLOBAL",0)~ THEN BSAFAN C0DrakeSafana1
~Really now, Drake dearest, have you ever been introduced to a thing called a mirror? You look as though someone stuck an ape in suit of plate armor and taught it to speak.~
DO ~SetGlobal("C0DrakeSafana1","GLOBAL",1)~
== BC0DRAKE ~Yes, I'm sure you'd know all about talking apes, Safana. How many of them did you find yourself bedding, hmm?~
== BSAFAN ~Perhaps one or two might have qualified. It is *so* very hard to remember when you are the closest comparison I can make. Those men at least did not reek of cheap ale.~
== BC0DRAKE ~So it seems that my scents serve as a repellent for vicious harpies. Good to know!~
== BSAFAN ~Why, Drake, are you telling me you do not find me ravishing?~
== BC0DRAKE ~Trust me, I'm not nearly drunk enough for that. You've got that 'scarlet woman' feel about you... I've seen too many of those in Amn.~
== BSAFAN ~I'm almost hurt at your insinuations. Almost.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSafana2","GLOBAL",0)~ THEN BSAFAN C0DrakeSafana2
~I truly do like your face, dear. I just thought I should let you know that.~
DO ~SetGlobal("C0DrakeSafana2","GLOBAL",1)~
== BC0DRAKE ~Is that so? I thought you were more for the skinny, girlish types.~
== BC0DRAKE IF ~InParty("CORAN")~ THEN ~After all, you seem to reserve all of your attention for Coran. Not that I'm all that surprised, mind you. They always go for the elves.~
== BSAFAN ~Oh, I didn't mean it that way. I was merely making a remark on how smug that face of yours is. Very... punchable.~
== BC0DRAKE ~Ha! You'd best get in line, then. I've heard that so many times it hurts more than the act itself.~
== BSAFAN ~Sometimes, Drake dear, I wonder if you hate yourself more than I hate you.~
EXIT

CHAIN IF ~InParty("Safana")
See("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSafana2","GLOBAL",1)~ THEN BC0DRAKE C0DrakeSafana3
~For all your faults, Safana, I must admit, you have a nice face too. Pleasant to look at.~
DO ~SetGlobal("C0DrakeSafana2","GLOBAL",2)~
== BSAFAN ~You're only half-right, Drake. If your eyes weren't clouded with so much nonsense, you'd recognize I have *no* faults, dear. But I'll take the compliment anyways.~
== BC0DRAKE ~Ah-ah-ah, I haven't finished. I never said I found your face attractive - well, perhaps I do, but not in the way you'd imagine. No, actually, it's because your face reminds me of my dear mother.~
== BSAFAN ~You'd compare me to an aged prune no doubt in her late fifties? Harsh, Drake.~
== BC0DRAKE ~I think you'd best take it as a compliment, Safana, as I might add that's the *only* parallel I'd ever draw with you and my mother. She wouldn't leave a man tied to his bed frame with his clothes on the ground and his purse gone.~
== BSAFAN ~Why, such insinuations... do you despise me so much, darling? How your words wound me so.~
== BC0DRAKE ~I don't despise you, Safana. You haven't threatened me nearly enough for that.~
EXIT

// Shar-Teel

CHAIN IF ~InParty("Sharteel")
See("Sharteel")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSharteel","GLOBAL",0)~ THEN BC0DRAKE C0DrakeSharteel
~Why, it seems like we've bagged ourselves an aggressive she-bear. Woke up on the wrong side of the bed, Shar-Teel?~
DO ~SetGlobal("C0DrakeSharteel","GLOBAL",1)~
== BSHART ~Do not talk to me, lecherous pig.~
== BC0DRAKE ~Who? Are you starting to imagine things, big girl? The voice came from the handsome devil over here speaking with you.~
== BSHART ~You heard me, pig. I've no interest in your taunts. At most, I've got a blade ready to shut you up.~
== BC0DRAKE ~By cutting out my tongue, I imagine? Come on, you can do better than that.~
== BSHART ~I was thinking of something much, much lower down. Keep talking. It'll just make the cutting more satisfying.~
== BC0DRAKE ~Ha! You've got some wit in you after all, Shar-Teel. Very well, I know when to stop poking a sleeping bear.~
EXIT

// Skie

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSkie1","GLOBAL",0)~ THEN BSKIE C0DrakeSkie1
~Your beard is showing again, Drake. How could your mother ever allow you to walk outside looking so scruffy? Mine would throw a fit if my hair wasn't done right in the morning.~
DO ~SetGlobal("C0DrakeSkie1","GLOBAL",1)~
== BC0DRAKE ~*sigh* Skie, Skie, Skie...~
== BSKIE ~What? Did I say something wrong?~
== BC0DRAKE ~Not exactly. It just befuddles me that your obliviousness extends so far that you don't even seem to realize where we are.~
== BSKIE ~Where we are? Is this suppose to be some kind of trick question? We're travelling with <CHARNAME>, of course, silly.~
== BC0DRAKE ~Oh, good. You've caught on thus far. So what's this nonsense about how I look supposed to be, exactly? Your way of saying good <DAYEVENING>?~
== BSKIE ~No, of course not. I just thought you should look more the noble you're meant to be.~
== BC0DRAKE ~Believe me, you're the first noble I've met who's actually acknowledged the Caulfields as anything more than elevated peasants. Not that I care much for it.~
== BSKIE ~Gosh, your frown is so scary with that scraggly beard. Did I say something wrong again?~
== BC0DRAKE ~*sigh* No, Skie... no. Just leave me alone.~
EXIT

CHAIN IF ~InParty("Skie")
See("Skie")
InParty("Eldoth")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeSkie2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeSkie2
~I'm aware your father likely was too busy to raise you right, Skie, but surely you can't be so blind or ignorant?~
DO ~SetGlobal("C0DrakeSkie2","GLOBAL",1)~
== BSKIE ~Hmph! Well, that's rude of you. Whatever did I do wrong this time?~
== BC0DRAKE ~I could start my own brewery if I had a copper for every thing you've done wrong, kid, but your obsession with your so-called 'lover' is worth its weight in gold at least.~
== BSKIE ~Eldoth? What's wrong with him? He's cleaner than you, at least, if you haven't noticed.~
== BC0DRAKE ~Sure. But on the inside, he's slimier than a crawler, and his singing makes my ears bleed. How you haven't noticed is beyond me.~
== BSKIE ~Stop this! I won't have you standing here slandering my beloved! If you say one more bad thing about Eldoth, I'll... I'll-~
== BC0DRAKE ~Oh, just do us all a favor and shut up, kid. You're making a fool out of yourself with this tantrum you're throwing.~
EXIT

// Tiax

CHAIN IF ~InParty("Tiax")
See("Tiax")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeTiax","GLOBAL",0)~ THEN BC0DRAKE C0DrakeTiax
~So, Tiax, my dirty, diminutive, delightfully and dreadfully insane friend... taken over the world yet?~
DO ~SetGlobal("C0DrakeTiax","GLOBAL",1)~
== BTIAX ~Hm? Are you truly daft enough to ask, foolish human?! The rise of Tiax's dynasty is all but inevitable!~
== BC0DRAKE ~Yes, yes, I'm sure, but I believe I'm talking about 'now'. I don't see Baldur's Gate or Amn raising flags bearing Cyric's emblem, do I?~
== BTIAX ~The day that you see Cyric's banner shall be the last day you see at all, Tyrran heretic! Revel in what time remains, for your days are numbered.~
== BTIAX ~Unless...~
== BC0DRAKE ~Oh, gods. This is the part where you try to coerce me into converting, isn't it?~
== BTIAX ~You are not quite as dim-witted as you appear, then. Good! You may be of use to Tiax's realms after all...~
== BTIAX ~...as a indentured shoveler of horse manure!~
== BC0DRAKE ~So it'd be like the army all over again, eh? I'm disappointed that's the best you can think of. Call me when you've thought of something better... or worse.~
== BTIAX ~Hmph! You had best believe that I will, fool! Live your days cowering in dread at what fate awaits you!~
EXIT

// Viconia

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeViconia1BG1","GLOBAL",0)~ THEN BVICON C0DrakeViconia1
~You reek of vinegar and sweat, rothe. Stand downwind, if you will.~
DO ~SetGlobal("C0DrakeViconia1BG1","GLOBAL",1)~
== BC0DRAKE ~I do? Why, I hardly even noticed. Thank you so very much for informing me, Viconia.~
== BVICON ~Your quips remind me of the youths in training at Arach-Tinilith, jaluk. They were punished with the removal of their tongues. A pity the surface does not encourage similar practices.~
== BC0DRAKE ~Oh, there are places that do that, certainly. Just not where I grew up.~
== BVICON ~Then perhaps you should find a place that does and wag that tongue of yours there instead. I'm sure they would appreciate the wit much more than I.~
== BC0DRAKE ~But where could I enjoy the taste of the finest cheap wine and stale bread in Faerun without my tongue? I'll pass, thank you.~
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeViconia2BG1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeViconia2
~Ho there, mistress of darkness! They say the denizens of the Underdark know the technique of brewing fine wine from mushrooms. Coincidentally, I have here a collection of mushrooms from our last trek through the delights of nature. Perhaps you would be kind enough to...?~
DO ~SetGlobal("C0DrakeViconia2BG1","GLOBAL",1)~
== BVICON ~Your ignorance is beyond baffling, iblith. The brews of the Underdark are made of far more complex substances than that grown from the dirt of the surface.~
== BC0DRAKE ~Hmm. Well, that's disappointing. And here I thought perhaps you'd be happy for a taste of home.~
== BVICON ~Where drow concoctions are concerned, fool, it can be difficult seperating simple beverages from poison. A single dose of the wrong kind could leave you hanging between life and death.~
== BC0DRAKE ~I've tried enough vile brews in my life to take my chances. Besides, you're a capable enough healer to give me a hand should I keel over, right?~
== BVICON ~The thought of having your life potentially in my grasp is tempting... but no. You've wasted enough of my time.~
EXIT

// Xan

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeXan1","GLOBAL",0)~ THEN BXANNN C0DrakeXan1
~Among this hopeless lot, it is refreshing, at least, to see one who embraces the futility of our lives, Drake.~
DO ~SetGlobal("C0DrakeXan1","GLOBAL",1)~
== BC0DRAKE ~What, who? Is there someone else with us I'm not aware of? Besides you, that is.~
== BXANNN ~I speak of you, of course.~
== BC0DRAKE ~Ha! You must be joking. I find life to be quite a delight.~
== BXANNN ~Yet you choose to waste away what life you have in your vices. Whether you know it or not, you have accepted your doom, and are resigned to it.~
== BC0DRAKE ~You, my friend, take things too seriously. Next time we find ourselves at a bar, you should help yourself to a drink or two. That'll turn your misery upside-down in a jiffy.~
== BXANNN ~Regretfully, I must decline. I have no doubt your human beverages will fog my mind and cause me to forget about the doom we will inevitably face.~
EXIT

CHAIN IF ~InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeXan2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeXan2
~So you believe that life is futile, Xan. Why not squeeze out what enjoyment you can, then, if all is doomed?~
DO ~SetGlobal("C0DrakeXan2","GLOBAL",1)~
== BXANNN ~Why? (sigh) Because it is pointless, why else? Seeking out pointless delusions to amuse me briefly will only make the inevitable more painful.~
== BC0DRAKE ~Oh, come now. It can't be worse than the pile of misery that you already are, can it?~
== BXANNN ~If there is one thing that my experiences have taught me, then it is that everything can always get worse.~
== BC0DRAKE ~True. So what shall you do, just mope around until you finally reach rock bottom?~
== BXANNN ~I could, but what is the point? (sigh) It will happen one way or another.~
EXIT

// Xzar 

CHAIN IF ~InParty("Xzar")
See("Xzar")
AreaType(WEATHER)
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeXzar1","GLOBAL",0)~ THEN BC0DRAKE C0DrakeXzar1
~Perhaps your madness has overtaken your senses, or your mother simply never taught you right, but you do realize it is raining, Xzar? Perhaps covering your head would be appropriate.~
DO ~SetGlobal("C0DrakeXzar1","GLOBAL",1)~
== BXZAR ~Now why would I ever do such a thing? And why would Mommy ever teach me that? Isn't the rain delightful? Why, I'm positively glowing with joy here! I can barely resist the urge to sing!~
== BC0DRAKE ~Please don't.~
== BXZAR ~Oh, don't be such as killjoy dafferdoodle. I'll have you know I can make quite a merry tune! Of course, 'tis better when accompanied with instruments made of human bone and bloody sinew, but even without, 'tis worth hearing!~
== BC0DRAKE ~Yes, I am sure, Xzar, yet I have a sinking suspicion that your tones would be more lethal than the magic you wield. And that, my mad friend, is no easy feat.~
== BXZAR ~Hmf! Be that way, if you must. I will simply skip the singing and go straight into the dance routine instead! Oh, gorgeous, rainy, gloomy day!~
== BC0DRAKE ~You'll regret that when you end up with a case of shivers tonight.~
== BXZAR ~I know, Drake, wouldn't that be wonderful?~
== BC0DRAKE ~*snort* Perhaps you getting drenched will be to all our benefits after all. If nothing else, it'll at least do something about that revolting stench.~
EXIT

CHAIN IF ~InParty("Xzar")
See("Xzar")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeXzar2","GLOBAL",0)~ THEN BC0DRAKE C0DrakeXzar2
~Skinned a few rabbits or two today, Xzar? I can't imagine why else you would be looking so cheerful.~
DO ~SetGlobal("C0DrakeXzar2","GLOBAL",1)~
== BXZAR ~Fie on you! Who would be so foolish as to SKIN a rabbit?! I adore the little beasts, did you not know that?~
== BC0DRAKE ~Do you really?~
== BXZAR ~Oh, most certainly. I do so enjoy watching their skeletons do a little jig.~
== BC0DRAKE ~So long as you're not the one rending the flesh off their bones, I take it?~
== BXZAR ~Why, I think you are beginning to understand me, Drakey.~
== BC0DRAKE ~I wish I weren't.~
EXIT


// Yeslick

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeYeslick1","GLOBAL",0)~ THEN BYESLI C0DrakeYeslick1
~I've met a few Tyrrans in me life, lad, and each one of 'em were of outstanding character. What's caused ye to be so different then, eh?~
DO ~SetGlobal("C0DrakeYeslick1","GLOBAL",1)~
== BC0DRAKE ~It's the beard, of course. It does things to your soul, let me tell you.~
== BC0DRAKE IF ~InParty("AJANTIS")~ THEN ~Look at Ajantis, for example. You don't see a hair on his chin now, but when you do, he'll be making passes at the ladies in no time.~
== BAJANT IF ~InParty("AJANTIS")~ THEN ~I will do no such thing!~
== BC0DRAKE IF ~InParty("AJANTIS")~ THEN ~You keep telling yourself that, kid.~
== BYESLI ~'Tis character I speak of, lad, not appearances. Forgive me for saying so, but on that front, ye be... unusual.~
== BC0DRAKE ~Look, Yeslick, old man, what do you want me to tell you? We're not all unthinking machines in the church of Tyr. Most of us, sure, but some of us can enjoy life a little.~
== BYESLI ~Aye, but from yer habits, ye don't seem much o' a fit for servin' the god of justice. Why does ye stay?~
== BC0DRAKE ~I serve justice as much as the next man, old man. Just... with a warrior's hammer rather than a judge's.~
EXIT


// EE

// Neera

CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeNeera","GLOBAL",0)~ THEN BC0DRAKE C0DrakeNeera
~You're been watching me for a while now, Neera. Got something to confess? Don't worry, I'm used to it.~
DO ~SetGlobal("C0DrakeNeera","GLOBAL",1)~
== BNEERA ~Ew, no. I was just thinking about how weird you are.~
== BC0DRAKE ~Me, weird? Isn't this a case of the pot calling the kettle rotten?~
== BNEERA ~Err... don't you mean 'pot calling the kettle black'?~
== BC0DRAKE ~I prefer my version of the saying.~
== BNEERA ~See what I mean? Weird.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeNeera","GLOBAL",1)~ THEN BNEERA C0DrakeNeera2
~Hey, weirdo. Got a minute?~
DO ~SetGlobal("C0DrakeNeera","GLOBAL",2)~
== BC0DRAKE ~Of course. Unless you're trying to make me a victim of your chaotic magic. If that's the case, I think I'll stay where I'm at.~
== BNEERA ~Ha! Don't worry, I won't surprise you with any thing wild... intentionally. Though I was going to ask... you don't seem *that* afraid of what I could do to you.~
== BC0DRAKE ~Why should I be? I've braved fireballs and lightning storms in the past. I'm sure a horde of squirrels is nothing in comparison.~
== BNEERA ~It... could be much worse though, all joking aside. You know that, don't you?~
== BC0DRAKE ~Do I enjoy the thought that a demon may leap from your bosom at any moment while we're travelling together? Not particularly. But it's not as though blaming you for it would solve much. So long as <CHARNAME> keeps us together, I... try not to think about it.~
== BNEERA ~Oh. That's... surprisingly nice of you, Drake. Thanks.~
== BC0DRAKE ~Ha! Don't thank me. A bit of color change is a fair price to have such a looker within sight at all times.~
== BNEERA ~Ugh. You're still a weirdo though. Sorry!~
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeRasaad","GLOBAL",0)~ THEN BC0DRAKE C0DrakeRasaad
~You know, Rasaad... I reckon I haven't seen many like you back home.~
DO ~SetGlobal("C0DrakeRasaad","GLOBAL",1)~
== BRASAAD ~Truly? Calimshan and Amn are not so far apart.~
== BC0DRAKE ~No, I see plenty of those. Traders, mercenaries, smugglers... but you aren't any of those. You're not here to fill your pockets.~
== BRASAAD ~Monks of the Sun Soul Order frown upon materialism, that is true, but... are you suggesting you have never seen a Calishite free of greed?~
== BC0DRAKE ~I've seen a fair share, actually. I fought alongside a small band of Calishite soldiers along with the rest of my brother's squadron. They were good men, doing a thankless duty to feed their families. But those without any desire for personal gain tend not to stray far from their homes, as far as I've seen. What brought you out here, friend?~
== BRASAAD ~I have many reasons. Some are my own to know... but I assure you, my sole wish is to gift the light of Selune towards other by doing what good I can.~
== BC0DRAKE ~Ha! I've heard such bold claims before, but you... no, you're an honest person. A rare thing, to see a man who believes such things and so readily admits it. I think we'll get along just fine, Rasaad.~
== BRASAAD ~I hope we will. Thank you for your show of confidence, Drake.~
EXIT

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeRasaad","GLOBAL",1)~ THEN BC0DRAKE C0DrakeRasaad2
~Here, friend. Have a swig of this. I'm sure you of all people will know the taste well.~
DO ~SetGlobal("C0DrakeRasaad","GLOBAL",2)~
== BRASAAD ~Hmm... I do not think a taste is necessary. This scent alone is all too familiar. Where did you acquire Golden Sands of such quality, Drake?~
== BC0DRAKE ~I have a habit of collecting ales rarely seen in Amn. Found this beauty the last time we passed through a market. Thought you'd be more familiar with it, given where it came from.~
== BRASAAD ~I see.~
== BC0DRAKE ~Well? Come now, you won't leave a fine drink like this untouched now that it's been uncorked, will you? Drink up!~
== BRASAAD ~The monks of the monastery rarely allowed us to drink. They say it has an impact on our skills and balance.~
== BC0DRAKE ~We're not exactly close to Calimshan right now, and I'm sure a small swig's never hurt anyone, right?~
== BRASAAD ~(smile) You did not let me finish, my friend. As children, my brother and I were always curious of the bottles in the cellars, rarely touched, yet occasionally vanishing into nowhere. We thought surely nobody would notice if two more went missing.~
== BC0DRAKE ~And did you...?~
== BRASAAD ~I am a little ashamed to say that we did. My brother and I drank an entire bottle each, and by the morning, we had passed out on the ground after trying to invent a new fighting style. The other monks were... displeased, to say the least.~
== BC0DRAKE ~Ha! Now that's the kind of story I like to hear. I like you, Rasaad. You're a good man. Keep the bottle... I think you'd appreciate it far more than I.~
EXIT

// Dorn

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeDorn","GLOBAL",0)~ THEN BDORN C0DrakeDorn
~Stay out from my sight, pawn. Your sauntering is an eyesore.~
DO ~SetGlobal("C0DrakeDorn","GLOBAL",1)~
== BC0DRAKE ~Is walking a crime now, Dorn? Is it a habit for you to butcher anyone that offends you?~
== BDORN ~I will, if you refuse to obey. You should know you stand no chance if I chose to.~
== BC0DRAKE ~Don't be so sure of that, big man. I've knocked down larger bricks than you in my life.~
EXIT

CHAIN IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0DrakeDorn","GLOBAL",1)~ THEN BC0DRAKE C0DrakeDorn2
~Dorn, what amount of desperation would drive someone to sell his soul for simple revenge? By the way - since I know you're not the smartest person - that was a rhetorical question, don't actually answer. Assuming you understand what rhetorical means, that is.~
DO ~SetGlobal("C0DrakeDorn","GLOBAL",2)~
== BDORN ~I understand enough to know when I am being provoked, pawn. Make sure you understand this in return: it is only by the word of <CHARNAME> that you live. Should that change, you will not notice your head leaving your shoulders before it is too late.~
== BC0DRAKE ~Does that not make you yourself a pawn to <CHARNAME>'s command? You'd need <PRO_HISHER> say so in order to kill me, as you desire to so badly?~
== BDORN ~Hmm. You may think yourself clever for saying such words, but I am ready for them. I consider <CHARNAME>'s commands because <PRO_HESHE> is a person with the potential for power and greatness. You, however, are fatally lacking in both.~
== BC0DRAKE ~I've never denied that part of myself. But I've known great men.~
== BDORN ~What foolishness would you consider greatness, pawn? Go on. Amuse me.~
== BC0DRAKE ~I knew a man that, even while wearing the shackles of age, lead a squadron against three-to-one odds and took victory while staring death in the eye, burying his hammer in the enemy general's armor. I knew a man who shone like the sun and led a hundred men all willing to die for him, up until he gave up his life for the cause he lived for.~
== BC0DRAKE ~You, I'm afraid, can hardly measure up to either.~
EXIT