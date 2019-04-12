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

Steve is a man in the Steamer. “Steve is a fellow steamed bun huddled in the corner of the Steamer trying not to be eaten.” The description is “A white fluffy steamed bun with great advice.” 

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

Instead of talking to Steve:
say "'Hi, there,' you say.[paragraph break]'Hi,' he replies nervously.[paragraph break]'How long have you been in here,' you ask.[paragraph break]'Long enough to know what's about to happen,' Steve replies. [paragraph break]'Do you know how to get out of here?' you ask.[paragraph break]Steve looks around nervously. 'I heard the last successful steamed bun was able to escape after eating some green onion from the cutting board. But that was years ago, and you have to figure out how to get out of the steamer.'[paragraph break]After hearing this, you decide against talking any further with Steve right
now.".

The Chopsticks is a thing. It is in the Steamer. The description of the Chopsticks is "Two wooden sticks used as a utensil to eat or cook."

The Crack is a container. The description of the Crack is "A small opening in the cover. You just need something to nudge the Crack open wider." It is openable and closed. It is in the Steamer. It is undescribed.

The X is a container in the Steamer. It is undescribed.

The Cover is a thing in the Steamer. It is undescribed. Understand "lid" or "top" as cover. The description of the Cover is "A bamboo lid that keeps the steam and heat in the steamer."

Instead of inserting the Chopsticks into the Crack:
	say "You nudge the chopsticks into the crack until you know you have good leverage. Now all you have to do push the chopsticks to get the cover off.";
	move the Chopsticks to the X.
	
Instead of pushing the Chopsticks:
	if the chopsticks are in the X:
		say "You roll onto the end of the chopsticks, making the crack wider. After a couple more seconds, the cover is off, and it falls to the Kitchen Table Top. Now you can go down and escape![paragraph break]The Human turns to see what the noise was.";
		move the Cover to the Kitchen Table Top;
		move the Chopsticks to the Kitchen Table Top;
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

Test STM with "put chopsticks in Crack/push chopsticks/down.".

A Steamed Buns is a thing. It is in the Steamer. It is undescribed. It is edible. Understand "bun" or "buns" or "steamed" as the Steamed Buns. The description of the Steamed Buns is "You look around the steamer and see your fellow steamed buns just as scared as you are."

The Human is a woman. Understand "old" or "Chinese" or "girl" or "woman" or "her" or "she" or "human" as the Human. The Human is in the Kitchen Table Top. "The Human is super hungry, and she waits for the steamed buns to finish cooking." The description is "An old, Chinese woman."

The Kitchen Table Top is below the Steamer. "[if unvisited] You land on the granite surface behind the Cover, so the Human can't see you. [end if] The Human's cutting board and a napkin holder lie on the surface.". Understand "kitchen" or "kitchen table" as Kitchen Table Top.

The Cutting Board is a thing in the Kitchen Table Top. The description of the Cutting Board is "Freshly cut Green Onions lie on the Cutting Board.".

The Green Onions is a thing on the Cutting Board. The Green Onions are edible. THe description of the Green Onions is "Circular, chopped green onions ready to be spread on a dish. They gleam like they hold special, secret powers."

A person can be armful or armless. A person is usually armless. 

Instead of eating the Green Onions:
	say "You roll over the Cutting Board and eat a green onion, and then you feel a tingling in your body. Suddenly, you watch as two arms grow out of your body.";
	now the player is armful.

Instead of taking something:
	if the player is armless:
		say "You try, but you don't have any hands yet. Try [bold type] pushing something.";
	if the player is armful:
		say "You take [the noun] with your newly grown arms.";
		continue the action.

A person can be hidden or nothidden. A person is usually nothidden. 

Hiding behind is an action applying to one thing. Understand "hide behind [something]" as hiding behind.

Instead of hiding behind:
	say "You roll behind [the noun]. Now the Human can't see you.";
	now the player is hidden.

Check hiding behind:
	say "The Human can see you! Quick [bold type] hide behind something!".
	
Test HGA with "hide behind napkin holder/eat green onions/take chopsticks."
	
[Every turn:
	let current location be the location of the Human;
	let next location be a random room which is adjacent to the current location;
	if the Human is visible, say "The Human goes towards the [the next location].";
	move the Human to next location;
	
Every turn:
	let current location be the location of the Human;
	let next location be a random room which is adjacent to the current location;
	if the next location of the Human is the location of the player, say "Quick! The Human is coming back from [the current location].".]

The Napkin Holder is a thing in the Kitchen Table Top. Understand "napkin" or "holder" as the Napkin Holder. The description of the Napkin Holder is "A large, wooden structure filled with napkins."

Instead of taking the Napkin Holder:
	say "You grab the Napkin Holder and pull, but it is too big and too heavy.".

Instead of pushing the Napkin Holder:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".

The Sink is east of the Kitchen Table Top. The description of the Sink is "A basin filled halfway with soapy water. The water level is too deep for you to roll across, but will keep you hidden from the Human. A sponge floats on top of the water right in front of you."

Every turn:
	if the player is in the Sink:
		now the player is hidden.
Every turn:	
	if the player is in the Bowl:
		now the player is hidden.
Every turn:
	if the player is in the Plate:
		now the player is hidden.

The Sponge is an enterable supporter. It is in the Sink. The description of the Sponge is "A floating sponge usually used for washing dishes, but can also be used for other things."

Getting on is an action applying to one thing. Understand "get on [something]" as getting on.

Understand "get on [something]" as entering.

Instead of getting on the Sponge:
	say "You roll onto the Sponge. It dips a little, but stays afloat and seem steady for your journey across the sink.";
	now the player is on the Sponge.

Getting out of is an action applying to one thing. Understand "get out of [something]" as getting out of.

Carry out getting out of something:
	try exiting instead.

V is a thing in the Sink. It is undescribed.
W is a thing in the Sink. It is undescribed.

Instead of getting out of the Sponge:
	if the player has V:
		say "You finally reach the other side, and see a plate and a bowl sitting next to each other. You roll off the sponge and onto the plate.";
		move the player to the Plate;
	if the player has W:
		say "You get out of the Sink and are back on the Kitchen Table Top[paragraph break]Remember, the Human is still wandering around!.";
		move the player to the Kitchen Table Top.
		
[Rule for printing the name of the V while taking inventory:
	omit the "V" in listing.]

Every turn:
	if the player has the V:
		if the player is in the Plate:
			move the V to the Sink.
					
Every turn:
	if the player has the W:
		if the player is in the Kitchen Table Top:
			move the W to the Sink.

Instead of going east:
	if the player is in the Sink:
		if the player is on the Sponge:
			if the player has the Chopsticks:
				say "You row stealthly across the Sink to the other side of the table.";
				move the V to the player;
				continue the action;
			otherwise:
				say "You hop on the Sponge, but have nothing to propel yourself with. Maybe you need something to act as a paddle.";
		if the player is not on the Sponge:
			say "You plop into the water and slowly sink to the bottom.";
			end the story finally.
			
Instead of going west:
	if the player is in the Plate:
		if the player is on the Sponge:
			if the player has the Chopsticks:
				say "You row stealthly across the Sink to the other side of the table.";
				move the W to the player;
				continue the action;
			otherwise:
				say "You hop on the Sponge, but have nothing to propel yourself with. Maybe you need something to act as a paddle.";
		if the player is not on the Sponge:
			say "You plop into the water and slowly sink to the bottom.";
			end the story finally.

The Plate is east of the Sink. 

The Bowl is east of the Plate. The description of the Bowl is "You roll and plop yourself into a pool of rice. You sink a little into the rice to camouflage yourself from the Human."

The Rice is a thing in the Bowl. It is edible. "An extremely sticky rice, almost as sticky as glue."

Instead of eating the Rice:
	say "You eat some, but it's so sticky that your mouth is almost glued shut. You wouldn't want to eat that again."

The Window is above the Bowl. "The Window is so high. It is open, letting the breeze from the outside flow through the kitchen. The beautiful blue sky and your freedom lie just on the other side."

The Window Sill is in the Window. It is a supporter. Understand "sill" as the Window Sill. The description of the Window Sill is "A flat, white surface just beneath the Window."

Leaning is an action applying to two things. Understand "lean [something] against [something]" as leaning.

Understand "put [something] on [something]" as leaning.

The Cabinet is west of the Kitchen Table Top. "The Cabinet is open. Boxes and jars of food fill the Cabinet."

The Boxes is a thing in the Cabinet. Understand "box" as boxes. The description of the Boxes is "Heavy, stacked boxes containing packets of noodles and other foods."

Instead of taking the Boxes:
	say "You grab the Boxes and pull, but it is too big and too heavy.".

Instead of pushing the Boxes:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".
	
The jars is a thing in the Cabinet. Understand "jar" as Jars. The description of the Jars is "Tall jars filled with various sauces and seasonings.".

Instead of taking the Jars:
	say "You grab the Jars and pull, but it is too big and too heavy.".

Instead of pushing the Jars:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".
	
The Utensil Crock is a container in the Cabinet. It is open. Understand "utensil" or "crock" as the Utensil Crock. The description of the Utensil Crock is "A tall, cylindrical tool holder that houses cooking utensils. The Spatula, B, and C are in the Holder."

B is a thing in the Utensil Crock.
C is a thing in the Utensil Crock.

Instead of taking the Utensil Crock:
	say "You grab the Utensil Crock and pull, but it is too big and too heavy.".

Instead of pushing the Utensil Crock:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".
	
The Spatula is in the Utensil Crock. It is a supporter. It is not fixed in place. Understand "spoon" as the Spatula. 

Glueing is an action applying to two things. Understand "glue [something] and [something]" or "glue [something] and [something] together" as glueing.

Instead of glueing:
	if the player has the Rice:
		say "You paste [the noun] and [the second noun] together, creating a sturdy structure.";
		continue the action;
	otherwise:
		say "You put [the noun] on [the noun], but they just slide apart. Maybe you need to glue them together.".
			
The glueing action has an object called the Contraption.
	
Check glueing:
	if Contraption is nothing:
		say "You can't glue [the noun] and [the second noun] together into anything useful.[line break]Try another combination of things.";
		stop the action.
		
Carry out glueing: 
	say "You glue together [the noun] and [the second noun].";
	remove the noun from play;
	remove the second noun from play;
	move the Contraption to the player.

Report glueing:
	say "You now have a [a Contraption]."

Setting action variables for glueing: 
	let X be a list of objects;
	add the noun to X;
	add the second noun to X;
	sort X; 
	repeat through the Table of Utensils: 
		let Y be the parts list entry; 
		sort Y; 
		if X is Y: 
			now the Contraption is the results entry.
			
Table of Utensils
Parts List	Results
{Spatula, B}	SpatulaB
{Spatula, C}	SpatulaC
{B, C}	BC
{Spatula, B, C}	Ladder Thingy
{SpatulaB, C}	Ladder Thingy
{SpatulaC, B}	Ladder Thingy
{BC, Spatula}	Ladder Thingy

The SpatulaB is an object. The description of the SpatulaB is "Spatula and B… Need anything else?"
The SpatulaC is an object. The description of the SpatulaC is "Spatula and C… Need anything else?"
The BC is an object. The description of the BC is "B and C… Need anything else?"

The Ladder Thingy is a thing.

The Dinner Table is south of the Sink. The description of the Dinner Table is "A place you do not want to be."

An every turn rule:
	if the Human is visible:
		if the player is nothidden:
			say "THE HUMAN TAKES YOU!!!!";
			end the story finally.

	




