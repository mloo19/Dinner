"Dinner" by mloo19

When play begins:
	say "You wake up in a steaming hot bath. Suddenly, a huge hand lifts the ceiling of the container you are in. Light surrounds you, and you realize you are in a steamer with five other steamed buns. A huge set of chopsticks reach in and grab the steamed bun next to you. You really need to find a way out before you are next."
	
[Code to display a player's location in the game and possible exits in the header.]
When play begins:
	now left hand status line is "Exits: [exit list]";
	now right hand status line is "[location]".
	
To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way] ".
		
[Disable take all]
Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "You should figure out what you actually need instead of cheating.".

The description of the player is "A white, fluffy bun."

Understand "grab [something]" or "hold [something]" or "pick [something] up" or "pick up [something]" as taking.
	
Understand "move [something]" or "nudge [something]" as pushing.

The Steamer is a room. The description of the Steamer is "A round, bamboo steamer resting on a pot of boiling water. The Human's chopsticks rest in the steamer, and five other steamed buns are huddled next to you. The cover is on the steamer, but you notice light coming through a crack in the top."

Steve is a man in the Steamer. “Steve is a fellow steamed bun huddled in the corner of the Steamer also trying not to be eaten.” The description is “A white fluffy steamed bun with great advice.” 

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

Instead of talking to Steve:
say "'Hi, there,' you say.[paragraph break]'Hi,' he replies nervously.[paragraph break]'How long have you been in here,' you ask.[paragraph break]'Long enough to know what's about to happen,' Steve replies. [paragraph break]'Do you know how to get out of here?' you ask.[paragraph break]Steve looks around nervously. 'I heard the last successful steamed bun was able to escape after eating some green onion from the cutting board. But that was years ago, and you have to figure out how to get out of the steamer.'[paragraph break]After hearing this, you decide against talking any further with Steve right now.".

Instead of pushing the Steve:
	say "You bump into Steve, and he gives you a funny look in return. 'Maybe I should talk to him,' you think."
	
Instead of taking Steve:
	say "'I'll take my chances and stay here,' says Steve.".
	
Instead of eating Steve:
	say "Your stomach gets queasy at the thought of eating one of your kind, so you decide against it."

The Chopsticks is a thing. It is in the Steamer. The description of the Chopsticks is "Two wooden sticks used as a utensil to eat or cook."

The Crack is a container. The description of the Crack is "A small opening in the cover. You just need something put in the Crack to nudge the Crack open wider." It is openable and closed. It is in the Steamer. It is undescribed.

The X is a container in the Steamer. It is undescribed.

The Cover is a thing in the Steamer. It is undescribed. Understand "lid" or "top" as cover. The description of the Cover is "A bamboo lid that keeps the steam and heat in the steamer."

Instead of pushing the Crack:
	say "You try, but you can't quite reach that high. Maybe use something in the Steamer to put in the Crack to help you open the Crack wider.".

Instead of pushing the Cover:
	say "You try, but you can't quite reach that high. Maybe use something in the Steamer to put in the Crack to help you open the Crack wider.".

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
			move the player to the Kitchen Table Top;
	otherwise:
		continue the action.

Test STM with "put chopsticks in Crack/push chopsticks/down.".

A Steamed Buns is a thing. It is in the Steamer. It is undescribed. It is edible. Understand "bun" or "buns" or "steamed" or "steam bun" or "steam" as the Steamed Buns. The description of the Steamed Buns is "You look around the steamer and see your fellow steamed buns just as scared as you are."

Instead of getting out of the Steamer:
	say "Well, you got to figure out how to first."

Instead of pushing the Steamed Buns:
	say "You bump into one, and he gives you a dirty look in return. 'That wasn't helpful,' you think."
	
Instead of eating the Steamed Buns:
	say "Your stomach gets queasy at the thought of eating one of your kind, so you decide against it."
	
Standing on is an action applying to one thing. Understand "stand on [something]" or "climb on [something]" as standing on.

Instead of standing on Steve:
	say "You roll over to Steve, but Steve rolls away with a confused look on his face. 'Maybe I should try to talk to him,' you think."
	
Instead of standing on the Steamed Buns:
	say "You roll over to a Steamed Bun, but he rolls away with a confused look on his face."
	
Instead of standing on the Chopsticks:
	say "You try to roll on, but fall right off because the Chopsticks are too skinny."

The Human is a woman. Understand "old" or "Chinese" or "girl" or "woman" or "her" or "she" or "human" as the Human. The Human is in the Kitchen Table Top. "The Human is super hungry, and she waits for the steamed buns to finish cooking." The description is "An old, Chinese woman."

Instead of talking to the Human:
	say "You start to open your mouth, but realize your foolish mistake. You don't want the Human to capture you!".

The Kitchen Table Top is below the Steamer. "[if unvisited]You land on the granite surface behind the Cover, so the Human can't see you. [end if] The Human's Cutting Board and a Napkin Holder lie on the surface. After looking around, you see a Window, but it is elevated. You need to figure out a way to get out of the Window.[paragraph break]The Sink is to the east, and the Cabinet is to the West.". Understand "kitchen" or "kitchen table" or "table top" or "table" or "top" as Kitchen Table Top.

The Cutting Board is a thing in the Kitchen Table Top. It is undescribed. Understand "cutting" or "board" as the Cutting Board. The description of the Cutting Board is "Freshly cut Green Onions lie on the Cutting Board.".

Instead of taking the Cutting Board:
	say "You grab the Cutting Board and pull, but it is too big and too heavy.".

Instead of pushing the Cutting Board:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".

The Green Onions is a thing on the Cutting Board. It is undescribed. Understand "onions" or "onion" as the Green Onions. The Green Onions are edible. THe description of the Green Onions is "Circular, chopped green onions ready to be spread on a dish. They gleam like they hold special, secret powers."

Instead of pushing the Green Onions:
	say "You push the Green Onions, but nothing happens."

A person can be armful or armless. A person is usually armless. 

Instead of eating the Green Onions:
	say "You roll over the Cutting Board and eat a green onion, and then you feel a tingling in your body. Suddenly, you watch as two arms grow out of your body.";
	now the player is armful.

Instead of taking something:
	if the player is armless:
		say "You try, but you don't have any hands yet. You can still push things though.";
	if the player is armful:
		say "You take [the noun] with your newly grown arms.";
		continue the action.
		
Doing push-ups is an action applying to nothing. Understand "do pushups" or "do push-ups" as doing push-ups.

Instead of doing push-ups:
	if the person is armful:
		say "You test the strength of your arms by pumping out a couple of push-ups.";
	otherwise:
		say "You don't have any arms yet!".

A person can be hidden or nothidden. A person is usually nothidden. 

Hiding behind is an action applying to one thing. Understand "hide behind [something]" as hiding behind.

Instead of hiding behind:
	say "You roll behind [the noun]. Now the Human can't see you.";
	now the player is hidden.

Check hiding behind:
	say "The Human is coming! Quick [bold type] hide behind something!".
	
Test HGA with "hide behind napkin holder/eat green onions/take chopsticks."
	
The Napkin Holder is a thing in the Kitchen Table Top. It is undescribed. Understand "napkin" or "holder" as the Napkin Holder. The description of the Napkin Holder is "A large, wooden structure filled with napkins."

The Napkins are a thing in the Kitchen Table Top. It is undescribed. The description of the Napkins is "Plain old napkins. Nothing special here."

Instead of pushing the Napkins:
	say "You push against it, but nothing special happens.".

Instead of taking the Napkin Holder:
	say "You grab the Napkin Holder and pull, but it is too big and too heavy.".

Instead of pushing the Napkin Holder:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".
	
Instead of inserting the Chopsticks into the Napkin Holder:
	say "You leave the Chopsticks there for a second, but then take them back realizing they could be useful later.".

The Sink is east of the Kitchen Table Top. The description of the Sink is "A basin filled halfway with soapy water. The water level is too deep for you to roll across, but will keep you hidden from the Human.[paragraph break] The Kitchen Table Top is to the west, and the Plate is to the east."

Every turn:
	if the player is in the Sink:
		now the player is hidden.
Every turn:	
	if the player is in the Bowl:
		now the player is hidden.
Every turn:
	if the player is in the Plate:
		now the player is hidden.

Include Rideable Vehicles by Graham Nelson.

The Sponge is a rideable vehicle. It is in the Sink. The description of the Sponge is "A floating sponge usually used for washing dishes, but can also be used for other things. Try [bold type] getting on it."

Getting on is an action applying to one thing. Understand "get on [something]" or "jump on [something]" or "go on [something]" as getting on.

Understand "get on [something]" or "jump on [something]" or "go on [something]" as mounting.

Instead of mounting the Sponge:
	say "You roll onto the Sponge. It dips a little, but stays afloat and seem steady for your journey across the sink.";
	now the player is on the Sponge.

Getting out of is an action applying to one thing. Understand "get off of [something]" as getting out of.

Carry out getting out of something:
	try dismounting instead.

Instead of getting out of the Sponge:
	say "You finally reach the other side.";
	continue the action.

Test row with "east/get on sponge/east."

Instead of going east:
	if the player is in the Sink:
		if the player is on the Sponge:
			if the player has the Chopsticks:
				say "You row stealthily across the Sink with your chopsticks to the other side of the table.";
				continue the action;
			otherwise:
				say "You hop on the Sponge, but have nothing to propel yourself with. Maybe you need something to act as a paddle.";
		otherwise:
			say "You plop into the water and slowly sink to the bottom.";
			end the story finally;
	otherwise:
		continue the action.
			
Instead of going west:
	if the player is in the Plate:
		if the player is on the Sponge:
			if the player has the Chopsticks:
				say "You row stealthily across the Sink with your chopsticks to the other side of the table.";
				continue the action;
			otherwise:
				say "You hop on the Sponge, but have nothing to propel yourself with. Maybe you need something to act as a paddle.";
		if the player is not on the Sponge:
			say "You plop into the water and slowly sink to the bottom.";
			end the story finally;
	otherwise:
		continue the action.

The Plate is east of the Sink. The description of the Plate is "A Char Siu-filled plate. You see Crumbs near the middle of the Plate and a smear of Sauce. Your roll behind the Char Siu pile, so the Human doesn't see you.[paragraph break]The Sink is to the west, and you see a Bowl to the east."

The Char Siu is a thing in the Plate. It is undescribed. Understand "Char" or "Siu" as the Char Siu. It is edible. The description is "Chinese BBQ pork."

Instead of eating the Char Siu:
	say "You nibble a little piece, but decide not to eat the rest because you don't want the Human to notice a huge piece is gone."
	
Instead of taking the Char Siu:
	say "You reach out to touch one, but notice it leaves a residue on your hands, so you decide not to take it with you."
	
Instead of pushing the Char Siu:
	say "You reach out to touch one, but notice it leaves a residue on your hands, so you decide not to push it."
		
The Crumbs are a thing in the Plate. It is undescribed. Understand "crumb" as the Crumbs. It is edible. The description is "White crumbs that look like parts of a steamed bun. You notice something some sauce smeared next to the crumbs in very small handwriting."

Instead of taking the Crumbs:
	say "You take the remains of your fellow steamed bun, hoping she will bring you good luck on the rest of your journey.";
	continue the action.
	
Instead of eating the Crumbs:
	say "Your stomach turns at the thought of eating part of your fellow steamed bun."
	
Instead of pushing the Crumbs:
	say "You push the Crumbs around, feeling sad about the fate of your fellow Steamed Bun."

The Sauce is a thing in the Plate. It is undescribed. Understand "smear" or "smear of sauce" as the Sauce. The description is "The Sauce seems to say 'Goal: Window[paragraph break]Green Onions = arms.[paragraph break]Build ...' You struggle to read the last part as it got blurred out."

Instead of taking the Sauce:
	say "You think about it for a little while and decide you don't want to leave any 'footprints' to help the Human find you.".
	
Instead of eating the Sauce:
	say "Tastes like BBQ. Nothing special.".

The Bowl is east of the Plate. The description of the Bowl is "You roll and plop yourself into a pool of Rice. You sink a little into the Rice to camouflage yourself from the Human.[paragraph break]The Plate is to the west. You see the Window above you, but you are too short to reach your freedom.".

The Rice is a thing in the Bowl. It is edible. It is undescribed. The description of the Rice is "An extremely sticky Rice, almost as sticky as glue."

Instead of eating the Rice:
	say "You eat some, but it's so sticky that your mouth is almost glued shut. You wouldn't want to eat that again."
	
Instead of taking the Rice:
	say "You take some Rice. Maybe you can use it to [bold type] glue something to another thing.";
	move the Rice to the player.

The Window is above the Bowl. "The Window is so high. It is open, letting the breeze from the outside flow through the kitchen. The beautiful blue sky and your freedom lie just on the other side.[paragraph break]The Bowl is below you."

The Window Sill is in the Window. It is a supporter. Understand "sill" as the Window Sill. The description of the Window Sill is "A flat, white surface just beneath the Window. You just need something to lean against it so you can escape.".

The Cabinet is west of the Kitchen Table Top. "The Cabinet is open. Boxes and jars of food fill the Cabinet. There is also a Utensil Crock filled with various tools.[paragraph break]The Kitchen Table Top is to the east."

The Boxes is a thing in the Cabinet. It is undescribed. Understand "box" as boxes. The description of the Boxes is "Heavy, stacked boxes containing packets of noodles and other foods."

Instead of taking the Boxes:
	say "You grab the Boxes and pull, but it is too big and too heavy.".

Instead of pushing the Boxes:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".
	
The jars is a thing in the Cabinet. It is undescribed. Understand "jar" as Jars. The description of the Jars is "Tall jars filled with various sauces and seasonings.".

Instead of taking the Jars:
	say "You grab the Jars and pull, but it is too big and too heavy.".

Instead of pushing the Jars:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".
	
The Utensil Crock is a container in the Cabinet. It is open. It is undescribed. Understand "utensil" or "crock" as the Utensil Crock. The description of the Utensil Crock is "A tall, cylindrical tool holder that houses cooking utensils. The Spatula, Toothpicks, Tongs, Whisk, and Wooden Spoon are in the Holder. Maybe you can use some of these tools to make a structure to escape out the Window."

Instead of taking the Utensil Crock:
	say "You grab the Utensil Crock and pull, but it is too big and too heavy.".

Instead of pushing the Utensil Crock:
	say "You push against it, but it doesn't move. [italic type]'It would probably be too much of a hassle anyway,'[roman type]you think.".
	
The Spatula is in the Utensil Crock. It is a thing. It is undescribed. The description is "A sturdy, wooden spatula."

The Toothpicks is a thing in the Utensil Crock. It is undescribed. The description is "Little wooden sticks."

The Wooden Spoon is a thing in the Utensil Crock. It is undescribed. Understand "spoon" as the Wooden Spoon. The description is "A straight, wooden spoon.".

The Tongs are a thing in the Utensil Crock. It is undescribed. The description is "Metal grabbers that are difficult for a small bun like you to open and close."

The Whisk is a thing in the Utensil Crock. It is undescribed. The description is "A mixer with many different slots between looped wires."

[For this combine puzzle, I used the code from Brianna Hartner's "Tonic" as a structure.]
Gluing is an action applying to two things. Understand "glue [something] and [something]" or "glue [something] and [something] together" or "glue [something] to [something]" or "combine [something] and [something]" as gluing.

Building is an action applying to nothing. Understand "build" or "make" or "construct" as building.

Instead of building:
	say "Try gluing something to another thing."
			
The gluing action has an object called the Contraption.
	
Check gluing:
	if Contraption is nothing:
		say "You can't glue [the noun] and [the second noun] together into anything useful.[line break]Try another combination of things.";
		stop the action.
		
Carry out gluing: 
	if the player has the Rice:
		say "You glue together [the noun] and [the second noun], creating a sturdy structure.";
		remove the noun from play;
		remove the second noun from play;
		move the Contraption to the player;
	otherwise:
		say "You put [the noun] on [the noun], but they just slide apart. Maybe you need to glue them together.".

Report gluing:
	say "You now have a [a Contraption]."

Setting action variables for gluing: 
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
{Spatula, Toothpicks}	Spatula-Toothpicks Thing
{Spatula, Wooden Spoon}	Spatula-Wooden Spoon Thing
{Toothpicks, Wooden Spoon}	Toothpicks-Wooden Spoon Thing
{Spatula-Toothpicks Thing, Wooden Spoon}	Ladder Thing
{Spatula-Wooden Spoon Thing, Toothpicks}	Ladder Thing
{Toothpicks-Wooden Spoon Thing, Spatula}	Ladder Thing

The Spatula-Toothpicks Thing is an object. The description of the Spatula-Toothpicks Thing is "Spatula and Toothpicks… Need anything else?"
The Spatula-Wooden Spoon Thing is an object. The description of the Spatula-Wooden Spoon Thing is "Spatula and Wooden Spoon… Need anything else?"
The Toothpicks-Wooden Spoon Thing is an object. The description of the Toothpicks-Wooden Spoon Thing is "Toothpicks and Wooden Spoon… Need anything else?"

The Ladder Thing is a thing. The description of the Ladder Thing is "A combination of the Spatula, Toothpicks, and Wooden Spoon that mimic a ladder to help you escape."

The Dinner Table is south of the Sink. The description of the Dinner Table is "A place you do not want to be."

An every turn rule:
	if the player is in the Window:
		if the player has the Ladder Thing:
			say "You prop your makeshift ladder against the Window Sill and make your escape. You Win!";
			end the story finally.
			
An every turn rule:
	if the Human is visible:
		if the player is nothidden:
			say "THE HUMAN TAKES YOU!!!!";
			end the story finally.

[How to win:
	put chopsticks in crack
	push chopsticks
	down
	eat green onions
	take chopsticks
	w
	take spatula
	take toothpicks
	take spoon
	e
	e
	get on sponge
	e
	get off sponge
	e
	take rice
	u
	glue spatula and toothpicks
	glue spatula-toothpicks thing and spoon]
