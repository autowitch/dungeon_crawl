"Dungeon Crawl Game" by "autowitch"

Volume 1 - Initial Setup

Book 1 - Extensions

Book 2 - General Settings

Use full-length room descriptions.

Volume 2 - The Player

Book 1 - Things the player starts with

Part 1 - The Map

The map is a thing.  The description of the map is "A photocopy of a map that you found at the library. [first time]You were browsing in the local history section and found [only]". The player carries the map.

Instead of eating the map, say "You take a nibble out of the corner of the map. It tastes like paper and toner. Do you normally eat paper?".

Instead of tasting the map, say "You lick the map. A bit becomes smudged and you have some toner on your tongue. Happy now?"

Instead of searching the map, say "Nothing on top. Nothing on bottom. Pretty much just a sheet of paper with a map on it."

[Instead of reading the map, say "The map indicates...".]

Volume 3 - The Map

Book 1 - The Forest

Part 1 - Next to the Road

Side of the Road is a room. "You are on the shoulder of a little used dirt road."


Part 2 - Dense Forest

Dense Forest is north of Side of the Road. "You are in a dense forest. Only occasionally can the sky be seen through the canopy. A faint trail runs north to south here."

Part 3 - Denser Forest

Denser Forest is north of Dense Forest. "The forest completely overwhelms"

Part 4 - Even Yet Denser Forest

Even Still Denser Forest is east of Denser Forest. "The forest is incredibly dense here. All is dark and still."

Part 5 - House Ruins

Chapter 1 - What it looks like

House Ruins is southeast of Even Still Denser Forest. "You are in a small clearing next to the ruins of a long collapsed house. Large boards, bits of white painted siding and the foundation are all that remain.".

Chapter 2 - The mailbox

A beat up old mailbox is an open container in House Ruins. The description of a beat up old mailbox is "A dented and rusty mailbox. The door has been torn off.".

Instead of searching the mailbox, say "No one has mailed this address in a long, long time."
Instead of tasting the mailbox, say "Mmmm. Rusty."
Instead of eating the mailbox, say "You take a bit out of the side, but do no harm to the box. Your teeth hurt now though."
Instead of smelling the mailbox, say "It smells like... nothing actually. Maybe that's what mailboxes smell like."
Instead of drinking the mailbox, say "Not likely. It has so many holes you couldn't even put a liquid in it to drink."

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

The Dead Letter Office is a room.



