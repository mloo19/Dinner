"Dinner" by mloo19

When play begins:
	say "You wake up in a steaming hot bath. Suddenly, a huge hand lifts the ceiling of the container you are in. Light surrounds you, and you realize you are in a steamer with five other steamed buns. A huge set of chopsticks reach in and grab the steamed bun next to you. You really need to find a way out before you are next."
	
When play begins:
	now left hand status line is "Exits: [exit list]";
	now right hand status line is "[location]".
	
To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way] ".

The description of the player is "A white, fluffy bun."

Understand "grab [something]" or "hold [something]" or "pick [something] up" or "pick up [something]" as taking.
	
Understand "move [something]" or "nudge [something]" as pushing.

The Steamer is a room. The description of the Steamer is "A round, bamboo steamer resting on a pot of boiling water. The Human's chopsticks rest in the steamer, and five other steamed buns are huddled next to you. The cover is on the steamer, but you notice light coming through a crack in the top."

Noname is a man in the Steamer. “Noname is a fellow steamed bun huddled in the corner of the Steamer trying not to be eaten.” The description is “A white fluffy steamed bun with great advice.” 

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

Instead of talking to Noname:
say "'Hi, there,' you say.[paragraph break]'Hi,' he replies nervously.[paragraph break]'How long have you been in here,' you ask.[paragraph break]'Long enough to know what's about to happen,' Noname replies. [paragraph break]'Do you know how to get out of here?' you ask.[paragraph break]Noname looks around nervously. 'I heard the last successful steamed bun was able to escape after eating some green onion from the cutting board. But that was years ago, and you have to figure out how to get out of the steamer.'[paragraph break]After hearing this, you decide against talking any further with Noname right
now.".

The Chopsticks is a thing. It is in the Steamer. The description of the Chopsticks is "Two wooden sticks used as a utensil to eat or cook."

The Crack is a container. The description of the Crack is "A small opening in the cover. Maybe this is your time to escape." It is openable and closed. It is in the Steamer. It is undescribed.

The X is a container in the Steamer. It is undescribed.

The Cover is a thing in the Steamer. It is undescribed. Understand "lid" or "top" as cover. The description of the Cover is "A bamboo lid that keeps the steam and heat in the steamer."

Instead of inserting the Chopsticks into the Crack:
	say "You nudge the chopsticks into the crack until you know you have good leverage. Now all you have to do push the chopsticks to get the cover off.";
	move the Chopsticks to the X.
	
Instead of pushing the Chopsticks:
	if the chopsticks are in the X:
		say "You roll onto the end of the chopsticks, making the crack wider. After a couple more seconds, the cover is off, and it falls to the Kitchen Table Top. Now you can escape![paragraph break]The Human turns to see what the noise was.";
		move the Cover to the Kitchen Table Top;
		now the Crack is open;
	otherwise:
		say "You push the Chopsticks around and accidentally poke one of the other steamed buns!".  

Instead of going down:
	If the player is in the Steamer:
		if the Crack is closed:
			say "You try to roll out, but the Cover is still on.";
		otherwise:
			now the player is hidden;
			move the player to the Kitchen Table Top.

Instead of climbing the Steamed Buns:
	if the Crack is closed:
		say "You climb on top of the Steamed Bun next to you, but the cover is still closed, preventing you from escaping.";
	If the Crack is open:
		say "You climb out of the Steamer and fall on the Kitchen Table Top.";
		now the player is hidden;
		move the player to the Kitchen Table Top.

Test STM with "put chopsticks in Crack/push chopsticks/down.".
	
Understand "get on" or "get on top of" or "climb on top of" or "climb on" as climbing.

A Steamed Buns is a thing. It is in the Steamer. It is undescribed. It is edible. Understand "bun" or "buns" or "steamed" as the Steamed Buns. The description of the Steamed Buns is "You look around the steamer and see your fellow steamed buns just as scared as you are."

[A thing has a number called numberofbuns. The numberofbuns of the Steamed Buns is five.]

The Human is a woman. Understand "old" or "Chinese" or "girl" or "woman" or "her" or "she" or "human" as the Human. The Human is in the Kitchen Table Top. "The Human is super hungry, and she waits for the steamed buns to finish cooking." The description is "An old, Chinese woman."

[A person can be hungry or not hungry. A person is usually hungry.
The Human has a number called hunger-level. The hunger-level of the Human is 7.

Every 10 turns:
	if the humger-level of the Human is greater than 1:
		
	decrease the hunger-level of the Human by 1;
	decrease the number of Steamed Buns by 1;
	say "'Mhmmmm, yummy,' the Human says, 'I can't wait for the rest of the buns to be ready.".

Every turn:
	if the location of The Human is not the location of the player:
		let the way be the best route from the location of The Human to the location of the player;
		try The Human going the way;
	otherwise:
		say "'I'm hungry,' The Human says.".]

The Kitchen Table Top is below the Steamer. "[if unvisited] You land on the granite surface behind the Cover, so the Human can't see you. [end if]". Understand "kitchen" or "kitchen table" as Kitchen Table Top.

The Cutting Board is a thing in the Kitchen Table Top. "Freshly cut Green Onions lie on the Cutting Board."

The Green Onions is a thing on the Cutting Board. The Green Onions are edible.

A person can be armful or armless. A person is usually armless. 

Instead of eating the Green Onions:
	say "You roll over the Cutting Board and eat a green onion, and then you feel a tingling in your body. Suddenly, you watch as two arms grow out of your body.";
	now the player is armful.

Instead of taking something:
	if the player is armless:
		say "You try, but you don't have any hands yet. Try [bold type] pushing something.";
	if the player is armful:
		continue the action.

A person can be hidden or nothidden. A person is usually nothidden. 

Hiding behind is an action applying to one thing. Understand "hide behind [something]" as hiding behind.

Instead of hiding behind:
	say "You roll behind [the noun]. Now the Human can't see you.";
	now the player is hidden.
Check hiding behind:
	say "The Human can see you! Quick [bold type] hide behind something!".
	
Every turn:
	let current location be the location of the Human;
	let next location be a random room which is adjacent to the current location;
	if the Human is visible, say "The Human goes towards the [the next location].";
	move the Human to next location;
	
[Every turn:
	let current location be the location of the Human;
	let next location be a random room which is adjacent to the current location;
	if the next location of the Human is the location of the player, say "Quick! The Human is coming back from [the current location].".]

The Napkin Holder is a thing in the Kitchen Table Top. 

Instead of taking the Napkin Holder:
	say "You grab the Napkin Holder and pull, but it is too big and too heavy.".

Instead of pushing the Napkin Holder:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".

The Sink is east of the Kitchen Table Top. 

The Sponge is a thing in the Sink.

The Plate is east of the Sink.

The Bowl is east of the Plate.

The Rice is a thing in the Bowl. It is edible. "An extremely sticky rice, almost as sticky as glue."

Instead of eating the Rice:
	say "You eat some, but it's so sticky that your mouth is almost glued shut. You wouldn't want to eat that again."

The Window is above the Bowl. "The Window is so high. It is open, letting the breeze from the outside flow through the kitchen. The beautiful blue sky and your freedom lie just on the other side."

The Window Sill is in the Window. It is a supporter. Understand "sill" as the Window Sill. The description of the Window Sill is "A flat, white surface just beneath the Window."

Leaning is an action applying to two things. Understand "lean [something] against [something]" as leaning.

The Cabinet is west of the Kitchen Table Top. "The Cabinet is open. Boxes and jars of food fill the Cabinet."

The Wooden Spatula is in the Cabinet. It is a supporter. It is not fixed in place. Understand "spatula" or "spoon" as the Wooden Spatula. 

The Dinner Table is south of the Sink. 

An every turn rule:
	if the Human is visible:
		if the player is nothidden:
			say "THE HUMAN TAKES YOU!!!!";
			end the story finally.

	




