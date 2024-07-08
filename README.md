# Sky-Caravan-Ink
Complete .ink directory for Sky Caravan.

![sc_header](https://github.com/yannlemos/Sky-Caravan-Ink/assets/16945950/8f2acc8d-b059-48ae-94b7-84f09f4da1ec)

![ss_6f2648649e8e02ee6c4dac05db11ece85cc5452c](https://github.com/yannlemos/Sky-Caravan-Ink/assets/16945950/379ab4b7-72c0-41e7-96c8-cfda62b4cd8f)

![ss_bc3a07170ed8f5cacb920cc421db0d808b155e65](https://github.com/yannlemos/Sky-Caravan-Ink/assets/16945950/a57506a9-be12-4360-a70b-2c85bc5f36ce)

![ss_824b95bfac941d319f9cad93e7cb17062e251103](https://github.com/yannlemos/Sky-Caravan-Ink/assets/16945950/d8fc6a65-ed44-465a-9ee3-755b453264c0)

🌐 [Steam Page](https://store.steampowered.com/app/1792270/Sky_Caravan/)

# About

Sky Caravan is a text-based RPG released in 2022 on Steam and Switch, developed by [Studio Bravarda](https://studiobravarda.com/home-en), my game development company. I was both an engineer and writer for the game, which means I became very well acquainted with our technology of choice for building the interactive narrative: the [Ink scripting language](https://github.com/inkle/ink).

On a typical workday, I would both work on the game's script in a writing capacity and tweak the parsing of the story in C# inside Unity. I had only worked with Ink on small projects before, so I didn't have any reference on how to use it in such a big project (the final script is about 90k words). I really wanted to take a look at a giant Ink script, but there was none.

So that's why I'm releasing Sky Caravan's. It is absolutely not a perfect representation of Ink in a video game, or even an organized one at that. Still, it can be a great resource to take a look at how far you can take Ink variables in a big story, how many knots a 4-hour experience has, and even some interesting stuff we had to do to reutilize some scenes, like the day transition that happens during missions.

I'm going to describe some interesting things that are contained in the script, but mostly, it's here for the looking and for the taking as it is in the shipped game that's live on Steam and Nintendo Switch. Hope it helps, caravaneers!

> [!WARNING] 
> Don't try to run this in Inky or Inklecate. 
> During the game's development, the Ink became so intertwined with Unity-specific stuff that it became impossible to test the script outside the game's project in Unity, which I unfortunately am not able to release publicly.
> I wouldn't do this again; it makes testing really cumbersome, but it is what it is.

> [!TIP]
> If you plan on using Ink for your Unity game, you're bound to run into one of Ink's drawbacks: localization. It's pretty difficult to do it because there's no built-in support for it. I recommend checking out this tool: 
> https://openupm.com/packages/it.lemurivolta.ink-translate/
> It provides in-engine support inside Unity for localization. I also recommend solving the localization question as early as possible, as it has a lot of ramifications during development and can be pretty deadly if you leave it to the final moments.

# Deep Dive

First of all, the folder is rendered as it is inside Unity Engine, contained inside the Assets folder in the project's directory. In the root, there's a Master.ink file. This is the starting point for the parsing of the Ink and where we contain all the story's state and reusable scenes. The Master.ink contains paths to all the other game's Ink files, which are themselves contained in specific folders deeper in the folder hierarchy.

The game's flow works like this: you're in a Capybar (`Outpost`), talk to your crewmates, then you choose a mission (`Events\Mission`), and you make a delivery, during which several events happen (`Events\General`). You finish the mission, go back to the Capybar, and start the flow again as the story advances.

To figure out how this works, let's look at the Master.ink first:

## Master

### Includes
The Master.ink contains all the INCLUDE declarations, which are necessary in Ink to make sure the story has access to all its parts. Having to set the file paths manually is a bit of a hassle and not very Unity friendly, but there's no changing that. You can see in the file that there are tons of commented-out INCLUDEs: don't worry, we'll get to that.

### External Functions 
This is where we declare every function that is called inside Ink but has an implementation outside of Ink, in C#. We used it a lot for game feel (e.g. `EXTERNAL Shake(component, intensity, duration)` which shakes a specific component of the game's UI, and my favorite `EXTERNAL EldritchOverride()`), game-flow changes (e.g. `EXTERNAL EndMission()`), sound triggers (e.g. `EXTERNAL PlayMusic(name)`), and many more things. This is incredibly useful and we used it plenty because it plays into Ink's strength as an embedded language. The downside is, the more you use EXTERNALs, the less your game is testable in Ink, to the point where it isn't testable at all, which came very quickly for us.

### Variables
This is where we declare and keep track of the story's global state. We tried to keep most of the gameplay-important variables inside Ink and Unity fetched them when necessary. I'd say this is really important: decide ASAP if the source of truth of the story's state will be inside Ink or your engine, because if it's in both, it's going to get messy very fast. We prefixed everything with "g_" so we could easily access all global variables through Visual Studio Code's Intellisense. Also, there are not a whole lot of global variables, which was something we kept low on purpose. We tried to leverage as much as possible local variables inside specific events, so we had lots of local reactivity, while keeping the global reactivity that is very impactful to the story controlled, limited, and easily accessible to our own memories.

### Story Controls 
These are reusable knots where we finish events, transition in-game days, enter testing environments, and other very useful cases. The game isn't like a text adventure where you are constantly experiencing the narrative: when you're at the Capybar, you have a Point & Click environment, and during missions, the dialogue comes in and out according to the context. So we had to create ways to make reusable starting points where the same things would happen every time without having to duplicate a lot of Ink code, which was happening a lot and creating many problems. So we created the Story Controls.
<br>`=== TEST_EVENT ===` is how we enter the story for testing purposes, by entering this knot with a predefined destination that we diverted to as soon as we entered it.
<br>`=== EVENT_END ===` is how all story events end, and exists to help with testing. If we're testing, we just exit, but if we're inside the game, we do a day transition and ask Unity for the next event (I'll explain this later).
<br>`=== MISSION_END ===` is a knot we divert to every time we end a mission, making sure that we call the Unity function for ending the mission and increasing the global variable for missions concluded.
<br>`=== ODYSSEY_END ===` is how the game over worked early in development, but it was scrapped, so it's just there to avoid compilation errors probably; it's not really used in-game.

### Game Functions
These are Ink native functions, so we could collect a bunch of repeated code that had to be used in several different places, mostly to change several variables at the same time, like the day transition. There's also one very specific case for a Steam Achievement you unlock late in the game, which is nifty. I had forgotten about that.

### Fallback Functions
This is necessary when you declare External Functions; you have to set these fallbacks so Ink can still run properly. It's just boilerplate that you have to do, as per Ink's documentation.

### Emotion Guidelines
Our cheat sheet for the most used in-dialogue emotes in the game. In hindsight, they could have been Ink functions to avoid typos.

## Events

Events are where the story happens. They are Ink scenes where you must make decisions, ensure everyone stays alive and your ship's resources stay above board, and advance in the mission until you finish the delivery.

However, this is the moment that I must also reveal the great game development secret about Sky Caravan.

> [!CAUTION]
> Stupid decisions and the consequences of them ahead.

So, the game was developed in a year. During the first 8 months of development, we were actually developing a text-based RPG **with procedural elements.** This means that the missions of the game had events picked randomly. So the idea was that you chose Mission X, and as the days passed, the system picked random knots from Master.ink based on their type and you always had a different journey, with different events. We actually wrote about 70% of the game's first draft this way. For example: the first mission of the game would always start the same way, but then it would pick a random event of type Ship, which would put the ship in danger, and then it would pick an event of type Crew, which would bring some conflict with the characters, and so on. The missions were built in Unity using Scriptable Objects, where we dragged and dropped the event types, and while the story was running, when we requested the next event at the end of the previous one, Unity returned the knot of a certain event

 of type Y. It was a pretty interesting system!

**And it sucked.** We came to terms with it early in 2022, when we had the opportunity to all get together and realized that the game simply wasn't working. The procedural generation was making the writing a hellish experience, with us having to take into account every single possibility and state in every single scene for it to react properly, and it was getting really hard to make the characters feel alive and develop properly. The fact that events could be randomly picked from a pool either in the first or last mission meant the character Z either had to react the same way every time, or we'd have to write an N number of reactions to every possible character development state. It was our first time doing branching narrative, so we really didn't know what we were getting into by throwing procedural into the mix.

So we saw what we had and decided to go all in on an artisanal, character-driven narrative, using all the best events we wrote thus far to stitch together a cohesive, still branching narrative that would become much more impactful and easier to write. The funny thing is: the game still ran in the procedural system. It just always picks the same knots that we hardcoded. Game dev at its finest 👌

### Missions

Missions are divided by difficulty in the folder, but that has absolutely no meaning because it was all scrapped. We just couldn't reorganize it on time. At first, the game was going to feature several different missions, short in scope, and they would be randomized inside a certain difficulty. As the game progressed, the mission would be picked randomly from the upper difficulties. As stated above, we scrapped all that, and went all in on having a smaller number of missions, but making them very artisanal. They ended up all in the Rookie folder, which doesn't make sense, I know, except for the Final mission, which is in the... *ahem* "Final" folder. Their order in the game is:

1. Mission_Rookie_TheMafagafoPassenger.ink
2. Mission_Rookie_TheCursedCachaca.ink
3. Mission_Rookie_GraspOfTheOctornado.ink
4. Mission_Rookie_CrystalsOfBygoneTimes.ink
5. Mission_Final_Name.ink

The other mission files are all boilerplate Ink code that allowed them to flow through the procedural system of the game, allowing easy testing. Every mission in the game started with that template.

Missions are also divided into several parts. The first part is how the mission starts, with the caravaneers talking with their client. Then other events come in, and we come back to the mission inks in their designated parts. It worked well to have the entire mission in a single ink, even though it got gigantic, because we were able to keep the local variables all accessible and also think of them as a single piece of story that is fully cohesive in itself.

### General

The General folder houses the individual vignettes of caravaneer life and decision-making that the player faces throughout the game. They're fodder for between the missions, and, when we went full artisanal, became deeply intertwined with the missions themselves, which worked a lot to their benefit in the end. They're divided by categories, but that's just a relic of how the game worked before. Also, there's a LOT of cut content in this folder that was just going to be more of a hassle to remove from the script, so it's a bit hard to make out what's in the game and what's not, sorry about that.

### Emergency

Emergencies are another aspect of the game that was cut from the final release. During missions, you need to keep the resources of the ship (Fuel, Morale, and Supplies) all above zero to avoid the ship from going down. Initially, when the game was procedural, we wrote little scenes that would happen to give additional context to why the game over was happening. But these scenes ended up making things seem even more random, so we decided to cut them entirely.

## Outpost

This folder houses the dialogs with your crewmates inside the Capybar, which is the outpost where you hang out between missions.

## Various

Backgrounds.ink is the first attempt at writing an introduction for the game. It is not featured in the final game, but was useful for giving us broad strokes of possible character backgrounds for the main character.
Demo.ink is the introduction for the game featured in the game's Demo that we released in Steam Next Fest Feb 2022. We used a lot of it to make the game's final intro.
Intro.ink is the second attempt at writing an introduction for the game. It was ENORMOUS and we tried really hard to make it work, make it more "show, don't tell", but it was getting too big to handle. So we used the idea of having the player's intro be a conversation with the Capybarman as in the Demo.ink and eventually created the final intro for the game, which is featured in (`Outpost_Capybarman.ink`).

## Demo

Effects.ink is an onboarding I wrote for the other game writers to teach them how to use the functions I had made for dialogue game feel. I loved doing it, wish we could have done it more during the game's development, because it was a really effective way to show the functions in action, while also being a reference that we used a lot to look at how they worked while we were writing. It's not featured in the final game at all, it's just an internal dev scene.

# Conclusion

Sky Caravan is still one of the works I'm most proud of, and I'm happy to share all this publicly, for free, with the blessing from my team at Studio Bravarda. I hope this helps other writers of Ink and interactive narratives in general.

If you have any additional questions about the game or the repo, feel free to get in touch. 

I love talking about this beautiful mess that I made with my friends. 

Hope it helps you make yours.
