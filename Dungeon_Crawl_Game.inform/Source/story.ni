"Dungeon Crawl Game" by "autowitch"

Volume 1 - Initial Setup


Book 1 - Extensions

Include Player Experience Upgrade by Aaron Reed.
Include Spellcasting by Jim Aikin.

Book 2 - Play begins!

Bloodstains is a backdrop. The description is "bloodstains".

When play begins:
	Say "Your family has been in Skunk Hollow for many generations. Long enough to know the folklore of the area, and long enough to not talk about it.[paragraph break]You had heard rumours of lost treasures hidden somewhere deep in the forest, but no one knows where, or even why, they would be there. You had always chalked that up to local myth.[paragraph break]Yesterday, you decided to spend some time at the library. While you were browsing through books in the 929 category, you spotted a thin, unlabeled pamphlet. Taking a look at it, you found it to be a tedious genealogy of some family you had never heard of. A bit of a close glance revealed that this little book is far weirder. Vague allusions to monsters and demons, inexplicable handwritten notes in the margins and implications of murder and infidelity hide amongst the pages. Near the back was a faded, yellow sheet of paper with a crudely drawn map indicating a house in the forests north of town. The map had numerous notes written all over it - most of them unintelligable. A few phrases like '...was hidden below the cellar' and '' '... must never know' made this  map intriguing. Something worth investigating.[paragraph break]So, now you find yourself with a photocopy of the map (the original is tucked back inside the book) parked at the end of a little used road in a dark forest.";
	[ Add a Wumpus to a wumpus friendly room ]
	Let wumpus_room be a random wumpus_friendly room;
	Now the Wumpus is in wumpus_room;
	Say "!!!! The wumpus is in [wumpus_room][line break]";
	[ Wumpuses are messy beasts. Each room adjacent room and each room adjacent to that will have blood stains. Damn Wumpuses. ]
	Repeat with very_bloody_room running through rooms adjacent to wumpus_room:
		If the very_bloody_room is clean:
			Say "!!! very bloody [very_bloody_room][line break]";
			Now the very_bloody_room is bloody;
			Repeat with bloody_room running through rooms adjacent to very_bloody_room:
				If the bloody_room is clean:
					Say "!!!! bloody [bloody_room][line break]";
					Now the bloody_room is bloody;
				Otherwise:
					Say "!!!![bloody_room] is already bloody[line break]";
		Otherwise:
			Say "!!! [very_bloody_room] is already bloody.[line break]";
	Move the Bloodstains backdrop to all bloody rooms.


Book 4 - General Settings

Use full-length room descriptions.

Book 4 - Some rules

Part 1 - Darkness

Rule for printing the description of a dark room:
	Say "It is pitch black. You are likely to be eaten by a grue.".

Before going a direction (called d) when in darkness:
	[ Do not let grues attack if you are fleeing the darkness ]
	If the room d from the location is a room and the room d from the location is not dark:
		Continue the action;
	[ The grues wait a bit ]
	Otherwise if going more than thrice:
		If a random chance of one in three succeeds:
			Say "Oh no! You have walked into the slavering fangs of a lurking grue!";
			End the story saying "You are tasty.";
		Otherwise:
			Continue the action;
	Otherwise:
		Continue the action.

Book 5 - New actions

Part 1 - Some synonyms

Understand "lick" as tasting.

Part 2 - Counting

Counting is an action applying to one visible thing. Understand "count [something]" as counting.
Understand "enumerate" as counting.
[Check counting:
	If the noun is not a person:
		Say "x".
]
Carry out counting:
	say "One. One [noun].".

Book 6 - New properties

Every room can be wumpus_friendly or wumpus_unfriendly. A room is usually wumpus_unfriendly.
Every room can be bloody or clean. A room is usually clean.

Book 7 - New activities

After looking in a room (called foo):
	If foo is bloody:
		Say "You can't help but notice the bloodstains all around here.".

[Printing the room-description of something is an activity.

Rule for printing the room-description of a room (called item):
	if the description of the item is not "":
		say "FOO [description of item][paragraph break]";
	otherwise:
		do nothing instead.]

[The activity-based room description body text rule is listed instead of the room description body text rule in the carry out looking rules.]

Volume 2 - The Player


Book 1 - Things the player starts with

Part 1 - The Map

The map is an edible thing.  The description of the map is "A photocopy of a map that you found at the library. [first time]It was hidden inside  [only]". The player carries the map.

Instead of eating the map, say "You take a nibble out of the corner of the map. It tastes like paper and toner. Do you normally eat paper?".

Instead of tasting the map, say "You lick the map. A bit becomes smudged and you have some toner on your tongue. Happy now?"

Instead of searching the map, say "Nothing on top. Nothing on bottom. Pretty much just a sheet of paper with a map on it."

The player carries the map.

[Instead of reading the map, say "The map indicates...".]

Part 2 - The flashlight

The flashlight is a thing. The description of the flashlight is "Your trusty flashlight[if the flashlight is dead], until today[end if].". The player carries the flashlight. The flashlight can be working or dead. The flashlight is working.
The flashlight can be switched on.

Before switching on the flashlight:
	Say "You push the button on the flashlight. Nothing happens[first time]. You realized that you forgot to check the batteries before heading out. The flashlight is not going to be of much use today. Oh well, at least you can still look around on the surface[only].";
	Now the flashlight is dead;
	Stop the action.

Part 3 - The backpack

The carrying capacity of the player is 3.
The backpack is a player's holdall.  The backpack is wearable. The player is wearing the backpack. The backpack is closed.

Before inserting something into the backpack:
	If the backpack is closed:
		Try opening the backpack.

Volume 3 - The Map

Book 1 - The Forest

The creepy forest is a region.
Dark forest is an edible backdrop in the creepy forest. The description of Dark Forest is "A dark, incredibly dense forest surrounds you.".
Understand "woods", "trees", "bushes" as Dark Forest.
Instead of searching the Dark Forest, say "You find lots of leaves, trees, branches, rocks and other things that belong in a forest.".
Before eating the Dark Forest:
	Say "You eat some random berries. You die.";
	End the story saying "That wasn't a good idea.".
Instead of listening to the Dark Forest:
	If the player is in Side of the Road:
		Say "You only hear a gentle hissing and clunking coming from your car.";
	Otherwise:
		Say "It is absolutely quiet.".
Instead of smelling the Dark Forest:
	Say "It smells dank.".


Part 1 - Next to the Road

Side of the Road is a room in the creepy forest. The description of Side of the Road is "You at the end of a little used dirt road. A dense, dark forest surrounds you. A narrow rocky trail leads to the north. It may have been a driveway at one time, but is too overgrown to tell for sure. To road leads back to Skunk Hollow to the southeast."

Chapter 2 - Your car

In Side of the Road is an edible vehicle called your 1974 Ford Pinto. The description of your 1974 Ford Pinto is "Unreliable, rusty, and likely to explode.".
Understand "car", "automobile", "vehicle", "auto", "lemon", "death trap", "clunker", "piece of shit" as your 1974 Ford Pinto.
Instead of smelling your 1974 Ford Pinto, say "Ah, the sweet, sweet bouquet of burnt oil and neglect.".
Before eating your 1974 Ford Pinto:
	Say "The tires are chewy.";
	Stop the action.
Before drinking your 1974 Ford Pinto:
	Say "You could drink the gas or oil, but that stuff is too expensive.";
	Stop the action.
Instead of searching your 1974 Ford Pinto, say "Some beer cans, fast food wrappers and other junk. Nothing that you want.".
Instead of tasting your 1974 Ford Pinto, say "Rusty.".
Instead of listening to your 1974 Ford Pinto, say "You have gotten used to the rather unpleasant clunking sounds from this car. Right now it is making the only sound in the forest; a gentle hissing.".

Instead of going to Dense Forest when the player is in your 1974 Ford Pinto:
	Say "That's a narrow, rocky trail through a dense forest. Your Pinto is not the greatest off-road vehicle.".
Instead of going nowhere  from Side of the Road:
	Let d be the noun;
	If the player is in your 1974 Ford Pinto:
		If d is southeast:
			If a random chance of one in three succeeds:
				Say "You back up to try to turn around, but back into a tree. Given that you are in a Pinto, this results in a massive fireball that could be seen for miles around and was talked about for years.";
				End the story saying "You have become a crispy critter";
			Otherwise:
				Say "You look at the time. It took you longer to get here than you thought [if the flashlight is dead]and your light is not working[end if]. It's probably not a bad idea to return home.";
				End the story saying "Maybe some other day";
		Otherwise:
			Say "This forest is much too dense to drive any vehicle through.";
	Otherwise:
		If d is southeast:
			Say "Not being so sure that your trusty 1974 Pinto will make it back down this old road and back into town, you decide to walk. You start hiking down the road. A couple of weeks later there is a manhunt, but you are never found.";
			End the game saying "You are never seen again.";
		Otherwise:
			Say "[one of]The brush is too dense to try to go that way.[or]You would get lost just wandering into the woods like that.[or]You take a few steps off the road and realize that you may not find your way back to it.[or]It is very easy to get lost out here even on the roads and trails.[purely at random]".


Part 2 - Dense Forest

Dense Forest is north of Side of the Road. "You are in a dense forest. Only occasionally can the sky be seen through the canopy. A faint trail runs north to south here.". It is in the creepy forest.

Part 3 - Denser Forest

Denser Forest is north of Dense Forest. "The silent forest completely overwhelms everything. It is almost completely dark. The trail heads south back to your car or east deeper into the forest[if Faint Animal Path is mapped northwest of Denser Forest]. A faint animal path leads northwest[end if].". It is in the creepy forest.

Book 2 - Pile of Leaves

A pile of leaves is in Denser Forest.

Instead of counting the pile of leaves:
	Say "There are 69,105 leaves here.".

Instead of searching or examining the pile of leaves:
	Say "You find that the pile of leaves only contains leaves.".
Instead of pushing or taking the leaves:
	Say "When you move the leaves, you notice some animal tracks going to the northwest.";
	Now the Faint Animal Path is mapped northwest of Denser Forest;
	Now Denser Forest is mapped southeast of Faint Animal Path.

Part 4 - Even Yet Denser Forest

Even Still Denser Forest is east of Denser Forest. "The forest is incredibly dense here. All is dark and still. You can barely see the trail. West leads back towards your car. The trail leads southeast to a faint glimmer of light.".  It is in the creepy forest.

Part 5 - House Ruins

Chapter 1 - What it looks like

House Ruins is southeast of Even Still Denser Forest. "You are in a small clearing next to the ruins of a long collapsed house. Large boards, bits of white painted siding and the foundation are all that remain. A faint trail leads to the northwest.". It is in the creepy forest.

Chapter 2 - The mailbox

A beat up old mailbox is an edible open container in House Ruins. The description of a beat up old mailbox is "A dented and rusty mailbox. The door has been torn off.". The mailbox can be dented or fixed. The mailbox is dented.

Instead of searching the mailbox, say "No one has mailed this address in a long, long time."
Instead of tasting the mailbox, say "Mmmm. Rusty."
Instead of eating the mailbox, say "You take a bit out of the side, but do no harm to the box. Your teeth hurt now though."
Instead of smelling the mailbox, say "It smells like... nothing actually. Maybe that's what mailboxes smell like."
Instead of drinking the mailbox, say "Not likely. It has so many holes you couldn't even put a liquid in it to drink."
Instead of inserting the brass lantern into the mailbox when the mailbox is dented, say "A large dent near the mouth of the mailbox keeps you from putting the lantern in it.".

Instead of listening to the mailbox:
	If the mailbox contains something (called foo):
		Say "You shake the mailbox and hear [contents of the mailbox] bouncing around inside.";
	If the mailbox contains nothing:
		Say "You shake the mailbox and hear nothing.".

Every turn:
	If the mailbox contains something for four turns:
		If the mailbox contains something (called foo):
			If the player has the mailbox:
				Say "[one of]You happen to glance into the mailbox and see that [contents of the mailbox] is no longer in it.[or]You hear a soft rustling from the mailbox.[or]You feel a slight twitch from the mailbox.[purely at random]";
			Now foo is in the dead letter office.

Part 6 - Inside the Ruins

Amidst the Ruins is south of House Ruins. "You are just inside of the ruins. It looks like most of the house has fallen into its own cellar."

Rubble is scenery in Amidst the Ruins. The description of rubble is "The cellar is full of mounds of stone, wooden timbers, and other debris from the house.".
Understand "debris", "timbers", "ruins", "house", "cellar" as rubble.
Instead of searching rubble:
	Say "You paw around in the mounds of debris and uncover an unexpectedly undamaged brass lantern";
	Now the brass lantern is in amidst the ruins.
Instead of searching rubble for the second time:
	Say "You paw around some more in the ruins. Underneath a large timber, you see a debris filled stairway going down. Unfortunately, it is completely blocked.";
	Now the rubble filled stairway is in amidst the ruins.
Instead of searching rubble for the sixth time:
	Say "You dig around in the debris some more and find a pornographic magazine for gnomes";
	Now the gnome porn is in amidst the ruins.


Chapter 3 - The brass lantern

The brass lantern is a thing. The description is "A dented and tarnished brass lantern". The brass lantern is in limbo. The brass lantern can be switched on.
gnome porn is a thing. The description is "[first time]Apparently gnome porn is a thing. [only]It appears to be a pornographic magazine dedicated to gnomes. Hopefully whoever this belonged to only read it for the articles. Having been stuck in the ruins of a basement for years, the magazine is both dirty in spirit and condition.". gnome porn is in limbo.
[Instead of examinin gnome porn:
	Say "Lots of very close up pictures of short hairy women".]
Understand "magazine", "zine", "pornography" as gnome porn.

Instead of switching on the brass lantern:
	Say "You turn on the brass lantern.";
	Now the brass lantern is lit.
Instead of switching off the brass lantern:
	Say "You turn off the brass lantern.";
	Now the brass lantern is unlit.
Rubble filled stairway is scenery. The description is "The very top steps of a debris blocked stairway leading down.".

Part 7 - Animal Path

Faint animal path is a room in the creepy forest. "A faint animal path runs northwest to southeast.".

Index map with Faint Animal Path mapped northwest of Denser Forest.

Part 8 - Clearing

Clearing is northwest of Faint Animal Path. "A small clearing in the forest. The most notable aspect is a largish rabbit hole off to the side". It is in the creepy forest.

Book 2 - Underground

The Underground is a region.

Part 1 - Rabbit warren

The rabbit warren is below the Clearing. "A cramped earthen room. It looks like a small passage descends to the southwest." It is in the underground. It is dark.

Bottom of Rabbit Hole is below the Rabbit Warren. It is in the underground. It is dark.

Low Passage is south of Bottom of Rabbit Hole. It is in the underground. It is dark.

Muddy Passage is below Low Passage. "[first time]You are quite deep underground now. [only]A tall muddy passage. The floor is wet. There is glowing something growing on the walls and ceiling of this damp place that provides just enough light to see by.". It is in the underground.


Small room is northeast of Muddy Passage.  It is in the underground.

Narrow Passage is east of Small Room. It is in the underground.

The Interesting Room is a dark room. It is south of the Narrow Passage. It is in the underground.It is wumpus_friendly.

The sign is in the interesting room. The description of the sign is "'Wait here for something interesting'".

The unstable room is a dark room. It is southwest of the narrow passage. It is in the underground. It is wumpus_friendly.
The note is in the unstable room. The description of the note is "Pull rope to collapse ceiling".
The frayed rope is in the unstable room. [A note is attached to the frayed rope.]

The Dead Letter Office is a dark room. It is northwest of Narrow Passage. It is in the underground. It is wumpus_friendly.

The turnip room is south of the unstable room. It is in the underground. It is wumpus_friendly.
The very angry turnip is a person in the turnip room.

Limbo is  room.

The Wumpus is in limbo.

