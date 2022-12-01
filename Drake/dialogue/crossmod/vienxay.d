CHAIN IF ~InParty("X3Vien")
InParty("C0Drake")
See("C0Drake")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("CrossDraVien","LOCALS",0)~ THEN X3VienB VienDrake1
~So I am to believe you are a human *noble*, as it were, Drake? I'm unconvinced.~
DO ~SetGlobal("CrossDraVien","LOCALS",1)~
== BC0Drake ~You are hardly the first, lady pointy-ears. My family was once of common birth. For my part, I find the whole 'nobility' concept to be pretentious.~
== X3VienB ~It is Lady Vienxay Starlight, not "pointy-ears", human. Unlike you, I demand respect and hold myself with dignity.~
== BC0Drake ~Dignity, eh? What's this about exile I hear, then?~
== X3VienB ~Over a misunderstanding. An error that will be corrected.~
== BC0Drake ~Is that so? I suppose it is your right to seek justice against this murderer that made you their scapegoat, then... *If* you truly are innocent, that is.~
== X3VienB ~Hrmph. Of course I am innocent. Still, I suppose you are more tolerable than most humans.~
== BC0Drake ~Ha! I've heard that one more than a few times as well. We'll see if it comes to last.~
EXIT

CHAIN IF ~InParty("X3Vien")
InParty("C0Drake")
See("C0Drake")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("CrossDraVien","LOCALS",1)~ THEN X3VienB VienDrake2
~How can one claim the title of a justice-upholding zealot in a realm so full of injustice, I wonder?~
DO ~SetGlobal("CrossDraVien","LOCALS",2)~
== BC0Drake ~I suppose this clumsy attempt at a rhetorical question is another barb aimed at me.~
== X3VienB ~Merely my own musings. I am surprised you are not struck down by lightning for simply existing. Your god must pay you little heed.~
== BC0Drake ~Or perhaps 'tis because there are gods more merciful than you know.~
== X3VienB ~Doubtful. Why, the injustice of my own situation is so great, and yet you do not seem to even care. So much for the mercy that your god claims to have.~
== BC0Drake ~Was it not your dependence on another that led to your current situation to begin with?~
== X3VienB ~That was... it... you know nothing of my affairs, human.~
== BC0Drake ~Only because you insist upon lying. Both to yourself and others... Madam Starshine.~
== X3VienB ~It's *Lady* Starlight, human.~
EXIT

CHAIN IF ~InParty("X3Vien")
InParty("C0Drake")
See("C0Drake")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
Global("CrossDraVien","LOCALS",2)~ THEN X3VienB VienDrake3
~Your human brews are simply *hideous*.~
DO ~SetGlobal("CrossDraVien","LOCALS",3)~
== BC0Drake ~Aye, many are. Though after having enough, the only thing hideous is the inevitable hangover next dawn.~
== X3VienB ~Assuming one can even stomach that many. Ugh. I long for the rich, shimmering Elverquisst of my homeland.~
== BC0Drake ~Do tell me should you get your hands on any.~
== X3VienB ~That would be as wasteful as feeding it to a horse. Elven liquors are for tongues far more refined than yours.~
== BC0Drake ~I would not presume to make assumptions on what my tongue can savor.~
== X3VienB ~Ugh. Your mind is as disgusting as your beard. Or did you say that purely to get a rise out of me?~
== BC0Drake ~Yes. And 'twas a success, too, from the looks of it.~
== X3VienB ~You. Are. Insufferable. Even as humans go.~
EXIT