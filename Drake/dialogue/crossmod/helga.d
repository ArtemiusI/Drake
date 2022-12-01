// Drake-Helga 1
CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("C0DrakeX3Helga","LOCALS",0)~ THEN X3HelgaB DrakeHelga1
~A fine arm, justiciar. The Tyrran church forges many a fine warrior among its ranks.~
DO ~IncrementGlobal("C0DrakeX3Rec","LOCALS",1)~
== BC0Drake ~Ha! High praise indeed, coming from one such as yourself. Should I have the courtesy not to shatter your illusions of my faith, and simply 'smile and nod', as some would put it?~
== X3HelgaB ~Nay an illusion. Yer faith be yer own to live by. So long as ye fight well, I find little fault in what I see.~
== BC0Drake ~Very well, then. Simple praise it is, and that I shall graciously accept. On my part, I shall do my best not to disappoint.~
== X3HelgaB ~Eh, perhaps a single fault I see. Yer tongue wags too often for me liking.~
EXIT 