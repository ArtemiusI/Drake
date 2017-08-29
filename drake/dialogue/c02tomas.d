BEGIN C02TOMAS

CHAIN IF ~AreaCheck("bd3000")
Global("C02TomasTalk","GLOBAL",0)~ THEN C02TOMAS tomas
~I never expected fighting for a cause to be like this. So many dead, so many dying... I suppose there really is no glory in war after all.~
END
IF ~IsValidForPartyDialog("C0Drake")~ EXTERN C02DRAKJ tomas.1
IF ~!IsValidForPartyDialog("C0Drake")~ EXIT

CHAIN C02DRAKJ tomas.1
~Don't let our father catch you saying that. He'd try to knock some sense back into your head.~
DO ~SetGlobal("C02TomasTalk","GLOBAL",1)~
== C02TOMAS ~Heh. You're right. Good thing there's over a hundred leagues between us and Amn at the moment.~
== C02DRAKJ ~I wish I could say something to comfort you, kid. But I can't. I feel the same way as you. I've never liked all this damn bravado and false confidence myself.~
== C02TOMAS ~Now I get why you were never enthusiastic about me joining the Order. I can't imagine how Gabriel could stand it.~
== C02DRAKJ ~He had comrades. Loyal comrades that he trusted, and trusted him in return. Myself included. Leaning on your friends is the best you can do to endure this.~
== C02TOMAS ~...~
== C02DRAKJ ~Anything you feel like talking about?~
== C02TOMAS ~Sir Elrik's been training me in using a sword. But I can't bring myself to bravely charge into battle like you and Gabriel. I fare better while fighting from a distance.~
== C02DRAKJ ~I noticed you're more comfortable with that bow of yours. Has Vance been teaching you a few tricks while I was gone?~
== C02TOMAS ~Yeah. He came by to check on the family a lot while you were gone. Then he had to leave as well. Have you seen him?~
== C02DRAKJ ~I did, yes. He was at Baldur's Gate not too long ago. If his mission's complete, and he's not dead... he's probably gone home.~
== C02TOMAS ~Do you... still hate him?~
== C02DRAKJ ~Ha! You know me. I don't have a genuine hateful bone in my body. Except towards bastards who water down my ale. We've made our peace, don't worry.~
== C02TOMAS ~That's good. You've never been the same since we lost our brother, Drake. I've been worried.~
== C02DRAKJ ~Now, kid, remember where we are right now. We've more pressing matters to worry about than our family drama. Besides... not exactly something other people need to know about, get my meaning?~
== C02TOMAS ~Yeah... you're right. Thanks for coming by and listening, Drake. I don't have anyone else I can talk to here.~
== C02DRAKJ ~Any time, little brother... any time. As long as I'm still alive, you can count on me. Does that make you feel better?~
== C02TOMAS ~It does. I should get back to work on helping the wounded now, though. Talk to you later, Drake.~
EXIT

CHAIN IF ~Global("bd_battle","global",0)
OR(2)
Global("C02TomasTalk","GLOBAL",1)
!IsValidForPartyDialog("C0Drake")~ THEN C02TOMAS tomas1
~Hello. I'm sorry I can't talk now, but I've still got work to do.~
EXIT

CHAIN IF ~!Global("bd_battle","global",0)
!GlobalGT("bd_battle","global",36)~ THEN C02TOMAS tomas2
~I'm ready for battle, <CHARNAME>. Just say the word.~
EXIT

CHAIN IF ~GlobalLT("bd_plot","global",450)
!Dead("bdashati")~ THEN C02TOMAS tomas2
~The battle's not over yet!~
EXIT

CHAIN IF ~GlobalLT("bd_plot","global",450)
Dead("bdashati")
IsValidForPartyDialog("C0Drake")
Global("C02TomasPostBattle","GLOBAL",0)~ THEN C02TOMAS tomas3
~Drake!~
DO ~SetGlobal("C02TomasPostBattle","GLOBAL",1)~
== C02DRAKJ ~Ho there! Looks like you've held your own just fine, kid. Good work.~
== C02TOMAS ~I'm relieved to see you're still alive too, brother. I was worried when I couldn't find you on the battlefield.~
== C02DRAKJ ~It'll take more than a fight like this to kill me. What about you? Not injured anywhere, are you?~
== C02TOMAS ~Nothing a trip to the healers won't fix. I'm just glad it's over.~
== C02DRAKJ ~It's not yet. But I think you've had enough action for the day. Go find Sir Elrik and take a break. <CHARNAME> and I will handle the rest.~
== C02TOMAS ~I- well, alright. I know you've got it all under control. Be careful, Drake.~
DO ~EscapeArea()~ EXIT