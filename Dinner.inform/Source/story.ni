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

Instead of taking something:
	say "You try, but you don't have any hands. Try [bold type] nudging something."
	
Understand "move [something]" or "nudge [something]" as pushing.

The Steamer is a room. The description of the Steamer is "A round, bamboo steamer resting on a pot of boiling water. The Human's chopsticks rest in the steamer, and five other steamed buns are huddled next to you. The cover is on the steamer, but you notice light coming through a crack in the top."

The Chopsticks is a thing. It is in the Steamer.

The Crack is a container. It is openable and closed. It is in the Steamer. It is undescribed.

The X is a container in the Steamer. It is undescribed.

The Cover is a thing in the Steamer. It is undescribed. Understand "lid" or "top" as cover.

Instead of inserting the Chopsticks into the Crack:
	say "You nudge the chopsticks into the crack until you know you have good leverage. Now all you have to do push the chopsticks to get the cover off.";
	move the Chopsticks to the X.
	
Instead of pushing the Chopsticks:
	if the chopsticks are in the X:
		say "You roll onto the end of the chopsticks, making the crack wider. After a couple more seconds, the cover is off, and it falls to the Kitchen Table Top. Now you can escape!
		
		The Human turns to see what the noise was.";
		move the Cover to the Kitchen Table Top;
		now the Crack is open;
	otherwise:
		say "You push the Chopsticks around and accidentally poke one of the other steamed buns!".  

Instead of going down:
	If the player is in the Steamer:
		if the Crack is closed:
			say "You try to roll out, but the Cover is still on.";
	otherwise:
		continue the action.

Instead of climbing the Steamed Buns:
	if the Crack is closed:
		say "You climb on top of the Steamed Bun next to you, but the cover is still closed, preventing you from escaping.";
	If the Crack is open:
		say "You climb out of the Steamer and fall on the Kitchen Table Top.";
		move the player to the Kitchen Table Top.
	
Understand "stand on" or "get on" or "get on top of" or "climb on top of" or "climb on" as climbing.

A Steamed Buns is a thing. It is in the Steamer. It is undescribed. It is edible. Understand "bun" or "buns" or "steamed" as the Steamed Buns. "You look around the steamer and see your fellow steamed buns just as scared as you are."

A thing has a number called numberofbuns. The numberofbuns of the Steamed Buns is five.

The Human is a woman. Understand "old" or "Chinese" or "girl" or "woman" or "her" or "she" or "human" as the Human. The Human is in the Kitchen Table Top. "The Human is super hungry, and she waits for the steamed buns to finish cooking." The description is "An old, Chinese woman."

A person can be hungry or not hungry. A person is usually hungry.
The Human has a number called hunger-level. The hunger-level of the Human is 7.

[Every 10 turns:
	if the humger-level of the Human is greater than 1:
		
	decrease the hunger-level of the Human by 1;
	decrease the number of Steamed Buns by 1;
	say "'Mhmmmm, yummy,' the Human says, 'I can't wait for the rest of the buns to be ready.".

Every turn:
	if the location of The Human is not the location of the player:
		let the way be the best route from the location of The Human to the location of the player;
		try The Human going the way;
	otherwise:
		say "'I'm hungry,' The Human says.".
	
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

Quizzing it about is an action applying to two things. Understand "ask [someone] about [something]"
and "quiz [someone] about [something]" as quizzing it about.
Check quizzing it about:
say "[The noun] shrugs unhelpfully."

Informing it about is an action applying to two things. Understand "tell [someone] about [something]"
and "inform [someone] about [something]" as informing it about.]

The Kitchen Table Top is below the Steamer. "You land behind the fallen Cover of the Steamer, hidden from the Human's view." Understand "kitchen" or "kitchen table" as Kitchen Table Top.

The Sink is east of the Kitchen Table Top. 

The Plate Cover is east of the Sink.

The Bowl Cover is east of the Plate Cover.

The Window is above the Bowl Cover.

The Cabinet is west of the Kitchen Table Top.

The Dinner Table is south of the Sink. 


	




