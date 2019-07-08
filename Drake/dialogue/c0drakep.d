BEGIN C0DRAKEP

IF ~Global("C0DrakeJoined","LOCALS",1)~ p1
 SAY ~How now, what's this? Are you suggesting you have no further need of my assistance? You are? Well, then, because I'm feeling generous, I'll give you the chance to reconsider.~ [C0DRAK29]
 	++ ~I'm serious. I have no need for you right now.~ + p2
 	++ ~Fine, stay with me then.~ + p3
END
 
IF ~~ p2
 SAY ~How very disappointing. In that case, you'll find me drowning in a tankard of ale at the Friendly Arm Inn. Do come by and say hello.~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",0) EscapeAreaMove("AR2301",593,530,NW)~ EXIT
END

IF ~~ p3
 SAY ~You can thank me for my generosity with a nice hard drink, my friend.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("C0DrakeJoined","LOCALS",0)~ p4
 SAY ~Well, look who's come crawling back. Perhaps you've developed a bit of wisdom and realized how necessary I am? But before that, this one's on me, <CHARNAME>. Come, put your feet up, and let's get drunk together.~ [C0DRAK30]
	++ ~Maybe another time. Right now, we have places to be.~ + p5
	++ ~On second thought, I'm going to leave now.~ + p6
END

IF ~~ p5
 SAY ~Ha! Well said. You're after some excitement on the road again? I'm in.~
IF ~~ DO ~SetGlobal("C0DrakeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~Such a shame. But you'll be back soon enough.~
IF ~~ EXIT
END