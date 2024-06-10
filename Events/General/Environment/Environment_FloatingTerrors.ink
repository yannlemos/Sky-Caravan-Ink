===E_Environment_FloatingTerrors===

#scope: General
#category: M4_General2
#tier: Rookie, Intermediate, Expert
#intensity: Medium
#location: Floating Ocean

#char:Kleber_happy_neutral|L
Y'ALL, COME HERE! {Emotion("Outer", "white")}

#char:Kleber_happy_neutral|L
<wave>CHECK THIS OUT!</wave>

#char:--
You go to the bridge and find your pilot with sparkling eyes, his stare fixed on the windows.

#char:Kleber_neutral_angry|L
<wave>GIANT FLOATING TERRORS!</wave> How cool are they, huh? {Emotion("Outer", "white")}

#char:Barto_neutral_neutral|R
Been a while since I saw those. 

#char:Jackie_happy_neutral|L
They usually don't go too far from the Floating Ocean, but windstorms can carry them all the way to the skyways.

#char:Jackie_happy_angry|L
And this seems to be a fairly common occurence, because they evolved to absorb oxygen even outside water! {Emotion("Outer", "white")}

#char:Jackie_happy_neutral|L
They're so intriguing... Grandma told me a lot about them.

#char:--
You take a closer look and notice a swarm of marine creatures shaped similarly to jellyfish.

#char:--
The biggest difference between the two is the huge length of floating terror's thin tentacles, forming a perilous curtain.

#char:Jackie_happy_neutral|L
They're beautiful, aren't they? 

#char:Kleber_happy_angry|R
<wave>Ohooo, time for a challenge!</wave>

#char:Kleber_happy_angry|R
LET'S FLY THROUGH THE SWARM! {Emotion("Outer", "white")}

#char:Jackie_angry_neutral|L
WAIT, WHAT? <shake>These things can be deadly, Kleber!</shake> {Emotion("Outer", "red")}

#char:Barto_neutral_neutral|R
They indeed are. We don't have to avoid them completely, though...  

#char:Barto_neutral_neutral|R
Their tentacles are the most dangerous part. 

#char:Barto_neutral_angry|R
So what if we fly <i>above</i> their heads and try to snatch one with the ship's clamshell? 

#char:Barto_happy_sad|R
Ahhh... Cooking their meat would be an adventure in its own... {Emotion("Outer", "white")}

#char:Jackie_neutral_neutral|L
Stop daydreaming, Barto. I think we should play safe this time. 

#char:Jackie_neutral_neutral|L
I agree it's best if we fly above the terrors... but no stop for hunting, please.

    +[KLEBER>M_F>]

        #log: Flew through a swarm of Floating Terrors.

        #char:--
        You decide to let the pilot guide you. 
        
        #char:--
        It might be a dangerous choice, sure, but the biggest excitements of caravan life come from taking risks.

        ~g_affinity_Kleber += 10

        { shuffle: 


            -   Kleber makes 41-Biz descend until it reaches the same height as the creatures' tentacles. 

                #char:Kleber_happy_angry|L
                <wave>ALL RIGHT, HERE WE GO!</wave> {Emotion("Outer", "white")}

                #char:--
                You fly through the swarm, your ship going around the tentacles in a zig zag motion, as if it was piercing through colorful veils.

                #char:--
                It's a beautiful, chilling view.

                #char:Kleber_happy_happy|L
                How you like that? <wave>WOOOO!</wave>

                #char:Jackie_neutral_neutral|R
                It's... fascinating, for sure. But please, take care! 

                #char:--
                Barto is sitting, visibly tense. 

                #char:Barto_neutral_angry|L
                <shake>You better dodge them all, Kl-</shake> {Emotion("Inner", "Blue")}

                #char:--
                Barto couldn't even finish his words when a massive tentacle hits your ship.

                #char:Barto_angry_angry|L
                <i>Of course</i> you had to startle them... {Emotion("Outer", "red")} {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

                #char:Kleber_neutral_happy|R
                I-I got this, don't worry!

                #char:--
                Kleber spends a while trying to unravel 41-Biz from the creature's multiple arms, until you finally reach a safe spot.

                ~g_fuel -= 20

                #char:Kleber_sad_sad|R
                I'm sorry, Captain. I'll do better next time. {Emotion("Inner", "Blue")}

                #char:--
                You go back to the road, an uncomfortable feeling in the air.

                ~g_morale -= 10

    
            -  Kleber makes 41-Biz descend until it reaches the same height as the creatures' tentacles. 

                #char:Kleber_happy_angry|L
                <wave>ALL RIGHT, HERE WE GO!</wave> {Emotion("Outer", "white")}

                #char:--
                You fly through the swarm, your ship going around the tentacles in a zig zag motion, as if it was piercing through colorful veils.

                #char:--
                It's a beautiful, chilling view.

                #char:Kleber_happy_happy|L
                How you like that? <wave>WOOOO!</wave>

                #char:Jackie_neutral_neutral|R
                It's... fascinating, for sure. But please, take care! 

                #char:--
                Barto is sitting, visibly tense. 

                #char:Barto_neutral_angry|L
                <shake>You better dodge them all, Kleber...</shake> {Emotion("Inner", "Blue")}

                #char:--
                Suddenly, there are no more Floating Terrors. You made it without a scratch.

                #char:Kleber_happy_neutral|R
                Told ya it was going to be fun! {Emotion("Outer", "white")}
                
                #char:Kleber_happy_neutral|R
                That's why you should always listen to me!

                #char:--
                Your crew feels energized. Your pilot might be reckless, sure, but you're in good hands.
                
                ~g_morale += 30
        
        }

    -> EVENT_END

    +[BARTO>S_T>]

        #char:--
        You go with Barto's idea. It's less risky than Kleber's, but you still get some excitement from hunting.

        ~g_affinity_Barto += 10

        { shuffle: 
    
            - You fly above the swarm of Floating Terrors, their heads making a mosaic of hypnotizing vibrant colors — a reminder of how deadly their poison can be.
                
                #char:--
                You signal Jackie to get the grab's controller.

                #char:Jackie_sad_neutral|L
                I don't have a good feeling about this... {Emotion("Inner", "Blue")}

                #char:Barto_happy_happy|R
                Don't worry, Miss. I'm sure you'll feel great as soon as you try my Terror delicacies. {Emotion("Outer", "white")}
                
                #char:Jackie_neutral_neutral|L
                ...Ugh, fine. Let's go. 

                #char:--
                The mechanic starts lowering the clamshell until it reaches the head of one of the creatures. 

                #char:--
                Just as she manages to grab it, you notice that part of the swarm is raising towards 41-Biz.

                #char:Jackie_sad_angry|L
                Uh, Kleber... you better get us away from here. <shake>QUICK</shake>. {Emotion("Inner", "Blue")}

                #char:Kleber_neutral_happy|R
                Noted!

                #char:--
                Kleber pedals to the metal before the Terrors manage to reach the ship.

                #char:--
                You scape from the swarm, hearts still pounding.

                #char:Barto_happy_happy|L
                Well... I guess I'll start preparing the skewers. {Emotion("Outer", "white")}

                #log: Hunted a Floating Terror for lunch.

                ~g_supplies += 30

            - You fly above the swarm of Floating Terrors, their heads making a mosaic of hypnotizing vibrant colors — a reminder of how deadly their poison can be.

                #char:--
                You signal Jackie to lower the grab.

                #char:Jackie_sad_neutral|L
                I don't have a good feeling about this... {Emotion("Inner", "Blue")}

                #char:Barto_happy_happy|R
                Don't worry, Miss. I'm sure you'll feel great as soon as you try my Terror delicacies. {Emotion("Outer", "white")}
                
                #char:Jackie_neutral_neutral|L
                ...Ugh, fine. Let's go. 

                #char:--
                The mechanic starts lowering the clamshell until it reaches the head of one of the creatures. 

                #char:--
                Just as she's about to grab one, you notice that part of the swarm is raising towards 41-Biz.

                #char:--
                The biggest Terror raises it's tentacles and violently hits the sides of your ship.

                #log: Got hit while trying to hunt a Floating Terror.

                #char:Jackie_sad_angry|L
                Uh, Kleber... you better get us away from here. <shake>QUICK</shake>. {Emotion("Inner", "Blue")} {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

                #char:Kleber_neutral_happy|R
                Noted!

                #char:--
                When you reach a safe spot, Jackie assess the damages.

                #char:Jackie_sad_neutral|L
                Well, looks like our engine was partially damaged by the blow. {Emotion("Inner", "Blue")}

                #char:Jackie_sad_neutral|L
                We're gonna have to stop for a while until I finish the repairs...

                #char:--
                Better be more cautious next time. 
        
                ~g_time -= 1

        }

    -> EVENT_END

    +[JACKIE>>]

        #log: Flew above a swarm of Floating Terrors.

        #char:--
        You agree with Jackie. These creatures look threatening enough.

        ~g_affinity_Jackie += 10 

        #char:Barto_angry_angry|R
        Fine, but I don't want to hear you two complaining about always eating the same stuff again. {Emotion("Outer", "red")}

        ~g_affinity_Barto -= 10

        #char:Kleber_neutral_neutral|L
        Tsk. Live a little, would you? 

        ~g_affinity_Kleber -= 10

        #char:--
        You fly above the swarm, their heads making a mosaic of hypnotizing vibrant colors — a reminder of how deadly their poison can be.
        
        #char:Kleber_sad_neutral|L
        Look how cool these things are... What a missed opportunity. {Emotion("Inner", "Blue")}

    -> EVENT_END

//WRITE LOGS
