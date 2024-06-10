=== intro ===

#char:--
You are a child of Surface,<waitfor=0.35> born into a broken world.

#char:--
You are named...{EnterDialogueComponent("Input Box")}

#char:--
Okay {g_name} and your pronouns are...

    * [HE>>]
        ~ g_pronoun = "He"

    * [SHE>>]
        ~ g_pronoun = "She"

    * [THEY>>]
        ~ g_pronoun = "They"

- #char:--
Your mother and father embrace you amidst the cold winds of the Crumbling Plains. You feel warm.

#char:--
You are the thirdborn in a family of...

    * (intro_miner_family) [MINERS>>]
        
        ~ g_family = "Miner"

        #char:--
        You grow up in a community of deep miners, searching the depths of Surface for reserves of red oil. 
        
        #char:--
        Weeks underground so everywhere else keeps functioning. It's a hard life, with frequent casualties.

    * (intro_scavenger_family) [SCAVENGERS>>]
        
        ~ g_family = "Scavenger"

        #char:--
        You grow up in a community of scavengers, venturing into the remains of the metropolis' of Old Surface in search of valuables.
        
        #char:--
        Red oil, working machines, anything useful - sometimes food, if you're in luck.

    * (intro_mercenary_family) [MERCENARIES>>]
        
        ~ g_family = "Mercenary"
    
        #char:--
        You grow up in a community of mercenaries, working jobs for the hardened communities of Surface.
        
        #char:--
        Sometimes you protect them, sometimes you attack or steal from them. Depends on who's paying.

    -   #char:--
        Surface is plagued by constant earthquakes.

        #char:--
        The world keeps breaking, which <>

        {
            - intro_miner_family:
                often turns mine shafts into mass graves.

            - intro_scavenger_family:
                makes still standing cities rarer and rarer. Resources are increasingly scarce.

            - intro_mercenary_family:
                escalates conflicts between different territories. Casualties are frequent.
        }

- #char:--
But there is love and comfort in your family and friends.

#char:--
{FadeTo("black", 1, 1)} {CleanTextbox()} As you grow up, you take a special interest in... 

    * [ENGINEERING>>]
        
        ~ g_interest = "Engineering"

        #char:--
        Tinkering with machines can make a day go by in the blink of an eye for you. One day, you make a toy <>
        
        {
            - g_family == "Miner":
                drill.

            - g_family == "Scavenger":
                hover bike.

            - g_family == "Mercenary":
                electric spear.
        }

        #char:--
        You father finds you playing with it and comes running to you. You ready yourself for a scolding — after all, you should have been working.

        #char:--
        "You made this?", he asks. You wave your head affimatively.

        #char:--
        "Pretty cool. Keep at it", he says, walking away while admiring the toy.
        
    * [PILOTING>>]
        
        ~ g_interest = "Piloting"

        #char:--
        The first hover bike you pilot is a revelation. You find it one day while hunting with your older sisters, hidden in an Old Surface ruin. 

        #char:--
        "If you die riding this thing, I'm going to kill you!", one of them screams in the distance.

        #char:--
        You end up so far away, you can't find them any more.
        
        #char:--
        It takes a whole day to go back to camp, but you follow familiar landmarks and arrive, a bruised mess.

        #char:--
        Your parents hug you and pinch you at the same time. "Never do this again!", your mother says.
        
        #char:--
        "Well, maybe not never, it might be useful. But you get the idea", your father retorts. 

    * [FORAGING>>]
        
        ~ g_interest = "Foraging"

        #char:--
        Surface can be barren most of the time, but there are hidden treasures hidden all around if you can keep an eye for them.

        #char:--
        Fruits, spices, shrooms... one day you get so carried away, you find yourself in an Old Surface ruined city, with no sight of your camp.

        #char:--
        You survive a whole week foraging, making your own food and filtering your own water.
        
        #char:--
        Some nights are scary, but it mostly feels like an adventure.

        #char:--
        When your family finds you in your makeshift camp, they're torn between scolding and congratulating you. 
        
        #char:--
        "What you did is impressive! Survival is an important skill around here.", your father says.
        
        #char:--
        "But next time, cook your weird stuff closer to camp!", your mother retorts.
        
- #char:--
At night, you step out into open air. A floating city emerges high above you from the clouds. 

#char:--
It's a view you never forget. What wonders could you find in the Skies?

#char:--
You start saving most of your money.

#char:--
{FadeTo("black", 1, 1)} {CleanTextbox()} Years pass. You spend most of your days <>

{
    - g_family=="Miner":
        damp in the underground. <>

    - g_family=="Scavenger":
        in dusty ruins. <>

    - g_family=="Mercenary":
        in guard duty or endless training. <>
}

// You daydream of...

//     * [TRAVEL>>]

//     ~ g_focus = "Travel"

//     #char:--
//     Exploring the world. Meeting different people, travelling the Skies. 

//     #char:--
//     You imagine yourself atop uncharted clouds, looking down on the Surface.

//     * [MONEY>>]

//     ~ g_focus = "Money"
    
//     #char:--
//     Having the Grana to control your destiny. No more wallowing in misery.

//     #char:--
//     You imagine yourself in your own floating estate, looking down on the Surface.

//     * [POWER>>]

//     ~ g_focus = "Power"

//     #char:--
//     Having real power. No matter where you walk in, you command respect. They know your name. 

//     #char:--
//     You imagine yourself walking into a bar in the Skies, all heads turning to you.

// - #char:--
// You could build a true home for your family. Living, instead of surviving.

- #char:--
Your reveries are interrupted by an earthquake. 

#char:--
One of your sister disappears. The eldest is inconsolable. Your mother is badly injured.

#char:--
You and your family search for days. Then weeks.

#char:--
Until eventually, searching finally becomes mourning. 

#char:--
You wish you could do more.

    * [SAD>>]

        #char:--
        "We'll need your help a bit more from now on, {g_name}", your mother says.

        #char:--
        "I hoped it would all be different for us", your father whispers.

- #char:--
Years pass. Your mother's condition worsens. Recurring fevers, breathing problems...

#char:--
There's only one way out of this.

    * [POINT_UP>>]

- #char:--
You find the contact to a well-known smuggler - the only way skywards for poor Surfacers.

#char:--
You meet him at a broken-down Skyship. He's cloaked, but you can glimpse his wings and his red eyes.

#char:--
"The name's Marimbondo", says the smuggler. "Ready to hear the best deal in your life?"

#char:--
"First of all: you can keep that petty Grana pouch you're packing. I'm an investor, not a loan shark", he says as he comes near you.

#char:--
"I give you 5.000,00 G$ and a trip to the Skies. You pay me 20.000,00 G$. In four months."

#char:--
The clitter of his mandibles chills your spine. 

#char:--
Part of you wants to run away from this situation and forget this conversation ever happened.

#char:--
But you had enough of watching you and your family trapped in Surface. You can pay the price.

    * [HANDSHAKE>>]

        #char:--
        Marimbondo giggles. A non-choice in the name of all the future ones you'll be able to make, for you and your family... right?

- #char:--
A week passes. You're inside of the cargo hold of a low-class Skyship. 

#char:--
When the Skyship takes off, you completely lose your sense of gravity.
            
#char:--
You float, grabbing tightly to a rope nearby. It's too much for your Surface digestory tract...

    * [VOMIT>>] 
    
    * [VOMIT>>] 

    * [VOMIT>>] 

- #char:--
After getting rid of any trace of Surface food in your body, gravity starts coming back.

#char:--
You arrive at a remote Skyport, after getting thrown inside a cargo crate filled with cabbages. 

#char:--
When you see the light, it comes with a punch to the face.

#char:--
When you wake up, every part of your body aches. 

#char:--
You feel the pocket where the 5000,00 G$ was. It's gone. Someone is holding your head by the hair.

#char:--
"Marimbondo wishes you good luck. See you in 4 months, Surfacer", says a shadowy figure. They walk away.

#char:--
You look around. It looks like a metallic corridor, bustling with people. 

#char:--
You realise you are a familiar sight. A desperate Surfacer, conned into the Skyways.

#char:--
You now owe 10.000,00 G$ in debt to a crazy insect being that knows where you family lives. Due in 4 months. 

-> options

= options

#char:-- 
You weigh your options.

    * [BEG>>]

        #char:--
        You spend a few hours begging at busy intersections with a sign explaining your story.
        
        #char:--
        A penny here, a penny there and it's barely enough for your day's meal. 

        -> options

    * [WORK>>]

        #char:--
        You wander around in search of work opportunities. But few people trust Surfacers.
        
        #char:--
        Even fewer trust beat up, blood-stained, dirty ones with no documents. It's a waste of time.

    -> options

    * [DRINK>>]
    
        #char:--
        You decide that intoxication is a fair response to all that has happened. 

- #char:--
You find a shady bar in the outskirts of the Skyport. 

#char:--
It's crowded, but you find a stool and claim it.

* [BARGAIN>>]
    #char:--
    You approach the bartender, offering quick work for a drink.

    #char:--
    You end up washing some cups and plates in the back.

    ~ FadeTo("black", 1, 1)

    #char:--
    Afterwards, he pours you one and even gives you a few crackers — bland, but it's all you've eaten all day.

* [BEG>>]

    #char:--
    Penniless, you hope for a drunk patron's kindness.

    #char:--
    Surprisingly, it's the bartender who offers you one on the house.

-   #char:--
    You drink the absolute worst cachaça in your life. It's perfect.

    #char:--
    Just then, there's a commotion. A man has entered the bar, sporting a ragged look, torn clothes and bloodied lips.

    #char:--
    A few salutes are thrown his way. 'Captain Costa', you hear the patrons shout.

    #char:--
    He slowly steps to the counter and sits next to you. "What a week", he says.

    #char:--
    You look at him puzzled, feeling the giddyness of alcohol inviting you to answer. 

    * [TALK>>]
        #char:--
        With your inhibitions low, you begin telling your story to this total stranger.

        #char:--
        You don't think it'll fix things. But you can't bring yourself to care — it's great to vent.

        #char:--
        When you look to the side, though, both the 'captain' and the bartender are listening avidly.

    * [QUESTION>>]
        #char:--
        You ask what his story is. The man scrutinizes you from top to bottom, but answers.

        #char:--
        "I'm a cargo caravan captain, kid. Just wrapped up a series of deliveries. So I'm drinking to that."

        #char:--
        "Me and my crew will be assigned a new ship tomorrow. Like a promotion."

        #char:--
        "Well, except it's cuz the previous captain tried to embezzle it from the Association. Didn't end well."

    * [JOKE>>]

        #char:--
        "But captain", you say: "It's still Tuesday".

        #char:--
        He looks at you, with bloodshot eyes. And then lets out a roaring laugh.

    -   #char:--
        You and the Captain — Costa — are like old friends in the matter of an hour. Some others join your conversation too.
        
        #char:--
        Eventually, he turns to you, a glint in his eyes. He's drank at least five times more than you by now.

        #char:--
        "Say, your luck hasn't been so good today. Wanna see if a few games of craps changes that?"

            * [YES>>]
                #char:--
                You accept. Someone gives you 100 G$ as a 'loan'. The word makesyou shiver, but you press on.

            -> part12D

            * [NO>>]

                #char:--
                Costa smiles mockingly: "Chickening out when things get hard? You related to my first husband, kid?"

                #char:--
                Everyone laughs, but the captain grabs your hand and whispers to you. "Play, kid."

            -> part12D

= part12D

#char:--
You somehow manage to win several games against the captain. You lose some, too, but only a few.

#char:--
You bet your whole hand in the next dice roll. You need a 3. You get a three. Defeaning cheers.

#char:--
A hundred Grana has slowly become a thousand. The captain frowns, looks at you with squinted eyes... and a smile?

#char:--
"Time for the climax, kid. Ya ready for it?", he asks. Then he throws something on the table.

#char:--
It takes you a moment, but you recognize it. It's a caravan key. Almost identical to the one you keep in your pocket.

#char:--
"I bet my ship, the 41-Bis, against all the Grana you have." Around you, there's defeaning silence.

#char:--
Your hands are shaking. If you lose, there goes everything you got tonight. Your second chance in the Sky.

    * [YES>>]
        #char:--
        A ship could mean getting your family to Sky yourself. Or selling it and getting the money for Marimbondo. 

        #char:--
        It could mean a promise kept. This is it. You shake hands with the captain.

    * [NO>>]
        #char:--
        If you cut your losses and walk away now, at least you got some Grana.

        #char:--
        "You think you're getting my money and running? Sounds like my second husband!", Costa says.

        #char:--
        The bar's atmosphere has become tense. Looks like you don't have much of a choice.

    -   #char:--
        Everyone is climbing over everyone else to watch the game. Now is the time.

        #char:--
        He throws the dice: a four. The first one to throw this number will win the game. Your turn.

        * [THROW>>]

            #char:--
            The second it takes for the dice to land feels like a full hour. Your legs shake incontrollably.

            #char:--
            An 8. Terrible throw. There's some sighs across the bar. Strangely, some people are rooting for you.

            #char:--
            The captain laughs. A sweat drop runs on his face. His face is all red. 

            #char:--
            After rolling the dice in his hand a bit, he raises his hand and throws it down.

            #char:--
            They land straight up. 2 and 4. "DAMN IT! 6. Almost there. Your turn, kid", he says.

            #char:--
            More sighs from the crowd — and a relieved one from you. You pick up the dice again, your hands sweating.

            ** [THROW>>]

                #char:--
                You throw the dice. They feel different, somehow. The next second is a haze. 
                
                #char:--
                You see the number 4. It's a blur. You are thrown upwards, everyone screaming your name and congratulating you. 

                #char:--
                You won a Skyship. You search the room for the captain, but he's not on his stool anymore.

                #char:--
                At the edge of the bar, nearing the door, you see him glancing at you. The smile from before crosses his lips.

                #char:--
                After more partying, shouting and drinking, you walk to the garage. You ask for the 41-Biz to one of the workers. 
                
                #char:--
                You walk towards it see it for the first time. You can't stop your tears of joy.

                #char:--
                At the ship's door, you see a written note.

                #char:--
                "Hey kid. Be at the Capybar tomorrow at 7 a.m. They'll be waiting for you.", it starts.

                #char:--
                "You got a good heart, you know that right? Take care of the 41-Biz and it will take care of you."

                #char:--
                "Oh and good luck with those damn capybaras."

                #char:--
                "Farewell, Sky Caravaneer."

                { ChangeScreen("OutpostBar", 3.5, 1) }

        -> END

// #char:--
// You feel...

//     * [ANGRY>>]

//     #char:--
//     You can't contain your frustration. You start screaming and hitting the ground in front of you with your bare hands.

//     #char:--
//     It doesn't take long until you are greeted by the first folk from the Skies you meet. Uniformed, with batons.

//     #char:--
//     You spend the night in a jail cell.

//     #char:--
//     "They come younger and younger... must be them quakes getting worse", says a raspy voice coming from the neighboring cell. 

//     #char:--
//     It's a man with dirty, official-looking clothes. He asks you your story. You tell it.

//     #char:--
//     "Well, you're screwed, can't argue with that. You willing to risk your life to find a way out of this?", he asks.

//     #char:--
//     You ask what does he mean by that.

//     #char:--
//     "I want to get rid of my Skyship. You seem like you could use one."

//     #char:--
//     These last few days have taught you to laugh at such offers. You ask what's the catch.

//     #char:--
//     "You'll learn it tomorrow when you get out."

//     * [SAD>>]

//     #char:--    
//     ...

//     *[FEAR>>]

//     #char:--
//     ...

// * [RELAX>>]
//     #char:--
//     It doesn't make things much better... but you're all trying your best.

//     #char:--
//     At the end of the day, you still have your family.

// -   #char:--
//     "Happyness in hardship, {g_name}.", your father places his hand in your hair as he soothes you.
    
//     #char:--
//     "That's all there is to it. The Surfacer's Way."

//     #char:--
//     A year passes and family welcomes a new member: your little brother. Everyone is overjoyed. You are pensive. 

//     #char:--
//     You spend the night gazing at clouds with your sisters. A shooting star appears every now and then.
    
//     #char:--
//     For each one, you wish your newborn brother could live an easier life.

//     #char:--
//     You see a big one. Bright red. It gets closer and closer, illuminating the hills in front of you.

//     * [WARN>>]

//     #char:--
//     You warn your sisters, barely managing to scramble to cover with them.

//     -   #char:--
//         There's a crash. The sheer impact launches you a few meters away. {Shake("All", 5, 1)}

//         #char:--
//         When the dust clears, you get up slowly. A twisted mess of metal, flames and smoke becomes visible in the distance. 

//         #char:--
//         "A downed Skyship!", your eldest sister says.

//         * [FEAR>>]

//             #char:--
//             This is dangerous. What if other looters appear? You should all go warn your parents about it and then maybe you could—

//             #char:--
//             You realize you're talking to yourself, as your sisters are already rushing to the wreckage.

//         -> part5

//         * [MOTIVATE>>]

//             #char:--
//             You are the first to rush towards the wreckage, calling your sisters behind to you, asking them to keep up.

//         -> part5



// = part5

// #char:--
// When you arrive, you are faced with a burning pile of debris, the ship's main stabilizer sail standing upright in the middle.

// #char:--
// A multicolored, surreal-looking mist comes from the metal hull.

// #char:--
// It seems to be evaporating from a similar liquid pouring from exposed gallons in the ship.

// #char:--
// "This is... we need this, this is Glimmer!"

// #char:--
// "Let's each get a gallon and get the hell out of here!", your older sister says, shaking.

// * [THINK>>]
//     #char:--
//     You tell them to be careful — what if there's something dangerous inside?

//     #char:--
//     The middle sister doesn't care, though. She's already going for the gallons.

//     #char:--
//     Then, a large figure emerges behind her. You don't even have time to warn her before she's thrown backwards.

// * [CARGO>>]
//     #char:--
//     This could be the lucky break you all needed! A chance at happiness!

//     #char:--
//     You reach for one of the intact gallons... and feel a hand on your neck.
    
//     #char:--
//     Your feet lifting off the ground and you're thrown backwards.

//     -   #char:--
//         Your sisters are also on the ground. Several figures tower over you, some carrying weapons.

//         #char:--
//         "Surface dogs can't help but dig into other people's trash, huh? This is our loot. Buzz off.", says the biggest one.

//         #char:--
//         "Why the rush? Let's play a little...", says a tall, slender figure near you, with wings and sharp claws.

//         * [FEAR>>]

//         * [FEAR>>]

//         * [FEAR>>]

//         -   #char:--
//             You're paralyzed by fear until the leader speaks again:

//             #char:--
//             "Get a grip, Marimbondo! We need to salvage all this Glimmer before it evaporates. Come on, chop chop!" 

//             #char:--
//             They pick the ship clean in just a few minutes, like <>

//             {
//                 - g_family == "Miner":
//                     a machine drilling at an ore deposit.

//                 - g_family == "Scavenger":
//                     they already knew the place and what they'd find.
                
//                 - g_family == "Mercenary":
//                     a job that's been planned in detail and in advance.
//             }

//             #char:--
//             Your assailants flee in a large ship, leaving you and your sisters gagged and tied near the rubble.
            
//             ~ FadeTo("black", 1, 1)

//             #char:--
//             After what feels like hours, your parents arrive with other <>
            
//             {
//                 - g_family == "Miner":
//                     miners.

//                 - g_family == "Scavenger":
//                     scavengers.

//                 - g_family == "Mercenary":
//                     mercenaries.
//             }

//     //TODO: Flavor choice here

//             #char:--
//             As soon as she is freed, your older sister tries to explain this mess.

//             #char:--
//             "Dad, mom, I'm sorry, I brought them here, there was Glimmer, it could have changed everything, I..."

//             #char:--
//             "This was a terrible call! You don't put people in your responsibility in danger! Do you understand me!?", your father fires back.

//             #char:--
//             "You're lucky we saw the Skyships flying above us. They were Skyways raiders.", your mother elaborates.

//             * [QUESTION>>]
//                 #char:--
//                 You ask why people would raid in the Skyways. Isn't life easier there?

//                 #char:--
//                 "Some people aren't content with surviving. They want to be the only ones to survive.", she answers.

//             * [TALK>>]
//                 #char:--
//                 You tell your parents about what you saw — the goons, the weapons and their ship.
            
//                 #char:--
//                 "They gunned another ship down for the cargo, then. It's not that unusual for raiders.", she answers.

//             -   #char:--
//                 "Let this be a lesson for you three. People can be more dangerous than nature. Here or in the Sky.", your father adds.

//                 #char:--
//                 After everyone is untied, you share a long hug with your siblings before leaving.

//                 #char:--
//                 Just then, there's a metallic 'clink' at your feet. It's a large key you kicked out of the rubble.
                
//                 #char:--
//                 You clean it off, revealing an emblem with an animal you can't recognize. As your mother calls for you, you pocket it and leave.

//                 ~ FadeTo("black", 1, 1)

//                 #char:--
//                 A week later, the harshness of Surface makes itself known again.

//                 #char:--
//                 One of your sisters disappears during an earthquake. The eldest one is inconsolable.

//                 #char:--
//                 You and your family search for days. Then weeks.
                
//                 #char:--
//                 Until eventually, searching finally becomes mourning. 

//                 #char:--
//                 You wish you could do more.

//                     * [SAD>>]

//                         #char:--
//                         "We'll need your help a bit more from now on, {g_name}", your mother says.

//                         #char:--
//                         "I hoped it would all be different for us", your father whispers.

//                         #char:--
//                         You look up. Could it really be worse than here?

//                         ~ FadeTo("black", 1, 1)

//                     -> part6


// = part6

// #char:--
// Years pass and your father falls ill. Recurring fevers, breathing problems and aching all across his body.

// #char:--
// He's constantly bedridden. Your mother cares for him the best she can, but she's getting older.

// #char:--
// Your sister spends so much time working, you barely see her anymore.

// #char:--
// Your little brother works hard, too. As hard as you, an adult.

// #char:--
// You feel trapped and explore your options. Even though you've known for years that there is only one...

//     * [POINT_UP>>]

//         #char:--
//         You fiddle with the Skyship key that you kept, even after all these years. You remember your father's warnings. But there is no other choice.

//     -> part7



// = part7

// #char:--
// You start asking around about transport to the Sky. Most people either laugh you off or warn against it.

// #char:--
// Eventually, <>

// {
//     - g_family=="Miner":
//         one of the prospectors <>

//     - g_family=="Scavenger":
//         a chance meeting with a merchant <>

//     - g_family=="Mercenary":
//         a target's contact list <>
// }

// directs you to to a well-known loan shark everyone seems to fear.

// #char:--
// You arrive at a Skyship docked at the edge of a chasm. Somehow, it seems familiar.

// #char:--
// You enter and are guided to the bridge by a hooded man.

// #char:--
// Then you freeze.

// #char:--
// "So, you've been asking around, little brat. Looking for an upwards trip? I'm all ears.", says Marimbondo.

// #char:--
// It has to be him. The same spindly legs, sharp claws and mocking voice.

//     * [ANGRY>>]

//         #char:--
//         You confront him about your first encounter years ago. You ask if he remembers you.

//         #char:--
//         "Uh, no? Kid, I'm a busy person, you want to fly or not? Then let's talk business. Take your drama somewhere else."

//         #char:--
//         His wings vibrate behind him, claws tented together. You have a feeling he's lying.

//     -> part8

//     * [LIE>>]

//         #char:--
//         You try to disguise the anger and sadness that hit you when you remember that night. You ask his name, as politely as you can.

//         #char:--
//         "You know who I am. I know who you are. You should know better than to try to trick me."
        
//         #char:--
//         "Let's try this again, shall we? You wanna go up, so let's skip to business.", Marimbondo chuckles, leaning back on his chair.

//     -> part8

//     * [FEAR>>]

//         #char:--
//         The memories of that night paralyze you for a moment. You probably look pathetic. Does he recognize you?

//         #char:--
//         "Still the sad, lost litle puppy, huh? How are your sisters by the way?"
        
//         #char:--
//         "Anyways, let's talk business!", barks Marimbondo, getting up from his chair.

//     -> part8



// =part8

// #char:--
// Your cheekbones flare with anger. Focus. He seems to be the only path up thus far. You ask how much for the trip.

// #char:--
// Marimbondo grins. He says, with strange pleasure, as if singing a familiar song: "5000,00 G$. Upfront."

// //Flavor choice here

// #char:--
// Your heart skips a beat. All this time saving and you don't have a tenth of that amount.

// #char:--
// "What's the matter? Don't have all this Grana? Hmm, wouldn't want to waste your time..."

// #char:--
// "Well then. How about we work out a different deal, specially for you?", he says as he approaches and towers over you.

// #char:--
// "Instead of you giving me money, I give you money. You become my investment.

// //Flavor choice here

// #char:--
// "You've got some fire in your eyes, kiddo, I'll give you that. How about it?"

// #char:--
// You ask the terms. Something feels off.

// #char:--
// "5000,00 G$ for you, upfront. Then, six months from now, you pay me 10.000,00 G$.

// #char:--
// I make a 100% profit off of you. You get to work in Sky with extra dilligence and a spice of fear for your life."

// #char:--
// He's certainly a very forward loan-shark. You ponder the deal. It doesn't seem like you can bargain.

// #char:--
// He sits in his chair again and eyes you sideways, drumming his fingers on the table.

// #char:--
// You spend a long minute considering it. Sky is a land of opportunities, and your experience <>

// {
//     - g_family == "Miner":
//         with hard labor <>

//     - g_family=="Scavenger":
//         with exploration and survival <>

//     - g_family=="Mercenary":
//         with combat <>
// }

// would help.

// #char:--
// There's also your decent <>

// {
//     - g_interest == "Engineering":
//         engineering <>

//     - g_interest == "Piloting":
//         piloting <>

//     - g_interest == "Foraging":
//         foraging <>
// }

// skills. You'll probably find an opportunity in no time. 

// #char:--
// Part of you wants to run away from this person and forget this conversation ever happened.

// #char:--
// But you had enough of watching your family trapped in Surface. You can pay the price.

//     * [HANDSHAKE>>]

//         #char:--
//         Marimbondo's grin is unsettling. A non-choice in the name of all the future ones you'll be able to make, for you and your family... right?

//     -> part9



// = part9

// #char:--
// The goodbyes are hurtful. Your father's expression shows a mix of worry, hope and disappointment.

// #char:--
// "I can't approve of this... but I know you aren't being selfish. Don't give up, {g_name}. And don't die before me."

// * [LOVE>>]

// -   #char:--
//     Your mother understands, but cannot hide her sadness.

//     #char:--
//     "You think you are the first one to try this?", she asks, "Just promise me you'll come back safely."

//     * [LOVE>>]

// -   #char:--
//     Your big sister looks betrayed when you first tell her. It causes a brief shouting match between you two.
    
//     #char:--
//     When you leave, though, she gives you a long hug.

//     #char:--
//     "Don't be gone for too long, ok? I—I don't wanna lose another sibling."

//     * [LOVE>>]

//     -   #char:--
//         Your little brother doesn't understand what's happening very well, tired from the day's work. Still, he gets up close and whispers in your ear:

//         #char:--
//         "Do your best! You'll be the greatest <>

//         {
//             - g_interest == "Engineering":
//                 engineer <>

//             - g_interest == "Piloting":
//                 pilot <>

//             - g_interest == "Foraging":
//                 forager <>
//         }

//         in the world one day!"

//         * [LOVE>>]

//         -   #char:-- 
//             You tell them you love them. When you come back, it's gonna be on your own Skyship. 

//             #char:--
//             When you arrive at the meeting point, you are delivered a bunch of papers by a strange lizard guy.
            
//             #char:--
//             Then, you're thrown into the cargo hold of a Skyship by a girl riddled with scars. That's certainly a start.

//             #char:--
//             When the Skyship takes off, you completely lose your sense of gravity.
            
//             #char:--
//             You float, grabbing tightly to a rope nearby. But it's too much for your Surface digestory tract...

//             * [VOMIT>>] -> part10
            
//             * [VOMIT>>] -> part10

//             * [VOMIT>>] -> part10



// = part10

// #char:--
// After getting rid of any trace of Surface food in your body, gravity starts coming back.

// #char:--
// You sit on the floor, slowly drifting into a dizzy sleep.

// ~ FadeTo("black", 1, 1)

// #char:--
// A metallic cacophony jolts you awake. The ship starts deccelerating. By the time you land, your heart is pounding.

// #char:--
// You stand upright and cover your eyes, anticipating blinding sunlight.

// #char:--
// The cargo door opens and you meet the pitch-black of a Skyport garage.

// #char:--
// As you step out of the cargo hold, you hear a faint voice coming from above: "Welcome to the Skyways."

// #char:--
// You are suddenly hit in the back with a blunt object. Air rushes out of your lungs. 

// #char:--
// Two, three, four shadowy figures take turns hitting you.

// #char:--
// There's screaming, taunting, laughter - but it starts fading away... 

// #char:--
// You wake up feeling pain on your sides. A guy with a donkey head pokes your stomach. "You dead?", he asks.

// * [CONFUSED>>]
//     #char:--
//     Still disoriented, you ask where you are.

//     #char:--
//     "Araru Skyport. Small place in the middle of nowhere. Only cargo caravans come here, and they don't stay for long."

// * [FACEPALM>>]
//     #char:--
//     In your foul mood, you say that yes, you're both dead, that's why you can talk to him.

//     #char:--
//     "Looks like your funny bone isn't broken, at least. Good."

// -   #char:--
//     You're another Surfacer, aren't you?

//     #char:--
//     The wording surprises you. 'Another'?

//     #char:--
//     "Lemme guess. Someone promised you a trip here? Lent you money? Sorry to break it to you, but it's an old con."

//     #char:--
//     "They bring victims to an isolated Skyport, then beat them unconscious and steal back their Grana and documents."

//     #char:--
//     "If you can't pay back in time, you're forced to work for them."

//     * [FEAR>>]

//         #char:--
//         You feel your pockets and search around for your belongings. But everything's gone.

//         #char:--
//         The only thing you find is a piece of paper with crude handwriting.

//     * [FRUSTRATED>>]

//         #char:--
//         You can't decide whether you want to yell, cry or punch someone.

//         #char:--
//         You get up, wincing at the pain... and a piece of paper falls from your pocket.

//     -   #char:--
//         "Good luck little <>
        
//         {
//             - g_family == "Miner":
//                 miner<>

//             - g_family == "Scavenger":
//                 scavenger<>

//             - g_family == "Mercenary":
//                 mercenary<>
//         }
        
//         . see you in six months. ~ Marimbondo."

//         #char:--
//         Donkey guy clears his troat: "Well, there's a watering hole up ahead."
        
//         #char:--
//         "I can take you there to rest and clean your injuries, but I can't really help you further."

//         #char:--
//         You follow him outside of the garage. A breathtaking view greets you there.

//         #char:--
//         Several ships cross the clouds, the Skyport extending far into view.
        
//         #char:--
//         If this is "isolated", you wonder how big Sky cities can get.
        
//         #char:--
//         "Surfacer indeed.", your guide says. -> part11



// = part11

// ~ FadeTo("black", 1, 1)

// #char:--
// Afterwards, you're left alone, sitting close to a railing.

// #char:--
// A hint of the Surface can be seen by looking directly down.

// #char:--
// You now owe 10.000,00 G$ in debt to a crazy insect man that knows where you family lives. Due in 6 months.

// #char:-- 
// You weigh your options.

//     * [BEG>>]

//         #char:--
//         You spend a day begging at busy intersections with a sign explaining your story.
        
//         #char:--
//         A penny here, a penny there and it's barely enough for your day's meal. 
        
//         #char:--
//         Your night is spent in the garage, for added warmth of the Skyship engines.
        
//         #char:--
//         It works, and you find yourself getting drowsy...

//         ~ FadeTo("black", 1, 1)

//     -> part12A

//     * [WORK>>]

//         #char:--
//         You wander around in search of work opportunities. But few people trust Surfacers.
        
//         #char:--
//         Even fewer trust beat up, blood-stained, dirty ones with no documents. It's a waste of time.

//         #char:--
//         Your night is spent next to the boarding areas, gazing at the comings and goings of Skyfarers.

//     -> part12B

//     * [DRINK>>]
    
//         #char:--
//         You decide that intoxication is a fair response to all that has happened. 

//     -> part12C



// = part12A

// #char:--
// "Hey. Get up, kid."

// #char:--
// For the second time in the day, you find yourself being poked awake. This time with a boot.

// #char:--
// Looking up, you see a much older man staring back at you, his features twisted in a frown.

// #char:--
// With torn clothes, long beard and wild eyes, he's the definition of 'ragged'.

// #char:--
// "Well? Care to tell me why you were sleeping in the middle of the bloody garage?"

// #char:--
// "An incompetent or malicious pilot would have flattened or ran you over!"

// * [TALK>>]
//     #char:--
//     Too tired to argue, you just tell him your story.

//     #char:--
//     As you go on, you become more alert. Is it just you or do you sense some sympathy in his eyes?

//     #char:--
//     "Tch. I've lost good friends to bastards like that. Us Skyfolk have to deal with them too, y'know."

//     #char:--
//     You remember the downed caravan from your childhood — and the gang that wanted its cargo.

// * [LIE>>]
//     #char:--
//     You make up a few details and tell him to go away. No reason to blab your life story like that after what you went through today.

//     #char:--
//     "Don't insult my intelligence, kid. If I was gullible enough to fall for that, I'd be dead."

//     #char:--
//     "Now either tell me the truth or go sleep outside. Your choice."

//     #char:--
//     Recluctantly, you tell him the gist of your story.

// -   #char:--
//     "Say... you told me you were a  <>

//     {
//         - g_family=="Miner":
//             miner. <>

//         - g_family=="Scavenger":
//             scavenger. <>

//         - g_family=="Mercenary":
//             mercenary. <>
//     }

//     Can you do anything else?"

//     #char:--
//     You tell him about your <>

//     {
//         - g_interest == "Engineering":
//             engineering <>

//         - g_interest == "Piloting":
//             piloting <>

//         - g_interest == "Foraging":
//             foraging <>
//     }

//     skills. He smiles wide.

//     #char:--
//     "So, a debt, no money and nowhere to go... tell me, how would you like a job?"

//     * [HAPPY>>]
//         #char:--
//         Well, can't look a gift job in the scruffy beard. You ask what it's about.

//     * [CONFUSED>>]
//         #char:--
//         He's offering you a job? After seeing you asleep in a garage?

//     * [FEAR>>]
//         #char:--
//         Sounds too good to be true. Fool you twice...

//     -   #char:--
//         "Look, you want to pay your debt, I know a quick way to do it."

//         #char:--
//         "You've seen that bar with the capybara sign, right? Go there and show them this."

//         #char:--
//         He throws something towards you. A key? It looks familiar, somehow.

//         #char:--
//         "Tell them Costa sent you. They'll tell you the rest. Farewell, Sky Caravaneer.", he says with a wink and leaves.

//         #char:--
//         The sun is rising again.

//         { ChangeScreen("OutpostBar", 3.5, 1) }

//         -> END



// = part12B

// #char:--
// One of them catches your attention, though. You notice him by the way he moves.

// #char:--
// There's purpose to every step. Between his long beard and ragged look, he's a veteran... of whatever it is he does.

// #char:--
// {shuffle:

//     - "'Least I got some churrasco out of today. Sky bless the Marketplace."

//     - "And now I have a headache. Damned spores..."

//     - "Tentacles. It just had to be those tentacles again."

//     - "Well, no more eating seafood for a while."
// }

// #char:--
// You have no idea what he's mumbling about, but looks like he just arrived from a trip.

// #char:--
// If so, maybe you can ask for work. Or at least, transport to somewhere else.

// * [QUESTION>>]
//     #char:--
//     You approach the man and ask if he's looking for a crewmate.

//     #char:--
//     "Not really, kid. Besides, I don't recruit random people just because they approach me, you know."

//     ** [BEG>>]
//         #char:--
//         Desperate, you tell him the gist of your story and that you've got nowhere to go.

//         #char:--
//         His eyes light up with what you hope is sympathy.

//     ** [TALK>>]
//         #char:--
//         You keep your composure and talk about your work as a <>

//         {
//             - g_family=="Miner":
//                 miner <>

//             - g_family=="Scavenger":
//                 scavenger <>

//             - g_family=="Mercenary":
//                 mercenary <>
//         }

//         and your <>

//         {
//             - g_interest == "Engineering":
//                 engineering <>

//             - g_interest == "Piloting":
//                 piloting <>

//             - g_interest == "Foraging":
//                 foraging <>
//         }

//         skills.

//         #char:--
//         "Dunno how you got here, but you're far from home, kid."

// * [SHIP>>]
//     #char:--
//     You approach the man and ask if he can take you to a larger Skyport.

//     #char:--
//     "A larger— kid, do you even know where you're going?"

//     #char:--
//     "Besides, I only carry cargo, not people."

// -   #char:--
//     "You're from the Surface, right? I can take to someone who can bring you back, if you want."

//     #char:--
//     You consider it for a second... but going back wouldn't erase your debt.

//     #char:--
//     Sure, you could try to run, but what about your family?

//     #char:--
//     No, what you need is Grana. Lots of it.

//     #char:--
//     "Ah, that's why. Well... consider yourself 'hired', kid. Well, not by me, but hired."

//     * [HAPPY>>]
//         #char:--
//         You're too excited to care about the vague wording.
        
//         #char:--
//         You have six months and no Grana, anything is a start.
        
//         #char:--
//         The man then tosses you a key with a familiar-looking emblem.

//     * [CONFUSED>>]
//         #char:--
//         What does he mean 'not by him'? Seeing your look, he tosses you a key.

//         #char:--
//         "We won't really be working together, is all. Look, take the key to a bar with the same symbol."

//         #char:--
//         You gaze at the key, feeling like you've seen this emblem before...

//     -   #char:--
//         "I'm not gonna lie, kid. It'll be dangerous. But if you need Grana fast, that's the fastest way there is."

//         #char:--
//         "Well, the fastest way that isn't completely illegal, anyway.", he adds with a smirk before walking away.

//         #char:--
//         "Oh, three rules" he whirls around, "take care of the crew, the ship and yourself! Farewell, Sky Caravaneer!"

//         #char:--
//         It takes a moment to register it, but then you stare wide-eyed at the key — the ship key — you were given.

//         #char:--
//         For once, the Sky has blown the wind in your favor.

//         { ChangeScreen("OutpostBar", 3.5, 1) }

//     -> END



// = part12C

// #char:--
// No Grana in your pockets, you wander around and and find a shady bar in the outskirts of the Skyport. 

// #char:--
// It's crowded, but you find a stool and claim it.

// * [BARGAIN>>]
//     #char:--
//     You approach the bartender, offering quick work for a drink.

//     #char:--
//     You end up washing some cups and plates in the back.

//     ~ FadeTo("black", 1, 1)

//     #char:--
//     Afterwards, he pours you one and even gives you a few crackers — bland, but it's all you've eaten all day.

// * [BEG>>]

//     #char:--
//     Penniless, you hope for a drunk patron's kindness.

//     #char:--
//     Surprisingly, it's the bartender who offers you one on the house.

// -   #char:--
//     You drink the absolute worst cachaça in your life. It's perfect.

//     #char:--
//     Just then, there's a commotion. A man has entered the bar, sporting a ragged look, torn clothes and bloodied lips.

//     #char:--
//     A few salutes are thrown his way. 'Captain Costa', you hear the patrons shout.

//     #char:--
//     He slowly steps to the counter and sits next to you. "What a week", he says.

//     #char:--
//     You look at him puzzled, feeling the giddyness of alcohol inviting you to answer. 

//     * [TALK>>]
//         #char:--
//         With your inhibitions low, you begin telling your story to this total stranger.

//         #char:--
//         You don't think it'll fix things. But you can't bring yourself to care — it's great to vent.

//         #char:--
//         When you look to the side, though, both the 'captain' and the bartender are listening avidly.

//     * [QUESTION>>]
//         #char:--
//         You ask what his story is. The man scrutinizes you from top to bottom, but answers.

//         #char:--
//         "I'm a cargo caravan captain, kid. Just wrapped up a series of deliveries. So I'm drinking to that."

//         #char:--
//         "Me and my crew will be assigned a new ship tomorrow. Like a promotion."

//         #char:--
//         "Well, except it's cuz the previous captain tried to embezzle it from the Association. Didn't end well."

//     * [JOKE>>]

//         #char:--
//         "But captain", you say: "It's still Tuesday".

//         #char:--
//         He looks at you, with bloodshot eyes. And then lets out a roaring laugh.

//     -   #char:--
//         You and the Captain — Costa — are like old friends in the matter of an hour. Some others join your conversation too.
        
//         #char:--
//         Eventually, he turns to you, a glint in his eyes. He's drank at least five times more than you by now.

//         #char:--
//         "Say, your luck hasn't been so good today. Wanna see if a few games of craps changes that?"

//             * [YES>>]
//                 #char:--
//                 You accept. Someone gives you 100 G$ as a 'loan'. The word makesyou shiver, but you press on.

//             -> part12D

//             * [NO>>]

//                 #char:--
//                 Costa smiles mockingly: "Chickening out when things get hard? You related to my first husband, kid?"

//                 #char:--
//                 Everyone laughs, but the captain grabs your hand and whispers to you. "Play, kid."

//             -> part12D



// = part12D

// #char:--
// You somehow manage to win several games against the captain. You lose some, too, but only a few.

// #char:--
// You bet your whole hand in the next dice roll. You need a 3. You get a three. Defeaning cheers.

// #char:--
// A hundred Grana has slowly become a thousand. The captain frowns, looks at you with squinted eyes... and a smile?

// #char:--
// "Time for the climax, kid. Ya ready for it?", he asks. Then he throws something on the table.

// #char:--
// It takes you a moment, but you recognize it. It's a caravan key. Almost identical to the one you keep in your pocket.

// #char:--
// "I bet my ship, the 41-Bis, against all the Grana you have." Around you, there's defeaning silence.

// #char:--
// Your hands are shaking. If you lose, there goes everything you got tonight. Your second chance in the Sky.

//     * [YES>>]
//         #char:--
//         A ship could mean getting your family to Sky yourself. Or selling it and getting the money for Marimbondo. 

//         #char:--
//         It could mean a promise kept. This is it. You shake hands with the captain.

//     * [NO>>]
//         #char:--
//         If you cut your losses and walk away now, at least you got some Grana.

//         #char:--
//         "You think you're getting my money and running? Sounds like my second husband!", Costa says.

//         #char:--
//         The bar's atmosphere has become tense. Looks like you don't have much of a choice.

//     -   #char:--
//         Everyone is climbing over everyone else to watch the game. Now is the time.

//         #char:--
//         He throws the dice: a four. The first one to throw this number will win the game. Your turn.

//         * [THROW>>]

//             #char:--
//             The second it takes for the dice to land feels like a full hour. Your legs shake incontrollably.

//             #char:--
//             An 8. Terrible throw. There's some sighs across the bar. Strangely, some people are rooting for you.

//             #char:--
//             The captain laughs. A sweat drop runs on his face. His face is all red. 

//             #char:--
//             After rolling the dice in his hand a bit, he raises his hand and throws it down.

//             #char:--
//             They land straight up. 2 and 4. "DAMN IT! 6. Almost there. Your turn, kid", he says.

//             #char:--
//             More sighs from the crowd — and a relieved one from you. You pick up the dice again, your hands sweating.

//             ** [THROW>>]

//                 #char:--
//                 You throw the dice. They feel different, somehow. The next second is a haze. 
                
//                 #char:--
//                 You see the number 4. It's a blur. You are thrown upwards, everyone screaming your name and congratulating you. 

//                 #char:--
//                 You won a Skyship. You search the room for the captain, but he's not on his stool anymore.

//                 #char:--
//                 At the edge of the bar, nearing the door, you see him glancing at you. The smile from before crosses his lips.

//                 #char:--
//                 After more partying, shouting and drinking, you walk to the garage. You ask for the 41-Biz to one of the workers. 
                
//                 #char:--
//                 You walk towards it see it for the first time. You can't stop your tears of joy.

//                 #char:--
//                 At the ship's door, you see a written note.

//                 #char:--
//                 "Hey kid. Be at the Capybar tomorrow at 7 a.m. They'll be waiting for you.", it starts.

//                 #char:--
//                 "You got a good heart, you know that right? Take care of the 41-Biz and it will take care of you."

//                 #char:--
//                 "Oh and good luck with those damn capybaras."

//                 #char:--
//                 "Farewell, Sky Caravaneer."

//                 { ChangeScreen("OutpostBar", 3.5, 1) }

//         -> END







// #char:--
// The shooting star from earlier gets closer and closer and starts illuminating the entire plain in front of you. 

// #char:--
// The tail of the star turns out to be a trail of smoke and flames. It crashes into the ground, causing a massive explosion.

// #char:--
// You can't believe your eyes. A downed Skyship! Your sister looks at you. This could be life changing.

// #char:--
// As you both approach the wreckage, a multicolored, dreamlike mist starts enveloping the debris.

// #char:--
// You look at the ground and identify the unmistakable rainbow liquid pouring from twisted metal gallons: Glimmer. If you and your sister could get a gallon fast you could...

// #char:--
// You are grabbed by the neck and thrown meters away. 


//     -> part4

// =part4

// #char:--
// At the age of 10, the harshness of Surface forces you into adulthood.

// #char:--
// Your two older brothers disappear during an earthquake.

// #char:--
// You and your family search for days. Then weeks. Until searching finally becomes mourning. 

// #char:--
// You wish you could do more.

// *   [SAD>>]

//     #char:--
//     "We'll need your help a bit more from now on, {g_name}", your mother says.

//     #char:--
//     "I hoped it would all be different for us", your father whispers.

//     #char:--
//     You look up. A question takes root in your mind:

//     #char:--
//     "What if it was?"

// #char:--
// A couple of years pass as you do your best to take up your brothers responsibilities. It never stops being hard work.





//#char:--
// "I wish we could live there. Hey {g_name}, why can't we? Flying looks so cool", your little sister asks.

//     * [YES>>]

//         #char:--
//         You agree with her. You should all move to Sky.
//         //You explain to her that Sky doesn't have room for everyone. But one day you are going to make it to one of those floating cities. Then you'll...

//         -> part5

//     * [NO>>]

//         #char:--
//         You explain to her that Surface needs workers, otherwise everything falls apart, including Sky. You have to stay here, even if it seems unfair.

//         #char:--
//         Your older brother looks at you, . "{g_name} Lorem is right. Sky doesn't take in many people from Surface, there's no room in This is our home. A hard one. But we count on each other."
        


// The things you could find in the wreckage could be life changing, but if other looters appear...

// #char:--
// You find yourself lost in indecision. 

// #char:--
// Then, a small silhouette starts running towards the ship. You look around. Your sister is gone.

// #char:--
// You race to the wreckage. When you arrive, you are taken aback by the scale and the smoke. 

// #char:--
// Heaps of twisted metal form a burning labyrinth, with the ship's main solar sail still standing upright. You can't help but be amazed.

// #char:--
// "{g_name}!"

// #char:--





//{g_pronoun == "He": boy } {g_pronoun == "She": girl} {g_pronoun == "They": child}.

// -> END


// /* TEXTO PARA APARECER NO CÉU:

// Welcome to Sky Caravan, Captain. This is a game about adventure, mishaps and the unexpected. 

// It's a hostile world out there, where cities are isolated up in the skies. To transport goods between them, the Cargo Caravans were born.

// The faith of your ship is in your hands. Beware - your choices matter. 

// You might sacrifice valuable things along the way. Supplies? Fuel? Your friendship with the crew?

// It's up to you, Captain. Failure may find you - but fear not, there's always a chance to start over again.

// Perhaps you will find your answers along the way.

// */

// #char:--
// Let's start with a choice, shall we? 

// #char:--
// What brings you here, Captain? -> choice

// = choice 

// #char:--
// What is your story?

//     + [SURFACE_DWELLER>>]

//         ~ g_background = "Surface Dweller"

//         #char:--
//         You've lived quite a tough life in the Surface, haven't you?
        
//         #char:--
//         But then you managed to get a ticket to the skies. 

//         #char:--
//         <i>A ticket to freedom</i>, huh? 

//         #char:--
//         Well, not exactly.

//         #char:--
//         Now you are owing money. <i>Quite a lot of it</i>.

//         #char:--
//         Seems like the caravan life is the only choice to pay it back... 

//         #char:--
//         At least you ended up snatching a ship, <b>41-Biz</b>, after some shady bet.

//         -> confirm

//     + [TREASURE_HUNTER>>]

//         ~ g_background = "Treasure Hunter"

//         #char:--
//         <i>Oh</i>... so you're quite experienced already.

//         #char:--
//         You used to be a lone explorer, looking for mystical artifacts hidden in all kinds of risky locations. 

//         #char:--
//         And then you found it. <i>The ultimate treasure</i>.

//         #char:--
//         Well, <i>sort of</i>. More like its coordinates.

//         #char:--
//         In order to get to the mysterious object, you have to enter the Forbidden City.

//         #char:--
//         The problem is that it can only be accessed by licensed Expert Caravaneers.

//         #char:--
//         That's how you ended up here.

//         #char:--
//         You bought an old caravan ship, <b>41-Biz</b>, in order to start your journey.

//         #char:--
//         You have the guts.
        
//         #char:--
//         All that's left is a crew. 

//         -> confirm

//     + [DISGRACED_CAPTAIN>>]

//         ~ g_background = "Disgraced Captain"

//         #char:--
//         I can see you've gone through a lot.

//         #char:--
//         You were once a veteran caravaneer, after all.

//         #char:--
//         You had everything - money, faithfull allies, plenty of stories to tell...

//         #char:--
//         <i>But in a blink, everything was taken from you.</i>

//         #char:--
//         You were the sole survivor of a terrible accident.

//         #char:--
//         You saw yourself with a wrecked ship and no crew to tell the story.

//         #char:--
//         With barely any money left, you bought <b>41-Biz</b>.
        
//         #char:--
//         All you have for now is the promise you made that day - to start things again, the right way this time.

//         -> confirm
        
// = confirm

//     #char:--
//     Is that your story?

//     + [YES>>]

//         #char:--
//         Interesting. Now, let's get started.

//          { ChangeScreen("OutpostBar", 3.5, 1) }

//         -> END

//     + [NO>>]

//         Having some trouble trying to remember? Don't worry. Let's go back.

//         -> choice

// -> END



// - #char:--
// During one of your reveries, you see a shooting star crossing the sky.

// #char:--
// It falls to the ground in an explosion - a fallen Skyship.

// #char:--
// You rush towards the flaming debris. Another Skyship lands near the wreckage. Armed figures disembark. 

// #char:--
// You <>

//     {
//             - g_focus == "Travel":
//                 hide near the landed ship. There may be a way to board it without them noticing.  <>

//             - g_focus == "Money":
//                 hide in crag nearby. If you wait for them to leave, there may still be something valuable in the wreckage. <>

//             - g_focus == "Power":
//                 hide in a hill overlooking them. You look for the leader.  <>
//     }



// #char:--
// Happiness in hardship, says the Surfacer's mantra. 

// You feel...

// * [ANGRY>>]

//     #char:--
//     You confront your parents, questioning why everyone must live like this.
    
//     #char:--
//     Isn't Sky a better place? Why aren't you all there? Your voice is raised more than usual.

// -> part4

// * [CONFUSED>>]

//     #char:--
//     You ask your parents why they live in Surface. Isn't it supposed to be much better in Sky?

// -> part4

// * [HAPPY>>]

//     #char:--
//     You feel a strange contentment in the repetition, hard as it is.
    
//     #char:--
//     But you're also curious: how do people in Sky live? Could they go there someday?

// -> part4



// =part4

// #char:--
// "There isn't enough room for everyone in Sky, {g_name}", your father answers. "We couldn't go there, even if we wanted to."

// // ~ AdvanceIntro()

// #char:--
// "Also, we are needed here. If there aren't workers here, everything collapses.", your mother adds. Their eyes drift downwards. 

// #char:--
// "Besides, they supply us with Glimmer to power terraforming machines."

// #char:--
// Glimmer. A strange liquid you've never seen, but heard about in hushed tones.

// #char:--
// When injected in the soil, it temporarily stops earthquakes and makes the land fertile in a small zone.

// #char:--
// "Maybe one day we'll be able to afford one!", your father concludes, in a hopeful tone.

// * [FRUSTRATED>>]
//     #char:--
//     How long would that take, though? Terraformers are too few and expensive for a family of <>

//     {
//         - g_family == "Miner":
//             miners!

//         - g_family == "Scavenger":
//             scavengers!

//         - g_family == "Mercenary":
//             mercenaries!
//     }

//     #char:--
//     Your sisters are silent, eating their food. Maybe they had this same conversation once.

// * [SAD>>]
//     #char:--
//     You can't help but worry, though. Life as a <>

//     {
//         - g_family == "Miner":
//             miner <>

//         - g_family == "Scavenger":
//             scavenger <>

//         - g_family == "Mercenary":
//             mercenary <>
//     }

//     is hard and unforgiving.
    
//     #char:--
//     You don't want your family to succumb to the Surface like you've seen so many others do.

// {
//     - g_interest=="Engineering":
//         Machines <>

//     - g_interest=="Piloting":
//         vehicles <>

//     - g_interest=="Foraging":
//         herbs <>
// }

// ~ AdvanceIntro()


    // {
    //         - g_interest == "Engineering":
    //             discovering the machines that power the Skies - <>

    //         - g_interest == "Piloting":
    //             flying throughout the Skies - <>

    //         - g_interest == "Foraging":
    //             discovering rare ingredients around the Skies - <>
    // }