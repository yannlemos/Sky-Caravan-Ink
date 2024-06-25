# Sky-Caravan-Ink
Complete .ink directory for Sky Caravan. 

![sc_header](https://github.com/yannlemos/Sky-Caravan-Ink/assets/16945950/8f2acc8d-b059-48ae-94b7-84f09f4da1ec)

![ss_6f2648649e8e02ee6c4dac05db11ece85cc5452c](https://github.com/yannlemos/Sky-Caravan-Ink/assets/16945950/379ab4b7-72c0-41e7-96c8-cfda62b4cd8f)

![ss_bc3a07170ed8f5cacb920cc421db0d808b155e65](https://github.com/yannlemos/Sky-Caravan-Ink/assets/16945950/a57506a9-be12-4360-a70b-2c85bc5f36ce)

![ss_824b95bfac941d319f9cad93e7cb17062e251103](https://github.com/yannlemos/Sky-Caravan-Ink/assets/16945950/d8fc6a65-ed44-465a-9ee3-755b453264c0)

🌐 [Steam Page](https://store.steampowered.com/app/1792270/Sky_Caravan/)

## What is this?

Sky Caravan is a text-based RPG released in 2022 on Steam and Switch, developed by [Studio Bravarda](https://studiobravarda.com/home-en), my game development company. I was both engineer and writer in the game, which means I became very well acquainted with our technology of choice for building the interactive narrative: the [Ink scripting language](https://github.com/inkle/ink). 

In a normal working day, I would both work on the game's script in a writing capacity, while also tweaking the parsing of the story in C# inside Unity. I had only worked with Ink in small projects before, so I didn't have any reference of how to use in such a big project (the final script is about 90k words). I really wanted to take a look at a giant Ink script, but there was none.

So that's why I'm releasing Sky Caravan's. It is absolutely not a perfect representation of Ink in a video game, or even an organized one at that. Still, it can be a great resource to take a look at how far you can take Ink variables in a big story, how many knots a 4h experience has, and even some interesting stuff we had to do to reutilize some scenes, like the day transition that happens during missions. 

I'm going to describe some interesting things that are contained in the script, but mostly, it's here for the looking and for the taking as it is in the shipped game that's live on Steam and Nintendo Switch. Hope it helps, caravaneers! 

> [!WARNING] 
> Don't try to run this in Inky, or Inklecate. 
> During the game's development, the Ink became so intertwined with Unity specific-stuff that it became impossible to test the script outside the game's project in Unity, which I unfortunately am not able to release publicly.
> I wouldn't do this again, it makes testing really really cumbersome, but it is what it is.

---
## Deep-Dive

First of all, the folder is renderer as it is inside Unity Engine, contained inside the Assets folder on the project's directory. In the root, there's a Master.ink file. This is the starting point for the parsing of the Ink, and where we contain all the story's state and reusable scenes. The Master.ink contains paths to all the other game's Ink files, which are themselves contained in specific folders deeper in the folder hierarchy. 

The game's flow works like this: you're in a Capybar (`Outpost`), talk to your crewmates, then you choose a mission (`Events\Mission`), and you make a delivery, during which several events happen (`Events\General`). You finish the mission, go back to the Capybar and start the flow again and the story advances.

To figure out how this works, let's look at the Master.ink first:

### Master

#### Includes
The Master.ink contains all the INCLUDE declarations, which are necessary in Ink to make sure the story has access to all its parts. Having to set the file paths manually is a bit of a hassle and not very Unity friendly, but there's no changing that. You can see in the file that there's tons of commented out INCLUDE's: don't worry, we'll get to that.

#### External Functions 
This is where we declare every function that is called inside Ink, but has an implementation outside of Ink, in C#. We used it a lot for game feel (e.g. `EXTERNAL Shake(component, intensity, duration)` which shaked a specific component of the game's UI, and my favorite `EXTERNAL EldritchOverride()`), game-flow changes (e.g. `EXTERNAL EndMission()`), sound triggers(e.g. `EXTERNAL PlayMusic(name)`) and many more stuff. This is incredibly useful and we used it plenty, because it plays into Ink's strength as an embedded language. The downside is, the more you use EXTERNAL's, the less your game is testable in Ink, to the point where it isn't testable at all, which came very quickly for us.

#### Variables
This is where we declare and keep track of the story's global state. We tried to keep most of the gameplay-important variables inside Ink and Unity fetched them when necessary. I'd say this is really important: decide asap if the source of truth of the story's state will be inside Ink or your engine, because if it's in both, it's going to get messy very fast. We preffixed everything with "g_" so we could easily access all global variables through Visual Studio Code's Intellisense. Also, there's not a whole lot of global variables, which was something we kept low on purpose. We tried to leverage as much as possible local variables inside specific events, so we had lots of local reactivity, while keeping the global reactivity that is very impactful to the story controlled, limited and easily accessible to our own memories. 

#### Story Controls 
These are reusable knots where we finish events, transition in-game days, enter testing environments and other very useful cases. The game isn't like a text adventure where you are constantly experiencing the narrative: when you're at the Capybar, you have a Point & Click environment, and during missions, the dialogue comes in and out according to the context. So we had to create ways to make reusable starting points where the same things would happen everytime without having to duplicate a lot of Ink code, which was happening a lot and creating many problems. So we created the Story Controls. 
<br>`=== TEST_EVENT ===` is how we enter the story for testing purposes, by entering this knot with a predefined destination that we diverted to as soon as we entered it. 
<br>`=== EVENT_END ===` is how all story events end, and exists to help with testing. If we're testing, we just exit, but if we're inside the game, we do a day transition and ask Unity for the next event (I'll explain this later). 
<br>`=== MISSION_END ===` is a knot we divert to everytime we end a mission, making sure that we call the Unity function for ending the mission and increasing the global variable for missions concluded. 
<br>`=== ODYSSEY_END ===` is how the game over worked early in development, but it was scraped, so it's just there to avoid compilation errors probably, it's not really used in-game.

#### Game Functions
These are Ink native functions, so we could collect a bunch of repeated code that had to be used in several different places, mostly to change several variables at the same time, like the day transition. There's also one very specific case for a Steam Achievement you unlock late in the game, that's nifty, I had forgotten about that.

#### Fallback Functions
This is necessary when you declare External Functions, you have to set these fallbacks so Ink can still run properly. This is just not the case normally though, as explained before, if you the External function does a lot of things necessary to the story. So this is just boilerplate that we had to do for the Ink to compile.

#### Emotion Guidelines
Our cheat-sheet for the most used in-dialogue emotes in the game. In hindsight, they could had been Ink functions to avoid typos.

### Events

#### Missions

#### General

#### Emergency

### Outpost

### Various

### Misc Stuff

#### Testing

