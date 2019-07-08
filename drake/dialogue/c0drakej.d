BEGIN C0DRAKEJ

// PC Talks

// TALK 1

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",2)~ THEN C0DRAKEJ t1
~I think you deserve at least a little praise for what you've accomplished so far, <CHARNAME>, for someone so new to this life. It takes some skill to bring down one as powerful as Bassilus... even if he was utterly mad, still, quite impressive.~ [C0DRAK02]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~How did you know I'm new to this?~ + t1.1
	++ ~I intend to do much more than just that.~ + t1.2
	++ ~Thank you for the compliment.~ + t1.3
	++ ~We don't have the time to talk right now.~ + t1.0
	
APPEND C0DRAKEJ

IF ~~ t1.0
SAY ~Ha! So, you prefer action over words? Fair enough, then... I shall watch you act... quietly, if you prefer.~
IF ~~ EXIT
END

IF ~~ t1.1
SAY ~It wasn't hard to tell. You have the sort of caution and wonder present in those who have just recently been exposed to the wider world. In a decade or two, you tend to lose that part of yourself.~
IF ~~ + t1.4
END

IF ~~ t1.2
SAY ~Oh, I'm certain. But you'd best not let that confidence get ahead of you... it tends to end badly if you don't keep it under control.~
IF ~~ + t1.4
END

IF ~~ t1.3
SAY ~Don't get too used to it. As those few close to me would say, I have a tendency to be... crude with my words.~
IF ~~ + t1.4
END

IF ~~ t1.4
SAY ~Still, this is but the beginning of what I suspect will be quite an interesting bit of camaraderie. Perhaps you will continue to impress, or begin to disappoint me with mediocrity. Who knows?~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~Oh, I'll impress you, alright. You'll be falling head over heel for me soon enough.~ + t1.5
++ ~Are all followers of Tyr as big of an arse as you?~ + t1.6
++ ~I hope I'll live up to your expectations.~ + t1.7
++ ~Just follow me. I'll show you a thing or two to be impressed by.~ + t1.8
END

IF ~~ t1.5
SAY ~Well now, is that a challenge? Well, it's one I'll be happy to accept, <CHARNAME>.~
IF ~~ + t1.9
END

IF ~~ t1.6
SAY ~Oh, no. There's not another like me, I'm afraid. I just happen to be the one you were unfortunate enough to meet first.~
IF ~~ + t1.9
END

IF ~~ t1.7
SAY ~Oh, you're not around to impress me, my friend. Don't forget that.~
IF ~~ + t1.9
END

IF ~~ t1.8
SAY ~Ha! You're confident, good. I like that. Most of the kids as young as you that I've met would be quivering in their boots.~
IF ~~ + t1.9
END

IF ~~ t1.9
SAY ~I'll have plenty of time to see whether you're a rising star or if you'll burn and fade, but we'll make no progress standing around talking about it, hmm? Lead on, my young friend.~
IF ~~ EXIT
END
END

// TALK 2

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",4)~ THEN C0DRAKEJ t2
~So what's this business with this man you're after, then? I suppose you've got some sort of personal grudge against him.~ [C0DRAK18]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
== C0DRAKEJ IF ~InParty("Imoen")~ THEN ~I've, ah, heard a thing or two from your friend, Imoen, but she'd rather you tell me yourself if you're willing. Not that any of this is my business at all, mind you.~
END
++ ~He killed my foster father, Gorion.~ + t2.1
++ ~I'm not going after anyone, Drake. I'm just out here to see the world.~ + t2.2
++ ~You're right, it is none of your business.~ + t2.0

APPEND C0DRAKEJ

IF ~~ t2.0
SAY ~Sure it isn't. I'll just keep my mouth shut then.~
IF ~~ EXIT
END

IF ~~ t2.1
SAY ~Ah. That's quite a reason to be after him, all right. So what do you intend should you succeed in finding him, then?~
++ ~I don't know. But he hurt me, and he's going to pay.~ + t2.3
++ ~I want to know why he killed Gorion, and why he's after me.~ + t2.4
++ ~To be honest, I'm just interested in the world outside Candlekeep.~ + t2.2
++ ~My reasons are my own, not yours, Drake.~ + t2.0
END

IF ~~ t2.2
SAY ~Sure, I can respect that. Still, a man who's so desperately after your head won't stop at one attempt, you know.~
IF ~~ + t2.5
END

IF ~~ t2.3
SAY ~Is that so? ~
IF ~~ + t2.5
END

IF ~~ t2.4
SAY ~Ah, yes. I suppose you'll see no rest so long as he's after your blood.~
IF ~~ + t2.5
END

IF ~~ t2.5
SAY ~Have you considered what kind of man this armored foe of yours is? Do you know anything of him, outside of your desire for revenge?~
++ ~He willfully worked with bandits. There's almost no chance he's a good person.~ + t2.6
++ ~Gorion considered him an enemy, and he was a good, righteous man. That's all I need to know.~ + t2.6
++ ~If you saw the black, twisted armor he wore, and the cruel eyes beneath his helmet, you'd know he's pure evil.~ + t2.6
+ ~Class(Player1,PALADIN_ALL)
!Kit(Player1,Blackguard)~ + ~I felt his aura. It was dark, cruel, violent... I know what he was, and if there is good in him, it was buried too deeply to see.~ + t2.6
++ ~I don't care what kind of person he is. He'll pay for what he's done to me.~ + t2.7
++ ~This isn't something I wish to share with a stranger like you. Leave me alone.~ + t2.0
END

IF ~~ t2.6
SAY ~Fair enough. I was only curious to see if you had considered if this enemy of yours truly deserves justice. It's good to see you've thought this through, at least.~
IF ~~ + t2.7
END

IF ~~ t2.7
SAY ~The world's not so simple as to separate good and evil as your friends and your enemies, <CHARNAME>... I just hope you realize that.~
= ~But I think I've poked at your intentions and personal matters enough this time. I'll leave you to your thoughts... for now.~
IF ~~ EXIT
END
END

// TALK 3

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",6)~ THEN C0DRAKEJ t3
~The Sword Coast really is a home for the worst of mankind. I can't say the Order was wrong to send me here, even if it was only to get rid of me.~ [C0DRAK03]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~They wanted to get rid of you? Why?~ + t3.1
	++ ~There's decent people here too.~ + t3.2
	++ ~We don't have time to talk right now.~ + t3.0
	
APPEND C0DRAKEJ

IF ~~ t3.0
SAY ~If you say so.~
IF ~~ EXIT
END

IF ~~ t3.1
SAY ~I'm not exactly popular among my fellows in the Radiant Heart. They say I'm a bad influence.~
IF ~InParty("AJANTIS")~ + t3.3
IF ~!InParty("AJANTIS")~ + t3.4
END

IF ~~ t3.2
SAY ~Oh, for sure. But you can't deny the amount of scum we've encountered in all this vast wilderness, with no attempts at jurisdiction from any of the nearby settlements. They simply allow the evil to fester while pushing the responsibility to anyone convenient.~
= ~Can't say I care much for the Flaming Fist's incompetence either, for that matter. They'll go after the petty bread thieves like flies to a carcass, but when there's a psychotic murderer like Bassilus on the loose, they're about useful as a sack of cow crap.~
= ~Maybe the Order had something going when they said the Sword Coast needed justice. I can't say I disagree for once.~
++ ~You and the Order don't seem to see eye to eye.~ + t3.1
++ ~That's enough talk for now.~ + t3.0
END

IF ~~ t3.3
SAY ~You've got a whole room of people like our pretty boy Ajantis, and then you've got me. The black sheep, the one who's not content with just doing what I was told.~
IF ~~ + t3.4
END

IF ~~ t3.4
SAY ~Perhaps I haven't mentioned this yet, but there's a reason why I'm allowed to remain with the Order despite their disdain for me. My father, Durand Caulfield II, is one of the three prelates of the Athkatlan Order.~
= ~While he doesn't care much more for my attitude than anyone else in the Order, he'd consider me a disgrace if I resigned or were dismissed. For the sheer number of public displays of drunkenness alone, I expected to be kicked out several times over. It never happened.~
++ ~Do you do all that on purpose to annoy your superiors?~ + t3.5
++ ~Is your father the only reason you can't leave?~ + t3.6
++ ~There must be a reason why you act so differently from other members of the Order.~ + t3.7
END

IF ~~ t3.5
SAY ~Well, no. I mean, I do find it amusing to rile up the old tin-heads now and again, but that's not why I do it. It's complicated.~
IF ~~ + t3.7
END

IF ~~ t3.6
SAY ~Mm, well, I can't say he'd be all too happy if I did, but... I'm not exactly opposed to the Order. It's just that we don't always see eye to eye.~
IF ~~ + t3.7
END

IF ~~ t3.7
SAY ~You see, things weren't so bad when I was just the squire for some old knight, cleaning his armor and carrying his sword for the first few years. But when I was done with that, I was set loose for some, er, 'hands-on' experience in enforcing justice at home.~
= ~Bear in mind, I was born and raised in the capital of Amn, which was practically run by the Shadow Thieves. Deceit and corruption were around every corner, so I was quite glad to have a hand in countering some of it with what chances I had.~
++ ~That sounds like something you'd enjoy. What went wrong?~ + t3.8
++ ~You preferred being a lackey to a law enforcer?~ + t3.7a
++ ~We've talked enough for now.~ + t3.0
END

IF ~~ t3.7a
SAY ~No, not exactly. Those were boring times, for certain, but I was... blind to some awful truths then. I was quite excited at first, a faithful of Tyr, to have a chance at doing acts that would please my god.~
IF ~~ + t3.8
END

IF ~~ t3.8
SAY ~Thing is, I quickly learned it wasn't quite so simple. Wiping out underground coverts of slavers and thieves was simple business, but what I wanted to deal with were the snakes in the aristocracy. These weren't people I could go after with a hammer in hand.~
= ~I can't tell you how many corrupt nobles I brought to the attention of the Order, only to watch them go free because witnesses would mysteriously vanish or evidence was conveniently found at court.~
= ~It frustrated me, watching those I knew were despicable monsters walk the streets of Athkatla as free men, taunting me, continuing their acts. I brought their cases back up to the council and the Order, only to be rebuked repeatedly. I lost a lot of respect for both after those times.~
++ ~Why couldn't you bring them back to court?~ + t3.9
++ ~I've heard enough of this. Let's move on.~ + t3.0
END

IF ~~ t3.9
SAY ~You'd need to know how the nobility of Amn work to understand, <CHARNAME>. True, I am a noble by status, but the Caulfields began as commoners who rose up in status because of their heroism in war. The nobles, the 'real' nobles, treat us as worse than the lowest class.~
= ~It hardly helps my case when most of the bureaucracy come from one of those noble families, and at least half of them have the Shadow Thieves in their pockets. It's near impossible to achieve anything by law or justice.~
= ~So, when I was to take my first knighthood trial, I... ah, didn't attend. I didn't see the point, really, in donning shinier armor if it meant I had to be further restricted by the tenets of the Order. So I remained where I was, and was mocked by several of my younger fellows for it.~
++ ~That's why the other members of the Order have so little respect for you?~ + t3.10
++ ~But wouldn't becoming an actual knight give you more authority?~ + t3.11
++ ~I see. In any case, we should move on.~ + t3.0
END

IF ~~ t3.10
SAY ~Right. Of course, they don't know all my reasons behind it, they just think I'm a lazy bastard who'd rather drink his years away than make something of myself. Not that they're entirely wrong, mind you.~
IF ~~ + t3.16
END

IF ~~ t3.11
SAY ~Sure. At the same time, it would just paint a bigger target on my back, and the nobles would only have more contempt for me. There's an advantage to remaining unnoticed, as you're not registered as a threat.~
IF ~~ + t3.16
END

IF ~~ t3.12
SAY ~To go after those men I spoke of, the ones above the law, I've made some... sneaky friends through my love for drinking at bars. Pleasant people, honestly, if you can overlook their attempts at picking your pocket.~
= ~They get me bits and pieces that would help bring those arrogant bastards to justice, and I give them a fair hearing once they inevitably run afoul of the law.~
++ ~You work discreetly with law-breakers? That's not very noble of you.~ + t3.13
++ ~Does the Radiant Heart know you're collaborating with rogues?~ + t3.14
++ ~Why are you telling me this? Aren't you worried I'll spill your secrets?~ + t3.15
END

IF ~~ t3.13
SAY ~I never said I looked the other way. Bear in mind, a lot of these supposed 'law-breakers' end up as scapegoats for someone else's wrongdoing, and the courts are happy to let them hang.~
= ~I'd say I'm bending the rules of my faith a little, but if I had broken them, Tyr would have no doubt smited me a long time ago.~
++ ~So you think Tyr knows and approves of the way you act. But does the Order know?~ + t3.14
++ ~Aren't you afraid I'll tell this to someone else one day?~ + t3.15
END

IF ~~ t3.14
SAY ~No. If they did, I doubt even my father would be able to convince them not to banish me for good. They'd never admit that my ideas have any sort of logic behind them.~
IF ~~ + t3.16
END

IF ~~ t3.15
SAY ~Ha! To be honest, you'd realize the kind of person I was if you knew me better regardless. Better you know now rather than later, so you know that I'm honest.~
= ~Besides, out here where hardly anyone knows my name, you'd think anyone would know or care, much less believe you? I doubt it.~
IF ~~ + t3.16
END

IF ~~ t3.16
SAY ~I suppose if I were playing it safe, I shouldn't be telling you any of this, but... I think it'd be best if you knew the kind of person I am.~
= ~Would you trust me, now that you know I have less scruples than a typical man of my station? Or are you the sort that thinks along the same lines?~
++ ~Actually, knowing this makes me trust you more.~ + t3.17
++ ~I don't approve, but I know you have good intentions. I won't hold anything against you.~ + t3.17
++ ~I'm not sure I want someone like you in this group.~ + t3.18
END

IF ~~ t3.17
SAY ~Good, I was hoping you'd say that. I'll lose less sleep this way.~
IF ~~ + t3.19
END

IF ~~ t3.18
SAY ~It's your decision as to whether I stay or go, my friend. If that's how you want it, just say the word. Until then, here I am and here I'll stay.~
IF ~~ + t3.19
END

IF ~~ t3.19
SAY ~I think I've spoken all that I need to for one day. Carry on, if you will.~
IF ~~ EXIT
END
END

// TALK 4

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",8)~ THEN C0DRAKEJ t4
~How do you feel about all this killing, eh, <CHARNAME>? I can't imagine you're all too familiar with it while sheltered in that library of yours.~ [C0DRAK04]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~It's tough, but I get by. Why are you asking?~ + t4.1
	++ ~No, but I'm enjoying it.~ + t4.2
	++ ~I wish I didn't have to become so familiar with killing.~ + t4.3
	++ ~Don't bother me right now, Drake.~ + t4.0

APPEND C0DRAKEJ

IF ~~ t4.0
SAY ~Your call.~
IF ~~ EXIT
END

IF ~~ t4.1
SAY ~I probably shouldn't have sprung that on you all of a sudden. If you want to know why I asked, well... I don't mean anything by it. I'm just curious.~
= ~You seem like a decent kid, all things considered. I'm having a hard time looking back at all those bodies we've left behind and connecting them to you. Don't get me wrong... I'm not saying they didn't deserve to die, but... something about it just seems wrong.~
++ ~Like you said, I'm still new to this. I didn't choose this life.~ + t4.4
++ ~What about you, Drake? What was your first kill like?~ + t4.5
++ ~I'm not interested in talking about killing, Drake.~ + t4.0
END

IF ~~ t4.2
SAY ~That so? I hope you aren't going to start acting like that's a good thing. For your own sake.~
IF ~~ + t4.1
END

IF ~~ t4.3
SAY ~No decent person finds enjoyment in going around and sending people to the gods, <CHARNAME>. It's just what we have to do sometimes, much as we dislike it... sometimes, worse thing will happen if we don't kill.~
IF ~~ + t4.1
END

IF ~~ t4.4
SAY ~I'm aware of that. Still, it's rare for me to come to know someone forced to kill at your age... even rarer for someone whose survived this long against all the odds stacked against you.~
IF ~~ + t4.5
END

IF ~~ t4.5
SAY ~My first experience with fighting for my life, well... you might be disappointed to know it wasn't much of a shock for me. I didn't see my first real battle until I was in my twenties, when I enlisted in the army.~
= ~Amn wasn't in open war with any other human nations back then... so all I fought were orcs and goblinoids in the Sythillisian army. That was easy... I never thought of them as much more than monsters. I didn't realize how difficult killing could be until I had to turn my weapon upon my fellow man.~
= ~There was a bit of unfortunate business with a rebel uprising in an settlement close to the Amnian borders... it was supposed to be an easy task... put down the rebels, leave a warning, and go home. They weren't soldiers. They didn't have weapons or magic like the Sythillisians did. Well... I learned that sometimes, fighting can be more difficult when it isn't kill or be killed.~
++ ~Does that mean you took part in killing the rebels?~ + t4.7
++ ~What caused those people to rebel?~ + t4.6
++ ~I've had enough of your stories. Let's move on.~ + t4.0
END

IF ~~ t4.6
SAY ~Nothing. Even today, I don't know why... they weren't evil men. I suppose they were just poor folk who were tired of the way they were treated. They might've been going too far, but they didn't deserve to die.~
IF ~~ + t4.7
END

IF ~~ t4.7
SAY ~I'm not going to pretend my hands are clean. I helped my fellow soldiers kill them. One of the rebels, a boy around your age, as I recall, pointed a spear at me.~
= ~*snort* Actually, it wasn't much more than a metal point tied to the end of a stick. His hands were shaking, but he still made the first move. I swung back in retaliation, not to kill him, but to knock him out... but I had forgotten that it wasn't an orc I was fighting.~
= ~It's a whole different feeling when the blood and bits of broken skull on your weapon is colored red instead of black. I remember dropping my weapon and feeling as though I was about to retch. In fact... I did.~
++ ~That's horrible!~ + t4.8
++ ~You sound as though you regret it deeply.~ + t4.9
++ ~He attacked you. Why would you feel anything about killing him?~ + t4.10
++ ~Stop talking. I've heard enough of this sickening story.~ + t4.0
END

IF ~~ t4.8
SAY ~I agree. I felt the same way, even then... but my commanding officer didn't agree. He praised us for our success, even if it wasn't a dangerous job... and he even seemed disappointed that I had only killed that one boy.~
IF ~~ + t4.10
END

IF ~~ t4.9
SAY ~Is it that obvious? I guess it's difficult to pretend like I'm not.~
IF ~~ + t4.10
END

IF ~~ t4.10
SAY ~I didn't know if what I did was the right thing, but I did know what I felt mattered: that boy wasn't a threat, and he wasn't my enemy. But I put him down just like the ogres and goblins I had slain before all the same.~
= ~Needless to say that I felt disillusioned with the army afterwards. I almost resigned after that, even though it would've disgraced me... if not for my brother, I likely would have.~
++ ~Your brother?~ + t4.11
END

IF ~~ t4.11
SAY ~Ah. I've said a bit more than I care to. I wouldn't mind telling you all about my dear brother, but I feel like I shouldn't be talking about him in the same conversation as my gruesome experience. Let's save that for another time.~
IF ~~ EXIT
END
END

// TALK 5

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",10)~ THEN C0DRAKEJ t5
~Aaaand fifty-five... fifty-six... ha!~ [C0DRAK05]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~Is the shirtlessness practical, or is it meant to entice me?~ + t5.1
	++ ~Not bad. I see you're used to this.~ + t5.2
	++ ~Working out, hmm? Mind if I join you?~ + t5.3
	++ ~Get some rest, Drake. We need you at full strength in the morning.~ + t5.0
	
APPEND C0DRAKEJ

IF ~~ t5.0
SAY ~In a moment, <CHARNAME>... fifty-nine! I'm afraid I still have a bit less than halfway to go. Hnnghhh... ha, sixty! I'll be awake and ready by the dawn, no fear.~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5.1
SAY ~Ha! You decide which you would prefer, <CHARNAME>. Fifty-eight!~
IF ~~ + t5.2
END

IF ~~ t5.3
SAY ~By all means, go ahead. I'm afraid you're about sixty push-ups behind if you intend to match me, but some lighter training never did anyone harm.~
IF ~Gender(Player1,FEMALE)~ + t5.4
IF ~!Gender(Player1,FEMALE)~ + t5.2
END

IF ~~ t5.4
SAY ~Although I can't help but enjoy the thought of watching a lady down and sweaty at my side rather than over or under me for a change. Go on, if you're still interested.~
++ ~I think not. You've just killed my interest.~ + t5.5
++ ~I'm surprised you've ever had a woman above or under you with those remarks.~ + t5.6
++ ~Well, move over. I might as well get started.~ + t5.7
++ ~You pig! Forget it, I'm going to bed.~ + t5.8
++ ~I'll pass. You get some rest soon, Drake, it's going to be a long day tomorrow.~ + t5.0
END

IF ~~ t5.5
SAY ~What a pity. I suppose you'll just have to stay and watch the eye-candy then. Or would you rather leave?~
IF ~~ + t5.2
END

IF ~~ t5.6
SAY ~Ha! Touche, <CHARNAME>, that blow struck home.~
IF ~~ + t5.2
END

IF ~~ t5.7
SAY ~Certainly. You're welcome to get closer as well, if you wish it.~
IF ~~ + t5.2
END

IF ~~ t5.8
SAY ~Ha! Worry not, <CHARNAME>, I was merely trying to get a rise out of you. Go on, then. I'll see you in the dawn.~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5.2
SAY ~Perhaps you've never experienced it, but this was common practice while I was in the Amnian army. It was even more rigorous than what you see me doing right now. The mere mention of the drills you had to perform left the new recruits shaking down to their knees.~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~Really, now? But not a strong, brave, tenacious man like you, right?~ + t5.9
++ ~I'm sure the sight of the shirtless, sweaty men around kept you motivated though.~ + t5.10
++ ~What was it like in the army?~ + t5.11
++ ~Why am I even hearing this? I'm off to bed, excuse me.~ + t5.x
END

IF ~~ t5.x
SAY ~That's too bad. I'll be done and ready for bed soon, so you go on ahead.~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t5.9
SAY ~Ha! 'Tenacious' is plenty, but I'll take the rest with pride.~
IF ~~ + t5.11
END

IF ~~ t5.10
SAY ~Ha! That it may have. Though I have not doubt anyone could not have some feelings towards such a sight.~
IF ~~ + t5.11
END

IF ~~ t5.11
SAY ~You've never been in an army, have you? It was quite an experience. There was the good and the bad. It built discipline and mutual trust, but then there were also the fools trying to outdo each other like it was some academic course. And the rations? Don't even get me started on those. You haven't ever bitten into anything less chewable than Amnian hardtack, believe me.~
= ~Of course, for me, it was more of an opportunity. To keep up with my brother Gabriel, that is.~
+ ~!GlobalGT("C0DrakeCaulfield","GLOBAL",1)~ + ~Gabriel?~ + t5.12
+ ~GlobalGT("C0DrakeCaulfield","GLOBAL",1)~ + ~You've mentioned that name before. He's your elder brother, right?~ + t5.13
++ ~I've heard enough. It's time to rest.~ + t5.x
END

IF ~~ t5.12
SAY ~Have I not mentioned the name before? Gabriel was my elder brother.~
IF ~~ + t5.14
END

IF ~~ t5.13
SAY ~Yes... he *was* my brother.~
IF ~~ + t5.14
END

IF ~~ t5.14
SAY ~Gabriel was a high-ranking officer within the military. When I completed the basics of my priestly training with the Tyrrans, he suggested that I join him at the army where my skills could be put to good use.~
= ~Usually, becoming a soldier means going through the approval of the bureaucracy, but... Amn was at war against orcs at the time, and the recruiters were desperate enough to even take criminals into their ranks. It didn't take much for me to join.~
= ~I ended up being little more than a flag-bearer... but I didn't care. I just wanted to be in the battlefield with my brother, and possibly break some orc skulls on the side.~
++ ~I can tell you respect your brother greatly. What was he like?~ + t5.15
++ ~Did you see battle, at least?~ + t5.16
++ ~That's enough. I'm going to bed.~ + t5.x
END

IF ~~ t5.15
SAY ~Gabriel was, without any doubt, the definition of a hero. Knight of the Order, commander of his own division, all his soldiers loyal to a fault, ready to die for him... how ironic that in the end, none of them got the chance, though plenty fell at his side.~
+ ~!GlobalGT("C0DrakeCaulfield","GLOBAL",1)~ + ~He died in the war?~ + t5.17
+ ~GlobalGT("C0DrakeCaulfield","GLOBAL",1)~ + ~I remember that you mentioned his death.~ + t5.17
++ ~Whatever. I'm off to bed, if you don't mind.~ + t5.x
END

IF ~~ t5.16
SAY ~Oh, for sure. Healers are a valuable asset within an army, and although I had only just finished my training, Gabriel accepted me into his platoon. It was not a promotion, officially... but as far as anyone was concerned, I had an important role.~
IF ~~ + t5.15
END

IF ~~ t5.17
SAY ~Yes... the fool. He died defending Murann from the ogre mage Sythillis.~
= ~It was a hopeless campaign, or at least I thought at the time. I tried to convince him of that, to fall back and seek an alternative, but he refused. "It's my duty as a knight of the Order," he told me. Damned fool... well, he got his wish, at least. Murann was saved... at the cost of his life, and that of half his men.~
= ~To this day I still don't know if it was worth it. Sythillis lives on, and will no doubt try again, whether it be soon or years from now. Gabriel's sacrifice bought us naught but time.~
++ ~You're saying your brother fought Sythillis himself?~ + t5.18
++ ~I'm sorry to hear that.~ + t5.19
++ ~At least he died honorably. Didn't he?~ + t5.20
END

IF ~~ t5.18
SAY ~*By* himself, one on one, from all accounts. Though I wasn't there to see it.~
++ ~You weren't there?~ + t5.21
++ ~You deserted him?~ + t5.22
++ ~I've no interest in hearing any more. Good night.~ + t5.x
END

IF ~~ t5.19
SAY ~Not as sorry as I was to not have been there to die with him.~
++ ~You weren't there?~ + t5.21
++ ~You deserted him?~ + t5.22
++ ~I've no interest in hearing any more. Good night.~ + t5.x
END

IF ~~ t5.20
SAY ~Oh, yes, very honorably, as my father loves to repeat. From all accounts, he fought Sythillis one on one. Though I wasn't there to see it.~
++ ~You weren't there?~ + t5.21
++ ~You deserted him?~ + t5.22
++ ~I've no interest in hearing any more. Good night.~ + t5.x
END

IF ~~ t5.21
SAY ~No, I wasn't. I abandoned him, and I'm not proud of it, even if it was him who gave the order. I would have fought Sythillis at his side and used my body as a shield if it meant Gabriel had the chance to end him right there.~
IF ~~ + t5.23
END

IF ~~ t5.22
SAY ~...~
= ~Bah... yes. I abandoned him, and I'm not proud of it, even if it was him who gave the order. I would have fought Sythillis at his side and used my body as a shield if it meant Gabriel had the chance to end him right there.~
IF ~~ + t5.23
END

IF ~~ t5.23
SAY ~He refused to either leave or allow me to stand with him, no matter how much I pleaded with him. I begged for him to see reason, but he wouldn't have it. What happened next? He died, that's what. Nobly, for certain, but what did it matter? It was a failure, no matter how you look at it.~
++ ~You seem to hold a grudge against your brother for dying. Why is that?~ + t5.24
++ ~But he didn't fail. His actions likely saved countless lives.~ + t5.25
END

IF ~~ t5.24
SAY ~I don't care how heroic his deeds seemed. He chose death without hesitation, without regard for what would happen the family, or the damned burden he placed on my shoulders by throwing his life away for a grab at glory. Selfish bastard...~
++ ~What burden are you talking about?~ + t5.26
END

IF ~~ t5.25
SAY ~He saved us? We lost him, and for nothing but some meager respite. He may have only delayed our demise.~
IF ~~ + t5.24
END

IF ~~ t5.26
SAY ~Nothing. It's nothing. I've spoken too much, and I'm tired regardless. Go to bed, <CHARNAME>. I'll do the same.~
IF ~~ DO ~RestParty()~ EXIT
END
END	

// TALK 6

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",12)~ THEN C0DRAKEJ t6
~Look, <CHARNAME>, I owe you an apology. You know, for my attitude last time. I didn't mean to go off on a tirade, I just tend to get worse than I usually am whenever my brother gets involved.~ [C0DRAK06]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~I understand. You were hit hard by his death.~ + t6.1
	++ ~Do you regret not fighting at his side?~ + t6.2
	++ ~We have no time for small talk right now, Drake.~ + t6.0

APPEND C0DRAKEJ

IF ~~ t6.0
SAY ~Heh, fair enough. You probably don't want me to start another rant. Move on, then.~
IF ~~ EXIT
END

IF ~~ t6.1
SAY ~I must seem like one ungrateful wretch for being angry for Gabriel for the dying. Yes, I know it's wrong, but if you knew the effects his death had on my family, and even more on my life, you'd understand... at least, I hope so.~
= ~Gabriel was meant to take my father's place as leader, both for the Order and our family. We were so focused on the thought that we never even stopped to consider what would happen if that suddenly became impossible.~
= ~I got pulled from the army and inducted into the Order not long afterwards. Bear in mind I was younger then, and I had foolish thoughts of getting revenge for my brother. Then suddenly I was told I wasn't permitted to do that, and I was going home to see father again.~
= ~Well, we did, and it wasn't pretty. By that point I had realized as second-born, I was next in line to take Gabriel's place. I never thought it would actually happen, and I certainly never wanted it. I argued with my father, calling him out on trying to force me into shoes greater than mine.~
= ~He didn't like that one bit. Our relationship... as well as my face for that matter, took a hit then, and it never fully recovered. Even today, we barely speak except for matters involving the Order.~
++ ~What about the rest of your family? Are you distant from them as well?~ + t6.3
++ ~I've heard enough.~ + t6.5
END

IF ~~ t6.2
SAY ~Well... maybe I do. But I'm grateful I'm alive, I'm not going to lie. I'm not... fearless, not in the way Gabriel was.~
IF ~~ + t6.1
END

IF ~~ t6.3
SAY ~Oh, no. True, I don't see them very often, but that's more due to circumstance than choice. I have a soft spot for my younger siblings. And my mother as well, even if she also wishes for me to man up and accept my responsibilities.~
= ~Sadly, Gabriel's death affected them badly as well. Mother fell ill from her grief and is still rather weak. Tomas, my brother, desperately wants to join the Order to live up to our heroic brother's legacy. Damn boy doesn't realize just what doing that really means.~
= ~Then, my sister, Claudia... Tyr's mercy, sometimes I'm glad she was still too young to understand. I couldn't bear to see her in such despair.~
IF ~~ + t6.4
END

IF ~~ t6.4
SAY ~When the Order of the Radiant Heart learned about the strain in relations between here and Amn, they wanted someone to investigate the iron crisis. I volunteered, mostly to get as far away from my father as possible.~
= ~The other knights were all too happy to be rid of me, as was my father, surprisingly. I thought he'd disapprove for fear that I would get myself killed out here, but perhaps I had pushed him to the point where he stopped caring and just wanted me gone.~
= ~It hasn't been a pleasant life since our family's loss. I think coming out here is the first time I've felt alive and free in a long time.~
++ ~But you'll have to go back eventually, won't you?~ + t6.5
++ ~Well, I'll be happy to keep you in the meantime.~ + t6.6
++ ~Have you ever considered just running away from it all?~ + t6.7
END

IF ~~ t6.5
SAY ~Don't remind me. Supposing I don't get myself killed in this hellhole, then yes, I'll have to return to Amn. But I can make the most of my freedom while I still may.~
IF ~~ + t6.8
END

IF ~~ t6.6
SAY ~Ha! You say that now, but I wonder how much longer you'll be able to tolerate me for? Nevertheless, I appreciate it.~
IF ~~ + t6.8
END

IF ~~ t6.7
SAY ~Oh, yes, many times. I could run away right now, and no one would know. But Tyr wouldn't approve, and neither would Gabriel. If not for that, I can't say I wouldn't have been tempted.~
IF ~~ + t6.8
END

IF ~~ t6.8
SAY ~Ahh, this blighted subject's getting me in the mood to drink myself into a pissing stupor, I'm afraid. Perhaps we should stop now before I decide to become a liability.~
IF ~~ EXIT
END
END

// TALK 7

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",14)~ THEN C0DRAKEJ t7
~You know, I've never understood why us Amnians held northerners in such contempt. You're not so different from our lot.~ [C0DRAK07]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
++ ~Is that a good or a bad thing?~ + t7.1
++ ~What do you mean by that?~ + t7.2
++ ~I wouldn't consider myself a northerner. Candlekeep isn't the same as the rest of the Sword Coast.~ + t7.3
++ ~Not now, Drake.~ + t7.0

APPEND C0DRAKEJ

IF ~~ t7.0
SAY ~As you wish. This wasn't anything important anyway.~
IF ~~ EXIT
END

IF ~~ t7.1
SAY ~Both, if I must be specific. I see the same flaws in the people here as the ones back home, but you're all far from the barbarians that Amnians like to consider you as.~
IF ~~ + t7.2
END

IF ~~ t7.2
SAY ~Amnians- at least, the upper-class, the only ones who like to give a damn- take pride in being 'cultured'. Never cared much for the idea myself, but it's a common theme of Amnian society.~
= ~We- Amnians, that is- tend to have a lot of pride, something that many consider the people of the Sword Coast lacking in. But I can't agree with the idea, not after spending some time in this land myself.~
++ ~It's good to know you hold that opinion. I can agree most Amnian nobles seem to look down on us.~ + t7.4
++ ~Why do our cultural differences or similarities interest you so much?~ + t7.5
++ ~Can we not talk about something so pointless to our goals?~ + t7.0
END

IF ~~ t7.3
SAY ~Fair enough. Perhaps I was being overly general with my comparison. You are indeed a special case.~
IF ~~ + t7.2
END

IF ~~ t7.4
SAY ~Well, they'd look down on anyone they judge beneath them. That's just how those with power are. But you're right, they do tend to hold a special distaste for foreigners.~
IF ~~ + t7.5
END

IF ~~ t7.5
SAY ~It just fascinates me that these two places, so close together, are so unaware of the similarities they have. Baldur's Gate and Amn distrust each other mutually, to the point of waging war the instant one side provokes the other, but they don't know the damnedest thing about each other.~
= ~At the heart of it all, I think it's just ignorance that leads to this distrust. Not just the sin of being ignorant, but being content with it. What's that common saying? "Ignorance is bliss?" I think that would be an appropriate to describe both sides.~
++ ~That's a very cynical thing to say. Do you think you're above such ignorance?~ + t7.6
++ ~What about me? Would you say that I'm ignorant?~ + t7.7
++ ~I've had enough of your arrogant whining, Drake. Let's move on.~ + t7.0
END

IF ~~ t7.6
SAY ~Me? Hells, no. I'm as ignorant as everyone else. I don't pretend to understand my own countrymen, never mind yours. But... I try and make an effort to. That's why I'm here, after all, in this land and in your company.~
IF ~~ + t7.8
END

IF ~~ t7.7
SAY ~Don't take it badly. Ignorance isn't necessarily a bad thing. I'd still consider both of us ignorant to each other. But I try to work past that, as I hope that you can. After all, I wouldn't have agreed to join you otherwise.~
IF ~~ + t7.8
END

IF ~~ t7.8
SAY ~I appreciate that you'd have the patience to listen to me talk about nothing. I personally find it rather enjoyable. But I think it's best if we continue this another time... if you're willing.~
IF ~~ EXIT
END
END

// TALK 8

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",16)~ THEN C0DRAKEJ t8
~Fancy a drink, <CHARNAME>? You're looking a mite peaked. Perhaps this could warm you up a little.~ [C0DRAK08]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
++ ~I'll pass, thanks.~ + t8.1
++ ~What is it?~ + t8.2
++ ~I don't drink, Drake.~ + t8.3
++ ~Sure, give me a taste.~ + t8.4

APPEND C0DRAKEJ

IF ~~ t8.0
SAY ~Your loss.~
IF ~~ EXIT
END

IF ~~ t8.1
SAY ~You sure about that? This isn't one of your regular cheap ales. Have a look for yourself.~
++ ~It's... what is it, exactly?~ + t8.2
++ ~Thanks, but I don't drink.~ + t8.3
++ ~If you insist. I'll try it.~ + t8.4
END

IF ~~ t8.2
SAY ~This, my friend, is firewine. A brewer I know once bought the recipe from a Rashemi traveller years ago. He called it 'jhuild', or at least, that's how I think it's said.~
= ~I was given a bottle of the stuff before I left home, and it's been sitting in my pack this whole time, unopened. Thought I'd share some of it with you.~
IF ~!InParty("Minsc") !InParty("Dynaheir")~ + t8.2d
+ ~InParty("Minsc") InParty("Dynaheir")~ + ~Why not share it with our Rashemi friends?~ + t8.2a
+ ~InParty("Minsc") !InParty("Dynaheir")~ + ~Why not share it with our Rashemi friend?~ + t8.2b
+ ~!InParty("Minsc") InParty("Dynaheir")~ + ~Why not share it with our Rashemi friend?~ + t8.2c
END

IF ~~ t8.2a
SAY ~I've offered. Our dear madam Dynaheir doesn't care for the stuff, though, and she recommended that I keep it away from our large friend. Apparently, it invokes one of his infamous rages. I'd rather not go and find a rock to hide under.~
IF ~~ + t8.2d
END

IF ~~ t8.2b
SAY ~I've offered. Our large friend declined, though, after telling me that his witch kept him away from the stuff. I didn't care to ask why.~
IF ~~ + t8.2d
END

IF ~~ t8.2c
SAY ~I've offered. Our dear madam Dynaheir doesn't care for the stuff, though.~
IF ~~ + t8.2d
END

IF ~~ t8.2d
SAY ~If you're not interested, I suppose I'll just let it sit in my pack for a while longer. Seems like a shame to let such an exotic drink gather dust, though.~
++ ~In that case, give me a swig of it.~ + t8.4
++ ~I'll pass. I don't drink.~ + t8.3
END

IF ~~ t8.3
SAY ~Well, it's never too late to start. Might be a bit rough for your first drink, but are you certain? It's quite worth the experience.~
++ ~Hmm, I admit I'm curious. Alright, I'll try it.~ + t8.4
++ ~No, and that's final.~ + t8.0
END

IF ~~ t8.4
SAY ~There's a good <PRO_MANWOMAN>.~
+ ~CheckStatGT(Player1,15,CON)~ + ~Cheers!~ + t8.5
+ ~CheckStatLT(Player1,15,CON)~ + ~Cheers!~ + t8.6
++ ~On second thought, I don't think I want to try this.~ + t8.0
END

IF ~~ t8.5
SAY ~Not bad. You've clearly got a stronger stomach than most. Sure you're not feeling the heat?~
++ ~That wasn't too bad.~ + t8.5a
++ ~It's disgusting! What's in it?~ + t8.5b
++ ~Mmm, I think I want another taste.~ + t8.5c
END

IF ~~ t8.5a
SAY ~Right? I mean, sure, it feels as though your mouth's on fire at first, but just wait for the aftertaste.~
IF ~~ + t8.7
END

IF ~~ t8.5b
SAY ~Who knows? It tastes like fruit juice and peppers to me, but you don't just make liquid fire without putting in something special.~
IF ~~ + t8.7
END

IF ~~ t8.5c
SAY ~Hey, hold it! You drink the whole bottle and your stomach will regret it in the evening. Also, there won't be any more for me.~
IF ~~ + t8.7
END

IF ~~ t8.6
SAY ~Ha! I should've warned you it doesn't go down easily. You should have a look at your face, <CHARNAME>.~
++ ~*cough* Ack! My throat burns!~ + t8.6a
++ ~Was this supposed to be funny?~ + t8.6b
END

IF ~~ t8.6a
SAY ~Aye, that tends to happen the first time around. The aftertaste is much better, though, just wait.~
IF ~~ + t8.7
END

IF ~~ t8.6b
SAY ~Maybe a little. I admit I wanted to see whether your face would go red after the first swallow.~
IF ~~ + t8.7
END

IF ~~ t8.7
SAY ~Now that you've had your turn, hand it over. I want some of that.~
= ~*cough* *hack* ahh... that hits the spot. It might burn your tongue, but it sure does warm the heart.~
++ ~Was there any reason you wanted to share this with me?~ + t8.8
++ ~This was fun, but we should get moving.~ + t8.9
END

IF ~~ t8.8
SAY ~I'm not sure. I needed the company, and I thought you'd appreciate the break. It's been a rough few days for the both of us.~
= ~Usually I'm well used to travelling, working and drinking alone, but, eh, having company that doesn't get tired of me is pleasant enough, I'll give you that. I suppose I should thank you for tolerating me this far.~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~Why, Drake, are you growing fond of me?~ + t8.10
++ ~I should thank you for staying.~ + t8.11
++ ~We'd best move on. There's still more to do.~ + t8.9
END

IF ~~ t8.9
SAY ~Sure, it's your call. But we'd best finish the bottle before we move on.~
IF ~~ EXIT
END

IF ~~ t8.10
SAY ~Ha! Well now, let's not go that far just yet. We don't want to get too attached at a time where either of us could drop in an instant, you know?~
IF ~~ + t8.12
END

IF ~~ t8.11
SAY ~Come now, do you have to thank me for such a little thing? Then again, who wouldn't appreciate my company? Ha!~
IF ~~ + t8.12
END

IF ~~ t8.12
SAY ~Ahh, blast it. Looks like the bottle's almost empty. Guess that means we'd better move on. Maybe some time we could spend some time like this again?~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~With you? Absolutely.~ + t8.13
++ ~That sounds good to me.~ + t8.13
++ ~We'll see. Let's go.~ + t8.14
END

IF ~~ t8.13
SAY ~Good, I'll be waiting... and hopefully I'll find another brew worth sharing in the meantime.~
IF ~~ + t8.14
END

IF ~~ t8.14
SAY ~I'm right behind you... friend.~
IF ~~ EXIT
END
END

// TALK 9

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",18)~ THEN C0DRAKEJ t9
~It's good that we managed to put a stop to those scum working in those mines, but I'll admit the whole affair still leaves a bitter taste in my mouth.~ [C0DRAK09]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
== C0DRAKEJ ~We've scored a victory this day, but we're not finished yet, are we? So what now, <CHARNAME>? Do we find this 'Iron Throne' and face them head on?~
END
++ ~Do you have any better ideas?~ + t9.1
++ ~Would Amn be able to take action against them?~ + t9.2
++ ~We head to Baldur's Gate, find the Iron Throne's headquarters, and do what we have to.~ + t9.3
++ ~Not stand around and chatter, for one. Let's get moving.~ + t9.0

APPEND C0DRAKEJ

IF ~~ t9.0
SAY ~Fair enough. Just... take some time to think about what we're up against.~
IF ~~ EXIT
END

IF ~~ t9.1
SAY ~Oh, not at all. I wasn't saying that was a bad idea. But I think you'd best understand what we're facing before it's too late.~
IF ~~ + t9.4
END

IF ~~ t9.2
SAY ~Ha! Not bloody likely. Remember, things are already tense within the borders of here and Amn. If either side makes a single move, there'll be war in an instant. I'm afraid we're on our own.~
IF ~~ + t9.4
END

IF ~~ t9.3
SAY ~Ha! You make it sound simple enough. I hope you realize what we're up against, my young friend.~
IF ~~ + t9.4
END

IF ~~ t9.4
SAY ~You're up against something greater than mere bandits and scoundrels now, <CHARNAME>. There's a great power behind all of this. I don't doubt you already know that, but have you considered whether you're prepared for what comes next?~
++ ~After all I've been through, how much worse can it get, really?~ + t9.5
++ ~It doesn't matter whether I'm prepared or not. I can't just give up.~ + t9.6
++ ~That's my own problem to consider. I don't want to talk to you about it.~ + t9.0
END

IF ~~ t9.5
SAY ~You've got me there. Even if we have foes stronger than our dead wizard back there, strangely, I can't see them beating you. Not for good, at least.~
IF ~~ + t9.7
END

IF ~~ t9.6
SAY ~Oh, giving up is easy if you truly wanted to. But that'd be a sorry way to end this, I agree. I don't have any doubts you'll succeed. I'm just wondering if you did.~
IF ~~ + t9.7
END

IF ~~ t9.7
SAY ~It's been a long time since I've followed someone as... determined as you are. Gabriel was much like you, until I lost him... and at the time, I thought he was one of a kind. I suppose I was wrong.~
++ ~So can I assume you no longer doubt me?~ + t9.8
++ ~You have that little faith in others?~ + t9.9
++ ~I'm glad to hear you admitting you're wrong for once.~ + t9.10
++ ~Good. Now let's get moving.~ + t9.11
END

IF ~~ t9.8
SAY ~Did I ever claim to? If you believe I ever doubted you, <CHARNAME>, that's entirely of your own doing.~
IF ~~ + t9.11
END

IF ~~ t9.9
SAY ~I have faith in you, at least. For the moment, that is more than enough.~
++ ~You're avoiding the question.~ + t9.9a
++ ~Good enough.~ + t9.11
END

IF ~~ t9.9a
SAY ~I suppose I am. I would like to believe in others, but... when you even doubt that the gods have our mortal lives in their best interests, well...~
= ~Perhaps I've been wrong to give up on others so quickly. Only time will tell.~
IF ~~ + t9.11
END

IF ~~ t9.10
SAY ~It's a rare thing, I know.~
IF ~~ + t9.11
END

IF ~~ t9.11
SAY ~Lead on, <CHARNAME>. I'll place my trust in you now, so make sure we succeed.~
IF ~~ EXIT
END

END

// TALK 10

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",20)~ THEN C0DRAKEJ t10
~Sorry about that business with Vance and the Shadow Thieves, <CHARNAME>. I know it was sudden and I shouldn't have pulled you into the whole mess.~ [C0DRAK10]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~I'm more concerned with the fact that you never bothered to tell me about Stoneheart.~ + t10.1
	++ ~Do you think the Shadow Thieves will want revenge for their agents?~ + t10.2
	++ ~It's fine. I'm always ready to deal with criminals.~ + t10.3
	++ ~Just don't bring it up again, Drake.~ + t10.0

APPEND C0DRAKEJ

IF ~~ t10.0
SAY ~Alright, if you say so.~
IF ~~ EXIT
END

IF ~~ t10.1
SAY ~To tell you the truth, it didn't occur to me until we encountered him. My past with Vance was something I was happier not thinking about.~
IF ~~ + t10.4
END

IF ~~ t10.2
SAY ~Doubt it, unless there was someone who slipped your notice, given that they were all killed. The guild's not likely to know until they realize their agents have gone silent.~
IF ~~ + t10.4
END

IF ~~ t10.3
SAY ~Well then, that's something we have in common. But I still shouldn't have put the decision on you to do anything about it.~
IF ~~ + t10.4
END

IF ~~ t10.4
SAY ~Looking back, it was probably nothing Vance and I couldn't have handled on our own. I just didn't trust him enough to go anywhere without someone by my side. Hope you can understand.~
++ ~If I might ask... you were calling him 'Stoneheart' when we first met him. Why the change now?~ + t10.5
++ ~But you trust him now, I assume?~ + t10.6
++ ~How did you come to know a man like Stoneheart to begin with?~ + t10.7
++ ~Do we really need to talk about this now? Save it for another time, Drake.~ + t10.0
END

IF ~~ t10.5
SAY ~I was still... frustrated with him. And seeing him again after so long brought back a lot of negative feelings over the way we parted years ago. It's a long story.~
IF ~~ + t10.7
END

IF ~~ t10.6
SAY ~Trust is something that isn't easily regained once it's lost, <CHARNAME>. I've seen proof that he's turned for good, but it'll take more than that for me to consider him so much as a friend again.~
IF ~~ + t10.7
END

IF ~~ t10.7
SAY ~I first met Vance during the time when Amn was warring against the orcish invasion. He was a scout in the army, and we occasionally crossed paths. Once, I treated an arrow wound he took while fleeing from an enemy unit and he repaid me by saving my life in turn.~
= ~When we defeated the orcs and went back to our normal lives, I parted ways with a lot of my old friends - those that didn't die in battle, that is - but not Vance. We tried to stay in touch, even though I was forced back to the Tyrran church while he became an agent of the council.~
= ~Eventually, we found we had a lot in common and became close friends, and once I finally had some freedom we worked together to fight against the criminals and slavers in Amn. I thought he was a genius, always knowing how those people operated.~
++ ~Then you found out he was once one of them?~ + t10.8
++ ~What happened next?~ + t10.9
++ ~I've heard enough of this tale.~ + t10.0
END

IF ~~ t10.8
SAY ~No, I never suspected a thing, or perhaps I chose to ignore the signs. He eventually told me himself.~
IF ~~ + t10.9
END

IF ~~ t10.9
SAY ~One evening, after we had achieved a great success by dealing a heavy blow to our enemies, the slavers, we... took the time to celebrate. Lots of drinks were involved, more than you've ever seen me indulge in. Then... we spent the night there, drunk off our arses.~
= ~The next morning... well, I'll give him credit for staying... he told me everything. About his past as a self-serving criminal, all the throats he cut to make his way up the ranks of the Shadow Thieves, even about the friends of mine he killed to stay above the law until they finally caught him.~
= ~I couldn't handle it. Once he finished talking, I just watched him. I was hung over, and prayed to Tyr it was all a nightmare before I finally punched him in the face and threw him out the tavern window.~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~That's so horrible... I can understand why you would react that way.~ + t10.10
++ ~I'm sorry. That must have been terrible.~ + t10.11
++ ~Wasn't that a bit of an overreaction?~ + t10.12
++ ~That's enough. I don't want to hear any more of this.~ + t10.1x
END

IF ~~ t10.1x
SAY ~Sure you don't. Even I'm not all too eager to recount it. Just forget I told you anything.~
IF ~~ EXIT
END

IF ~~ t10.10
SAY ~...no, I'm sure you can't. Even now, I don't really understand why I did it. It didn't solve anything.~
IF ~~ + t10.13
END

IF ~~ t10.11
SAY ~It was. I don't open up much to just anyone, and to be betrayed like that was... something else entirely.~
IF ~~ + t10.13
END

IF ~~ t10.12
SAY ~Maybe it was, but I just couldn't find the right words to spit at him at the time. I just desperately wanted to scream in his face. Now that I look back, a simple "get out" would have been appropriate?~
IF ~~ + t10.13
END

IF ~~ t10.13
SAY ~How would you have reacted, <CHARNAME>, if the person you thought to be a kindred spirit, a close companion, suddenly told you he is - was - everything you despised?~
+ ~PartyHasItem("SCRL2J")~ + ~You didn't know I was a Bhaalspawn. Did knowing that affect you?~ + t10.14
++ ~Same as the way you did, I suppose.~ + t10.13a
++ ~I would have at least taken some time to consider what I was doing.~ + t10.17
++ ~I don't know.~ + t10.16
END

IF ~~ t10.13a
SAY ~That's comforting to hear. Makes me feel a little less pitiful, at least. Ha!~
IF ~~ + t10.16
END

IF ~~ t10.14
SAY ~You didn't know what you were either, so that's different. And even if you did, you... you wouldn't have lied. I know that much.~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~I'm glad you trust me, Drake.~ + t10.15
+ ~!Global("C0DrakeMatch","GLOBAL",1)~ + ~I'm glad you trust me, Drake.~ + t10.16
END

IF ~~ t10.15
SAY ~More than simple trust. I... care, just as I believe you do... as you are caring for me right now.~
IF ~~ + t10.16
END

IF ~~ t10.16
SAY ~You're an admirable person, <CHARNAME>, I'll tell it to you straight. It may not sound like high praise, but the people I admire are few and far between.~
= ~Gabriel was one such man, but he's long gone. I thought Vance was worthy of becoming another, but then I learned just the kind of man he was - perhaps not a liar, but certainly a coward. How could I have any more faith in anyone after that?~
= ~But... it is good to know people of great character still exist. That, at least, has restored some hope in me.~
++ ~Thank you, Drake.~ + t10.18
+ ~Gender(Player1,MALE)~ + ~You should learn to have faith, my friend.~ + t10.19
+ ~Gender(Player1,FEMALE)~ + ~You should learn to have faith, my friend.~ + t10.20
++ ~I'm glad to hear it. Shall we move on?~ + t10.21
END

IF ~~ t10.17
SAY ~Yes, you certainly have that level of restraint which I lack. But that's a rare value for most people.~
IF ~~ + t10.16
END

IF ~~ t10.18
SAY ~No, thank you. If not for you, I doubt I would be feeling the way I do right now. I may not have lost all my cynicism yet... but this is a start, at least.~
IF ~~ EXIT
END

IF ~~ t10.19
SAY ~Ha! Now you're beginning to sound like Gabriel. Not that it's a bad thing, mind you. From me, that counts as praise.~
IF ~~ EXIT
END

IF ~~ t10.20
SAY ~Ha! Now you're beginning to sound like my mother. Not that it's a bad thing, mind you. From me, that counts as praise.~
IF ~~ EXIT
END

IF ~~ t10.21
SAY ~Certainly. After you, my hope-bringing friend.~
IF ~~ EXIT
END
END

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",22)~ THEN C0DRAKEJ t11
~Hey. Have a moment to spare?~ [C0DRAK11]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~Of course. What is it?~ + t11.1
	++ ~You sound unusually subdued. What's wrong, Drake?~ + t11.1
	++ ~Not right now, Drake.~ + t11.0

APPEND C0DRAKEJ

IF ~~ t11.0
SAY ~Fair enough. It wasn't anything that important anyway.~
IF ~~ EXIT
END

IF ~~ t11.1
SAY ~You've had me around for quite some time now, and you've had to endure my chatter all the while. Does it bother you?~
++ ~You never bother me, Drake.~ + t11.2
++ ~Not at all. Why are you so concerned?~ + t11.3
++ ~Maybe a little. You don't really hold back when you talk.~ + t11.4
END

IF ~~ t11.2
SAY ~Really. Well, that's good. I can't say I usually care for what others think of me, but you, well, that's become another matter...~
IF ~~ + t11.5
END

IF ~~ t11.3
SAY ~I'm usually not. But, well, you've tolerated me longer than anyone else I've met, family and friends included.~
IF ~~ + t11.5
END

IF ~~ t11.4
SAY ~No, I don't. The majority of people lost their patience with me quickly, but you've tolerated me for longer than anyone I know.~
IF ~~ + t11.5
END

IF ~~ t11.5
SAY ~Do you have a reason for being so patient with my nonsense? Or is that just the way you are?~
+ ~Global("C0DrakeMatch","GLOBAL",1)~ + ~I might not act the same for just anyone. I'm fond of you, Drake.~ + t11.6
++ ~You needed someone to talk to. What are friends for?~ + t11.7
++ ~I'm willing to tolerate it. After all, you're a useful ally.~ + t11.8
END

IF ~~ t11.6
SAY ~Ha! That's not something I hear a lot. "You look good today, Drake." "Your breath smells like ale, Drake." "Your hair looks like a hedgehog, Drake." But fondness? Can't say get much of that.~
= ~I appreciate it, really. If things weren't so complicated right now, I'd love to take you back home, show you the things I love about my land, but, well... I wonder if my parents would approve.~
IF ~~ + t11.7
END

IF ~~ t11.7
SAY ~In any case, I appreciate that you'd listen, <CHARNAME>. When I return to Amn, eventually, I'll speak well to you to anyone I know. You deserve to be recognized.~
IF ~~ EXIT
END

IF ~~ t11.8
SAY ~That's fair enough. I have to put up with a lot just to tolerate myself too.~
IF ~~ EXIT
END
END

// TALK 12

CHAIN IF ~Global("C0DrakeBhaalspawnTalk","GLOBAL",1)~ THEN C0DRAKEJ t12
~Well now, isn't that a rather dark expression you're wearing on your puss. Bad news?~ [C0DRAK12]
DO ~IncrementGlobal("C0DrakeBhaalspawnTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
	++ ~You could say that.~ + t12.1
	++ ~Just see for yourself.~ + t12.2
	++ ~It's nothing. Let's go.~ + t12.0

APPEND C0DRAKEJ

IF ~~ t12.0
SAY ~Ha! You definitely have something to hide. Have it your way, I'll find out one way or another.~
IF ~~ EXIT
END

IF ~~ t12.1
SAY ~It's hardly my place to pry into someone else's personal matters, but you look like you could use a sympathetic ear. More importantly, I'm curious to know. What has your late father told you?~
++ ~See for yourself. It's all written here.~ + t12.2
++ ~It says I'm a... Bhaalspawn. The child of a dead god.~ + t12.2
++ ~That's none of your business.~ + t12.0
END

IF ~~ t12.2
SAY ~...~
= ~I see. Well, I can't exactly blame you for making that face after finding out something like this, <CHARNAME>. You... sure this is genuine?~
++ ~I recognize Gorion's handwriting. It must be true.~ + t12.3
++ ~Gorion would have no reason to lie to me.~ + t12.3
++ ~I'm not sure. I hope it isn't.~ + t12.4
END

IF ~~ t12.3
SAY ~I'll have to take your word for it. After all, I never knew him. So... how do you feel?~
++ ~Are you worried I'll suddenly erupt into a murderous rampage?~ + t12.5
++ ~You don't seem all that shocked for someone who just found out he's been travelling with the spawn of Bhaal.~ + t12.6
++ ~I feel relieved. I always knew I was special.~ + t12.7
END

IF ~~ t12.4
SAY ~Which is just another way of saying you think it's possible, huh. I get it. So... how do you feel?~
++ ~Are you worried I'll suddenly erupt into a murderous rampage?~ + t12.5
++ ~You don't seem all that shocked for someone who just found out he's been travelling with the spawn of Bhaal.~ + t12.6
++ ~I feel relieved. I always knew I was special.~ + t12.7
END

IF ~~ t12.5
SAY ~Well, I'd be lying if I said I wasn't, but if I really thought learning about this would suddenly change you, I'd need my head checked. No, I'm asking about how you feel about yourself.~
IF ~~ + t12.8
END

IF ~~ t12.6
SAY ~Oh, you needn't worry on that end, I'm plenty shocked. You just can't see it on this face of mine, it's too used to looking smug and dashing.~
= ~Alright, ignore that last part. Now's not really the time for jokes, I know. What I wanted to know is how you feel about yourself, right now.~
IF ~~ + t12.8
END

IF ~~ t12.7
SAY ~Really now. Well, a word of advice for you, almighty god-child, being 'special' is not always a good thing. I wouldn't gloat just yet.~
IF ~~ + t12.9
END

IF ~~ t12.8
SAY ~You're not going to think any worse of yourself, even knowing this, are you? A word of advice - don't go there. It'd be a betrayal of yourself.~
= ~Some people have shadows in their past, but there's no point looking back at them and letting it affect you. Just keep moving on, with your head high, so you can make yourself better. That's what my brother taught me. Never thought much about those words, but I think they're appropriate for you.~
++ ~Thank you. That helps.~ + t12.8a
++ ~You're acting nice for a change. What's wrong with you?~ + t12.8b
++ ~This isn't what I want to here. Leave me alone.~ + t12.8c
END

IF ~~ t12.8a
SAY ~I certainly hope they do. Otherwise, I'll need to tell Gabriel that his words fell flat once I join him in Lunia. Ha! Assuming I ever make it there, that is.~
IF ~~ + t12.9
END

IF ~~ t12.8b
SAY ~Are you that surprised I've got a heart? Ha! True enough, my heart's made of tarnished gold, but it's gold nonetheless.~
IF ~~ + t12.9
END

IF ~~ t12.8c
SAY ~Ha! Have it your way. I might not be feeling so generous if it turns out you need my support later, though.~
IF ~~ EXIT
END

IF ~~ t12.9
SAY ~Ahh, enough of this. How about we find ourselves a place to down a few tankards and feel better about ourselves instead, <CHARNAME>? Perhaps that might cheer you up a little.~
++ ~I'll pass.~ + t12.10
++ ~That sounds good.~ + t12.11
END

IF ~~ t12.10
SAY ~If you say so. There hasn't been a problem I've encountered which couldn't be solved or at least put aside by drowning it in ale, though.~
IF ~~ EXIT
END

IF ~~ t12.11
SAY ~That's more like it. We'll forget all this Bhaalspawn and legacy nonsense by the next day, at least for a little while. Surely that's better than stewing about it here, don't you think?~
IF ~~ EXIT
END
END

// TALK 13

CHAIN IF ~Global("C0DrakeTalk","GLOBAL",24)~ THEN C0DRAKEJ t13
~You're really ready for this, huh? That Sarevok fellow is right ahead of us, if I'm not wrong. You really planning on killing him?~ [C0DRAK13]
DO ~IncrementGlobal("C0DrakeTalk","GLOBAL",1)
RealSetGlobalTimer("C0DrakeTalkTimer","GLOBAL",2700)~
END
++ ~Only if I must. If I have a chance to talk, I will.~ + t13.1
++ ~What other choice do I have?~ + t13.2
++ ~Yes, now be quiet and follow.~ + t13.0

APPEND C0DRAKEJ

IF ~~ t13.0
SAY ~Alright. This may be our greatest challenge yet, but... I'm with you regardless.~
IF ~~ EXIT
END

IF ~~ t13.1
SAY ~I doubt that madman will be willing to talk this out. Not someone with that... murderous look in their eyes.~
IF ~~ + t13.3
END

IF ~~ t13.2
SAY ~Not much, I'll admit. I suppose you could walk away, but I doubt it'd end at that.~
IF ~~ + t13.3
END

IF ~~ t13.3
SAY ~It's strange. You're both of the same divine blood, you and him, yet I see very little alike. I've been told that some are born with evil... but if that is so, then I see proof that it needn't become them.~
= ~Whatever you may have been born as, mortal or otherwise, I... don't think you'll end up like him, regardless of what anyone else may think. I think it's because of your blood that only you may stop Sarevok.~
++ ~You really think that?~ + t13.4
++ ~How can you be sure I won't become evil like him?~ + t13.5
++ ~Thanks, Drake.~ + t13.6
END

IF ~~ t13.4
SAY ~Sure. But I warn you, I've been wrong before. Hopefully this won't be one of those times.~
IF ~~ + t13.6
END

IF ~~ t13.5
SAY ~It's just... a feeling. You'll feel it when you know someone for long enough.~
IF ~~ + t13.6
END

IF ~~ t13.6
SAY ~This won't be an easy battle, I can tell. In case either of us ends up not making it through it, I'll say... it's been fun, <CHARNAME>. Following you was... the most worthwhile thing I've done in a long time.~
= ~When this is over, if I'm still alive, I'll need to return home to tell the Order... as well as my father... everything that's happened. That will have to include Sarevok's heritage... but I'll understand if you want your own to remain secret.~
= ~I can't promise they won't find out anyway, but... I owe you enough to respect your secrets, at least.~
++ ~You can tell them the truth. I don't want to burden you.~ + t13.7
++ ~I appreciate it.~ + t13.8
END

IF ~~ t13.7
SAY ~If you say so. But even if they know, I'll be sure to give them my thoughts, including all the good you've done. You deserve that much.~
IF ~~ + t13.9
END

IF ~~ t13.8
SAY ~Then my lips are sealed, <CHARNAME>. They won't find out... not from me, at least.~
IF ~~ + t13.9
END

IF ~~ t13.9
SAY ~But that's enough time we've wasted standing around here. Let's give this maniac a taste of the justice he deserves.~
IF ~~ EXIT
END
END

// Interjections

// Andout

I_C_T2 ANDOUT 0 C0DrakeANDOUT0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Good to see Amn and its neighbor still with arrows aimed at each others' necks. I've no doubt we'll find many men on the road just like this one, <CHARNAME>, running to both sides.~
END

// Alatos

I_C_T ALATOS 0 C0DrakeALATOS0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~I think you'll forgive me if I keep my weapon at hand regardless, thief.~
END

// Alyth

I_C_T ALYTH 0 C0DrakeALYTH0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Well now! I must have gone blind, for I am imagining beauty not of this world! Come now, my lady, won't you share a drink?~
== ALYTH ~Hmm. Unfortunately, I must decline.~
END

// Angelo

I_C_T ANGELO 0 C0DrakeANGELO0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~...Ha! Don't make me laugh. You're nothing more than a jester playing at authority. Careful that the weight of it doesn't crush you.~
DO ~SetGlobal("C0DrakeAngelo","GLOBAL",1)~
END

I_C_T ANGELO 4 C0DrakeANGELO4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Heh... best sleep lightly from now on, scum. Justice has a tendency of coming around.~
== ANGELO ~Perhaps it will, but not on my head. Think on that while you still live.~
END

// Arghain

I_C_T ARGHAI 0 C0DrakeARGHAI0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, I'm sure you can do better than that, big man. Maybe you won't even notice it when we deliver our iron right in your ugly face.~
END

// Bassilus

I_C_T BASSIL 0 C0DrakeBASSIL0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Well now, what's this supposed to be then?~
END

I_C_T BASSIL 2 C0DrakeBASSIL2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ha! As fascinating as this display of madness is, I think it's time we give this wretch the justice his victims deserve, don't you think, <CHARNAME>?~
END

I_C_T2 BASSIL 5 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~You've evaded me for far too long, Cyricist, now it's time for your just deserts. Pray, if you've still the mind for it.~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 6 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~You've evaded me for far too long, Cyricist, now it's time for your just deserts. Pray, if you've still the mind for it.~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 10 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~You've evaded me for far too long, Cyricist, now it's time for your just deserts. Pray, if you've still the mind for it.~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 11 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~You've evaded me for far too long, Cyricist, now it's time for your just deserts. Pray, if you've still the mind for it.~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 12 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~You've evaded me for far too long, Cyricist, now it's time for your just deserts. Pray, if you've still the mind for it.~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

I_C_T2 BASSIL 13 C0DrakeBASSIL5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~You've evaded me for far too long, Cyricist, now it's time for your just deserts. Pray, if you've still the mind for it.~
DO ~SetGlobal("C0DrakeBassilus","GLOBAL",1)~
END

// Bentan

I_C_T BENTAN 8 C0DrakeBENTAN8
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, this jester is dealing major injury to my sanity. I suggest leaving while we still have the chance.~
END

// Bentley

CHAIN IF WEIGHT #-1
~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("C0DrakeBentley","GLOBAL",0)~ THEN BENTLY C0DrakeBentley
~What can I do for... oh. It's you.~
DO ~SetGlobal("C0DrakeBentley","GLOBAL",1)~
== C0DRAKEJ ~That the way you treat all of your returning customers?~
== BENTLY ~Hmph.~
== C0DRAKEJ ~Is it because I'm Amnian? I must say, Bentley, I thought one as worldly as you would see past such prejudices.~
== BENTLY ~Don't put words in my mouth, boy. Amnian or no, it makes no difference in my establishment, but you... by Garl, if there were three of you I'd be out of business by the week's end. And your behavior... intimidates some of my other guests.~
== C0DRAKEJ ~Well, then perhaps you'll be pleased to hear that I won't be here to stay. At least... not for a while. Attend to <CHARNAME>'s needs. And bring me a tankard of your best ale while you're at it.~
== BENTLY ~*sigh* Yes, yes, I know.~
EXTERN BENTLY 1

// Berrun

I_C_T BERRUN 12 C0DrakeBERRUN12
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ho there! Drake Caulfield of the Order of the Radiant Heart, at your service. Rest assured, mayor, we'll get to the bottom of this.~
== BERRUN ~I can certainly trust in the word of a member of the Order. Godspeed, friends.~
END

I_C_T BERRUN 13 C0DrakeBERRUN13
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ho there! Drake Caulfield of the Order of the Radiant Heart, at your service. Rest assured, mayor, we'll get to the bottom of this.~
== BERRUN ~I can certainly trust in the word of a member of the Order. Godspeed, friends.~
END

I_C_T BERRUN 19 C0DrakeBERRUN19
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ho there! Drake Caulfield of the Order of the Radiant Heart, at your service. Rest assured, mayor, we'll get to the bottom of this.~
== BERRUN ~I can certainly trust in the word of a member of the Order. Godspeed, friends.~
END

// Bjornin

I_C_T2 BJORNI 1 C0DrakeBJORNI1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Justice is what I live for, brother. Though I think you'd rather see a healer and a hard drink first.~
END

// Centeol

I_C_T2 CENTEO 3 C0DrakeCENTEO3
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ha! Rather a waste of a question, but I can't say I wouldn't have asked the same thing. Well, let's get to work on pest control, aye?~
END

// Chase

I_C_T CHASE 0 C0DrakeCHASE0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Where I grew up, there'd be at least two nobles betting fifty crowns on whether you'd jump or not.~
== CHASE ~By my dear mumsey! What sort of hell hole were you raised in?~
END

// Chloe

I_C_T CHLOE 1 C0DrakeCHLOE1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Been a while since the fair officer passed through Beregost last. Well, can't hurt to see her.~
END

// Clair

I_C_T CLAIRD 0 C0DrakeCLAIRD0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Watch it! I rather value my neck, just as you value your pretty one, I'm sure. I see humans must not pass through here often.~
END

// Davaeorn

I_C_T2 DAVAEO 0 C0DrakeDAVAEO0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Well now, so you're the one in charge of this little slaving operation here, yes? You're sure? Good. Can't have us killing the wrong scumbag, after all.~
END

// Drizzt

I_C_T DRIZZT 0 C0DrakeDRIZZT0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Well now, do my eyes decieve me, or is that the legend himself, Drizzt Do'Urden I see? No doubt he has things under control as is, but I know men who would give their right hands to fight at his side. Shall we, <CHARNAME>?~
END

// Drunk

I_C_T2 DRUNK 4 C0DrakeDRUNK4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~...~
== C0DRAKEJ ~You know, <CHARNAME>... I think I might've just met my match.~
END

// Dun

I_C_T DUN 1 C0DrakeDUN
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~You sure you're not leaving out a few steps? No extortions, bad deals or people backstabbing you involved?~
== DUN ~Well, not really...~
== C0DRAKEJ ~Then I'd say you've gotten off lucky, my friend.~
END

// Flaming Fist

I_C_T FLAM5 0 C0DrakeFLAM50
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, this is rich. For a moment I thought I'd stepped on home ground without realizing it. How far are you behind your arrest quota that you'd resort to this, soldier?~
== FLAM5 ~Shut your mouth, Amnian. You're only giving us more reason to put you in chains.~
END

// Gallor

I_C_T GALLOR 1 C0DrakeGALLOR1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~I have a better idea. How about we 'remove' you instead and blame it on the hobgoblins, eh?~
== GALLOR ~Hey, let's talk about this!~
END

I_C_T GALLOR 17 C0DrakeGALLOR17
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ha! Not that I'd endorse demonic possession as a punishment, but this is about as much as he deserves. Taste justice, scum!~
END

// Gazib

I_C_T2 GAZIB 0 C0DrakeGAZIB0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~...How pleasant.~
END

// Hairtooth

INTERJECT HAIRTO 0 C0DrakeHAIRTO0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN
~I've got a head for you, and it's on this stick right here. You want it, big lug?~
END
++ ~That's... disgusting, Drake.~ EXTERN C0DRAKEJ C0DrakeGnarl
++ ~You're not getting a single coin from us, meatheads.~ EXTERN GNARL 4

CHAIN C0DRAKEJ C0DrakeGnarl
~What? I was talking about the hammer, my friend.~
EXTERN GNARL 4

// Hannah

I_C_T HANNAH 0 C0DrakeHANNAH0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~I certainly hope not. I would have to take up permanent residence at a local tavern if such a law came to pass.~
END

// Icharyd

INTERJECT ICHARY 0 C0DrakeICHARY0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN
~Ha! If only the living had such a lust for my own flesh. I fear I prefer those with a bit more meat on their bones, however, and not quite as skinny. Away with you, dead one! My flesh is spoken for.~
EXTERN ICHARY 2

// Jamie + Samantha

I_C_T SAMANT 7 C0DrakeSAMANT7
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~By Tyr, <CHARNAME>, you really need practice. Well, let's make sure no one comes to harm from your poor attempts at flirting, hmm?~
END

I_C_T JAMIE 0 C0DrakeJAMIE0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Slow down there, kid. You might want to think this through more carefully before someone - or some 'thing' gets hurt.~
END

// Jared

I_C_T2 JARED 0 C0DrakeJARED0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Yes, I'm sure. How about all the clothes you're wearing, eh? You'll be backpedaling on that promise soon enough. Regardless, let's deal with this bear, <CHARNAME>.~
END

// Kelddath

I_C_T2 KELDDA 1 C0DrakeKELDDA1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~A rather generous reward for bringing down a drooling madman, but I suppose one can't complain. Don't say I never meant right by you, <CHARNAME>.~
END

// Laurel

I_C_T LAUREL 1 C0DrakeLAUREL1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, some of us would be willing to stay all night, my dear lady knight.~
== LAUREL ~Hmph. For a Tyrran, you have quite a tongue on you, sir.~
== C0DRAKEJ ~Ha! You'd be surprised at just what my tongue can do.~
== LAUREL ~Ahem. We were speaking of gibberlings, were we not?~
END

I_C_T LAUREL 2 C0DrakeLAUREL2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, some of us would be willing to stay all night, my dear lady knight.~
== LAUREL ~Hmph. For a Tyrran, you have quite a tongue on you, sir.~
== C0DRAKEJ ~Ha! You'd be surprised at just what my tongue can do.~
== LAUREL ~Ahem. We were speaking of gibberlings, were we not?~
END

// Lothander

I_C_T LOTHAN 1 C0DrakeLOTHAN1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~And here I thought the food I puked up last night was just my usual drinking habits. Suddenly it all makes sense.~
END

// Melicamp

I_C_T MELICA 1 C0DrakeMELICA1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~...~
== C0DRAKEJ ~If you did not hear that chicken talk, <CHARNAME>, then I'm swearing off drinking for life.~
END

I_C_T MELICA 2 C0DrakeMELICA2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Well now, that's a relief. For a moment there I thought I was delirious. So, erm, chicken. What 'fowl' sorcery is this then? Ha!~
== MELICA ~Ugh, shut... *cluck* shut up.~
END

// Mulahey

I_C_T MULAHE 0 C0DrakeMULAHE0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, would you look at that. Another damned Cyricist. Certainly less mad than the last one, but points off for the stench. Hopefully Tyr's power will cleanse him of that as well once we're done.~
END

I_C_T MULAHE 3 C0DrakeMULAHE3
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Don't be absurd, you can't possibly fall for that, <CHARNAME>.~
END

I_C_T2 MULAHE 8 C0DrakeMULAHE8
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~You fell for it. I don't even know what to say.~
END

// Neb

I_C_T NEB 2 C0DrakeNEB2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~...<CHARNAME>, give me leave to kill him.~
== NEB ~What's this, heh heh? Why such hate, big one?~
== C0DRAKEJ ~You're the kind of monster my sister looks under the bed for at night. I said I'd crush any one of them I found - never thought I'd actually find one, and in this stink-hole of all places.~
== NEB ~Hee, hee, kill me, that you may, but however will you escape from this pickle, will you?~
END

I_C_T2 NEB 17 C0DrakeNEB17
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~That's how it should have been. Ahh... it's only a pity he got away.~
END

// Neira

I_C_T NEIRA 0 C0DrakeNEIRA0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Looks like a foul god's laid claim to another one. Pity, this one's got a pretty enough face.~
END

// Phandalyn

INTERJECT PHANDA 0 C0DrakePHANDA0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, come now, do we really have to do this? Listen here, you, my name is Drake Caulfield of the Most Noble Order of the Radiant Heart, and I suggest you stay your hand before you make a fool of yourself.~
== PHANDA ~My god's guidance does not lie! You harbor evil within your group, Sir Caulfield.~
== C0DRAKEJ ~I'm no knight, but that's besides the point. Do you really think I haven't noticed things about who I travel with? Regardless, I have accepted their presence, and they are therefore under my protection. I assure you, you will not be looked upon fondly by the Order should you continue to force this issue.~
== PHANDA ~...Very well, you may pass. But should anything occur because of this, on your own head be it.~
DO ~EscapeArea()~
== AJANTJ IF ~InParty("AJANTIS")~ THEN ~You should not have stopped him, Drake. The evil that has sunk its roots in our band should be eradicated as soon as possible.~
== C0DRAKEJ IF ~InParty("AJANTIS")~ THEN ~Sure, sure. But murdering people in public will set a bad precedent. Might we set this matter aside for the moment?~
EXIT

// Prism

I_C_T2 PRISM 7 C0DrakePRISM7
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Hmm, what a shame. Emeralds are plentiful, but a true artist is a rarity. I'll have to remember to bring my sister here to honor his work one day. She's got a talent for the arts, you see.~
END

// Samuel

I_C_T SAMUEL 0 C0DrakeSAMUEL0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Dear, oh dear, even while coughing his guts out, he's still thinking of his ladylove. I'd be tempted to smack some sense into the fool boy if it wouldn't kill him outright.~
END

// Scar

I_C_T SCAR 2 C0DrakeSCAR2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ha! The Flaming Fist are contracting independents? I see you've got your hands tied about as tightly as the lot in Amn. Damn shame, I hoped you northerners would be better.~
== SCAR ~We usually do our best, I assure you, but our current situation is... complicated. We would appreciate any help.~
END

I_C_T SCAR 1 C0DrakeSCAR1
== SCAR IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~But before I leave, there was one other matter... you there. Are you Drake Caulfield, priest of Tyr?~
== C0DRAKEJ ~Why, yes, you're the first in this land to recognize me. Why is that?~
== SCAR ~You fit the description provided. A man is within the city looking for you. He awaits you within the Elfsong tavern.~
== C0DRAKEJ ~I... see. I'm su Very well, then. Thank you for the information.~
== SCAR ~That is all I had to say. I bid you all farewell.~
END

I_C_T SCAR 3 C0DrakeSCAR3
== SCAR IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~But before I leave, there was one other matter... you there. Are you Drake Caulfield, priest of Tyr?~
== C0DRAKEJ ~Why, yes, you're the first in this land to recognize me. Why is that?~
== SCAR ~You fit the description provided. A man is within the city looking for you. He awaits you within the Elfsong tavern.~
== C0DRAKEJ ~I... see. Very well, then. Thank you for the information.~
== SCAR ~That is all I had to say. I bid you all farewell.~
END

I_C_T SCAR 7 C0DrakeSCAR7
== SCAR IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~But before I leave, there was one other matter... you there. Are you Drake Caulfield, priest of Tyr?~
== C0DRAKEJ ~Why, yes, you're the first in this land to recognize me. Why is that?~
== SCAR ~You fit the description provided. A man is within the city looking for you. He awaits you within the Elfsong tavern.~
== C0DRAKEJ ~I... see. Very well, then. Thank you for the information.~
== SCAR ~That is all I had to say. I bid you all farewell.~
END

// Sendai

I_C_T SENDAI 2 C0DrakeSENDAI2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Is this really necessary, <CHARNAME>? *sigh* Well, best not to let word of this get around. I've no love for the Argrim bastards, but they wouldn't take this sort of thing sitting down if they found out.~
== SENDAI ~No one will know - or care - about your death, barbarians!~
END

I_C_T SENDAI 3 C0DrakeSENDAI3
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, dear. Best that I don't mention my family name if she's really an Argrim. Not unless you want things to get really ugly.~
END

I_C_T2 SENDAI 4 C0DrakeSENDAI4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Nice restraint, <CHARNAME>. Can't say I haven't busted the teeth of some Argrim bastards back home, or suffered the price for it.~
END

// Silke

INTERJECT CUTSILK 2 C0DrakeSILKE2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, stop embarrassing yourself. I reckon I've met three-copper prostitutes that could put up a better act.~
== CUTSILK ~How dare you, you filthy swine?~
EXTERN CUTSILK 4

// Taurgosz

I_C_T TAUGOS 0 C0DrakeTAUGOS0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~*snort* The hammer's easier.~
END

// Tenya

I_C_T2 TENYA 5 C0DrakeTENYA5
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ahh, hells, what have we gotten ourselves into? I say we take the kid at her word, <CHARNAME>. Children don't lie easily.~
END

// Theodon

I_C_T WILLIA 4 C0DrakeWILLIA4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ha! Well, go on then, old coot, what else?~
END

I_C_T WILLIA 8 C0DrakeWILLIA8
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Bw-ahahahaha, ha-aa!~
END

INTERJECT WILLIA 10 C0DrakeWILLIA10
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Oh, I am going to make a shiny copper out of this tale, I am sure... ha!~
END
++ ~Don't you dare.~ EXTERN C0DrakeJ theodon1
++ ~Just make sure you give me a cut of the profits.~ EXTERN C0DrakeJ theodon2

CHAIN C0DrakeJ theodon1
~Come now, my friend, I can't make you reconsider?~
EXTERN WILLIA 10

CHAIN C0DrakeJ theodon2
~Oh, sure, sure. Can't have you selling your dignity for nothing, can we? Ha!~
EXTERN WILLIA 10

// Tranzig

I_C_T TRANZI 7 C0DrakeTRANZI7
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Gah, that's just pitiful. Knock him over the head and throw him at the Fist, <CHARNAME>. He's making me sick to my stomach.~
== TRANZI ~No, anything but that, please!~
END

// Ulraunt

I_C_T2 ULRAUN 6 C0DrakeULRAUN6
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~*snort* Clearly this duffer knows nothing of how espionage in Amn truly works. The irony of my situation almost makes me want to laugh.~
END

// Vai

I_C_T VAI 0 C0DrakeVAI0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Ho there, lovely officer! Surely you have not forgotten me?~
== VAI ~Much as I would... prefer to, no. I see you have found company, sir Caulfield.~
== C0DRAKEJ ~Haven't I told you before to drop that 'sir' nonsense, Jessa? Come now, you may call me Drake, after all,~
== C0DRAKEJ IF ~Dead("bassilus")~ THEN ~Bassilus has fallen, did you know that? I should thank you for all the 'assistance' you've given on that matter.~
== C0DRAKEJ IF ~!Dead("bassilus")~ THEN ~Bassilus still lives, did you know that? I should thank you for all the 'assistance' you've given on that matter.~
== VAI ~I had no power to assist you, Caulfield, as you well know. My contingent here is stretched thin as it is.~
== C0DRAKEJ ~Oh, I know, worry not. Speaking of stretching, might I add that...~
== VAI ~Shut up. Now.~
END

I_C_T VAI 6 C0DrakeVAI6
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Such a pity you're leaving. I have enjoyed our talks together.~
== VAI ~Talk was all it was. I hope you have not filled <CHARNAME>'s head with misleading ideas.~
== C0DRAKEJ ~Don't forget the drinks. But, Jessa- don't take anything personally. It was all in good fun.~
== VAI ~Very well. Perhaps we may meet again in more favorable terms.~
END

// Yago

I_C_T YAGO 4 C0DrakeYAGO4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~*spit* He deserves worse for grovelling, especially with what he's done. You're not going to just let him walk, are you?~
END

// Zeke

INTERJECT ZEKE 0 C0DrakeZEKE0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Really, now. I wonder what, supposing this statue once was a sorceress, she would think of being held ransom by a short stack like you, hmm?~
== ZEKE ~Err...~
== C0DRAKEJ ~For that matter, I'd just like to let you know the god of justice knows what you're doing. And he's not happy, I can tell you that. In fact, he brought me here specifically to send a message.~
== ZEKE ~*gulp* Y'know what, just take the scroll! I don't want no divine retribution off of this! G-gotta go!~
DO ~GiveItem("SCRLPET",LastTalkedToBy) EscapeArea()~ EXIT

// Zhurlong

I_C_T2 ZHURLO 0 C0DrakeZHURLO0
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Hey, watch it! Blast, too late. Little bastard filched twenty gold from me as well. Had to pawn off my helmet just to pay off the tab. There's a special hell for those who steal your drink money, let me tell you...~
END

I_C_T2 ZHURLO 1 C0DrakeZHURLO1
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Hey, watch it! Blast, too late. Little bastard filched twenty gold from me as well. Had to pawn off my helmet just to pay off the tab. There's a special hell for those who steal your drink money, let me tell you...~
END

I_C_T2 ZHURLO 2 C0DrakeZHURLO2
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~Hey, watch it! Blast, too late. Little bastard filched twenty gold from me as well. Had to pawn off my helmet just to pay off the tab. There's a special hell for those who steal your drink money, let me tell you...~
END

I_C_T ZHURLO 4 C0DrakeZHURLO4
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN ~*snort* It's a strange feeling to be rewarded with money from my own pockets. But all's well that ends well, I suppose. I'd just suggest watching yourself even more closely from now on.~
== ZHURLO ~Err... sorry about that.~
END

// "Are you here to pay homage to our dread lord?"

INTERJECT IRON11 0 C0DrakeIRON110
== C0DRAKEJ IF ~InParty("C0Drake") InMyArea("C0Drake") !StateCheck("C0Drake",CD_STATE_NOTVALID)~ THEN
~Well, let's see... I think my hammer would like to answer that, Cyricist. Perhaps Tyr's might will clear your head a little!~
== IRON11 ~Tyrran dog! You've made a mistake coming here!~
DO ~Enemy()~ EXIT

// Shadow Thieves

EXTEND_TOP HUSAM2 6
+ ~Dead("c0dthf01")
Dead("c0dthf02")
Dead("c0dthf03")
Global("C0DrakeHusam","GLOBAL",0)~ + ~Shadow Thieves? We killed three of your agents that were hiding underground.~ DO ~SetGlobal("C0DrakeHusam","GLOBAL",1)~ EXTERN HUSAM2 C0DrakeHusam
END

CHAIN HUSAM2 C0DrakeHusam
~Ah, yes... so that nasty bit of business was you, then? Gave us quite a nasty shock when we discovered the dreaded Aiden Vail rotting in a hole beneath the sewers.~
== HUSAM2 ~Have no fear, though. Vail and his guildmates was operating beyond our orders, and for our best interests, we have no intention of avenging his death. So, if I might ask again, who are you?~
== C0DRAKEJ IF ~InParty("C0Drake")~ THEN ~*snort* In other words, he's perfectly happy to throw the matter of his own associates aside for his own best interests. Sure you still want to hear them out, <CHARNAME>?~
COPY_TRANS HUSAM2 6

// Bassilus dead

APPEND C0DRAKEJ

IF ~Global("C0DrakeBassilus","GLOBAL",2)~ bassilus
 SAY ~Huh. I knew he was mad, but not as mad as this. Still, he's face down in the dirt now, so that's the end of that.~ [C0DRAK14]
 = ~I suppose I should say a few words like I'm supposed to. *ahem* "May Tyr's justice treat this one fairly, da-bluh-bluh-bluh, this and that, something else, don't trip on your way to the Hells, done."~
 ++ ~That's it? Not very professional of you.~ + bassilus.1
 ++ ~A prayer's too good for scum like this.~ + bassilus.2
 ++ ~Let's move on.~ + bassilus.0
END

IF ~~ bassilus.0
 SAY ~Right, right.~
 IF ~~ + bassilus.5
END

IF ~~ bassilus.1
 SAY ~Trust me, <CHARNAME>, to scum as bollocking mad as this, my words are as useful as a kick to the head while they're down. It's about as much as they deserve.~
 ++ ~You can kick his corpse if you really want.~ + bassilus.3
 ++ ~That's a horrible thing to say!~ + bassilus.4
 ++ ~I think we should be moving on now.~ + bassilus.0
END

IF ~~ bassilus.2
 SAY ~Oh, I agree, but if I didn't at least perform the basic expectations of my role, I'd probably be out of a job. Well... no, I wouldn't be, but I can't say the big man above would like it. And he kind of sustains me, you see.~
 IF ~~ + bassilus.5
END

IF ~~ bassilus.3
 SAY ~Hmm, tempting, but I'll pass. Not that he's got much dignity left in him, but that would just be petty.~
 IF ~~ + bassilus.5
END

IF ~~ bassilus.4
 SAY ~*laugh* That it may be. This is why the Order didn't want me around anymore. Bad influence to the kids, you see.~
 IF ~~ + bassilus.5
END

IF ~~ bassilus.5
 SAY ~You've done a fair job here, <CHARNAME>. If you're capable of bringing down evil of this level, then you just might be someone worth listening to.~
 = ~If you have found my company tolerable, I wouldn't mind staying around for longer. After all, this sort of thing is what I'm in this hellhole to do, so I might as well work with like-minded folk like you. That sound alright?~
 ++ ~Sure. I'll be happy to have your assistance.~ + bassilus.6
 ++ ~Maybe another time.~ + bassilus.7
 ++ ~Like-minded? Don't make me laugh. Our business is concluded, so get out of here.~ + bassilus.8
END

IF ~~ bassilus.6
 SAY ~Wise choice, my friend. I'm sure you won't regret it... not immediately, anyway.~
IF ~~ DO ~SetGlobal("C0DrakeBassilus","GLOBAL",3)~ EXIT
END

IF ~~ bassilus.7
 SAY ~Too bad. I thought I'd found a decent drinking partner at last. Well, what can you do? If you change your mind, I'll be at the Friendly Arm Inn, hopefully sober enough to string two words together.~
IF ~~ DO ~SetGlobal("C0DrakeBassilus","GLOBAL",3) SetGlobal("C0DrakeJoined","LOCALS",0) EscapeAreaMove("AR2301",593,530,NW)~ EXIT
END

IF ~~ bassilus.8
 SAY ~Well now, if that's how you're going to be, then I see there really is no reason to stay. Have a good one.~
 IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",0) LeaveParty() EscapeArea()~ EXIT
END
END

// Undercellars

CHAIN IF ~Global("C0DrakeUndercellar","GLOBAL",1)~ THEN C0DrakeJ cellar
~*sniff* Smell that, <CHARNAME>? That is the smell of cheap lotus. Poor sods are destroying themselves here and they don't even know it.~ [C0DRAK15]
DO ~SetGlobal("C0DrakeUndercellar","GLOBAL",2)~
== C0DRAKEJ ~Or perhaps they do, but they despise their lives so much that they don't even care. Sad, really.~
== XANJ IF ~InParty("XAN")~ THEN ~I can certainly sympathize with them if that was the case. At least they have accepted the futility of life and are attempting to wring some pleasure from it.~
== C0DRAKEJ IF ~InParty("XAN")~ THEN ~Really, now? Then would you consider taking a seat and joining them?~
== XANJ IF ~InParty("XAN")~ THEN ~I fear I must decline. I have no doubt the delusions are finite, just like the contents of my purse.~
== C0DRAKEJ IF ~InParty("XAN")~ THEN ~Ha! You've got that much sense in you then, at least. Good on you, Xan.~
END
	++ ~You sound like you know that much from experience, Drake.~ + cellar1
	++ ~Is black lotus a common thing in Amn?~ + cellar2
	++ ~It's revolting. I can't imagine how anyone can stand it.~ + cellar3
	++ ~Let's do what we came for and get out of here.~ + cellar0
	
CHAIN C0DRAKEJ cellar4
~I experimented with almost anything you could imagine in my youth. Lotus was just one of them.~
== AJANTJ IF ~InParty("Ajantis")~ THEN ~By Helm, Drake! If word got around in the Order...~
== C0DRAKEJ IF ~InParty("Ajantis")~ THEN ~Hey now, are you really going to hold it against me, Ajantis? That was a long time ago, long before I got involved with our lot. Besides, my father already knows all about it.~
== C0DRAKEJ ~Not exactly my proudest moment, that. I keep a more open mind than most, but I wouldn't wish that poison on my worst enemy. The things it does to you are unspeakable.~
END
	++ ~I'll take your word for it.~ + cellar5
	++ ~Now you've got me curious.~ + cellar6
	++ ~That seems hypocritical, considering your drinking problem.~ + cellar7
	++ ~Let's get out of here as soon as possible.~ + cellar0

APPEND C0DrakeJ

IF ~~ cellar0
SAY ~I'm right behind you. Just... don't be too horrified by what you might find here.~
IF ~~ EXIT
END

IF ~~ cellar1
SAY ~We were all young once. Well, I might not be that old, but I'm no spring chicken, either.~
IF ~~ + cellar4
END

IF ~~ cellar2
SAY ~By law, it's illegal. Not that anyone desperate enough to resort to lotus to solve their issues gives half a blighted damn about the law, so yes, it's highly popular.~
= ~If you ever find yourself in Athkatla, drop by at the Copper Coronet's back rooms. They'll make this place look as sinful as an Ilmatari chapel.~
IF ~~ + cellar4
END

IF ~~ cellar3
SAY ~Oh, it's not so bad when you start actually taking in the stuff. By the point you've burned enough to make the smell, you're too piss-faced to care.~
IF ~~ + cellar4
END

IF ~~ cellar5
SAY ~Then you're wiser than I was. I was too fascinated with exactly what unspeakable visions the lotus could induce. Of course, the nightmares afterwards stayed, even when I washed my hands of the damn stuff after realizing how evil it was.~
IF ~~ + cellar8
END

IF ~~ cellar6
SAY ~You'll be regretting that once you try it. I felt the same way, fascinated with exactly what unspeakable visions the lotus could induce. Of course, the nightmares afterwards stayed, even when I washed my hands of the damn stuff after realizing how evil it was.~
IF ~~ + cellar8
END

IF ~~ cellar7
SAY ~Hey, I never said I was clean. Besides, even the most caustic brews I've ever drank at least left me feeling right as rain once I pissed it all out. But the lotus... once you take it in, you're never the same.~
IF ~~ + cellar8
END

IF ~~ cellar8
SAY ~Just take my advice, <CHARNAME>. If you ever feel the urge to forget how much crap life tosses your way, stick with drinking. You'll regret it less.~
IF ~~ EXIT
END

// Golden Pantaloons

IF ~Global("C0DrakePantaloons","GLOBAL",1)~ pantaloons
SAY ~Oh, no. I can't believe it. I thought it was a joke when I heard it the first time, but I never would've thought the damn things actually existed.~ [C0DRAK16]
= ~I knew nobles were one step away from eccentricity into full-blown madness, but how could anyone in their right minds walk around wearing anything this gaudy?~
= ~...you're not going to give it back to the man, are you? I think you're doing him a favor taking these off his hands.~
IF ~~ DO ~SetGlobal("C0DrakePantaloons","GLOBAL",2)~ EXIT
END

// Dead Marl

IF ~Global("C0DrakeMarlKilled","GLOBAL",1)~ marl
SAY ~Was that necessary?~ [C0DRAK17]
++ ~I tried to talk him down. He left me no choice.~ + marl1
++ ~No, but it was fun.~ + marl2
++ ~I sent him to join his son. I'd consider that doing him a favor.~ + marl3
END

IF ~~ marl1
SAY ~You didn't have to splatter pieces of his skull all over the establishment.~
IF ~~ DO ~SetGlobal("C0DrakeMarlKilled","GLOBAL",2)~ EXIT
END

IF ~~ marl2
SAY ~*snort* At least you're honest. Not that it counts for much.~
IF ~~ DO ~SetGlobal("C0DrakeMarlKilled","GLOBAL",2)~ EXIT
END

IF ~~ marl3
SAY ~That's cold, <CHARNAME>. I can't even find the right words to admonish you with.~
IF ~~ DO ~SetGlobal("C0DrakeMarlKilled","GLOBAL",2)~ EXIT
END

// Nashkel

IF ~Global("C0DrakeNashkel","GLOBAL",1)~ nashkel
SAY ~Ah, Nashkel. Not quite Athkatla, but it's the closest I've been to home in a while. I never thought I'd be back on Amnian land so soon, even if it is still just the borders.~ [C0DRAK21]
++ ~Is the capital of Amn all that different?~ + nashkel1
++ ~Have you ever been here before?~ + nashkel2
++ ~No time for this right now. We've got work to do.~ + nashkel0
END

IF ~~ nashkel0
SAY ~Sure, sure. You're the one in charge, after all.~
IF ~~ DO ~SetGlobal("C0DrakeNashkel","GLOBAL",2)~ EXIT
END

IF ~~ nashkel1
SAY ~Oh, sure. Don't let the tales of the gilded streets fool you, though. It's certainly a lot less green and healthy-looking than here, if you can imagine it. There's a certain charm to the city, though, amidst all the crap on the road.~
= ~Athkatla's definitely the better place to mingle, get drunk and start a fight, though. Nashkel is a bit too peaceful for my tastes.~
IF ~~ + nashkel3
END

IF ~~ nashkel2
SAY ~Once or twice. Always for business, never pleasure, though. My father - Prelate Durand, disapproves when I stray too far towards the borders on my own accord. Perhaps he thinks I might make a run for it.~
= ~Not that I haven't considered it once or twice. There's not much reason for me to ever come this far away from home otherwise. Too peaceful.~
IF ~~ + nashkel3
END

IF ~~ nashkel3
SAY ~Well, don't take my word for it, <CHARNAME>. Take us around, and you'll see for yourself what the place is like.~
IF ~~ DO ~SetGlobal("C0DrakeNashkel","GLOBAL",2)~ EXIT
END

// Nashkel Carnival

IF ~Global("C0DrakeCarnival","GLOBAL",1)~ carnival
SAY ~Well now, this is a fresh sight. The circus comes by Athkatla from time to time, but I don't think I've seen one set up quite as grandly as this.~ [C0DRAK22]
= ~It's a shame Tomas and Claudia aren't here with me to see this. They'd have gone wild, no doubt. Maybe there's a thing or two that might interest us here, though, hmm?~
IF ~~ DO ~SetGlobal("C0DrakeCarnival","GLOBAL",2)~ EXIT
END

// Petrine's Cat

IF ~Global("C0DrakePetrineCat","GLOBAL",1)~ petrine
SAY ~Really, <CHARNAME>? Was there any reason you decided to do that, or do you simply enjoy seeing the exposed entrails of poor, helpless kittens? If so, you're one sick and twisted person.~ [C0DRAK23]
IF ~~ DO ~SetGlobal("C0DrakePetrineCat","GLOBAL",2)~ EXIT
END

// Stoneheart

IF ~Global("C0DrakeStoneheartTalk","GLOBAL",1)~ stone
SAY ~Smug, arrogant bastard! I see he hasn't changed one damned bit.~ [C0DRAK20]
++ ~Whoa, you seem upset. Is something wrong?~ + stone1
++ ~Not a friend of yours?~ + stone2
END

IF ~~ stone1
SAY ~More than you know, <CHARNAME>. When I last met Stoneheart, I hoped it'd be the last time. That's all I'll say.~
IF ~~ + stone3
END

IF ~~ stone2
SAY ~No. Well, he was, but I thought I'd seen the last of him a long time ago.~
IF ~~ + stone3
END

IF ~~ stone3
SAY ~Still, if there really are Shadow Thieves here, I suppose I'll just have to bear with it. Come on, <CHARNAME>. Let's go find him in the sewer tunnels he mentioned. Only place fitting for a rat like him.~
IF ~~ DO ~SetGlobal("C0DrakeStoneheartTalk","GLOBAL",2)~ EXIT
END

// Angelo

IF ~Global("C0DrakeAngelo","GLOBAL",2)~ angelo
SAY~"Justice may be blind, but I'm not," huh? I would have expected nothing else from one whose justice is sold to the highest bidder.~ [C0DRAK24]
	++ ~You sound angry. Did that Angelo person offend you?~ + angelo1
	++ ~We've got more to worry about than your ponderings, Drake.~ + angelo0
END
	
IF ~~ angelo0
SAY ~Yes, yes, ignore me if you must, <CHARNAME>, but I hope when the time comes, I'll be the one to kill that scum.~
IF ~~ DO ~SetGlobal("C0DrakeAngelo","GLOBAL",3)~ EXIT
END

IF ~~ angelo1
SAY ~Oh, not necessarily him, <CHARNAME>. His kind are the norm back in Amn. The scum just reminded me a little too much of the dark side of home.~
= ~I'm not all too familiar with the local law here in the Sword Coast, but I imagined that it couldn't have been much worse than Amn. When I met Scar, I thought I was right... looks like I should have looked a bit harder, eh?~
= ~This was the closest I've ever been to the mercy of the very own 'justice' I've served, and it infuriates me to think of that smug bastard almost condemned us to the noose. When we meet him again, I'll make sure to hammer the true justice of Tyr into his skull... literally.~
IF ~~ DO ~SetGlobal("C0DrakeAngelo","GLOBAL",3)~ EXIT
END

// Delainy/Durlyle

IF ~Global("C0DrakeWolfFlirt","GLOBAL",1)~ wolfflirt
SAY ~*whistle* Smooth, <CHARNAME>. I didn't realize you had it in you. Looks like I can learn a thing or two from you no matter where we end up.~
IF ~~ DO ~SetGlobal("C0DrakeWolfFlirt","GLOBAL",2)~ EXIT
END

// Helm of Opposite Alignment

IF ~Global("C0DrakeHelmAlignment","GLOBAL",1)~ alignment
SAY ~Ohh, that's not good. I think I know what that is, if the tales I've been told haven't lied to me.~
++ ~What is this helmet, Drake?~ + alignment1
++ ~I'm going to try it on.~ + alignment2
++ ~We can discuss it when we're in a safer place.~ EXIT
END

IF ~~ alignment1
SAY ~That, my friend, is one of the most terrible artifacts in the multiverse. A helm which twists the morals and beliefs of its wearer into their polar opposites, to turn oneself into one's worst enemy.~
= ~I've been told examples of heroes becoming tyrants that are suspected to be caused by this helm, but I didn't think it actually existed. The fact that it was being worn by our friend here likely means that he was once a noble being of some sort, twisted by this thing's magic.~
= ~Probably a demon's work, no doubt. They tend to have a sick sense of humor. I have a feeling we haven't seen the end of things yet.~
IF ~~ DO ~SetGlobal("C0DrakeHelmAlignment","GLOBAL",2)~ EXIT
END

IF ~~ alignment2
SAY ~I wouldn't recommend it. Not unless you're willing to become mentally scarred for life in the aftermath.~
IF ~~ + alignment1
END

// Aec'Letec banished

IF ~Global("C0DrakeAecBanished","GLOBAL",1)~ aec
SAY ~Well... that'll be a tale sure to impress the Order, no doubt. Perhaps even my father will raise an eyebrow once I told him what we've accomplished here.~
= ~Good on you, my friend. I think we both deserve a pat on the back for that bit of demon-wrangling. Drinks are on me tonight.~
IF ~~ DO ~SetGlobal("C0DrakeAecBanished","GLOBAL",2)~ EXIT
END

// Low Reputation; warning

IF ~Global("C0DrakeLowRep","GLOBAL",1)~ lowrep
SAY ~You know, <CHARNAME>, when I said I'd join you to bring down some evil bastards here on the Sword Coast, this wasn't what I had in mind.~ [C0DRAK27]
++ ~We haven't killed enough evil men for you?~ + lowrep1
++ ~I'm the leader here, and we do as I say.~ + lowrep2
++ ~If you're not satisfied, you're free to leave.~ + lowrep3
END

IF ~~ lowrep1
SAY ~Oh, for sure. But when you harm as many good people as you do the bad... well, then there isn't exactly much point, is there?~
IF ~~ + lowrep3
END

IF ~~ lowrep2
SAY ~True. But at the same time, I am not obliged to follow you around in every puppy-kicking escapade you choose to lead us on, either.~
IF ~~ + lowrep3
END

IF ~~ lowrep3
SAY ~I'll give you the benefit of the doubt for the moment, since we all make lapses in judgment, but I think you'd better evaluate your life choices. Let's just say your current way is not exactly... healthy to your long-term success.~
IF ~~ DO ~SetGlobal("C0DrakeLowRep","GLOBAL",2)~ EXIT
END

// Drunk talk 1, drunk

IF ~Global("C0DrakeDrunkTalk","GLOBAL",1)~ drunk1
SAY ~Ah, it's a damn shame you don't have any good drinks here up north. It's almost embarrassing to g... get piss-faced off of this crap.~ [C0DRAK25]
= ~H-here, you try this last one for yourself. One more and I'll... I'll... probably do something t... to embarrass my dear old father again, heh.~
++ ~But you're not around your father right now.~ + drunk1.1
++ ~Sure, I can't say no to extra drinks.~ + drunk1.2
++ ~Gods, man, you're drunk. Go sleep it off.~ + drunk1.3
END

IF ~~ drunk1.1
SAY ~Whu? Oh, you're... ha! You're right. Wh-where are we again, <CHARNAME>?~
++ ~Have you forgotten already?~ + drunk1.4
++ ~You'll remember in a few hours. Go to sleep.~ + drunk1.3
END

IF ~~ drunk1.2
SAY ~Yeah, drink it. Terrible, isn't it? Not that even the most expensive wine could get me to... to go back to Af... Ath... Ath-whatsit. Home, that's what it is. Ha!~
IF ~~ + drunk1.5
END

IF ~~ drunk1.3
SAY ~Naw, this? Ha! You haven't... you haven't seen me when I'm... really drunk, lemme tell you, back in Ath... what's the damned place called... home, that's it...~
IF ~~ + drunk1.5
END

IF ~~ drunk1.4
SAY ~What? Oh... right, I remember... "iron's gone bad, someone needs to go see what's going on in th-the Sword Coast," right, I, I remember... gave me an order an' sent me off from home...~
IF ~~ + drunk1.5
END

IF ~~ drunk1.5
SAY ~Y'know, my... father, he... *hic* didn't want me 'round. Said I was... was bothering the... the others. I was... just trying to get them to, to... uhh...~
= ~They didn't wanna listen to me, so I... I was like, to the Hells with this, I'm going on a long... long trip, and I... took my hammer and left, and... then I...~
++ ~You sure you're all right, Drake?~ + drunk1.6
++ ~You're embarrassing yourself. Go find yourself a bed someone realizes you're with me.~ + drunk1.6
END

IF ~~ drunk1.6
SAY ~Hnh? Wh-whazzat I was talking about, <CHARNAME>?~
= ~Ugh, my head... I think I'll... take a nice, long rest, on this floor right here... *thunk* Zzz...~
IF ~~ DO ~SetGlobal("C0DrakeDrunkTalk","GLOBAL",2) PlayDead(5)~ EXIT
END

// Drunk talk 2, sober

IF ~Global("C0DrakeDrunkTalk","GLOBAL",3)~ drunk2
SAY ~Ugh, my head... blast it, why do I keep torturing myself like this? Ugh, where's my Tyr-damned hammer? I'd sooner crack my skull open than deal with this crap...~ [C0DRAK26]
++ ~Feeling alright there, Drake?~ + drunk2.1
++ ~That'll teach you to drink to excess.~ + drunk2.2
END

IF ~~ drunk2.1
SAY ~Oh, just fine. Radiant, if I might say so myself. Never mind the fact that my head feels like there's a storm brewing inside, agh...~
IF ~~ + drunk2.3
END

IF ~~ drunk2.2
SAY ~Trust me, <CHARNAME>, I learned that lesson a long while back, it just never sank in. Bah, just kill me now!~
IF ~~ + drunk2.3
END

IF ~~ drunk2.3
SAY ~Funny thing is, I can't remember a damned thing I did, except for a faint recollection of saying something or another about my father.~
= ~Did you catch whatever I- actually, you know what, forget it. I don't want to know. It'd probably be for the best.~
IF ~~ DO ~SetGlobal("C0DrakeDrunkTalk","GLOBAL",4)~ EXIT
END

// Low Reputation; break

IF ~Global("C0DrakeRepBreak","GLOBAL",1)~ repbreak
SAY ~Hmm, pity. You know, I did think you were better than this, <CHARNAME>.~ [C0DRAK28]
++ ~Well, you were wrong, weren't you?~ + repbreak1
++ ~I've made a few mistakes. I can still make up for them.~ + repbreak2
++ ~What are you going to do about it?~ + repbreak3
END

IF ~~ repbreak1
SAY ~Clearly I was. Then again, you chose to lead us this way, so the fault would be yours, not mine.~
IF ~Dead("bassilus")~ + repbreak5
IF ~!Dead("bassilus")~ + repbreak4
END

IF ~~ repbreak2
SAY ~Really now. You'll forgive me if I don't believe you.~
IF ~Dead("bassilus")~ + repbreak5
IF ~!Dead("bassilus")~ + repbreak4
END

IF ~~ repbreak3
SAY ~The only thing I can do under these circumstances.~
IF ~Dead("bassilus")~ + repbreak5
IF ~!Dead("bassilus")~ + repbreak4
END

IF ~~ repbreak4
SAY ~Bassilus yet lives, and the way you're going, I doubt you ever intend to put a stop to him. So be it.~
IF ~~ + repbreak5
END

IF ~~ repbreak5
SAY ~I'll be taking my leave of you. I'm not suicidal enough to face you head on, but mark my words, you won't have a peaceful life from here on. The Order will hear of your actions... this is a first for me, but sadly, you have driven me to this. Farewell.~
IF ~~ DO ~SetGlobal("C0DrakeRepBreak","GLOBAL",2) SetGlobal("C0DrakeJoined","GLOBAL",0) LeaveParty() EscapeArea() ReputationInc(-2)~ EXIT
END

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
	+ ~Global("C0DrakeInterest","GLOBAL",0)~ + ~I'd like to ask... do you think there could be anything between us?~ DO ~SetGlobal("C0DrakeInterest","GLOBAL",1)~ + d1
	+ ~Gender(Player1,MALE) Global("C0DrakeMatch","GLOBAL",1) Global("C0DrakeInterest","GLOBAL",1) Global("C0DrakeBi","GLOBAL",0)~ + ~So... are you interested in men? You've never objected to my flirtations.~ DO ~SetGlobal("C0DrakeBi","GLOBAL",1)~ + e1
	+ ~Global("C0DrakeCaulfield","GLOBAL",0)~ + ~You mentioned being of the Caulfield family. Are you a noble?~ DO ~SetGlobal("C0DrakeCaulfield","GLOBAL",1)~ + noble
	+ ~Global("C0DrakeCaulfield","GLOBAL",1)~ + ~Tell me more about your family.~ DO ~SetGlobal("C0DrakeCaulfield","GLOBAL",2)~ + caulfield
	+ ~Global("C0DrakeCaulfield","GLOBAL",2) Global("C0DrakeParents","GLOBAL",0)~ + ~Tell me more about your parents.~ DO ~SetGlobal("C0DrakeParents","GLOBAL",1)~ + parents
	+ ~Global("C0DrakeCaulfield","GLOBAL",2) Global("C0DrakeSiblings","GLOBAL",0)~ + ~Tell me more about your siblings.~ DO ~SetGlobal("C0DrakeSiblings","GLOBAL",1)~ + siblings
	+ ~Global("C0DrakeAttitude","GLOBAL",0)~ + ~Don't you ever get in trouble in the Order, with an attitude like yours?~ DO ~SetGlobal("C0DrakeAttitude","GLOBAL",1)~ + attitude
	+ ~Global("C0DrakeSquire","GLOBAL",0)~ + ~You said you weren't a knight. So what are you then? A squire?~ DO ~SetGlobal("C0DrakeSquire","GLOBAL",1)~ + squire
	+ ~Class("C0Drake",FIGHTER_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~How does it feel now that you've become a warrior?~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass
	+ ~Class("C0Drake",THIEF_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~How does it feel now that you've become a rogue?~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass2
	+ ~Class("C0Drake",RANGER_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~How does it feel now that you've become a ranger?~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass3
	+ ~Class("C0Drake",MAGE_ALL) Global("C0DrakeDualClass","GLOBAL",0)~ + ~How does it feel now that you've become a mage?~ DO ~SetGlobal("C0DrakeDualClass","GLOBAL",1)~ + dualclass4
	+ ~InParty("Eldoth") GlobalLT("C0DrakeTalk","GLOBAL",8) Global("C0DrakeHatesEldoth","GLOBAL",0)~ + ~I noticed you and Eldoth don't get along.~ DO ~SetGlobal("C0DrakeHatesEldoth","GLOBAL",1)~ + eldoth
	+ ~InParty("Eldoth") !InParty("Garrick") GlobalGT("C0DrakeTalk","GLOBAL",7)
	OR(2) Global("C0DrakeHatesEldoth","GLOBAL",0) Global("C0DrakeHatesEldoth","GLOBAL",1)~ + ~You seem to hold a grudge against Eldoth. Do you dislike minstrels?~ DO ~SetGlobal("C0DrakeHatesEldoth","GLOBAL",2)~ + eldoth2
	+ ~InParty("Eldoth") InParty("Garrick") GlobalGT("C0DrakeTalk","GLOBAL",7)
	OR(2) Global("C0DrakeHatesEldoth","GLOBAL",0) Global("C0DrakeHatesEldoth","GLOBAL",1)~ + ~You seem to hold a grudge against Eldoth. Do you dislike minstrels?~ DO ~SetGlobal("C0DrakeHatesEldoth","GLOBAL",2)~ + eldoth2.1
	+ ~GlobalGT("C0DrakeStoneheart","GLOBAL",0) GlobalLT("C0DrakeStoneheart","GLOBAL",5) Global("C0DrakeStoneheartPID","GLOBAL",0)~ + ~So what's the deal between you and Stoneheart?~ DO ~SetGlobal("C0DrakeStoneheartPID","GLOBAL",1)~ + stoneheart
	+ ~Global("C0DrakeStoneheart","GLOBAL",5) Global("C0DrakeStoneheartPID2","GLOBAL",0)~ + ~So what's the deal between you and Stoneheart?~ DO ~SetGlobal("C0DrakeStoneheartPID2","GLOBAL",1)~ + stoneheart2
	+ ~Global("C0DrakeStoneheartPID2","GLOBAL",1) Global("C0DrakeInterest","GLOBAL",1) Global("C0DrakeMatch","GLOBAL",1)~ + ~Now that you've moved on from Stoneheart... do you think you're ready to find someone else? Like me, for instance?~ DO ~SetGlobal("C0DrakeInterest","GLOBAL",2)~ + moveon
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

IF ~~ d1
 SAY ~Between you and me? Never thought I'd see that coming. Usually I'd make the first move on someone and see whether they responded by swooning or slapping me.~
IF ~Global("C0DrakeMatch","GLOBAL",1) Gender(Player1,MALE)~ + d1.1
IF ~Global("C0DrakeMatch","GLOBAL",1) Gender(Player1,FEMALE)~ + d1.2
IF ~!Global("C0DrakeMatch","GLOBAL",1)~ + d1.3
END

IF ~~ d1.1
 SAY ~I'm the heir to the Caulfield family, ever since my brother died at war. I have a duty to carry on the bloodline by siring an heir, and even if the thought of it irritates me, I feel duty-bound to uphold my responsibilities. Still, if it were up to me...~
IF ~~ + d1.2
END

IF ~~ d1.2
 SAY ~You're not all that unappealling, <CHARNAME>, I'll admit it. But we've got a few years between us, and you're still fresh to all of this, I wager. Give it some time, then see if you're still interested. I'm not planning on dying any time soon.~
IF ~~ EXIT
END

IF ~~ d1.3
 SAY ~No, I don't think so. No hard feelings, <CHARNAME>, but for one reason or another, I'm afraid I can't see it happening.~
IF ~~ EXIT
END

IF ~~ e1
 SAY ~Did I mention that? You must have misunderstood. My affections are rightfully reserved for the fairer sex, as you have no doubt noticed by now.~
 = ~...that's what I would say under normal circumstances. But since I'm here in the dumps, far away from the ears of anyone who would really care... well, I think it's more interesting to leave you wondering.~
IF ~~ EXIT
END

IF ~~ noble
 SAY ~*snort* You want the official answer, or the one that has some semblance of truth behind it?~
 = ~My family is, by status, on the same grounds as the minor Amnian nobility, that's true. Not that anyone with a drop of actual noble blood would admit to such, even if you tied them up and put a knife to their throat.~
 = ~Usually, one is of noble class when appointed within the Order. However, for my family that was the other way around. One of my ancestors of the Caulfield name, a follower of Torm, once saved a member of the Amnian royalty during a time of war. It's a story my father loved to tell us, again and again.~
 = ~For his heroism, he was inducted into the Radiant Heart and his household was elevated to nobility. Of course, the 'real' nobles hated that. We were commoners, our blood was 'dirty', so to speak. I'd say our rise in society's done us more harm than good.~
 = ~Not to say we haven't grown accustomed to it over the years. Nowadays, most everyone in my family's involved with the Order in some way. Some of us like it more than others.~
IF ~~ EXIT
END

IF ~~ caulfield
 SAY ~I can't say I'm surprised you know nothing about us. Even in Amn, the nobles would turn up their noses and shut their traps once we're mentioned. Out here, I'd say we're all but unknown.~
 = ~You probably want to know about my closest family. Well, I'm the second-born of Prelate Durand Caulfield and Lady Caroline of some Tethyrian noble house or some such.~
 = ~I have... had an older brother, Gabriel, who fought against the Sythillisian army and fell in battle with honor. What honor there is to be had with your face in the dirt and your arse in the air, I don't know, but that's what my father would have you believe. Since his... unfortunate death, I'm now heir to the family estate and its responsibilities.~
 = ~There's also my younger brother, Tomas. Still too young to join the Order, but he's all too eager to do it. Father's filled his head with all sorts of nonsense about the ideals of knighthood, no doubt. But he's a good kid. He'll get far - if he survives.~
 = ~And lastly, my youngest sibling, Claudia. If you asked me who I miss the most, it would be her. Not much of a fighter, but an excellent painter. If it were up to me, she'd have nothing to do with the family business, but that's not for me to decide... not yet, anyway.~
 = ~That's the most I can say about my family, really. If you wanted to know more, you'd have to meet them yourself. I'd do them no justice telling you my heavily biased views here.~
IF ~~ EXIT
END

IF ~~ parents
 SAY ~What about them? Shall I tell you about how much of a pain in my rear my father is?~
 + ~Global("C0DrakeMatch","GLOBAL",1)~ + ~I was hoping I could get to meet them one day. You know, make a good impression.~ + parents1
 ++ ~Why do you hold such a grudge against him?~ + parents2
 ++ ~You don't seem to have a problem with your mother.~ + parents3
END

IF ~~ parents0
 SAY ~Hey, you won't hear me complaining.~
IF ~~ EXIT
END

IF ~~ parents1
 SAY ~Ha! Aren't you getting a little ahead of yourself, <CHARNAME>? Make a good impression indeed. They can barely tolerate me alone, now imagine if I brought you to the house. Father would lose it in an instant.~
 ++ ~Do you have a problem with him?~ + parents2
 ++ ~What about your mother?~ + parents3
END

IF ~~ parents2
 SAY ~Well... that's going a bit far. We can stand being in the same room together, if that's what you're concerned about. It's... something you'd only understand if you were in my shoes.~
 = ~The Caulfields began as commoners. Even though we've been part of the minor nobility for a few generations now, some of us still have trouble with the concept of... responsibility.~
 = ~My elder brother, Gabriel, was a role model and father sung his praises. While he still lived, I had some freedom to pursue my own interests. When he died, however...~
 = ~Let's just say neither of us were much pleased with the fact that I ended up the next heir to lead the family. I was pulled from the army, sent back to my studies in the Tyrran church, then eventually appointed as a squire in the Order of the Radiant Heart over the course of a few short years.~
 = ~Maybe if father had more patience, I would've accepted it more easily. The way it happened, though, made me pretty damn angry. I was a free man only moments ago, and suddenly all of Gabriel's duties became my problem. We've gotten better in the recent years, but things are still tense between us.~
 ++ ~But surely you would've seen this potentially coming?~ + parents4
 ++ ~What about your mother? Are you just as estranged from her too?~ + parents5
 ++ ~I've heard enough. Let's move on.~ + parents0
END

IF ~~ parents3
 SAY ~Ah, dear mother. As much as she tried not to show it, I knew she had the same wishes as father did. Though I have forgiven her for it.~
 = ~Gabriel's death hit us all hard, but for her, it was nothing short of torture. The fact that she still saw my own interests as important despite what we lost makes me appreciate her.~
 = ~If only father could see things the same way... but nothing can ever be perfect, wouldn't you say, <CHARNAME>?~
 ++ ~Do you hate your father that much?~ + parents2
 ++ ~I've heard enough. Let's move on.~ + parents0
END

IF ~~ parents4
 SAY ~Oh, certainly, I knew the possibility was there somewhere. But Gabriel was... brilliant. Knighted at one of the youngest ages in history, commander of his own division during war time - where I proudly served him, I might add - and all but certain to take father's place as Prelate and leader of the family.~
 = ~I never even entertained the thought of becoming heir, since when you compare him to me, well, you wouldn't even be able to tell we were related, you know?~
 ++ ~You're against becoming heir not because you don't want to, but you believe you can't.~ + parents6
 ++ ~Don't you have another brother? Why does the heir have to be you?~ + parents7
 ++ ~I've heard enough. Let's move on.~ + parents0
END

IF ~~ parents5
 SAY ~Ah, dear mother. As much as she tried not to show it, I knew she had the same wishes as father did. Though I have forgiven her for it.~
 = ~Gabriel's death hit us all hard, but for her, it was nothing short of torture. The fact that she still saw my own interests as important despite what we lost makes me appreciate her.~
 = ~If only father could see things the same way... but nothing can ever be perfect, wouldn't you say, <CHARNAME>?~
 ++ ~But surely you would've seen this potentially coming?~ + parents4
 ++ ~I've heard enough. Let's move on.~ + parents0
END
 
IF ~~ parents6
 SAY ~Hey now, I never said that. Have you ever seen me doubt myself in anything else? It's not that, it's...~
IF ~~ + parents8
END

IF ~~ parents7
 SAY ~Tomas? *snort* The boy's still got a lot of growing up to. That's one thing father and I can agree on.~
 = ~If it were possible, I'd sooner have Claudia take over... she may be even younger, but she's damn smart. And father's not old-fashioned enough that he hasn't considered the idea, but...~
IF ~~ + parents8
END

IF ~~ parents8
 SAY ~Tyr's buttocks, I'm ranting. Pay no attention to what I've been saying, <CHARNAME>, I shouldn't presume to know exactly how my father thinks. Nothing I said has an ounce of fact behind it, it's all just my bitterness speaking.~
 ++ ~I'm still willing to listen. You needed to let this out a long time ago.~ + parents9
 ++ ~Well, I'm surprised you at least have enough self-awareness to admit it.~ + parents10
END

IF ~~ parents9
 SAY ~Maybe I did, at that.~
IF ~~ + parents11
END

IF ~~ parents10
 SAY ~See? I'm full of surprises, <CHARNAME>. It's part of my charm.~
IF ~~ + parents11
END

IF ~~ parents11
 SAY ~Thanks for listening, friend. None of this means anything in the long run, of course, but it feels nice letting it all out once in a while. It's like taking a piss after half a day of standing at attendance.~
 ++ ~Any time.~ + parents12
 ++ ~Did you have to make that analogy?~ + parents13
END

IF ~~ parents12
 SAY ~I'll be sure to take advantage of you whenever I need to blow off more steam. Again... thanks, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ parents13
 SAY ~Would I be myself otherwise? I doubt you'd like me half as much.~
IF ~~ + parents12
END

IF ~~ siblings
 SAY ~Gabriel was three years older than me. I looked up to him, even if I didn't try to emulate him. Unlike father, I think he encouraged me to be different, so I wouldn't become overshadowed by him.~
 = ~Tomas and I both owe a lot to him. It's a damn shame he died before Claudia grew up enough to really know him.~
 ++ ~Tell me about Tomas.~ + tomas
 ++ ~Tell me about Claudia.~ + claudia
END

IF ~~ siblings1
 SAY ~Sure, sure. Bringing this up only makes me miss them anyways.~
IF ~~ EXIT
END

IF ~~ tomas
 SAY ~He's a good kid. Still too naive about how the world is, thinking all the problems we face can be solved with a shiny sword. He can't wait to join the Order and follow in Gabriel's footsteps.~
 = ~Not that I blame him. For most people, it really is an honor. Even I... if I truly didn't have any good feelings about where I stand, I would've left, father be damned. I'm just worried he'll follow our lost brother to the letter... right into the grave.~
 ++ ~What about Claudia?~ + claudia
 ++ ~That's all I wanted to hear.~ + siblings1
END

IF ~~ claudia
 SAY ~She's an artist and she deserves to be one. But she insists on joining in on the family business just to match up with us, even when there's no need for her to do so.~
 = ~That's bad enough, but father encourages it. There hasn't been a lady knight within our family since the time when the Caulfields first rose to prominence. It's such a shame... Claudia is a talented, bright and wise girl. I don't want to see that wasted.~
 ++ ~She just wants to follow in her brothers' footsteps.~ + claudia1
 ++ ~What about Tomas?~ + tomas
 ++ ~That's all I wanted to hear.~ + siblings1
END

IF ~~ claudia1
 SAY ~And that's a terrible thing. She wasn't old enough to understand what a horrible time it was when Gabriel fell to the orcish invasion. All she knows is that our father's prized eldest son died with honor.~
 = ~She said these words to us - Tomas and I - and I kid you not, this came from the mouth of a five-year old: "I want to protect you, I don't want either of you to die." Those words horrified me, <CHARNAME>, you have no idea just how much they did.~
 = ~Ever since then, I've done everything to encourage her to follow her interests in the arts and stay away from the Order. It's been over half a decade, and nothing's worked.~
 = ~Gah... it hurts me just thinking about it. Let's stop this right now, <CHARNAME>, if you don't mind.~
IF ~~ EXIT
END

IF ~~ attitude
 SAY ~Why do you think I'm here? This is, what you would call, a 'reassignment to up north'. In other words, someone higher up - my father, no doubt - gave me the order to come to this delightful piece of hell to clean up someone else's mess, just so they don't have to deal with me.~
 = ~If I were anyone else, they'd dismiss me, no doubt. Dismissal is rare among members of the Order since only those who violate the rules would consider leaving... and those men are executed immediately. Head on the block, chop-chop, clean up, let's never speak of this again.~
 = ~The higher-ups almost never resort to straight up kicking someone out because of inappropriate behavior... but it happens. Unfortunately, my father is one of the three prelates of the Athkatlan Order, and he would sooner let me join the Shadow Thieves than voluntarily leave.~
 = ~Funny thing is, I know more than a few fellows who can't stand the demands of the Order anymore and want to leave... but are too afraid of getting their heads cut off if they ask. And here I am, chained to my position, unable to leave even if I wanted to.~
++ ~Do you want to?~ + attitude2
++ ~That's all I wanted to know.~ EXIT
END
 
IF ~~ attitude2
 SAY ~Possibly. I've never thought about it much, since it's not all bad being in the Order. After all, I can't say I was complaining when they put me up for this task.~
 = ~I can drink as much as I want out here, and I can hunt down the evil scum on Faerun with complete freedom. This might be the figurative hell, but damn if it's not a pleasant one.~
IF ~~ EXIT
END

IF ~~ squire
 SAY ~Ah... no, not quite. That is to say, I was done with cleaning some knight's armor and feeding his overweight horse years ago. I'm... well, there's really no word to describe it that I know of. Among the Order, I'm... a special case.~
IF ~InParty("Ajantis")~ + squire1
IF ~!InParty("Ajantis")~ + squire2
END

IF ~~ squire1
 SAY ~I'm not in much of a different position to our friend Ajantis. Except while he serves under Sir Firecam, I answer directly to prelate Durand - my father, one of the heads of the order - himself. Makes for a good chance for some father-son bonding. Not that we ever do anything but argue, of course.~
IF ~~ + squire3
END

IF ~~ squire2
 SAY ~Most members of the auxiliary serve under a veteran knight, but I answer directly to prelate Durand - my father, one of the heads of the order - himself. Makes for a good chance for some father-son bonding. Not that we ever do anything but argue, of course.~
IF ~~ + squire3
END

IF ~~ squire3
 SAY ~Still, it means I'm entitled some more rights than the usual squire, and I don't necessarily need to complete my knighthood trial. My father demands that I do it anyway, of course, but I hardly think I'm proper knight material.~
 = ~The other duffers of the council hate my position, of course, since it undermines the whole structure of the Order. Only their respect for my father allows me to remain where I am - not my choice, I might add. They'd never say it, but I'm sure they hope one day I'll do something so blasphemous even my father can't defend me.~
 = ~Maybe I will eventually, just to see the expression on their faces. It might even be worth the inevitable banishment from my family it's sure to result in.~
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

IF ~~ stoneheart
 SAY ~*snort* You should ask him the same question. Because I think you'll find that you get two completely different answers if you do that.~
 = ~Suffice to say that we've known each other for a long time. I trusted in him greatly - a rarity for me - and then it turned out he kept secrets from me all along. You don't just forget something like that.~
IF ~~ EXIT
END

IF ~~ stoneheart2
 SAY ~Vance was... a close friend. Perhaps more than a friend, he was someone I could truly, wholly trust and confide in. We shared a similar mind, you see, wanting to do good as we saw fit.~
 = ~Of course, then it turned out that he was a former Shadow Thief, who only turned coat to save his own skin. At least, that's what I believed. Perhaps the truth wasn't quite as simple. Maybe he really did want to turn over a new leaf.~
 ++ ~Would you forgive him if he did?~ + stoneheart2.1
 + ~PartyHasItem("c0dlock")~ + ~Were the two of you lovers?~ + stoneheart2.2
 + ~!PartyHasItem("c0dlock")~ + ~Were the two of you lovers?~ + stoneheart2.3
 ++ ~I see. That's all I wanted to know.~ EXIT
END

IF ~~ stoneheart2.1
 SAY ~I don't know. Maybe. He'd have to do some serious making up for me to consider it.~
 = ~Not as if it's relevant right now. When we meet again, perhaps I'll be in a more forgiving mood.~
 + ~PartyHasItem("c0dlock")~ + ~I can see you still care for him. Why bother hiding it?~ + stoneheart2.2
 + ~!PartyHasItem("c0dlock")~ + ~I can see you still care for him. Why bother hiding it?~ + stoneheart2.3
 ++ ~I see. That's all I wanted to know.~ EXIT
END

IF ~~ stoneheart2.2
 SAY ~I suppose there's really no point in keeping secrets, given that he gave you my locket and everything.~
IF ~~ + stoneheart2.3
END

IF ~~ stoneheart2.3
 SAY ~*sigh* Yes, Vance and I shared... moments. But we both knew nothing much would come of it. After all, not only was he a former criminal, but I had expectations upon me to carry on the Caulfield name.~
 = ~I can't say I liked those expectations, but oftentimes, they're what you get. So I gave him my family's treasure just to show him I still cared. You know, the fact that he gave it back means he probably wants us both to move on.~
 = ~Can't say I'm opposed to it. Whether I forgive him is one matter, but there's no future in what we had. We accepted that long ago. I'm just glad one of us was brave enough to admit it.~
 = ~Gah, just the thought of this is enough to make me want to drown myself in a river of ale. Let's carry on. Please.~
IF ~~ EXIT
END

IF ~~ eldoth
 SAY ~It's a matter between him and me, <CHARNAME>, there's no need to get worked up over it.~
IF ~~ EXIT
END

IF ~~ eldoth2
 SAY ~Not all minstrels. Just him in particular.~
 ++ ~And why is that, exactly?~ + eldoth3
 ++ ~Do you have a reason for it?~ + eldoth3
END

IF ~~ eldoth2.1
 SAY ~Not all minstrels. Garrick's an alright kid, for instance, clueless though he may be. Just that slimy worm in particular.~
 ++ ~And why is that, exactly?~ + eldoth3
 ++ ~Do you have a reason for it?~ + eldoth3
END

IF ~~ eldoth3
 SAY ~Does anyone really need a reason to hate Eldoth? I'm sure if you paraded him through the streets of Athkatla, people would pay you to knock that smug look off his face. Violently.~
 = ~Though you probably want a more specific reason from me. *sigh* Yes... I do have a personal grudge against him. But I'll be fair, it's not entirely his own fault. Just mostly.~
 = ~Let me tell you a story of a woman I once knew: Lady Ceola Balmont, a lovely madam, outspoken, loved by the common folk. She was one of the few willing to speak up for the rights of those not born into privilege.~
 = ~The blue-blooded scum who were against her didn't dare do anything in the public scene, given how popular she was. So they hired a musician - not unlike our 'friend' Eldoth - to muddy her name with the locals with disgusting slander about her personal life.~
 = ~Lady Balmont's husband turned out to be one of those bastards who acted against her, and proceeded to humiliate her further among his circle of friends, so people swallowed the lies immediately. She couldn't take the abuse and took her own life not long afterwards. A tragic loss it was to the aristocracy, which is otherwise filled with fat louts and council sycophants.~
 ++ ~And that's the whole reason you despise Eldoth?~ + eldoth4
END

IF ~~ eldoth4
 SAY ~Well... there's more. Have I mentioned my youngest sibling, Claudia, is a patron of the arts? She wields an instrument like I wield a hammer. You've never seen a more talented artist at such a young age.~
 = ~When I heard that she has been there and *listened* to the scum that sang the bullcrap that destroyed Lady Balmont, then came and told me about it all... well, let's just say the law was the only thing stopping me from going and caving in the fiend's head for nearly poisoning my dear sister's mind with his words.~
 = ~I have a great respect for the arts. It takes patience and talent greater than my own, I admit it, and I fully support my sister in her interests. That's why I have nothing but contempt for those who use their talent to hurt others in such rotten ways. Perhaps now you can see why I loathe Eldoth so.~
IF ~~ EXIT
END

IF ~~ moveon
 SAY ~I can't say I haven't thought about it. But I suppose you're not just asking for the sake of it, are you? After all, you seem to have taken a great interest in my personal affairs.~
IF ~Gender(Player1,MALE)~ + moveon1
IF ~Gender(Player1,FEMALE)~ + moveon2
END

IF ~~ moveon1
 SAY ~I've said it before. I have responsibilities, and as much as I hate them, I doubt either Tyr or my family will forgive me if I choose to abandon everything for the sake of my selfishness. Still...~
IF ~~ + moveon2
END

IF ~~ moveon2
 SAY ~My time together with Vance was... happy. I don't get a chance to say things like that very often. And although most of my remarks are made in good fun, you've... definitely got an attractive quality to you, I won't lie.~
 = ~Tell you what, <CHARNAME>, when things aren't such a mess here in the Sword Coast, then we can talk... right now, I think it's more important we set our feelings aside to do what we need to.~
IF ~~ EXIT
END 

IF ~~ stringfix
 SAY ~Hmm... you know, you may be right. Give me a second... *cough*~
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0DRESET")~ EXIT 
END
END