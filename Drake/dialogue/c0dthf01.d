BEGIN C0DTHF02

CHAIN IF WEIGHT #-1
~Global("C0DrakeStoneheart","GLOBAL",2)~ THEN C0DTHF02 t1
~So what do you think, Vail? Sure this will work?~
DO ~SetGlobal("C0DrakeStoneheart","GLOBAL",3)~
== C0DTHF01 ~I think you should shut your trap and keep plotting these routes. We've got precious little time to waste as is.~
== C0DTHF02 ~You seem pretty eager to bring them down. It'd be a whole lot easier if we sat back and let them come out into the open.~
== C0DTHF01 ~And risk the Shadow Thieves' being accused of the matter? I think not, fool.~
== C0DTHF02 ~Call me a fool if you may, Vail, but your plan is wholly inefficient. One way or another, the Dukes are doomed. We may as well strike later when our enemies reveal themselves.~
== C0DTHF01 ~The Shadowmaster would have my head if I did as you suggest. Know your place and keep your idiocy to yourself.~
== C0DTHF02 ~Ha! You're one to talk. How many missions would you have failed if not for my assistance? You would have died long before you reached your current status within the guild.~
== C0DTHF01 ~You think I don't see right through you, Gideon? I know you've craved my position since I saw you first enter the guild hall. I dare you to try anything to sabotage me. You won't even get a word off before my blade reaches your neck.~
== C0DTHF02 ~Do you really want to start this now, Vail? I warn you, not one guildmate will miss you if I blasted you into the next realm.~
== C0DTHF03 ~...be that as it may, this is hardly the time, don't you think... Aiden, Gideon?~
== C0DTHF01 ~You presume to order me around, Klaus?~
== C0DTHF03 ~No, not that. It's just that... we have guests. Uninvited guests.~
== C0DTHF02 ~So we do. What's this then? Lost sheep?~
END
++ ~We're here to stop you.~ EXTERN C0DSTONE t1.1
++ ~Time to die, Shadow Thieves.~ EXTERN C0DSTONE t1.1
++ ~Um, we might be in the wrong place...~ EXTERN C0DSTONE t1.1

CHAIN C0DSTONE t1.1
~Aiden Vail and company, you are charged with the crimes of acting in the name of the Shadow Thieves and for attempts to instigate war between Baldur's Gate and Amn. By order of the Council of Six, you will submit or die.~
== C0DTHF01 ~Council dogs, are you? Well, you're a little far from home, and down here, no one will hear you scream. Gideon! Klaus! Show these fools the might of the Shadow Thieves!~
DO ~Enemy()
ActionOverride("C0DTHF02",Enemy())
ActionOverride("C0DTHF03",Enemy())~ EXIT


BEGIN C0DTHF01

BEGIN C0DTHF03