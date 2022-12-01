// Drake-Recorder 1
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",0)~ THEN BC0Drake DrakeRecorder1
~I can feel your stare threatening to bore a hole through my armor, Ribbons. I'd much rather hear your dulcet tones than suffer your scrutiny.~
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== X3RecB ~"Ribbons"? I...*ahem* I apologize. It was very rude of me to stare.~
== BC0Drake ~No harm done. But do speak up–hearing confessions, that is what I am here for, after all. Heh.~
== X3RecB ~That's just it, though. You, um... you don't exactly fit my image of proper Tyrran priest.~
== BC0Drake ~Nor that of most men, I presume.~
== X3RecB ~I've just never seen a knight that—~
== BC0Drake ~Knight-to-be. With more than a little reluctance.~
== X3RecB ~Still... Sir Mark Harmon always embodied the principles of Milil's faith. He was poetic, gentlemanly, well-read. And... well, you're...~
== BC0Drake ~...slovenly, haphazard, a little too drunk?~
== X3RecB ~Oh no no, I wasn't going to say that.~
== BC0Drake ~But you were thinking it. People don't fit into perfectly-shaped boxes that are made for them, Ribbons.~
== X3RecB ~I know. But would you mind behaving with just a little more decorum?~
== BC0Drake ~Certainly not. It'd just make life a little too boring for my taste.~
EXIT 

// Drake-Recorder 2
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",1)~ THEN X3RecB DrakeRecorder2
~The Caulfields... they're Amnian nobles, right? I don't think I've heard of them before.~
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== BC0Drake ~I'd be more surprised if you had. We don't own many lands, nor do we stick our hands within the trade economy further than it is welcome. By noble standards, we're nobodies.~
== X3RecB ~Still... your father is a prelate of the Order of the Radiant Heart. Surely you must have some amount of reputation.~
== BC0Drake ~Aye, certainly. Unless you're a war aficionado or very well-versed in Amnian history, however—ah, I forget who I'm speaking to. Perhaps the War of the Red Sands might ring a bell to you.~
== X3RecB ~Oh... of course. Armand Caulfield, the Northern Lion. I'm very sorry, Drake. I didn't see the connection until now.~
== BC0Drake ~Yes, I reckon I'm a few inches and a golden mane short of how the history books portray him, aye?~
== X3RecB ~No, I can see the resemblance, now that I'm looking for it. But with such a lineage, wouldn't you want to live up to your legacy?~
== BC0Drake ~Legacy? Ha! Ribbons, my forefathers fought for a realm that existed more than a hundred years past. And contrary to however history pens it, wars are never fought of morals alone. Look at the world we live in–is it any more bereft of greed, deceit, corruption? Perhaps retracing old footsteps is not the way.~
== X3RecB ~You're thinking of the world as it now, Drake. I would rather think of what it could be.~
EXIT 

// Drake-Recorder 3
CHAIN IF ~InParty("X3Rec")
See("X3Rec")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3RecB",CD_STATE_NOTVALID)
Global("C0DrakeX3Rec","LOCALS",2)~ THEN X3RecB DrakeRecorder3
~I want to apologize to you, Drake.~
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== BC0Drake ~Aye? I certainly hope this is not related to our little debate previously. I took no personal offense.~
== X3RecB ~It... well, it is, but not directly. It just occurred to me that you're more sophisticated than I took you for. I shouldn't have judged purely on appearances.~
== BC0Drake ~I would not change my mind so quickly, were I in your shoes. I *am* every bit as drunken and slovenly as you took me for, after all, and I have done nothing to try and prove the contrary.~
== X3RecB ~Still, you're full of surprises. I never expected you to have be so well-read. Not only do you know history, but you even recognized my poem from last evening.~
== BC0Drake ~I think you'll find I recall songs more easily than poetry, Ribbons. But, aye, 'twas a coincidence that I happened across that particular writing in my casual readings. Now... how did it go again?~
== X3RecB ~'I wandered lonely as a cloud
That floats on high o’er vales and hills,
When all at once I saw a crowd,
A host, of golden daffodils;
Beside the lake, beneath the trees,
Fluttering and dancing in the breeze.'~
== BC0Drake ~'Continuous as the stars that shine
And twinkle on the milky way,
They stretched in never-ending line
Along the margin of a bay:
Ten thousand saw I at a glance,
Tossing their heads in sprightly dance.'~
== X3RecB ~'The waves beside them danced; but they
Out-did the sparkling waves in glee:
A poet could not but be gay,
In such a jocund company:
I gazed—and gazed—but little thought
What wealth the show to me had brought.'~
== BC0Drake ~Aye, that does ring familiar to my ear. And if my memory does not betray me, the next verse goes thusly...~
== BC0Drake ~'For oft, when on my couch I lie
In vacant or in pensive mood,
They flash upon that inward eye
Which is the bliss of solitude;
And then my heart with pleasure fills,
And dances with the daffodils.'~
== X3RecB ~Look at you! You can even recite verses from memory. I think we have a lot to talk about in the future.~
== BC0Drake ~Me? Nay, Ribbons, you ask too much of me. But do stop by our estate sometime should you find yourself in Athkatla–I'm certain my sister Claudia would absolutely adore you.~
EXIT 
