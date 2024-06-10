===E_Mission_Rookie_CrystalsOfBygoneTimes===

#tier: Rookie
#scope: Mission

VAR firstEncounterAction = ""
VAR originalFuel = 0
VAR originalSupplies = 0
VAR originalTime = 0

VAR originalMorale = 0
VAR originalGrana = 0

VAR originalAffinityBarto = 0
VAR originalAffinityJackie = 0
VAR originalAffinityKleber = 0

VAR paidExpertCaravan = ""
VAR expertCaravanHit = false
VAR hurtInPorradaria = 0

VAR azureGuardsDirection = 0
VAR crystalsChaseDirection = ""

VAR savedHoracio = false

~ temp storyDirection = -> part1

{
    - part3 > 0:
        ~ storyDirection = -> part4
    - part2 > 0:
        ~ storyDirection = -> part3
    - part1 > 0:
        ~ storyDirection = -> part2
}

-> storyDirection

= part1

#location: Skyways

~ g_time = g_deadline_M4
~ g_timeLimit = g_deadline_M4

~ originalFuel = g_fuel
~ originalSupplies = g_supplies
~ originalTime = g_time

#char:--
Your new cargo is surely intriguing.

#char:--
You don't know exactly what these crystals are. It might be worth asking your client about them.

#char:--
Just as the thought comes to you, you receive their call.

#char:Horacio_fear_hologram|L 
<size=22>Erm, h-hello. Is this the caravan I commissioned?</size> {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")} {PlayMusic("SupplyManager")}

#char:Jackie_surprised_angry|R
Huh, what? Sorry sir, we couldn't hear you.

#char:Horacio_fear_hologram|L
<wiggle>S-sorry</wiggle>, just a second.

#char:--
The turtle takes some time to get back. {PlaySFX("Hit2")} {PlaySFX("Door")} {PlaySFX("Hit1")}

#char:Barto_surprised_angry|R
Suspicious start, if I may say. {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

#char:--
When he comes back, his voice is quite muffled.

#char:Horacio_happy_hologram|L
H-hello caravaneers! {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

#char:Horacio_neutral_hologram|L    
My name is Horacio. I am a scientist working for the Azure Provisional Government.

#char:Horacio_fear_hologram|L
Sorry for the... connection issues.  {Emotion("Spiral", "0a4de8")} {PlaySFX("Funny1")}

#char:Horacio_neutral_hologram|L
We've recently ordered a shipment of Angra Crystals to be used in our research.

#char:Horacio_neutral_hologram|L
All you need to do is bring the crystals to the factory I work in, inside the capital of Azure.

#char:Horacio_neutral_hologram|L
You will have five days for the delivery. Any questions?

+ [HORACIO¬Ask about his occupation.>>]

    #char:--
    You ask Horacio about his job in Azure.

    #char:Horacio_neutral_hologram|L
    Well, as you may know, Azure is a city living in harmony with the Floating Ocean around it.

    #char:Horacio_sad_hologram|L
    Or... at least it was, back in my time. Before they took over—

    #char:Horacio_fear_hologram|L
    <shake>A—aah!</shake> My apologies. {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}
    
    #char:Horacio_neutral_hologram|L
    Just... Forget I said anything, yes?

    #char:Kleber_surprised_angry|R
    Huh, friend, I know we're real far away, but, like<waitfor=1>, do you want a water or something?

    #char:Horacio_happy_hologram|L
    Ah, what a kind young man.

    #char:Horacio_fear_hologram|L
    ...I think I do, actually.

+ [CARGO¬Request more information about the Angra Crystals.>>]

    #char:--
    You ask Horacio about the crystals you're transporting for him.

    #char:Horacio_neutral_hologram|L
    Well, Angra Crystals are used for energy here in Azure.

    #char:Horacio_neutral_hologram|L
    Specifically, I'm researching how to better use that energy.

    #char:Horacio_happy_hologram|L
    That is all I can say, though. Government confidential information, you understand.

-   #char:Horacio_fear_hologram|L
    W—well, in any case, be careful with my crystals, yes? They're fragile.

    #char:Horacio_neutral_hologram|L
    Oh, and if you have any trouble at the border, just mention my name or call me.

    #char:Horacio_neutral_hologram|L
    The guards should let you through. 

    #char:Horacio_fear_hologram|L
    ...

    #char:Horacio_fear_hologram|L
    Please, take care. I really—We really need this shipment.

    #char:Horacio_neutral_hologram|L
    Safe travels, caravaneers. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} {StopMusic()}

    #char:--
    So ends the fastest client call of your short caravaneering career. {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

    // #char:--
    // Well, a bunch of crystals for a provisional government? With a client as scared as this? 

    // #char:--
    // At least they can't <>

    // {shuffle:

    //     - walk around the vents and eat your food.

    //     - make you hallucinate or try to kill you. Maybe.
    // }

    #char:Kleber_sad_sad|R
    Didn't dig the vibe, honestly. Azure used to be a paradise some time ago, but now... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    #char:Barto_sad_angry|L
    I also hear terrible stories about the dictatorship that rules it now.

    #char:Jackie_surprised_angry|R
    They call it "provisional", but it's been like what, almost ten years since the coup?  {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

    #char:--
    Maybe you should ask someone further about the Floating Ocean and Azure.

    + [BARTO¬Ask what Barto thinks of Azure.>>]

        #char:Barto_neutral_neutral|L
        Azure is beautiful, Captain. 
        
        //AFFINITY PASS:

        { 
            - g_affinity_Barto >= 5:

            #char:Barto_happy_happy|L
            I think you will love it there.
            
            #char:Barto_surprised_sad|L
            The view, of course. Not the guards.
        
        }


        ~ g_affinity_Barto += g_affinityChangeLow

        {shuffle:
            -
                #char:Barto_happy_sad|L
                The city was built to coexist peacefully with the aquatic fauna and flora around it.

                #char:Barto_happy_happy|L
                <wave>And what fauna!</wave> The God Whale, all of those different species of fish... {Emotion("Heart", "ea2929")} {PlaySFX("Love2")}

                #char:Barto_happy_angry|L
                I hope you like seafood, Captain. Not stocking up on it would be a waste.
            -
                #char:Barto_neutral_angry|L
                Oh, and don't worry, Azure might be in the Floating Ocean, but the city itself is built in a pocket of air.

                #char:Barto_happy_sad|L
                Do not be too surprised to see some inhabitants who are adapted to swim, though.

                #char:Barto_happy_sad|L
                It <i>is</i> a daily part of their lives, after all.
            -
                #char:Barto_neutral_neutral|L
                I suggest we travel with caution, though. 
                
                #char:Barto_surprised_neutral|L
                The Floating Ocean can get quite dark at night, and there are predators bigger than the 41-Bis itself. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

                #char:Barto_surprised_neutral|L
                We do not want to wander into their lairs by accident.

                #char:Barto_neutral_angry|L
                At the very least, I am glad our client is a... <i>regular</i> aquatic animal.
        }

        #char:Barto_neutral_neutral|L
        ...Anyway. Our deadline is a bit longer than last time, but we should not delay regardless.

    + [JACKIE¬Ask what Jackie thinks of Azure.>>]

        #char:Jackie_happy_angry|R
        Well, Azure — the Floating Ocean, really — is kind of an odd place.

        ~ g_affinity_Jackie += g_affinityChangeLow

        {shuffle:
            -
                #char:Jackie_neutral_sad|R
                For one, these Angra Crystals we're carrying? They're a discontinued energy source in most places.

                #char:Jackie_neutral_sad|R
                Azure is pretty much the only city that still uses them extensively.

                #char:Jackie_surprised_happy|R
                Angra Crystals are unreliable. Their energy disperses quickly, meaning you need a ton to power a ship, let alone a city! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer1")}

                #char:Jackie_surprised_sad|R
                Grandma told me they also don't work well with digital equipment or displays, for some reason.
            -
                #char:Jackie_surprised_happy|R
                I know they built the city in <wave>huuuuge</wave> pockets of air!

                #char:Jackie_happy_happy|R
                I can't help admiring their work! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

                #char:Jackie_surprised_neutral|R
                Oh, and there's more — apparently, the ships they use have <i>organic</i> parts!

                #char:Jackie_sad_sad|R
                Shame the government keeps such a tight lid on their tech. And their citizens. I'd love to take a look at their blueprints...
            -
                #char:Jackie_surprised_neutral|R
                I know that at some point we're going inside the Ocean itself. We have to, if we want to reach Azure.

                #char:Jackie_sad_sad|R
                But I really, really hope we don't have to deal with water infiltration.

                #char:Jackie_sad_sad|R
                We should be safe, because this problem was solved way before the 41-Bis was even designed, but still...

                //AFFINITY PASS:

                { 
                    - g_affinity_Jackie >= 5:
                    #char:Jackie_surprised_happy|R
                    Oh! Uh, sorry, Captain. Didn't mean to worry you, just thinking out loud. {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny2")}
                
                }

        }

        #char:Jackie_neutral_neutral|R
        Anyway, systems are A-OK! Let's just hope the Floating Ocean's weather is, too.

    + [KLEBER¬Ask what Kleber thinks of Azure.>>]

        #char:Kleber_neutral_neutral|L
        Y'know, the Floating Ocean is really pretty.

        ~ g_affinity_Kleber += g_affinityChangeLow

        {shuffle:
            -
                #char:Kleber_surprised_neutral|L
                Only issue is them military folks.

                #char:Kleber_surprised_sad|L
                As Jackie said, they call themselves that, but they took over the city almost a <i>decade</i> ago.

                #char:Kleber_fear_neutral|L
                Since then, it's become harder to get in <i>and</i> out of the city. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

                #char:Kleber_surprised_sad|L
                Seriously, you have no idea how lucky we are to have a client working <i>in</i> the government. Less red tape.
            -
                #char:Kleber_happy_happy|L
                Meaning... it feels great to travel at top speed! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

                #char:Kleber_happy_neutral|L
                In fact, years ago, Azure was part of a well-known racing circuit!

                #char:Kleber_angry_neutral|L
                Not anymore, though. You can thank their <i>provisional government</i> for that.
            -
                #char:Kleber_neutral_sad|L
                There isn't a lot for someone like me to do in Azure, though.

                #char:Kleber_surprised_sad|L
                Strict ship speed laws, bar regulation laws... and no gambling <shake>at all</shake>! Can you imagine that?

                #char:Kleber_happy_neutral|L
                Fish dishes are pretty cheap though, but you can only eat so much seafood before you get sea<i>sick</i>.
        }

        #char:Kleber_neutral_happy|L
        Still, I'm glad we're heading somewhere different! Flying among new sights is good against boredom.

    -   #char:--
        Nodding in agreement, you get ready to set the course and go.

        ~ FadeTo("black", 1, 0.5)

        #char:--
        It takes just a minute for things to start going south.

        #char:Kleber_angry_angry|L
        <shake>CAP!</shake> We've got a problem! {Emotion("Explosion", "FFFFFF")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Door")} {PlayMusic("Tension")}

        #char:--
        He points north, towards the horizon. Another ship is coming <shake>directly</shake> towards the 41-Bis!
        
        #char:--
        Or rather, towards the Capy-Bar. You just happen to be in the way. 
        
        #char:--
        And they don't seem to care very much.

        #char:--
        The ship is twice the 41-Bis' size, covered in neon decals and stickers. The frontal paint has been scratched in a few places.

        #char:Jackie_fear_angry|R
        Can't they see we're exiting the Capy-Bar zone? {Emotion("WaveIn", "0a4de8")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Woosh")}

        #char:Jackie_fear_angry|R
        Quick! We have to dodge them!

        // #char:Barto_fear_sad|R
        // If we swerve too violently w, we could crash!

        // #char:Barto_fear_sad|R
        // Let us stop on our tracks and wait for them to move past us!

        #char:Kleber_angry_happy|L
        If anyone should move out of the way, it's them! Let's fire a <shake>warning shot!</shake>

        // // {
        //     - g_supplies > 30:
                #char:Barto_angry_angry|L
                Fire at another Caravan, next to a Capy-Bar? <shake>Are you mad, Kleber!?</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")} {PlaySFX("Hit2")}

        //     - else:
        //         #char:Kleber_fear_angry|L
        //         <shake>...CRAP!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit2")}
                
        //         #char:Kleber_fear_angry|L
        //         We don't have enough ammo to fire!

        //         #char:Kleber_angry_neutral|L
        //         Forget it. What do you say, Cap?
        // }

        #char:Jackie_fear_angry|R
        Captain, just decide already! {Emotion("Explosion", "ffb71b")} {PlaySFX("Hit1")} {Blink("Big Face", 0.5, -1, "white")} {PlaySFX("Hit1")}

        + [JACKIE¬Dodge, or you're gonna crash!>M_S>]->expert_caravan_dodge

        + [KLEBER¬Fire to get them out of the way!>S_T>]->expert_caravan_shoot


= expert_caravan_dodge

            #char:--
            Jackie is right. Dodging is the safest way to handle this.

            ~ g_affinity_Jackie += g_affinityChangeHigh
            ~ g_affinity_Kleber -= g_affinityChangeHigh

            #char:--
            You yell at Kleber to make the maneuver.

            ~ firstEncounterAction = "Dodge"

            //AFFINITY PASS
            {
                - g_affinity_Kleber >= 25:
                    #char:Kleber_surprised_angry|L
                    You're not gonna have our back!? Let them trample us like that!? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                - g_affinity_Kleber < 25 && g_affinity_Kleber >= 0:
                    #char:Kleber_surprised_angry|L
                    <shake>Seriously, Cap!?</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                - g_affinity_Kleber < 0 && g_affinity_Kleber >= -25:
                    #char:Kleber_angry_angry|L
                    Should have known you'd chicken out! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                - else:
                    #char:Kleber_angry_angry|L
                    What, think my aim is untrustworthy too? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
            }

            #char:--
            He grunts and turns to the left, tilting the whole ship— 

            ~ ScreenFlash("white", -1)

            #char:--
            They graze the side of the 41-Bis! {Shake("All", 1, -1)} {Blink("All", 1, -1, "white")} {UniqueEffectActivate("41BisDamage")} {StopMusic()} {PlaySFX("SmallDamage")}

            #char:Kleber_angry_happy|L
            What did I say? <shake>These jerks are showing off!</shake>

            #char:Jackie_angry_happy|R
            That surely did a number on the ship's side! I'm gonna go check it ASAP. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

            ~ FadeTo("black", 1, -1)

            #char:Jackie_sad_angry|R
            So, nothing's too damaged. Just our pride, I guess. I'll have to solder some plates back.

            ~ g_supplies -= g_statChangeLow
            ~ g_morale -= g_statChangeLow

            #char:Barto_surprised_angry|R
            That was <shake>too</shake> close. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

            ~ g_affinity_Barto_Kleber -= g_affinityChangeLow
            ~ g_affinity_Kleber_Barto -= g_affinityChangeLow

            #char:Barto_angry_angry|R
            I'm sure we're better off than if we had shot them, Kleber. 

            #char:Kleber_angry_neutral|L
            Tsk. We can't let other caravaneers push us around like that.

            #char:Barto_neutral_angry|R
            Can't we report them to the C.C.A.?

            #char:Jackie_sad_sad|L
            That's not how it works Barto. Any problems between caravans, the capybaras don't intervene.

            #char:--
            These capybaras really take "chilling" way too seriously.

            // #char:Barto_neutral_angry|R
            // We will not know unless we try.

            // #char:--
            // It takes a few moments to contact the Capybarman from the outpost you just left.

            // #char:Capybarman_neutral_hologram|L
            // Morning, caravaneers. Any issues with the delivery? {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

            // #char:--
            // You briefly explain the situation.

            // #char:Capybarman_neutral_hologram|L
            // Ah, yes. I know the ones. 
            
            // #char:Capybarman_neutral_hologram|L
            // Sadly, there isn't a whole lot I can do.

            // #char:Jackie_surprised_sad|R
            // What!? But they've just put another crew in danger!

            // #char:Capybarman_neutral_hologram|L
            // Yeah, but they're veteran caravaneers with a lot of jobs under their belts.

            // #char:Capybarman_neutral_hologram|L
            // The higher ups... let's say they don't like interfering in disputes between caravans.

            // #char:Capybarman_neutral_hologram|L
            // At least, not unless ships or cargo get busted. Sorry.

            // {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

            // #char:Jackie_angry_happy|R
            // I can't believe this! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

            // #char:Kleber_angry_neutral|L
            // Told you. Spent enough time working as a pilot to know how these things go.

            // #char:Barto_angry_neutral|R
            // This is outrageous. {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

            // ~ g_morale -= g_statChangeMid

            // {
            //     - g_affinity_Kleber < 0:
            //         #char:Kleber_angry_neutral|L
            //         And that's <i>why</i> I told you this wouldn't amount to anything, Cap. 
                    
            //         #char:Kleber_angry_neutral|L
            //         You should have listened to me.
            // }

-> crystals_part1_end



// = expert_caravan_insist

//             #char:--
//             You agree with Barto. Best to just let them move past you on their own.

//             ~ g_affinity_Barto += 10

//             ~ firstEncounterAction = "Insist"

//             #char:Jackie_fear_happy|R
//             {g_name}, are you serious!? What if they don't dodge in time!? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

//             ~ g_affinity_Jackie -= 10
//             ~ g_affinity_Jackie_Barto -= 10

//             #char:Kleber_angry_angry|L
//             They would if we'd shown them our guns! {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

//             ~ g_affinity_Kleber -= 10
//             ~ g_affinity_Kleber_Barto -= 10

//             #char:Barto_angry_angry|R
//             No need! Just stay still, for once! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit2")}

//             #char:--
//             Kleber complies with a grumble. You stop in place, stabilized by your sails.
            
//             #char:--
//             The other ship does turn.
            
//             #char:--
//             Not without skimming your left side, rocking the 41-Bis. {Shake("All", 3, -1)} {PlaySFX("SmallDamage")}

//             #char:Kleber_angry_angry|L
//             I told you they needed a warning shot! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

//             #char:Barto_surprised_sad|R
//             <shake>My supplies!</shake> I just heard something break! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

//             #char:--
//             Barto leaves the room and returns a moment later with a despondent look.

//             #char:Barto_sad_sad|R
//             ...{g_name}, some of our food containers either spilled or broke. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

//             ~ g_supplies -= g_statChangeMid

//             #char:Jackie_sad_angry|L
//             We're lucky they didn't break our thrusters or sails! A bunch of jars aren't worth more than us! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

//             #char:Barto_sad_sad|R
//             I—I know. Apologies. I was just trying to avoid any direct confrontation.

//             #char:Kleber_happy_sad|L
//             Couldn't you save something? Like... five second rule? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

//             #char:Barto_angry_angry|R
//             <i>Five second rule?</i> A respectable chef would never do that. {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny2")}

//             #char:Barto_angry_angry|R
//             I am not risking getting us sick.

//             {
//                 - g_affinity_Kleber < 0:
//                     #char:Kleber_sad_sad|L
//                     (Sigh)... maybe if we had shot at them instead... {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}
//             }

-> crystals_part1_end



= expert_caravan_shoot

            #char:--
            Kleber has a point. Can't let other caravans think they can do whatever they want.

            ~ g_affinity_Kleber += g_affinityChangeHigh

            #char:--
            You pick up the ammo and prepare for a warning shot, making sure not to aim directly at them.

            ~ firstEncounterAction = "Shoot"

            //AFFINITY PASS
            {
                - g_affinity_Barto >= 25:
                    #char:Barto_surprised_angry|L
                    Please, let us solve this more diplomatically! As you normally do! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

                - g_affinity_Barto < 25 && g_affinity_Barto >= 0:
                    #char:Barto_fear_sad|L
                    <shake>C-Captain!</shake> That is a bad idea! {Emotion("WaveIn", "2c2b30")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Bad1")}

                - g_affinity_Barto < 0 && g_affinity_Barto >= -25:
                    #char:Barto_angry_sad|L
                    Why!? Do you care that little about our safety!? {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

                - else:
                    #char:Barto_angry_angry|L
                    If we end up dead because they return fire with prejudice, it will be on you, {g_name}! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
            }

            ~ g_affinity_Barto -= g_affinityChangeHigh
            ~ g_affinity_Barto_Kleber -= g_affinityChangeHigh

            //AFFINITY PASS
            {
                - g_affinity_Jackie >= 25:
                    #char:Jackie_fear_sad|R
                    This is no way to act! I know you're a better Captain than this! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

                - g_affinity_Jackie < 25 && g_affinity_Jackie >= 0:
                    #char:Jackie_fear_angry|R
                    If they take this as a sign of agression, we're done for! {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit2")}

                - g_affinity_Jackie < 0 && g_affinity_Jackie >= -50:
                    #char:Jackie_angry_sad|R
                    If they blow any holes in our ship, you two are helping me fix them! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                - else:
                    #char:Jackie_angry_angry|R
                    Looks like you still don't really understand what it means to be a Captain, huh? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
            }

            ~ g_affinity_Jackie -= g_affinityChangeHigh
            ~ g_affinity_Jackie_Kleber -= g_affinityChangeHigh

            #char:Kleber_neutral_happy|L
            Don't worry, we're just asserting ourselves!

            #char:Barto_angry_angry|L
            <shake>That's</shake> the problem, Kleber!  {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.5)} {PlaySFX("StrongWoosh")}

            #char:--
            The shot is aimed—

            ~ g_supplies -= g_statChangeShot

            #char:--
            It's fired! The cannon zooms right beside their ship. {Emotion("WaveOut", "ea2929")} {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} {StopMusic()}
            
            #char:--
            They start changing direction! Looks like the warning was effective. 
            
            #char:Kleber_neutral_happy|L
            See? Sometimes you gotta look in the eyes of fear and— {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            ~ ScreenFlash("white", -1)

            #char:Kleber_fear_happy|L
            !... {Shake("All", 3, -1)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {Blink("All", 1, -1, "white")}

            ~ g_fuel -= g_affinityChangeLow

            #char:Kleber_happy_angry|L
            Ok, wasn't exactly prepared for them to fire back. {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny1")}

            #char:--
            Barto lies flat on the ground, while Jackie steps over him to assess the damages.

            #char:Jackie_angry_angry|R
            Great! They've left a huge hole in our hull. <shake>Awesome</shake> idea, Kleber! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")} {Shake("Big Face", 0.7, 0.3)}
            
            #char:Jackie_sad_sad|R
            We've lost some fuel. {g_name}, we'll have to stop for a day and fix it before it all leaks out.

            // {
            //     - g_affinity_Barto < 0:
            //         #char:Barto_angry_sad|R
            //         ...Let us be thankful none of us got hurt. And pray that it doesn't happen again.
            // }

-> crystals_part1_end


= crystals_part1_end

#char:--
The other ship just sails past like nothing happened.

#char:--
You all move on with the journey, everyone still fuming over what happened.

{
    - firstEncounterAction == "Dodge":
        #char:--
        At least nobody was wounded. Just the 41-Bis. Poor old ship.

    // - firstEncounterAction == "Insist":
    //     #char:--
    //     Looks like you might have to keep an eye on the pantry's stock.

    - firstEncounterAction == "Shoot":
        #char:--
        The little delay for fixing the tank doesn't help either. //You spend a full day so everything's back to 100%.

        //~ g_timeChange = 2
}

-> EVENT_END

= part2

#location: Skyways

#char:--
You should be arriving at the Floating Ocean within the day.

~ originalFuel = g_fuel
~ originalSupplies = g_supplies
~ originalMorale = g_morale

~ originalGrana = g_grana

~ originalAffinityBarto = g_affinity_Barto
~ originalAffinityJackie = g_affinity_Jackie
~ originalAffinityKleber = g_affinity_Kleber

// ~ g_affinity_Barto = 0
// ~ g_affinity_Jackie = 0
// ~ g_affinity_Kleber = 0

#char:--
As you pass through the cockpit, you notice Kleber tense in his chair.

// #char:--
// The system panels are all glitching. //TODO UNIQUE EFFECT GLITCHING

#char:Kleber_surprised_sad|R
Uh, hey Cap. 

#char:Kleber_sad_angry|R
Something's up with the ship. I've— {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")} 

~ g_fuel = 1
~ g_supplies = 1
~ g_morale = 1

~ g_grana = 0

#char:Kleber_surprised_sad|R
...!

#char:Kleber_fear_angry|R 
<incr = 2>WE'RE GOING DOWN, CREW! BRACE YOURSELV—</incr> {PlaySFX("Hit2")} {PlaySFX("StrongWoosh")} {PlaySFX("Funny1")} {Shake("Big Face", 3, 0.3)} {Blink("Big Face", 1, -1, "white")}

#char:Jackie_angry_angry|L
Calm down, man, we're completely stable. There's something wrong with the panels, probably. {PlaySFX("Funny2")} {PlaySFX("LightWoosh")}

#char:Kleber_surprised_sad|R
<wiggle>Whew.</wiggle> 

#char:Kleber_surprised_neutral|R
In all my years of piloting, I've never seen something like that.

#char:--
At least this time the problem is with the ship instead of your heads.

// {
//     - g_affinity_Jackie > 25:
        #char:Jackie_happy_angry|L
        Don't worry! I've got this. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

//     - g_affinity_Jackie < 25 && g_affinity_Jackie >= 0:
//         #char:Jackie_neutral_happy|L
//         {g_name}, I wanted to talk to you before digging deeper for the problem.

//     - g_affinity_Jackie < 0:
//         #char:Jackie_neutral_neutral|L
//         I hope you listen to your crew's engineer this time around.
// }

#char:Jackie_neutral_angry|L
Here's the fix: I'm going to access the main control panel and reset it.

#char:Jackie_neutral_sad|L
It's right next to the cargo hold. Don't know why old ships have them all the way over here. 

#char:Jackie_happy_angry|L
Anyway. I should be done in a few minutes! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

~ FadeTo("black", 1, 1)

~ g_time = g_deadline_M4

~ g_fuel = originalFuel
~ g_supplies = originalSupplies
~ g_morale = originalMorale

~ g_grana = originalGrana

~ g_affinity_Barto = originalAffinityBarto
~ g_affinity_Jackie = originalAffinityJackie
~ g_affinity_Kleber = originalAffinityKleber

#char:Jackie_neutral_neutral|L
Okay, I think I'm done! Took less time than I imagined!

#char:--
Suddenly, your whole body is launched backwards!

#char:--
The whole ship rumbles. You and Jackie are thrown to the ground. {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")}

#char:--
Everyone is down on the floor from... whatever just happened!

#char:Kleber_fear_angry|R
Jackie, <shake>what the heck did you do?</shake>

#char:Jackie_fear_neutral|L
Nothing! I just fixed the control panel! {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit2")}

#char:--
Barto appears shortly after, panting.

#char:Barto_fear_neutral|R
W-we have a collision. The left side of the ship was hit. {Emotion("WaveIn", "0a4de8")}  {PlaySFX("Door")} {PlayMusic("SupplyManager")}

#char:Kleber_angry_angry|R
<shake>WHAT!?</shake> We weren't even moving!

#char:--
Going to the cockpit, you all see the cause of your predicament.

#char:--
A huge ship, twice your size, has collided with you.

#char:Kleber_surprised_angry|R
Hang on... I remember those tacky stickers!

#char:--
Just then, a communication comes through the terminal.

#char:--
"What do you idiots think you're <shake>doing</shake>!?" {PlaySFX("Transmission")}

#char:Kleber_angry_angry|R
What <i>we</i> were doing!? <shake>YOU</shake> just hit us, buddy! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

#char:--
"Yeah, because <shake>you</shake> were just standing there! What, you think your sail alone is going to take you somewhere?"

+ [FRUSTRATED¬You can't believe you're going through this again.>>]
    {
        - firstEncounterAction == "Dodge":
            #char:--
            You tell the other captain that you've already dodged their ship once. Is it so hard for them to do the same?

        // - firstEncounterAction == "Insist":
        //     #char:--
        //     You angrily tell them this is the second time they hit your ship.

        - firstEncounterAction == "Shoot":
            #char:--
            You tell them that chasing and hitting you for a single warning shot is quite petty.
    }

    #char:--
    "What? I've no idea what you're talking about!"

    #char:--
    "I for sure don't remember that piece of junk you call a ship!"

+ [TALK¬Explain that you had to stop for repairs.>>]

    #char:--
    You pointedly tell the other captain that you were having issues with the ship.

    #char:--
    "Then go back to the Capy-Bar!"

    #char:Kleber_angry_neutral|R
    And lose two days of travel? No way!

    #char:--
    "What do you mean, <i>two days?</i> The heck is wrong with you people!? Are you that incompetent?"

-   #char:--
    "Forget that! Thanks to this little crash you provoked, one of our tanks broke down and we lost fuel!"

    #char:--
    "I don't care how, but you better be ready to compensate us."
    
    #char:--
    "We were going to that Capy-Bar anyway, so let's land there and work things out." 
    
    #char:--
    "Don't even think about running!"

    #char:--
    Before you can ask what they mean, Barto interrupts.

    #char:Barto_surprised_angry|R
    ...When did we pass by that Capy-Bar over there?

    #char:--
    Sure enough, the ship's mapping systems indicate a Capy-Bar right behind you.

    #char:Kleber_surprised_sad|R
    Strange. I don't remember one being here.

    #char:Jackie_surprised_angry|R
    Let's stay on our toes. This could get ugly.

    ~ FadeTo("black", 1, 1)

    #char:--
    As you leave the 41-Bis, the other crew is already waiting for you.

    #char:--
    For such a big ship, the crew is really small - only six people.

    #char:--
    Their Captain is covered head to toe in a spiked bodysuit. Looks like a cactus wearing a gas mask.

    #char:--
    "Well, then. That little crap of yours tore a hole in our tank."

    #char:--
    "Either pay for repairs or give some of your fuel to replace the amount we lost."

    #char:--
    You grimace. Given they have a bigger tank, that probably won't be a small amount.

    #char:--
    Kleber then comes close and whispers to you.

    #char:Kleber_neutral_neutral|R
    <wiggle>Psst.</wiggle> Hey, Cap. I was thinking about something. They're expecting the fuel in barrels, right?

    #char:Kleber_neutral_happy|R
    Well, why don't we fill them with something else instead? Like some soup with that crap canned food or something? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    #char:Barto_angry_sad|L
    <shake>Absolutely not!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

    #char:Kleber_angry_angry|R
    Shhhh! C'mon, chef, you want them to hear it?

    #char:Barto_angry_angry|L
    They will notice regardless! I will not let you use my food for such a ridiculous idea!

    #char:Kleber_angry_angry|R
    Well, we can ration food, but we aren't going anywhere without fuel!

    // #char:Kleber_neutral_happy|R
    // I'm sure we have some soup we can "share" with them!

    #char:--
    "Hey! What's the holdup? You better get our fuel or we're making you get it!"

    // #char:Jackie_surprised_neutral|L
    // Uh, Captain? I don't want to interrupt whatever you're talking about with those two, but...

    #char:Jackie_surprised_neutral|L
    If we delay much longer, things might come to blows.

    #char:--
    Looks like it's up to you. What's your course of action? 

    //TODO: Não é meio estranho eles não pedirem GRANA pros reparos (além do Fuel)?

    + (expert_caravan_gave_fuel) [FUEL¬Hand them a barrel of fuel.>F>]

        #char:--
        You tell them to get a barrel while you keep watch.

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_neutral_happy|L
                As always, your judgement is on point, {g_name}! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

            - g_affinity_Barto < 25 && g_affinity_Barto >= 0:
                #char:Barto_neutral_sad|L
                Thank you for being sensible, Captain. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

            - g_affinity_Barto < 0 && g_affinity_Barto >= -25:
                #char:Barto_sad_sad|L
                I know we do not always see eye-to-eye, but this time, I am glad we did. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

            - else:
                #char:Barto_surprised_sad|L
                Hm. For once, you are being sensible. Much appreciated. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}
        }

        ~ g_affinity_Barto += g_affinityChangeHigh

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 25:
                #char:Kleber_sad_neutral|L
                Cap, I respect you, but I think we'll regret this. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Kleber < 25 && g_affinity_Kleber >= 0:
                #char:Kleber_sad_sad|L
                Well, I guess for all your good calls, you're gonna make some bad ones, huh, Cap? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Kleber < 0 && g_affinity_Kleber >= -25:
                #char:Kleber_surprised_sad|R
                Huh. As a Surfacer, I guess you're still a little bit wet behind the ears. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            - else:
                #char:Kleber_angry_angry|L
                Well, don't blame the pilot if we run out of fuel because <i>you</i> chose to give it away! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        ~ g_affinity_Kleber -= g_affinityChangeHigh
        ~ g_affinity_Kleber_Barto -= g_affinityChangeHigh

        {
            - g_fuel < 30:
                #char:--
                The crew gets to work, but soon after, Barto comes to you.

                #char:Barto_surprised_sad|L
                Captain, we've got a problem.
                
                #char:Barto_sad_angry|L
                There's not enough fuel to give them <i>and</i> be able to continue our trip. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

                #char:--
                The other captain, overhearing your talk, becomes incensed.

                #char:--
                "You better be willing to pay us then! One thousand Grana, or else!"

                {
                    - g_grana >= 1000:
                        #char:--
                        A thousand!? That's a lot. And you're so close to paying your debt...
                        
                        #char:--
                        Still, if you don't pay, the other caravan could attack you. What now?

                        ++ [HANDSHAKE¬Pay the caravaneers.>>]
                            #char:--
                            You really don't want to put your crew in danger.

                            #char:--
                            Not next to a Capy-Bar and much less when you can prevent it.

                            #char:--
                            "Heh, good call, rookie. Better not mess with your seniors."

                            ~ g_grana -= g_granaChangeHigh
                            ~ paidExpertCaravan = "Money"

                            #char:--
                            You hand them the Grana and go back to the 41-Bis. {StopMusic()}

                            ~ FadeTo("black", 1, 1)

                        -> expert_caravan_paid_ending

                        ++ [FIGHT¬Get ready to fight.>>]
                            #char:--
                            No way. You're not giving these guys anything. {StopMusic()}

                            #char:--
                            "<shake>That does it!</shake> You're gonna regret this, rookies!"

                        -> expert_caravan_brawl

                    - else:
                        #char:--
                        You don't have a thousand Grana either. Maybe you should've made better use of your money. {StopMusic()}

                        #char:--
                        "So you can't pay <i>or</i> replenish the fuel you cost us!? <shake>That does it!</shake>"

                    -> expert_caravan_brawl
                }

            - else:
                #char:--
                The crew comes back soon after, carrying the fuel barrels.

                #char:--
                The other captain seems to be satisfied enough.

                #char:--
                "Good. Looks like you at least you have <i>some</i> common sense." {StopMusic()}

                ~ g_fuel -= g_statChangeMid
                ~ paidExpertCaravan = "Fuel"

                #char:--
                You give them the barrels and go back to the 41-Bis.

                ~ FadeTo("black", 1, 1)

            -> expert_caravan_paid_ending
        }

    + (expert_caravan_gave_supplies) [SUPPLIES¬Fill the barrel with fake fuel.>S>]

        #char:--
        You tell them to get some empty barrels and supplies.

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 25:
                #char:Kleber_happy_happy|R
                Will do! Thanks for the trust, as always, Cap! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

            - g_affinity_Kleber < 25 && g_affinity_Kleber >= 0:
                #char:Kleber_happy_sad|R
                Heh, guess our Surface Captain's knowledge matches up with mine! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

            - g_affinity_Kleber < 0 && g_affinity_Kleber >= -25:
                #char:Kleber_surprised_sad|R
                Oho! Someone's learning! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            - else:
                #char:Kleber_neutral_sad|R
                ...Thanks. You'll thank me later for this. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 
        }

        ~ g_affinity_Kleber += g_affinityChangeHigh

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_fear_angry|L
                W-well, I guess if it saves us... b-but please, refrain from doing this in the future!  {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 25 && g_affinity_Barto >= 0:
                #char:Barto_sad_sad|L
                I expected you, of all people, to respect my work... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 0 && g_affinity_Barto >= -25:
                #char:Barto_fear_sad|L
                You'll get us killed! Kleber is a <i>great</i> teacher at that. {Emotion("WaveIn", "2c2b30")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Bad1")}

            - else:
                #char:Barto_angry_angry|L
                Do not <shake>dare</shake> to make food requests to me after this. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        ~ g_affinity_Barto -= g_affinityChangeHigh
        ~ g_affinity_Barto_Kleber -= g_affinityChangeHigh

        {
            - g_supplies < 30:
                #char:--
                The crew gets to work, but soon after, Kleber comes to you.

                #char:Kleber_fear_angry|R
                Cap, bad news. We don't have enough supplies! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                #char:--
                The other captain, overhearing your talk, becomes incensed.

                #char:--
                "If you don't have fuel, better be willing to pay us! One thousand Grana, or else!"
                
                {
                    - g_grana >= 1000:
                        #char:--
                        A thousand!? That's a lot. And you're so close to paying your debt...
                        
                        #char:--
                        Still, if you don't pay, the other caravan could attack you. What now?

                        ++ [HANDSHAKE¬Pay the caravaneers.>>]
                            #char:--
                            You really don't want to put your crew in danger. {StopMusic()}

                            #char:--
                            Not next to a Capy-Bar and much less when you can prevent it.

                            #char:--
                            "Heh, good call, rookie. Better not mess with your seniors."

                            ~ g_grana -= g_granaChangeHigh
                            ~ paidExpertCaravan = "Money"

                            #char:--
                            You hand them the Grana and go back to the 41-Bis.

                            ~ FadeTo("black", 1, 1)

                        -> expert_caravan_paid_ending

                        ++ [FIGHT¬Get ready to fight.>>]
                            #char:--
                            No way. You're not giving these guys anything. {StopMusic()}

                            #char:--
                            "<shake>That does it!</shake> You're gonna regret this, rookies!"

                        -> expert_caravan_brawl

                    - else:
                        #char:--
                        You don't have a thousand Grana either. Maybe you should've made better use of your money. {StopMusic()}

                        #char:--
                        "So you can't pay <i>or</i> replenish the fuel you cost us!? <shake>That does it!</shake>" 

                    -> expert_caravan_brawl
                }

            - else:

                #char:--
                The crew comes back soon after, carrying the barrels. {StopMusic()}

                #char:--
                The other captain seems to be satisfied enough.

                #char:--
                "Good. Looks like you at least you have <i>some</i> common sense, rookie."

                ~ g_supplies -= g_statChangeMid

                #char:--
                You give them the barrels filled with fake fuel and go back to the 41-Bis.

                ~ FadeTo("black", 1, 1)

            -> expert_caravan_open_fire
        }

    + (expert_caravan_porrada) [FIGHT¬Get ready to fight.>M>]

        #char:--
        Before anyone can do anything about it, you dash towards the other captain and strike. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}  {StopMusic()}

        ~ ScreenFlash("red", -1)

        #char:--
        ...Ow. Looks like the spikes aren't just for show. 

        #char:Barto_fear_sad|L
        <shake>C-captain</shake>, what are you doing!? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")} {PlayMusic("AquarelaAction")}

        ~ g_affinity_Barto -= g_affinityChangeHigh

        #char:Kleber_happy_angry|R
        Well, I guess I can get behind that! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit1")}

        #char:Jackie_surprised_happy|L
        Well, a crew must have each other's back! Let's go! {Emotion("Explosion", "FFFFFF")} {PlaySFX("StrongWoosh")}

    -> expert_caravan_brawl



= expert_caravan_open_fire

{
    - expert_caravan_gave_fuel:
        #char:Barto_fear_sad|L
        I am truly glad that we managed to avoid conflict.

    - expert_caravan_gave_supplies:
        #char:Kleber_neutral_happy|R
        Alright, everyone. Get ready to make a quick getaway.

        #char:Kleber_neutral_neutral|R
        Our plan won't fool them forever.
}

#char:--
Just then, a communication comes through.

#char:--
<shake>"WHAT'S THE BIG IDEA, YOU IMBECILES!?"</shake> {PlaySFX("Transmission")}

#char:--
"Did you really think you could just fool us like that?" {Shake("All", 3, -1)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {Blink("All", 1, -1, "white")}

#char:--
A turret shot echoes, apparently grazing against the top of the 41-Bis' fuselage!

#char:Kleber_angry_angry|R
<shake>CRAP!</shake> That was fast! {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny2")}

#char:Jackie_angry_happy|L
Our turrets! We need to defend ourselves! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

{
    - g_supplies > 20:
        #char:--
        You can try to shoot back... or ask someone to do it.

        + (crystals_fired_shot) [SHOOT¬Handle the turret yourself.>S_F_M>]
            #char:--
            You get to the turret while Kleber prepares for liftoff.

            #char:--
            The other caravan has a similar idea and takes flight soon after.
            
            #char:--
            You circle each other close to the Capy-Bar, zigzagging to mess up the other's aim.

            #char:--
            You fire the turret when you think it's aligned with the enemy ship.  {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} {StopMusic()}

            ~ g_supplies -= g_statChangeShot

            {shuffle:
                -
                    #char:--
                    It hits one of their wings, smoke coming out of it in thick plumes. {PlaySFX("BigDamage")}

                    ~ g_morale += g_statChangeHigh
                    ~ expertCaravanHit = true

                -
                    #char:--
                    However, you miss. The shot grazes their cockpit and they tilt a little, but not much else.

                    #char:--
                    Immediately after, their own turret pierces your hull. {Shake("All", 3, -1)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {Blink("All", 1, -1, "white")}

                -
                    #char:--
                    It goes through the ship's stabilizer sail, tearing a hole in it.

                    ~ g_morale += g_statChangeHigh
                    ~ expertCaravanHit = true

                -
                    #char:--
                    Unfortunately, your aim is off and the shot only grazes the enemy caravan on the side.

                    #char:--
                    Immediately after, their own turret pierces your hull. {Shake("All", 3, -1)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {Blink("All", 1, -1, "white")}

                -
                    #char:--
                    It passes through their thrusters with a shrill noise. The veteran caravan loses altitude. {PlaySFX("BigDamage")}

                    ~ g_morale += g_statChangeHigh
                    ~ expertCaravanHit = true

                -
                    #char:--
                    Unfortunately, you're not that good with the turret, and your shot sails harmlessly into the sky below.

                    #char:--
                    Immediately after, their own turret pierces your hull. {Shake("All", 3, -1)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {Blink("All", 1, -1, "white")}

            }

        -> expert_caravan_after_you_shoot

        + [CREW¬Ask for a crewmember to shoot.>S>]
            #char:--
            Maybe someone else should do it. Someone you can trust.

            #char:--
            Kleber is currently readying the ship to flee, Jackie is taking a look at the damages from the collision and Barto...

            #char:--
            Well, Barto is free, but he's just your chef.

            #char:--
            Who should shoot the turret in your stead?

            ++ (barto_shot_crystals) [BARTO¬Choose Barto.>>]
                #char:--
                You request Barto to shoot, since he's not doing anything urgent.

                #char:Barto_fear_sad|L
                O-okay! {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

                ~ g_affinity_Barto -= g_affinityChangeMid

                #char:--
                You tell him to do it already and fire— the other caravan won't wait for you to prepare!

                #char:--
                Barto takes the turret controls... and promptly <i>freezes up</i>.

                { 
                    - E_Ship_Pelicannons.barto_shot_pelicannons:

                    #char:--
                    After he managed to get the guts from who knows where to shoot the Pelicannons, you thought he would be fine.

                    #char:--
                    Why is he freezing all of a sudden?
                
                }

                #char:--
                You try to snap him out of it, but it's no use. Soon after, an impact rocks the 41-Bis. {Shake("All", 3, -1)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {Blink("All", 1, -1, "white")}

                {
                    - expert_caravan_shoot:
                        #char:Kleber_angry_angry|R
                        Dammit, not again! How do they keep shooting our thrusters like that!? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

                    - else:
                        #char:Jackie_fear_angry|R
                        A thruster got hit! We need to land! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}
                }

                #char:--
                As you retreat to the Capy-Bar, you're taunted by the other caravan via the Network.

                #char:--
                ...Maybe asking Barto to man the turret might not have been your brightest moment.

            -> expert_caravan_shootout_ending

            ++ [JACKIE¬Choose Jackie.>>]
                #char:--
                You request Jackie to take the turret and stop the other ship in their tracks.

                #char:Jackie_happy_angry|L
                On it! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                ~ g_affinity_Jackie += g_affinityChangeMid

                #char:--
                As both ships lift off, Jackie puts the turret in position and waits.

                #char:Jackie_neutral_neutral|L
                Come on, just a bit higher...

                #char:--
                As soon as the ships align in the way she intended, Jackie pulls the trigger.  {Emotion("WaveOut", "ea2929")} {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} {StopMusic()}

                ~ g_supplies -= g_statChangeShot

                #char:--
                She manages to score a hit not on their sails, wings or engine, but on their <i>turret</i>. {PlaySFX("BigDamage")}

                #char:--
                You can hear Kleber laughing from the cockpit.

                #char:Kleber_happy_happy|L
                Nice, Jackie! Now <b>that's</b> what I'm talking about! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer2")}

                #char:--
                Without their main method of attack, they're too slow to catch up to you.

                #char:--
                It certainly doesn't stop <i>captain cactus</i> from angrily cursing at you via the Caravan Network, though.

                ~ FadeTo("black", 1, 1)

            -> expert_caravan_shootout_ending

            ++ [KLEBER¬Choose Kleber.>>]
                #char:--
                You request Kleber to do it while you take the helm for a bit.

                #char:Kleber_neutral_happy|R
                Uh, alright! It's been a while, but I'll do it!

                ~ g_affinity_Kleber += g_affinityChangeMid

                #char:Kleber_angry_angry|R
                At least I should be able to clip <i>something</i> of theirs! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                #char:--
                You manage to get the 41-Bis in the air. You can see the larger ship doing the same.

                #char:--
                A few seconds later, a shot rings out from your turret.  {Emotion("WaveOut", "ea2929")} {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} {StopMusic()}

                ~ g_supplies -= g_statChangeShot

                {shuffle:
                    -
                        #char:--
                        The loud noise that follows confirms that Kleber's shot hit its mark. {PlaySFX("BigDamage")}

                        ~ expertCaravanHit = true

                        #char:Kleber_happy_angry|R
                        Haha! This pilot is skilled at more than just the helm! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                        #char:Kleber_happy_happy|R
                        I clipped a wing, Cap! They won't be able to give chase.

                        ~ FadeTo("black", 1, 1)

                    -
                        #char:Kleber_angry_angry|R
                        What!? How did I miss that? My visor must be messed up again! {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny2")}

                        #char:--

                        #char:Jackie_fear_angry|L
                        A thruster got hit! We have to land! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

                        #char:Kleber_angry_sad|R
                        Damn! Hang on tight, everyone!

                        #char:--
                        You land back down, while the other caravan leaves and taunts you via the Caravan Network.

                        ~ FadeTo("black", 1, 1)
                }

            -> expert_caravan_shootout_ending

    - else:
        #char:Kleber_fear_sad|R
        Except we don't have enough ammo!

        #char:Jackie_fear_angry|L
        But then... Kleber, get us out of here! If they shoot—

        #char:--
        As if on cue, you get hit on the back of the ship. {Shake("All", 3, -1)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")}

        #char:--
        "What's wrong, rookies? Can't shoot back?"

        #char:--
        "Should've thought better before picking a fight, then!"

        ~ g_morale -= g_statChangeLow

        #char:--
        The veterans leave, while you're forced to land and fix the damage.

        ~ FadeTo("black", 1, 1)

    -> expert_caravan_shootout_ending
}



= expert_caravan_after_you_shoot
{
    - expertCaravanHit == true:
        
        #char:--
        They start retreating! {StopMusic()}

        #char:--
        You take the opportunity to fly away, ignoring the captain's angry screams through the Network.

        //AFFINITY PASS:

        { 
            - g_affinity_Jackie >= 5:
            #char:Jackie_happy_happy|L
            Nice shot, Captain! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
             
        }

        #char:Barto_fear_sad|L
        That was way too stressful! What if you had missed, Captain? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        #char:Barto_fear_angry|L
        It could have been <shake>us</shake> making an emergency landing!

        #char:Kleber_neutral_neutral|R
        Well, what matters it that they shouldn't come for us anytime soon.

        ~ FadeTo("black", 1, 1)

    - else:
        {
            - expert_caravan_shoot:
                #char:Kleber_angry_angry|R
                Dammit, not again! It was bad enough that we got shot once! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

            - else:
                #char:Kleber_angry_angry|R
                Crap! Get ready for an emergency landing! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        #char:--
        The veteran captain keeps taunting you over the Network as you fall. {StopMusic()}

        #char:--
        "<shake>HA!</shake> Serves you right, rookies! Come back with a better ship and knowing how to pilot!"

        #char:--
        You're forced to retreat to the Capy-Bar and fix the damages.

        #char:--
        You can't fix your hurt egos, though.

        ~ g_morale -= g_statChangeLow

        ~ FadeTo("black", 1, 1)
}

-> expert_caravan_shootout_ending



= expert_caravan_brawl

{
    - expert_caravan_gave_fuel:
        #char:--
        The spiked-suit captain rushes towards you. {PlaySFX("LightWoosh")}

    - expert_caravan_porrada:
        #char:--
        The masked captain recovers quickly and gets into a fighting position. {PlaySFX("LightWoosh")}
}

// #char:--
// You don't need to see their face to know they're furious.

~ temp expertCaptainDirection = RANDOM(1,3)

#char:--
As your crewmates deal with the other five, you go mano-a-mano with... <shake>captain cactus</shake>.

+ (expert_brawl_left_1) [PUNCH_LEFT¬Throw a left punch.>>]
    #char:--
    You throw a left punch as fast as you can. {PlaySFX("LightWoosh")} 

+ (expert_brawl_down_1) [POINT_DOWN¬Duck down.>>]
    #char:--
    Expecting an attack, you duck down. {PlaySFX("LightWoosh")}

+ (expert_brawl_right_1) [PUNCH_RIGHT¬Throw a right punch.>>]
    #char:--
    You attack with your right, hoping to get the first hit. {PlaySFX("Hit1")}

-
    {
        - (expert_brawl_left_1 && expertCaptainDirection == 1) || (expert_brawl_right_1 && expertCaptainDirection == 3):
            #char:--
            They're faster than you, though. Their left hook connects first.  {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

            ~ ScreenFlash("red", -1)

            ~ hurtInPorradaria += 1

        - (expert_brawl_left_1 && expertCaptainDirection == 2) || (expert_brawl_right_1 && expertCaptainDirection == 2):
            #char:--
            They duck and you miss your strike — and get promptly countered afterwards with a body blow.  {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

            ~ ScreenFlash("red", -1)

            ~ hurtInPorradaria += 1

        - (expert_brawl_left_1 && expertCaptainDirection == 3) || (expert_brawl_right_1 && expertCaptainDirection == 1):
            #char:--
            You weren't expecting them to be fast too.

            #char:--
            Both your attacks connect, resulting in one black eye each. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

            ~ ScreenFlash("red", -1)

            ~ hurtInPorradaria += 1

        - expert_brawl_down_1 && expertCaptainDirection == 2:
            #char:--
            Seems like you were both expecting it, in fact.

            #char:--
            The two of you circle each other with your guards up.

        - expert_brawl_down_1 && expertCaptainDirection != 2:
            #char:--
            Your prediction pays off.
            
            #char:--
            Their next blow misses, and your fist sinks into their stomach unprotected by the spikes. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 
    }

    #char:--
    Looking to the side, you see <>

    {shuffle:
        - Kleber delivering a flying kick to a guy's face.

            #char:--
            He looks strangely satisfied when he turns to you and winks before you turn back to the captain.

        - Jackie triple-punching a guy in a leather jacket.

            #char:--
            He tries to counter, but Jackie holds his two arms and her third one smacks him across the face.

        - two goons being terrified of Barto.

            #char:--
            The cook isn't even moving!

            #char:Barto_attack|L
            ...

            #char:Barto_attack_anime|L
            ...! {Shake("Big Face", 3, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit2")} {PlaySFX("Punch")} {PlaySFX("LightWoosh")} 

    }

    #char:--
    Better focus on your side of things. The masked caravaneer seems angrier by the second.

    ~ expertCaptainDirection = RANDOM(1,3)

    #char:--
    What should your next move be?

    + (expert_brawl_left_2) [PUNCH_LEFT¬Throw a left hook.>>]
        {
            - expert_brawl_left_1:
                #char:--
                You insist on punching left, hoping for a good hit. {PlaySFX("LightWoosh")} 

            - else:
                #char:--
                You try a left hook this time. {PlaySFX("LightWoosh")}
        }

    + (expert_brawl_down_2) [POINT_DOWN¬Try to dodge.>>]
        {
            - expert_brawl_down_1:
                #char:--
                If they're faster than you, it's better to keep dodging and wait for an opening.

            - else:
                #char:--
                You're not making this mistake twice. It's better to wait for an opening.
        }

    + (expert_brawl_right_2) [PUNCH_RIGHT¬Go for the right.>>]
        {
            - expert_brawl_right_1:
                #char:--
                You go for the right once more.

            - else:
                #char:--
                You switch for a right jab, trying to catch them off-guard. 
        }

    -
        {
            - (expert_brawl_left_2 && expertCaptainDirection == 1) || (expert_brawl_right_2 && expertCaptainDirection == 3):
                #char:--
                It doesn't work, though. They go for a low blow and you get struck in the side. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                ~ ScreenFlash("red", -1)

                ~ hurtInPorradaria += 1

            - (expert_brawl_left_2 && expertCaptainDirection == 2) || (expert_brawl_right_2 && expertCaptainDirection == 2):
                #char:--
                It doesn't matter — you miss anyway and get decked in the face. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                ~ ScreenFlash("red", -1)

                ~ hurtInPorradaria += 1

            - (expert_brawl_left_2 && expertCaptainDirection == 3) || (expert_brawl_right_2 && expertCaptainDirection == 1):
                #char:--
                You end up crossing punches. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                ~ ScreenFlash("red", -1)

                #char:--
                At least you're <i>both</i> hurting. 

                ~ hurtInPorradaria += 1

            - expert_brawl_down_2 && expertCaptainDirection == 2 && expert_brawl_down_1:
                #char:--
                It doesn't work, though. Instead, the blows come faster than you can weave through them. 

                #char:--
                This results in getting clocked atop your head by a hammer-like punch.{PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 
                ~ ScreenFlash("red", -1)

                ~ hurtInPorradaria += 1

            - expert_brawl_down_2 && expertCaptainDirection == 2 && !expert_brawl_down_1:
                #char:--
                The issue is, they have the same idea.

                #char:--
                In the end, you both weave around, not hitting one another. 

            - expert_brawl_down_2 && expertCaptainDirection != 2 && expert_brawl_down_1:
                #char:--
                You try to dodge, but it's a feint. 
                
                #char:--
                You end up getting hit with a kick and two punches. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                ~ ScreenFlash("red", -1)

                ~ hurtInPorradaria += 1

            - expert_brawl_down_2 && expertCaptainDirection != 2 && !expert_brawl_down_1:
                #char:--
                Through a stroke of luck, you dodge their next blow. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                #char:--
                And with this, you're able to get not one, not two, but three good hits. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 
        }

        {
            - hurtInPorradaria < 2:
                #char:--
                For what it's worth, it seems you're doing fairly well.

                #char:--
                Captain cactus looks around. They don't like what they see.
                
                #char:--
                Not only are you holding your own, but your crewmates seem to be getting the upper hand.

                #char:--
                "<shake>ARGH!</shake> All of you! Go back to the ship!", the captain screams. {PlaySFX("Hit2")} {StopMusic()} {PlaySFX("Funny3")}

                #char:--
                <shake>"And you, rookies. Just you wait. You'll pay for this someday!"</shake> {PlaySFX("Hit1")} {PlaySFX("LightWoosh")} 

                #char:--
                The veteran crew leaves — you see one of the members had to be carried. 

                #char:Kleber_happy_angry|R
                You clowns don't look so tough now, huh? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

                #char:Jackie_happy_happy|L
                Those were some nice moves, everyone! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                #char:Kleber_happy_happy|R
                Though I could still teach you, if you want to some pointers.

                #char:Barto_fear_angry|L
                Stop clowning around, Kleber. We are NOT doing this kind of thing again, please! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                ~ FadeTo("black", 1, 1)

            - else:
                #char:--
                You black out with the strike. The last thing you see is the other captain approaching you. {StopMusic()}

                ~ FadeTo("black", 1, 1)
                
                #char:--
                When you wake up, you're back in the ship.

                //AFFINITY PASS:

                { 
                    - g_affinity_Jackie >= -25:
                        #char:Jackie_surprised_happy|R
                        Oh, {g_name}! You're finally up! {PlaySFX("Mistery3")}

                        #char:Jackie_sad_neutral|R
                        We're so sorry about what happened. That masked freak knocked you out. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                
                    - else:

                        #char:Jackie_surprised_neutral|R
                        ...So, that masked freak knocked you out.
                
                }


                #char:Barto_fear_neutral|L
                Not <i>just</i> that, I'm afraid.
                
                #char:Barto_fear_angry|L
                Should we tell <>

                {
                    - g_pronoun == "He":
                        him?

                    - g_pronoun == "She":
                        her?

                    - g_pronoun == "They":
                        them?
                }

                #char:Jackie_surprised_neutral|R
                Well, uh, they might have taken some Grana from you, too.

                #char:--
                You check your pockets.

                #char:--
                Indeed they have. You've lost {g_granaChangeMid} Grana.

                ~ g_grana -= g_granaChangeMid
                ~ g_morale -= g_statChangeMid

                // #char:--
                // Once again, the world has thrown another obstacle in the way of paying your debt.

                #char:Kleber_surprised_sad|L
                With that being said, uh... Should we get going?

                #char:--
                You tell him it's probably best.

                ~ FadeTo("black", 1, 1)
        }

-> expert_caravan_brawl_ending



= expert_caravan_paid_ending

#char:--
You regroup in the cockpit before resuming your delivery.

#char:Jackie_neutral_angry|R
So, we need some repairs after that collision... but at least <i>our</i> tanks weren't damaged.

#char:Kleber_sad_sad|L
You shouldn't have given those fools the <>

{
    - g_fuel < 30:
        Grana, Cap. 

    - else:
        fuel, Cap.
}

#char:Kleber_angry_neutral|L
They were the ones at fault!

#char:Barto_neutral_angry|L
Indeed, but at least we're alive. 

#char:Barto_neutral_angry|L
Let us focus on the delivery. Let those buffoons walk away.

#char:--
The repairs take a while, but afterwards, you resume your trip to the Floating Ocean.

~ FadeTo("black", 1, 1)

-> time_travel_discovery



= expert_caravan_shootout_ending

#char:--
After the whole shootout, you regroup in the cockpit before resuming your delivery.

{
    - expertCaravanHit == true:
        #char:Kleber_happy_sad|L
        Well, that's that! We can be on our merry way now.

        #char:Barto_neutral_angry|R
        Yes. And hopefully we do not need to go through that a third time.

        #char:--
        As the Capy-Bar becomes a speck in the distance, you discuss your next steps.

    - else:

        #char:Jackie_happy_angry|L
        Well, we're good to go! I've just patched things up. 

        #char:--
        As the Capy-Bar becomes a speck in the distance, you discuss your next steps.
}

-> time_travel_discovery



= expert_caravan_brawl_ending

#char:--
You all gather in the cockpit to check for your trip's next steps towards Azure.

{
    - hurtInPorradaria == 0:

        //AFFINITY PASS

        {   
            - g_affinity_Jackie >= 0:

                #char:Jackie_surprised_happy|L
                Wow, Captain, I still can't believe you got through that fight with no injuries! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            
            - else:

                #char:Jackie_surprised_happy|L
                Whoa, I still can't believe you got through that fight with no injuries.
                  
        }
        
        //AFFINITY PASS

        {   
            - g_affinity_Kleber >= 0:

                #char:Kleber_happy_happy|L
                Yeah, that's kind of impressive! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

            
            - else:

                #char:Kleber_surprised_sad|L
                Yup. Really impressive indeed.
                  
        }


        ~ g_morale += g_statChangeHigh

        #char:Barto_neutral_angry|R
        You two, let's focus on the task at hand. I fear we've wasted enough time.

        #char:Kleber_surprised_sad|L
        Okay, okay, Mr. No-Fun.

    - hurtInPorradaria > 0:
        #char:Jackie_surprised_sad|L
        Captain, you should probably take care of these injuries later.

        #char:--
        She's right. You've seen better days.

        //AFFINITY PASS
        {
            - g_affinity_Barto > 25:
                #char:Barto_neutral_sad|R
                I suppose I can help you with that. I'll prepare an ointment.

                #char:Barto_neutral_angry|R
                Even if I dislike your decision to confront them, I am aiding in whatever I can.
        }
}

-> time_travel_discovery



= time_travel_discovery

#char:Kleber_neutral_neutral|L
Alright, here's the thing: despite that little stop, our route hasn't changed.

#char:Kleber_neutral_happy|L
We should be arriving at the edge of the Floating Ocean in just one or two—

#char:Kleber_fear_angry|L
Wait, <shake>WHAT!?</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Barto_fear_sad|L
Kleber, please tell me we aren't lost. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

~ g_affinity_Barto_Kleber -= g_affinityChangeLow
~ g_affinity_Kleber_Barto -= g_affinityChangeLow

#char:Kleber_fear_sad|L
N-no, we aren't lost! You need more faith in your navigator, chef!

// #char:Barto_neutral_angry|R
// It is not a matter of faith. None of us recognized the Capy-Bar from earlier.

// #char:Jackie_surprised_angry|L
// Now that you mention it, yeah. The one in the Floating Ocean shouldn't be anywhere near.

// #char:Jackie_neutral_angry|L
// And the closest Capy-Bar was the one we left from... days ago.

#char:Kleber_sad_sad|L
Check out the map. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

#char:Jackie_surprised_sad|R
No way. We're in the same place <shake>AGAIN?</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Barto_angry_angry|L
How can this be? Did we fly around in circles or what? {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

#char:Kleber_sad_angry|L
I'm a hundred percent sure we didn't, chef. We were following the route as planned.

#char:Jackie_surprised_sad|R
Wait, look at the terminal!

// #char:Jackie_surprised_sad|L
// The displays are glitching... <i>again</i>.

#char:Kleber_surprised_angry|L
Wait, that date — that's when we set out!

#char:Jackie_sad_neutral|R
Hmmm... Guess the displays broke down for good. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

#char:Kleber_happy_sad|L
Oooor... we <wave>time traveled!</wave> {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")}

+ [JOKE¬Joke about the absurdity of it all.>>]

    #char:--
    You tell Kleber to fast-forward to the part where you get the Grana then.

    // #char:Jackie_happy_neutral|L
    // Isn't Sky engineering amazing, {g_name}?

    // #char:Jackie_neutral_neutral|L
    // Well, it <i>would</i> be... if this kind of thing was real.

+ [CONFUSED¬He can't be serious.>>]

    #char:--
    Is that a thing in the Skies!? Going back to the past?

    #char:Jackie_neutral_neutral|L
    No, it's not. Kleber's just being Kleber, like usual.

+ [STERN¬This is no time for jokes.>>]
    #char:--
    ......

    #char:Barto_neutral_sad|R
    Be serious for once, Kleber.

    #char:Kleber_happy_happy|L
    I am!

-   #char:Kleber_happy_sad|L
    Well, how else do you explain meeting those same guys again?

    #char:Kleber_happy_sad|L
    Or being back at the Capy-Bar we had left?

    #char:Jackie_happy_neutral|R
    <wiggle>Pffff</wiggle>—Please, Kleber! Time travel? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny3")}

    // #char:Jackie_happy_neutral|L
    // There's just no way!

    #char:Barto_neutral_angry|R
    I will have to side with Jackie. She is the engineer, after all.

    #char:Barto_neutral_angry|R
    I am sure there is a sound explanation for this.

    #char:Kleber_neutral_neutral|L
    Like <i>what?</i> I hope there's not two of those tacky ships flying around the Skies!

    #char:Jackie_neutral_sad|R
    Well, no use thinking about it now. I'll take a look at the displays.

    #char:Kleber_neutral_neutral|L
    ...I'll set the route for us.

    #char:Kleber_happy_happy|L
    Oh, and since we're in the past, I can take us around the Pelicannons we met last time! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

    #char:Kleber_happy_happy|L
    You can all thank me later! <wiggle>You know, in the future! Cause we're in the past!</wiggle>

    // #char:--
    // You roll your eyes at Kleber's antics, but leave him be.

    ~ g_timeChange = 3

-> EVENT_END



= part3

#location:Floating Ocean

#char:--
You finally arrive at the military outpost you saw before Matusalem swallowed you.

#char:--
Azure should be close. Just a little more and you'll be done with this.

#char:Kleber_surprised_sad|L
Oh man... I'm not looking forward to paying the toll. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

+ [RELAX¬A toll? You've gone through worse.>>]
    #char:--
    You tell Kleber to relax. Everything is gonna be fine.

    #char:Kleber_neutral_sad|L
    Famous last words. But yeah, I hope you're right.

    #char:Kleber_neutral_sad|L
    We just need to get past the guards' inspection at the gates.

+ [QUESTION¬Ask what's special about that toll.>>]
    #char:--
    You ask what this toll is about.

    #char:Kleber_neutral_sad|L
    It's less of a toll and more of a negotiation, if you catch my drift.

    // #char:Kleber_neutral_sad|L
    // You see, Azure's provisional government has set up checkpoints near the actual city.

-   #char:Kleber_neutral_angry|L
    The guards are really bothersome types. Nag at any irregularity they find.

    #char:Kleber_neutral_sad|L
    It takes a while to clear the inspection, too. 
    
    #char:Kleber_surprised_sad|L
    We're probably losing a day there...

    #char:Kleber_neutral_happy|L
    Unless we give them a little... <wiggle>incentive</wiggle>, of course. {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")}

    #char:--
    Ah. So <i>that's</i> it.

    #char:Kleber_neutral_neutral|L
    Alright. We're getting close.

    #char:--
    You reach a small military outpost — a couple of security rooms and a warehouse built around some sort of gated fence.

    #char:--
    Said fence is actually more like a net. Probably to accomodate for the ocean's ebb and flow.

    #char:--
    Everywhere you look, there are emblems featuring an aquatic serpentine creature you don't recognize.

    // #char:--
    // Probably the representation of Azure's regime.
    
    // #char:--
    // One soldier armed with a baton motions towards the warehouse.

    // #char:--
    // It's encased in a bubble. Inside, you can see people moving around as if on dry land.

    // #char:--
    // Probably where they do the inspections. 
    
    #char:--
    Kleber lands the 41-Bis in an encased bubble.

    ~ FadeTo("black", 1, 1)

    -> azure_first_inspection

= azure_first_inspection

~ originalTime = g_time

~ originalFuel = g_fuel
~ originalSupplies = g_supplies
~ originalMorale = g_morale

~ originalGrana = g_grana

~ originalAffinityBarto = g_affinity_Barto
~ originalAffinityJackie = g_affinity_Jackie
~ originalAffinityKleber = g_affinity_Kleber

#char:--
Getting out of the ship, you're greeted by (mostly) dry ground... and two Azurian soldiers.

#char:--
"A crew of four, then. Which one of you is the captain and what are you in Azure for?" {PlayMusic("AzureTheme")}

#char:--
You approach them, introducing yourself as the captain.

#char:--
What should you tell them about the reason for travel?

+ (soldier_mentioned_horacio) [HORACIO¬Explain that an employee from the Azure Provisional Government requested a delivery.>>]
    #char:--
    You tell the guards about Horacio's request to your Caravan as a scientist in Azure.

    #char:--
    "A government scientist asking that river rats 'Association' for a delivery? Now I've heard everything!"

+ (soldier_mentioned_cargo) [CARGO¬Say that you have a shipment of Angra Crystals to deliver.>>]
    #char:--
    You describe the cargo of Angra Crystals to the two soldiers.

    #char:--
    "Angra Crystals?"
    
    #char:--
    "That 'Association' of river rats is bringing them here? What for?"

-   #char:--
    Their surprise catches you off-guard — as does their way of talking about the C.C.A.

    #char:--
    "Deliveries are usually dealt with by our own cargo ships."

    #char:--
    "Meaning it is highly unlikely for a third party to do so. I say this is highly suspicious."

    #char:--
    "We need to conduct an inspection. It will take about a day."

    #char:--
    Without waiting for your response, one of the guards enters the 41-Bis.

    #char:Kleber_sad_sad|L
    ...Told you, Cap. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    #char:Barto_fear_sad|L
    I hope they do not find any issues. Especially in the kitchen. {Emotion("Explosion", "39f2d6")} {PlaySFX("Woosh")}

    #char:--
    "Psst, hey. Landcrawlers."

    #char:--
    The remaining soldier approaches you. You're pretty sure "landcrawler" is an insult.

    #char:--
    "Listen, I know you don't want to be here any longer than what you need to."

    #char:--
    "Trust me, I get it. Most of us hate doing these inspections."

    #char:--
    "So, if you're willing to lend us a hand, we could try to speed this up. I'll I need is a 1000,00 G$."

    #char:--
    "How about it? You enter Azure today, do what you need to do and leave, no questions asked!"

    + (soldier_bribe_1) [YES¬Bribe the guard.>G>]
        #char:--
        You accept, gambling on spending some Grana now to get more after your job is done.

        // {
        //     - g_grana >= g_granaChangeHigh:
                #char:--
                Upon counting the money, the guard smirks.

                #char:--
                "Thank you for your cooperation, Captain."

                ~ g_grana -= g_granaChangeHigh

                #char:--
                "I'll talk to my associate about your situation, don't worry."

                #char:--
                Your crewmates voice their opinions once you're alone again.

                #char:Kleber_happy_happy|R
                Nicely done, Cap. You're becoming a true Skylander! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

                ~ g_affinity_Kleber += g_affinityChangeMid

                #char:Jackie_angry_sad|L
                By bribing soldiers? What if we get in trouble? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                ~ g_affinity_Jackie -= g_affinityChangeMid
                ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid

                #char:Barto_angry_angry|L
                And if we do, it's because of a decision you made on your own! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}
                
                ~ g_affinity_Barto -= g_affinityChangeMid
                ~ g_affinity_Barto_Kleber -= g_affinityChangeMid

                #char:Kleber_neutral_sad|R
                Relax, people. They'll let us pass. {StopMusic()}

                #char:--
                You go to a separate waiting area in the warehouse. 

                ~ FadeTo("black", 1, -1)

                #char:--
                The inspection takes several hours. By the time it finishes, it is almost night.

                #char:--
                "Twelve cubic boxes containing one ton of Angra Crystals for Mr. Horacio. Your cargo checks out."

                #char:
                That was the most expensive waiting room you've ever seen, by far.

                -> azure_second_inspection

        //     - else:
        //         #char:--
        //         Upon counting the money, the guard frowns.

        //         #char:--
        //         "Hmph, that's all you have?"
                
        //         #char:--
        //         "Shame. I guess we can't help one another, then."

        //         #char:--
        //         You're left alone with the crew afterwards.

        //         #char:Kleber_sad_sad|R
        //         Come on, Cap. Why would you try to bribe someone with that little? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        //         ~ g_affinity_Kleber -= 10

        //         #char:Jackie_angry_neutral|L
        //         Why would you try bribing someone <i>at all</i>? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

        //         ~ g_affinity_Jackie -= 10
        //         ~ g_affinity_Jackie_Kleber -= 10

        //         #char:Barto_angry_angry|R
        //         Not to mention a soldier! You could have gotten all of us in turbulent waters, Captain. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

        //         ~ g_affinity_Barto -= 10
        //         ~ g_affinity_Barto_Kleber -= 10

        //         #char:Kleber_angry_sad|R
        //         Eh, you're both exaggerating. But it doesn't matter now.

        //         ~ g_affinity_Kleber_Barto -= 10
        //         ~ g_affinity_Kleber_Jackie -= 10

        //         #char:--
        //         You go to a separate waiting area in the warehouse.

        //         #char:--
        //         The inspection takes several hours. By the time it finishes, it is almost dawn.

        //         #char:--
        //         "Twelve cubic boxes containing one ton of Angra Crystals for Mr. Horacio. Your cargo checks out."

        //         ~ DayChange()
        // }

    + (soldier_refuse_1) [NO¬Refuse to bribe.>T>]

        #char:--
        The guard frowns, and then shrugs.

        #char:--
        "Suit yourself, landcrawler. Hope you're the patient type, because you'll be here a while."

        #char:--
        You're left alone with the crew afterwards.

        #char:Kleber_sad_sad|R
        Come on, Cap. Why waste our time if there's an alternative? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        ~ g_affinity_Kleber -= g_affinityChangeMid

        #char:Barto_angry_angry|L
        An alternative that is most likely illegal. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

        #char:Barto_neutral_angry|L
        I appreciate your honesty, {g_name}.

        ~ g_affinity_Barto += g_affinityChangeMid

        #char:Jackie_neutral_neutral|L
        Don't listen to him, {g_name}. You did the right thing.

        ~ g_affinity_Jackie += g_affinityChangeMid

        #char:Kleber_angry_sad|R
        Eh, you're both exaggerating. But it doesn't matter now. {StopMusic()}

        ~ g_affinity_Kleber_Barto -= g_affinityChangeMid
        ~ g_affinity_Kleber_Jackie -= g_affinityChangeMid

        #char:--
        You go to a separate waiting area in the warehouse. 

        ~ DayChange()

        #char:--
        "Twelve cubic boxes containing one ton of Angra Crystals for Mr. Horacio. Your cargo checks out."

        #char:--
        You are woken up by the guard. The crew is beat, having slept on the floor.

        #char:--
        You all limp to the 41-Bis.

    -> azure_second_inspection

= azure_second_inspection
//Aqui a crew percebe que vocês estão viajando no tempo.


// {
//     - (soldier_bribe_1 && originalGrana < 100) || soldier_refuse_1:
//         #char:--
//         The next day, you leave the outpost as early as you can.

//     - else:
//         #char:--
//         Indeed they do. After a few minutes, the inspection is "finished".

//         #char:--
//         "Twelve cubic boxes containing twelve tons of Angra Crystals. Your cargo checks out."
        
//         #char:--
//         You leave the outpost and pass through the gated fence.
// }

#char:Barto_fear_angry|L
I don't feel good around these military types, let's get this delivery done.

#char:Kleber_surprised_sad|L
Uh, Cap, Jackie? It's happening again! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

~ g_time = 0

~ g_fuel = 1
~ g_supplies = 1
~ g_morale = 1

~ g_grana = 0

//~ g_affinity_Barto = 0
//~ g_affinity_Jackie = 0
//~ g_affinity_Kleber = 0

//UNIQUE EFFECT GLITCH

#char:Jackie_surprised_neutral|R
<shake>Again?</shake> I thought I had fixed it! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

#char:Jackie_sad_sad|R
Hmmm... Maybe it was something those guards did. 

#char:Jackie_neutral_angry|R
Let me take a look at the control panel. I'll be right back.

// #char:--
// The engineer goes down to the cargo hold.

~ FadeTo("black", 1, 1)

#char:Jackie_happy_angry|R
Ooof, here you go! Should be good as new! {Emotion("Shine", "ffb71b")} {PlaySFX("Hit2")}

~ g_time = originalTime

~ g_fuel = originalFuel
~ g_supplies = originalSupplies
~ g_morale = originalMorale

~ g_grana = originalGrana

~ g_affinity_Barto = originalAffinityBarto
~ g_affinity_Jackie = originalAffinityJackie
~ g_affinity_Kleber = originalAffinityKleber

#char:Jackie_neutral_angry|R
I wonder if that weird thing will happen—

#char:--
The ship takes speed out of nowhere! Everyone is tossed aside. {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")}

#char:Barto_angry_angry|R
What's up with all this shaking again! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

#char:Kleber_fear_angry|L
It wasn't my fault! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

#char:Jackie_sad_sad|R
Well, I've just fixed the displays... They look fine!

#char:Jackie_neutral_angry|R
Probably something with the stabilizers.

#char:--
Just then, something appears in the distance.

#char:Kleber_surprised_angry|L
Are you kidding me? Another outpost? You know what I'm thinking right— {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

#char:Jackie_angry_angry|L
Stop Kleber. Geez. Let's just get this over with.

~ FadeTo("black", 1, 1)

#char:--
Again, there are two security rooms, a warehouse and a gated fence.

#char:--
One soldier motions towards the warehouse. You enter.

~ originalTime = g_time

~ originalFuel = g_fuel
~ originalSupplies = g_supplies
~ originalMorale = g_morale

~ originalGrana = g_grana

~ originalAffinityBarto = g_affinity_Barto
~ originalAffinityJackie = g_affinity_Jackie
~ originalAffinityKleber = g_affinity_Kleber

#char:--
Getting out of the ship, you're greeted by two Azurian soldi— hang on a minute. {PlayMusic("AzureTheme")}

#char:--
"A crew of four, then. Which one of you is the captain and what are you in Azure for?"

#char:--
You introduce yourself to guards that look exactly the same as the previous ones.

{
    - soldier_mentioned_horacio:
        #char:Kleber_neutral_sad|L
        We're C.C.A caravaneers. Mr. Horacio asked for us.

        #char:--
        "A government scientist asking that river rats 'Association' for a delivery? Now I've heard everything!"

    - soldier_mentioned_cargo:
        #char:Jackie_neutral_neutral|L
        We're here representing the C.C.A. We have a shipment of Angra Crystals to deliver.

        #char:--
        "Angra Crystals?"
        
        #char:--
        "That 'Association' of river rats is bringing them here? What for?"
}

// #char:--
// Now you're getting some major déjà vu.

// #char:--
// Judging by their faces, your crew thinks something is off too.

#char:--
"Deliveries are usually dealt with by our own cargo ships."

#char:--
"Meaning it is highly unlikely for a third party to do so. I say this is highly suspicious."

#char:Jackie_surprised_neutral|L
I thought we were cleared already? We've just passed through another checkpoint.

#char:--
"Another checkpoint? You think you're the first ones to come up with that?"

// #char:--
// "Besides, if the northern or eastern checkpoints had seen you, they would've told us."

// #char:--
// "Well, in any case, we need to conduct an inspection. It will take about a day."

#char:--
Without waiting for your response, one of the guards enters the 41-Bis.

#char:Jackie_surprised_sad|L
This isn't right. It's like we're talking to clones.

#char:Barto_surprised_neutral|R
Indeed. As if we never came through here at all.

#char:Kleber_happy_neutral|L
Or, y'know... <wave>We time traveled again!</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny2")}

// #char:Barto_neutral_angry|L
// ...Still going on about that, Kleber?

#char:--
"Psst, hey. Landcrawlers."

#char:--
The remaining soldier approaches you, just like last time.

#char:--
"Listen, I know you don't want to be here any longer than what you need to."

#char:--
"Trust me, I get it. Most of us hate doing these inspections."

#char:--
"So, if you're willing to lend us a hand, we could try to speed this up. I'll I need is a 1000,00 G$."

#char:--
"How about it? You enter Azure today, do what you need to do and leave, no questions asked! "

#char:--
You and the crew look between each other, perplexed.

#char:--
Only Kleber has a smug grin on his face.

+ [HORACIO¬Ask for a moment to call Horacio.>>]

    #char:--
    You plead with the guards to make a call to your client. {StopMusic()}

    #char:--
    They grunt, but consent after Kleber haggles with them a bit.

    ~ FadeTo("black", 1, -1)

    #char:Jackie_surprised_neutral|R
    I can't believe I'm saying this... But I think I'm starting to believe you, Kleber.

    #char:Jackie_happy_angry|R
    In fact, I think I have an idea about what's causing this! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

    #char:Kleber_happy_angry|L
    Me too! Maybe the 41-Bis is actually a prototype time machine made by the C.C.A.— {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

    #char:Jackie_happy_sad|R
    What? No, it's simpler than that, actually. It must be the Angra Crystals we're carrying!

    #char:Jackie_neutral_neutral|R
    I mean, these loops only happened after we started this delivery.

    #char:Barto_surprised_angry|L
    Which begs the question — is Horacio responsible for this?

    #char:Barto_angry_sad|L
    What is his end goal with the cargo? {StopMusic()}

    #char:--
    You call him to find out.

    -> horacio_call

// + (soldier_bribe_2) [YES¬Bribe the guard.>G>]
//     #char:--
//     You accept, trying to gauge his reaction.

//     // {
//     //     - g_grana >= 300:
//     //         #char:--
//     //         Upon counting the money, the guard smirks.

//             #char:--
//             "Thank you for your cooperation, Captain."

//             ~ g_grana -= g_granaChangeHigh

//             #char:--
//             "I'll talk to my associate about your situation, don't worry."

//     //     - else:
//     //         #char:--
//     //         Upon counting the money, the guard frowns.

//     //         #char:--
//     //         "Hmph, that's all you have?"
            
//     //         #char:--
//     //         "Shame. I guess we can't help one another, then."
//     // }

// + (soldier_refuse_2) [NO¬Refuse to bribe.>T>]

//     #char:--
//     The guard frowns, and then shrugs.

//     #char:--
//     "Suit yourself, landcrawler. Hope you're the patient type, because you'll be here a while."

// -   #char:--
//     // You're left alone with the crew afterwards.

//     // #char:Barto_surprised_angry|R
//     // The way the guard asked us for a bribe... It was exactly like last time! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

//     #char:Kleber_happy_happy|L
//     <wave>Tiiiiiiiime travel.</wave> Told ya. {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")} {StopMusic()}

//     #char:Jackie_surprised_neutral|R
//     I can't believe I'm saying this... But I think I'm starting to believe you, Kleber.

//     #char:Jackie_happy_angry|R
//     In fact, I think I have an idea about what's causing this! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

//     #char:Kleber_happy_angry|L
//     Me too! Maybe the 41-Bis is actually a prototype time machine made by the C.C.A.— {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery1")}

//     #char:Jackie_happy_sad|R
//     What? It's simpler than that, actually. It must be the Angra Crystals we're carrying!

//     #char:Jackie_neutral_neutral|R
//     I mean, these loops only happened after we started this delivery.

//     #char:Barto_surprised_angry|L
//     Which begs the question — is Horacio responsible for this?

//     #char:Barto_angry_sad|L
//     What is his end goal with the cargo?

//     #char:Jackie_neutral_sad|R
//     I guess there's no way to know, for now. 
    
//     #char:Kleber_surprised_sad|R
//     Either way, there must be a way to break this cycle.

//     // #char:Jackie_neutral_neutral|R
//     // Well, the guards are already doing the inspection now.

//     // #char:Jackie_neutral_angry|R
//     // Then the Crystals will mess with the ship's systems.

//     // #char:Jackie_neutral_angry|R
//     // Then we have no choice but to fix the control panel again and the cycle will repeat...

//     // #char:Jackie_surprised_angry|R
//     // ...!

//     // #char:Jackie_surprised_angry|R
//     // That's it!

//     // #char:Jackie_surprised_angry|R
//     // {g_name}, we have to find a way to <i>avoid</i> going through the inspection! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery1")}

//     #char:--
//     Horacio himself told you to call him in case of a problem.

//     #char:--
//     And this is <i>definitely</i> one.

//     // #char:--
//     // You suggest calling Horacio tomorrow morning, before the third inspection takes place.

//     // #char:-- 
//     // You hope you can make things right this time.


//     -> third_inspection_good_choice



// = third_inspection_good_choice

// // {
// //     - (soldier_bribe_2 && originalGrana < 100) || soldier_refuse_2:

//         #char:--
//         The second inspection takes several hours. By the time it finishes, it is almost night again.

//         #char:--
//         "Twelve cubic boxes containing almost one ton of Angra Crystals. Your cargo checks out."

//         #char:Barto_surprised_angry|L
//         <i>Almost</i> a ton, huh? Not a full one?

//         #char:--
//         You all wait in the warehouse again, eager to call Horácio.

//         ~ FadeTo("black", 1, -1)

//         // #char:--
// //         "Beats me. Your client was probably a bit off."

// //         ~ DayChange()

// //         #char:--
// //         The next day, you leave the outpost as early as you can.

// //     - else:
// //         #char:--
// //         After a few minutes, the second inspection is "finished".

// //         #char:--
// //         "Twelve cubic boxes containing almost one ton of Angra Crystals. Your cargo checks out."

// //         #char:Barto_surprised_angry|L
// //         <i>Almost</i> a ton, huh? Not a full one?

// //         #char:--
// //         "Beats me. Your client was probably a bit off."

// //         #char:--
// //         You leave the outpost and pass through the gated fence.
// // }

// -> azure_third_inspection



// = azure_third_inspection

// ~ g_time = 0

// ~ g_fuel = 1
// ~ g_supplies = 1
// ~ g_morale = 1

// ~ g_grana = 0

// ~ g_affinity_Barto = 0
// ~ g_affinity_Jackie = 0
// ~ g_affinity_Kleber = 0

// #char:--
// Soon after, Kleber calls you and Jackie to the cockpit. 

// #char:Kleber_surprised_sad|L
// You were right, Jackie. The ship's displays are all turned off again.

// #char:Jackie_happy_angry|R
// Right! So this is the part where we fix it and loop back.

// #char:Jackie_happy_neutral|R
// Let's check the control panel, Captain.

// ~ FadeTo("black", 1, 1)

// #char:Jackie_neutral_happy|R
// Done. Now, if my theory is right, what happens now is—

// ~ g_time = originalTime

// ~ g_fuel = originalFuel
// ~ g_supplies = originalSupplies
// ~ g_morale = originalMorale

// ~ g_grana = originalGrana

// ~ g_affinity_Barto = originalAffinityBarto
// ~ g_affinity_Jackie = originalAffinityJackie
// ~ g_affinity_Kleber = originalAffinityKleber

// #char:--
// Everybody braces—

// #char:--
// The whole ship rumbles. But this, you all stay on your feet. {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")}

// #char:Jackie_happy_happy|R
// So it <i>was</i> the Angra Crystals! That's amazing! {Emotion("Shine", "ffb71b")} {PlaySFX("Mistery1")}

// #char:Barto_fear_angry|R
// Ok, ok, let's just call Horacio already. Before the guards see us.

// ~ FadeTo("black", 1, 1)

-> horacio_call

= horacio_call

#char:Horacio_neutral_hologram|L
Oh, hello, caravaneers! {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

#char:Horacio_neutral_hologram|L
Since you're calling, I presume you're at one of the military outposts?

#char:Kleber_neutral_sad|R
Yeah, we're stuck in a time loop here, pretty cool. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

#char:Horacio_fear_hologram|L
Hmm? What was that? My hearing isn't the best anymore, I'm sorry.

#char:Jackie_surprised_sad|R
<wiggle>Psst</wiggle>, Kleber! I didn't think we should be telling Horacio about the loops already. {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Jackie_neutral_angry|R
Let's just ask him to negotiate our entry without inspections.

#char:Jackie_neutral_angry|R
Then we can confront him in person. That way he can't run from us.

#char:--
You ask Horacio to negotiate your entry with the outpost.

#char:Horacio_happy_hologram|L
Of c-course, of course! The sooner you're here, the better!

#char:Horacio_neutral_hologram|L
I'll call you back in a few minutes.

{Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

~ FadeTo("black", 1, 1)

#char:Horacio_neutral_hologram|L
It's done. The guards agreed to give your caravan a temporary pass. {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

#char:Kleber_surprised_happy|R
...Just like that!? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Horacio_fear_hologram|L
Yes, just like that.

#char:Kleber_happy_happy|R
Nice! Thanks, old man!

#char:Barto_happy_sad|R
It is great to finally be out of this warehouse.

#char:Horacio_neutral_hologram|L
Oh, one more thing, regarding the delivery address.

#char:Horacio_fear_hologram|L
It's a bit... outdated, I'm afraid. I'll send you the new one shortly.

#char:Horacio_neutral_hologram|L
I'll wait for you eagerly, caravaneers.

#char:--
The guards take their time approving your documents.  {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

#char:--
You are let go with veiled threats and warnings about not trespassing around the city.

~ FadeTo("black", 1, -1)

#char:Barto_neutral_sad|R
There is a certain pettiness that only people who should not be in power are capable of exercising.

#char:Jackie_sad_sad|L
Something about this still bothers me.

#char:Jackie_surprised_sad|L
But we'll have the chance to ask Horacio in person. Let's go!

#char:--
Finally, you leave the outpost and enter the city of <color="blue"><b>Azure</b></color>.

-> EVENT_END



= part4

#location:Floating Ocean

#char:--
It doesn't take too long to find the address that Horacio mentioned.

#char:Barto_angry_angry|R
Is this really the right place? This is a residential block.

#char:Kleber_surprised_sad|L
That's the address he gave us. It's inside that... damp looking, criminal-feels warehouse over there.

#char:--
You enter the landing zone and your reptilian client soon comes to meet you.

#char:Horacio_neutral|R
Hello. Did you make a safe trip?

#char:Barto_angry_angry|L
Between all of the incidents before and during our arrival to Azure? Not really. {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 1, 1)}

#char:Horacio_fear|R
I-incidents? Really? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

#char:Kleber_neutral_angry|L
Time travel wasn't really in the job description, you know?

#char:Horacio_fear|R
... {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad1")}

#char:Horacio_sad|R
I'm sorry. Didn't mean to cause any trouble.

#char:Horacio_sad|R
Mind giving me a summary of what happened?

// #char:--
// You recount your experience with the other caravan and the loops at the military outpost.

~ FadeTo("black", 1, 1)

#char:Horacio_sad|R
I see. It probably has to do with the proximity between the control panel and the cargo hold.

#char:Horacio_sad|R
It's hard to say for sure, but seems like the crystals reacted to your ship's systems.

#char:Jackie_neutral_neutral|L
Yeah, that's exactly what we thought had happened.

#char:Horacio_sad|R
It's ironic, really. They made ships like that in my time, but not anymore.

#char:Barto_neutral_neutral|L
Am I right in saying that this is the function you intended for them?

#char:Horacio_neutral|R
Yes, that's right. 

#char:Horacio_happy|R
Thanks to you, I can travel back to my time with those Angra Crystals. {PlayMusic("Sad")}

#char:Jackie_surprised_sad|L
<wiggle>Back to your time</wiggle>, huh? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery1")}

#char:Horacio_neutral|R
Yes. I've been researching Angra Crystals my whole life.

#char:Horacio_sad|R
During one particular experiment, an accidental reaction happened...

#char:Horacio_neutral|R
I was sent to the future. Almost a <bounce>hundred years</bounce> in the future, in fact.

#char:Horacio_sad|R
You can imagine my sadness to see the paradise that Azure was become this dystopic nightmare.

#char:Horacio_fear|R
I went to the government to ask for help and they trapped me. 

#char:Horacio_fear|R
I was forced to develop time-bending technology for them!

#char:Jackie_sad_angry|L
That's terrible, Horacio... I'm sorry.

#char:Horacio_neutral|R
I've been secretly looking for a way to return to my time.

#char:Horacio_sad|R
But... I grew old, and I was afraid I'd never see my family again.

#char:Horacio_happy|R
With this shipment of Angra Crystals, I have enough to power my machine. When they come looking for me, I'll be gone!

#char:Horacio_neutral|R
Let's not dilly-dally anymore. Here's your payment for a job well done. {StopMusic()}

~ g_grana += g_reward_M4

~ g_currentReward = g_reward_M4

~ CompleteDelivery()
  
#char:Horacio_neutral|R
Now, if you could help me transport the crystals in there...

#char:Barto_fear_angry|L
A moment. Do you all hear that noise? {PlaySFX("AzureCops")} {PlayMusic("AzureTheme")}

#char:Barto_fear_neutral|L
N-no, they can't have—

#char:--
Looking to the outside of the parking zone, you see a group of five vehicles approaching.

#char:--
They bear the same serpentine crest you saw at the outpost. 

#char:Horacio_fear|R
<shake>Oh... oh no!</shake> Those are capture ships! {Emotion("WaveIn", "0a4de8")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Bad2")} 

#char:Kleber_fear_angry|L
The guards at the outpost must have tailed us! {Emotion("Explosion", "39f2d6")} {PlaySFX("Woosh")}

#char:Jackie_fear_angry|L
What was the pass for, then!? {Emotion("Explosion", "39f2d6")} {PlaySFX("Woosh")}

#char:Horacio_fear|R
It must have been a ruse to catch me smuggling the crystals!

#char:Horacio_fear|R
<shake>P-Please!</shake> You have to help me escape!

#char:Horacio_fear|R
I'll bring the machine here! Just wait!

#char:Kleber_fear_angry|L
What do you mean 'just wait'!? They'll be here real soon! {Emotion("Explosion", "39f2d6")} {PlaySFX("Woosh")}

#char:--
Horacio doesn't wait for a response, though. He ducks inside his lab as quick as he can.

    // {
    //     - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_impose || E_Mission_Rookie_TheMafagafoPassenger.mafagafo_angry:
    //         #char:Barto_fear_neutral|R
    //         Once we were had to chase our cargo, now <i>we</i> are chased because of it.

    //         #char:Barto_fear_angry|R
    //         This was not in the job description!

    //     - else:
            #char:Barto_fear_neutral|R
            How do <shake>WE</shake> get out of here? If we stay, we are getting arrested! {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")}
    // }

    #char:Kleber_fear_sad|L
    <shake>W-well</shake>, they're here for the turtle, not us, right?

    #char:Jackie_fear_happy|R
    Are you suggesting leaving Horacio behind? Do you have no empathy!? {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}

    ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid

    #char:Kleber_fear_angry|L
    I do, but I also have a survival instinct! 

    ~ g_affinity_Kleber_Jackie -= g_affinityChangeMid

    #char:--
    You ask Kleber if he can make a quick escape.

    {
        - g_fuel < 10:
            //AFFINITY PASS
            {
                - g_affinity_Kleber >= 0:
                    #char:Kleber_surprised_sad|L
                    Y-you bet-oh. Oh no.

                - else:
                    #char:Kleber_angry_angry|L
                    //Vou tentar, vou tentar!
                    I'll try, I'll try!

                    #char:Kleber_surprised_angry|L
                    //...Peraí, isso não tá certo!
                    ...Wait, we have a problem!
            }

            #char:Kleber_fear_angry|L
            C—Cap! We're low on fuel! We can't go on! {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad2")}

        -> crystals_no_fuel_bad_end

        - else:
            #char:Kleber_fear_sad|L
            Y-you bet I'm gonna try!

            #char:Kleber_fear_angry|L
            C—crap! I hope we have enough fuel for this! {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad2")}
    }

    #char:Barto_fear_sad|R
    Either way, we have to make a decision <b>now</b>. Do we help Horacio or not? {StopMusic()}

    + (helped_horacio) [YES¬Help Horacio escape.>M_G>]

        ~ g_helped_horacio_escape = true

        #char:--
        You can't help it. Being far away from his family in a place alien to him...
        
        ~ savedHoracio = true

        #char:--
        You sympathize with Horacio's issues too much.

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 25:
                #char:Jackie_happy_happy|R
                I knew you would do the right thing! No better Captain for this job!  {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

            - g_affinity_Jackie < 25 && g_affinity_Jackie >= 0:
                #char:Jackie_happy_angry|R
                That's right! A Caravan should see the job to its end! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            - g_affinity_Jackie < 0 && g_affinity_Jackie >= -25:
                #char:Jackie_neutral_neutral|R
                Good to see you have some compassion, Captain.

            - else:
                #char:Jackie_neutral_neutral|R
                ...I'm relieved you do.

        }

        ~ g_affinity_Jackie += g_affinityChangeHigh

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 25:
                #char:Kleber_fear_sad|L
                Alright, alright, fine! I'm trusting you, then! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            - g_affinity_Kleber < 25 && g_affinity_Kleber >= 0:
                #char:Kleber_fear_angry|L
                Listen, Cap, I-I get it, the guy doesn't deserve this. But neither do we! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            - g_affinity_Kleber < 0 && g_affinity_Kleber >= -25:
                #char:Kleber_angry_sad|L
                If we're thrown in the slammer, I'm blaming you both! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            - else:
                #char:Kleber_angry_angry|L
                Oh, so you value a random client more than your crew? Is it the money? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        ~ g_affinity_Kleber -= g_affinityChangeHigh

        #char:--
        Kleber gets the 41-Bis ready for liftoff.
        
        #char:--
        Moments later, Horacio comes back to the landing zone with—

        #char:Jackie_surprised_happy|R
        What <i>is</i> that? A grandfather clock?

        #char:Horacio_fear|L
        It...certainly...looks...like one, doesn't it? Weighs like one too. {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")} {PlaySFX("Hit2")}

        #char:Horacio_fear|L
        It's not 100% ready yet, so I'll have to finish the machine aboard your ship! {StopMusic()}

        #char:--
        A voice comes from the outside.

        #char:--
        <shake>"Freeze, all of you! You have been deemed as threats to the government of Azure!"</shake>

        -> crystals_chase_start
    
    + (left_horacio) [NO¬Best not to get involved in it.>M_G>]

        #char:--
        At the end of the day, you did what you had to by finishing the delivery.

        #char:--
        Your family is still waiting for you in Surface. Your journey can't end here.

        #char:Kleber_fear_sad|L
        Yeah, it sucks, but let's just ditch the Crystals here and go!

        ~ g_affinity_Kleber += g_affinityChangeHigh

        #char:--
        You open the cargo hold's door and allow the Crystal crates to spill out as you lift off.

        #char:Kleber_angry_angry|L
        Let's go, team! We're out of here! {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Woosh")}

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 25:
                #char:Jackie_sad_neutral|R
                I get it's for our own safety, Captain, but I can't help but feel like I failed as a caravaneer. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Jackie < 25 && g_affinity_Jackie >= 0:
                #char:Jackie_sad_sad|R
                ...I hope Horacio can find a good way to leave by himself. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Jackie < 0 && g_affinity_Jackie >= -25:
                #char:Jackie_sad_angry|R
                This isn't right... it just isn't. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - else:
                #char:Jackie_angry_angry|R
                I wonder, {g_name}, would you abandon your crew too, if you had to? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        ~ g_affinity_Jackie -= g_affinityChangeHigh
        ~ g_morale -= g_statChangeMid

        #char:--
        As the 41-Bis starts lift-off, you see Horacio arrive below.

        #char:Horacio_happy|L
        H-here I am caravaneers, I'll just have to—

        #char:Horacio_fear|L
        ...! {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}

        #char:Horacio_fear|L
        <shake>Noooo!!</shake> Please, you are my only chance of—

        #char:--
        You aren't able to hear the rest, as Kleber takes the ship far from the warehouse.

        ~ FadeTo("black", 1, -1)

        -> horacio_neutral_ending

    // -   #char:--
    //     You flee through the streets of Azure, the guards hot on your thrusters.

    //     {
    //         - g_fuel < 30:
    //             #char:Kleber_fear_angry|L
    //             C—Cap! We're low on fuel! We can't go on for much longer! {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad2")}

    //         -> crystals_no_fuel_bad_end

    //         - else:
    //             #char:Kleber_fear_angry|L
    //             C—crap! I hope we have enough fuel for this! {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad2")}

    //         -> crystals_chase_start
    //     }



= crystals_no_fuel_bad_end

//#char:--
//The 41-Bis is only able to go a few more minutes before the fuel tank alarms beep.

#char:Jackie_sad_sad|L
<shake>No...</shake> Not like this! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

#char:--
Kleber lets out a few expletives as the government ships immediately surround you.

#char:--
Everything else is a blur. You're separated from each other and taken in for questioning.

#char:--
Poor Horacio is arrested inside his workshop.

~ g_timeChange = 7
~ g_fuelChange = 0
~ g_suppliesChange = 0
~ g_moraleChange = 0

~ DayChange()

#char:--
Detained in seaweed cell for a week. What a way to end a delivery.

#char:--
You are eventually released — but not without a mighty fine.

~ g_grana -= g_granaChangeHigh * 2
~ g_morale -= g_statChangeMid

#char:--
The reunion with your crew is mostly silent. Guards escort the 41-Bis outside of the city.

#char:--
"And remember, if we catch you in the city again, you'll get <shake>way</shake> more than a slap on the wrist."

#char:--
Even after you leave, the mood remains low for a while.

#char:Jackie_sad_sad|L
...You think Horacio is alright? Alive, at least? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

#char:Kleber_sad_sad|R
I guess. He's valuable to the provisional government, so he'll probably keep working for them.

#char:Barto_sad_sad|R
Regardless, it is out of our hands now.

#char:--
There's something else worrying you, though.

#char:--
With your little time behind bars, Marimbondo's deadline has drawn near. {StopMusic()}

{UnlockAchievement("TURTLE_IN_TIME")}

-> EVENT_END



= crystals_chase_start

{
    - helped_horacio:

        #char:Barto_fear_angry|L
        Horacio! You're an Azurian, help guide us out of here! {Emotion("Explosion", "39f2d6")} {PlaySFX("StrongWoosh")} {PlayMusic("Action")}

        #char:Horacio_fear|R
        Try the shopping district in a few blocks! There's an exit!

        #char:Horacio_fear|R
        Even if you can't lose them, at least you can buy us time!

        #char:Horacio_fear|R
        Young lady! You're an engineer, yes?

        #char:Jackie_surprised_happy|L
        Oh! Yeah, I am!
        
        #char:Horacio_fear|R
        Please, help me finish my machine!

        #char:Jackie_surprised_neutral|L
        B-but this is old technology! 
        
        #char:Jackie_surprised_neutral|L
        I don't know if I can!

        * [MOTIVATE¬Tell her she's more than capable of doing so.>>]
            #char:--
            <b>This</b> is the moment she was talking about. You tell her that she will make it.

            //AFFINITY PASS
            {
                - g_affinity_Jackie >= 25:
                    #char:Jackie_surprised_happy|L
                    The moment...! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

                    #char:Jackie_happy_happy|L
                    Right! I <b>am</b> this ship's engineer! If you believe in me, then I will, too! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Love1")}

                - g_affinity_Jackie < 25 && g_affinity_Jackie >= 0:
                    #char:Jackie_surprised_happy|L
                    The moment...! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

                    #char:Jackie_happy_happy|L
                    Okay! I <b>WILL</b> make it!

                - g_affinity_Jackie < 0 && g_affinity_Jackie >= -50:
                    #char:Jackie_neutral_happy|L
                    So <i>you</i> think I can do this? Fine! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

                - else:
                    #char:Jackie_surprised_neutral|L
                    I don't know if I believe that pep talk coming from <i>you</i>, but fine! {Shake("Big Face", 0.5, 0.3)}
            }

            ~ g_affinity_Jackie += g_affinityChangeHigh

            #char:Jackie_happy_happy|L
            ...Alright, Horacio! Just tell me what you need! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

            -> crystals_chase_1

        * [FACEPALM¬Tell her she will have to find a way.>>]
            #char:--
            You tell her to figure it out, like she always does. No time for pep talks.

            //AFFINITY PASS
            {
                - g_affinity_Jackie >= -50:
                    #char:Jackie_sad_sad|L
                    Gee, I was expecting some encouragement, {g_name}. Anyway!

                - else:
                    #char:Jackie_angry_angry|L
                    Is <i>this</i> what you call motivation? Hah, whatever!
            }

            #char:Jackie_neutral_neutral|L
            ...Anyway.

            #char:--
            In just a moment, you can see Jackie steel her resolve.

            #char:Jackie_happy_happy|L
            ...Alright, Horacio! Just tell me what you need! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            -> crystals_chase_1

    - left_horacio:

        #char:Barto_fear_angry|L
        <shake>Kleber!</shake> How do we get out of here!?

        #char:Kleber_neutral_happy|R
        Huh... I think there's an exit in the shopping district close by!

        #char:Kleber_happy_happy|R
        I can see the fence in the distance!

        -> crystals_chase_1
}

= crystals_dice_roll

{
    - crystals_chase_4 > 0:
        {
            - crystalsChaseDirection == "Left":
                {
                    - azureGuardsDirection >= 1 && azureGuardsDirection <= 12:
                    -> crystals_chase_outrun

                    - azureGuardsDirection >= 13 && azureGuardsDirection <= 30:
                    -> crystals_chase_captured
                }

            - crystalsChaseDirection == "Right":
                {
                    - azureGuardsDirection >= 13 && azureGuardsDirection <= 30:
                    -> crystals_chase_outrun

                    - azureGuardsDirection >= 1 && azureGuardsDirection <= 12:
                    -> crystals_chase_captured
                }
        }

    - crystals_chase_3 > 0:
        {
            - crystalsChaseDirection == "Left":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 6:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 7 && azureGuardsDirection <= 9:
                            -> crystals_chase_captured
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 6:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 21 && azureGuardsDirection <= 30:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_4
                        }
                }

            - crystalsChaseDirection == "Front":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 5:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 6 && azureGuardsDirection <= 9:
                            -> crystals_chase_captured
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection >= 10 && azureGuardsDirection <= 15:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 16 && azureGuardsDirection <= 25:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_4
                        }
                }

            - crystalsChaseDirection == "Right":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection >= 4 && azureGuardsDirection <= 9:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 3:
                            -> crystals_chase_captured
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection >= 25 && azureGuardsDirection <= 30:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 10:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_4
                        }
                }
        }

    - crystals_chase_2 > 0:
        {
            - crystalsChaseDirection == "Left":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 3:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 8 && azureGuardsDirection <= 9:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_3
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 3:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 25 && azureGuardsDirection <= 30:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_3
                        }
                }

            - crystalsChaseDirection == "Front":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection >= 3 && azureGuardsDirection <= 5:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 6 && azureGuardsDirection <= 7:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_3
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection >= 13 && azureGuardsDirection <= 15:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 16 && azureGuardsDirection <= 21:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_3
                        }
                }

            - crystalsChaseDirection == "Right":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection >= 7 && azureGuardsDirection <= 9:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 2:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_3
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection >= 28 && azureGuardsDirection <= 30:
                            -> crystals_chase_outrun

                            - azureGuardsDirection >= 1 && azureGuardsDirection <= 6:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_3
                        }
                }
        }

    - crystals_chase_1 > 0:
        {
            - crystalsChaseDirection == "Left":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection == 1:
                            -> crystals_chase_outrun

                            - azureGuardsDirection == 9:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_2
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection == 1:
                            -> crystals_chase_outrun

                            - azureGuardsDirection == 30:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_2
                        }
                }

            - crystalsChaseDirection == "Front":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection == 5:
                            -> crystals_chase_outrun

                            - azureGuardsDirection == 6:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_2
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection == 15:
                            -> crystals_chase_outrun

                            - azureGuardsDirection == 16:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_2
                        }
                }

            - crystalsChaseDirection == "Right":
                {
                    - helped_horacio:
                        {
                            - azureGuardsDirection == 9:
                            -> crystals_chase_outrun

                            - azureGuardsDirection == 1:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_2
                        }

                    - left_horacio:
                        {
                            - azureGuardsDirection == 30:
                            -> crystals_chase_outrun

                            - azureGuardsDirection == 1:
                            -> crystals_chase_captured

                            - else:
                            -> crystals_chase_2
                        }
                }
        }
}

= crystals_chase_1

{
    - helped_horacio:
        #char:--
        Jackie and Horacio take the watch to the cargo hold.

        #char:Kleber_fear_sad|R
        That's great and all, but I'd rather not wait around until they get us!

        ~ azureGuardsDirection = RANDOM(1,9)

    - left_horacio:

        #char:Barto_fear_sad|L
        <shake>Kleber</shake>, they're closing in! {Emotion("Explosion", "39f2d6")} {PlaySFX("Woosh")}

        #char:Kleber_angry_angry|R
        <shake>I know, I know!</shake> I'm going as fast as I can! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

        ~ azureGuardsDirection = RANDOM(1,30)
}

#char:Kleber_surprised_sad|R
Alright, Cap, I need you to help me with directions.

#char:Kleber_surprised_sad|R
I remember this place being a labyrinth. Let's zigzag around and lose them before going for the exit!

#char:Kleber_surprised_neutral|R
There's a pedestrian zone to our right. No other ships obstructing us. <i>Or them.</i>

#char:Kleber_surprised_neutral|R
I see a bunch of shops to our left. Trickier run, but a better chance to lose them.

#char:Kleber_surprised_neutral|R
Or I can keep going forward as fast as I can.

#char:Kleber_fear_neutral|R
But please, <shake>answer fast!</shake>  {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

+ [POINT_LEFT¬Turn in the direction of the malls.>F>]
    ~ crystalsChaseDirection = "Left"

-> crystals_dice_roll

+ [POINT_UP¬Keep going forward.>F>]
    ~ crystalsChaseDirection = "Front"

-> crystals_dice_roll

+ [POINT_RIGHT¬Turn in the direction of the pedestrian zone.>F>]
    ~ crystalsChaseDirection = "Right"

-> crystals_dice_roll

= crystals_chase_2

{
    - crystalsChaseDirection == "Left":
        #char:--
        Kleber swerves left <>

        {shuffle:
            - and almost crashes straight into a street vendor. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

            - and the stabilizer sail grazes the side of a building. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

            - and plows through some kind of underwater flora that sticks to the windscreen. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}
        }

    - crystalsChaseDirection == "Front":
        #char:--
        Kleber keeps rushing forward <>

        {shuffle:
            - in a way that is probably a crime in Azure.//unique effect wind?

            - and a strange creature with suckers briefly sticks to the windscreen before sliding off.//unique effect wind?

            - and a few passenger ships are forced to dodge.//unique effect wind?
        }

    - crystalsChaseDirection == "Right":
        #char:--
        Kleber swerves right <>

        {shuffle:
            - and crashes into a clothes shop, going out through the other side. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

            - and flies over a restaurant, scaring several citizens. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

            - and almost hits a large azurian transport vehicle, dodging at the last second. 
        }
}

#char:--
Barto screams like you've never seen before.

{
    - helped_horacio:
        #char:Jackie_fear_happy|L
        What is happening in there, Kleber!? {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

        #char:Kleber_fear_angry|R
        N-Nothing! We're FINE! {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}

        #char:Horacio_neutral|L
        Just a little bit longer! We're doing great, Jackie!

        #char:--
        Before you can overhear more, Kleber calls you again.

        ~ azureGuardsDirection = RANDOM(1,9)

    - left_horacio:
        #char:Barto_fear_sad|L
        What do you think you're doing, Kleber!? {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")}

        #char:Kleber_fear_angry|R
        Keeping us alive and out of jail, that's what! {Emotion("Explosion", "39f2d6")} {PlaySFX("Woosh")}

        ~ azureGuardsDirection = RANDOM(1,30)
}

#char:Kleber_neutral_angry|R
Cap, I see a mall to the right! No telling if there's another exit, but we can try to lose them in there!

#char:Kleber_surprised_sad|R
Wait, is that a sewer access on the left? I think I can fit the 41-Bis, but no idea where we'll end up!

#char:Barto_fear_happy|L
Why do you always come up with crazy stunts!? Just keep going straight! {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")}

+ (crystals_sewers) [POINT_LEFT¬Use the sewer access.>F>]
    #char:--
    Kleber enters the sewers. The ship is dark for a moment, before the lights turn on.

    ~ crystalsChaseDirection = "Left"

-> crystals_dice_roll

+ (crystals_street) [POINT_UP¬Keep going straight.>F>]
    #char:--
    You order him to keep going straight. Something flashes by you, grazing the ship's side. {Shake("All", 1, 1)} {PlaySFX("SmallDamage")}

    ~ crystalsChaseDirection = "Front"

-> crystals_dice_roll

+ (crystals_mall) [POINT_RIGHT¬Turn in the direction of the mall.>F>]
    #char:--
    Kleber turns towards the mall.

    ~ crystalsChaseDirection = "Right"

-> crystals_dice_roll



= crystals_chase_3

#char:--
You're putting some distance between you and the guards.

{shuffle:
    -
        #char:--
        However, two other soldier ships have joined the chase.

    -
        #char:--
        What you're worried about is how you'll get through the gated fence.

    -
        #char:--
        Several flashes pass through the ship, accompanied by loud noises. {PlaySFX("AzureCops")}

}

{
    - E_Mission_Rookie_TheCursedCachaca.ending_bottle_breaking:
        #char:--
        A voice comes in through the Caravan Network.

        #char:--
        "Freeze immediately! We are aware of your wanted status in Spore Heights!"

        #char:--
        "You're just making this harder on yourselves!"

}

{
    - helped_horacio:
        #char:Barto_fear_happy|L
        J-Jackie, Horacio, are you done already? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        #char:Horacio_fear|R
        Almost there!

        #char:Jackie_surprised_happy|L
        Yup! Just buy us a couple minutes!

        ~ azureGuardsDirection = RANDOM(1,9)

    - left_horacio:
        #char:Barto_fear_happy|L
        T-the gate! We have to get to the gate! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

        #char:Kleber_angry_angry|R
        I know, I know! We're almost there! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

        ~ azureGuardsDirection = RANDOM(1,30)
}

#char:Kleber_neutral_angry|R
There's a crossroad over there, Cap! <>

{
    - crystals_sewers:
        I think we can go right, inside that pipe!

        #char:Barto_fear_angry|L
        Go left, <i>left</i>! I see light! It leads out for sure!

        #char:Barto_fear_happy|L
        Or-or maybe go up that ramp ahead! <shake>I-I have no idea!</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

    - crystals_street:
        I think we can go up that elevated highway on the right!

        #char:Barto_fear_sad|L
        What!? We would be in the wrong way!

        #char:Barto_fear_angry|L
        We have to keep going straight here!

        #char:Kleber_angry_angry|R
        Do you want to escape or follow traffic rules!? {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

        #char:Barto_fear_angry|L
        At least turn right instead of left, then!

    - crystals_mall:
        I think there's an exit if we follow that corridor on the left!

        #char:Barto_fear_angry|L
        That way is too narrow! Keep going ahead, I see another exit!

        #char:Kleber_angry_angry|R
        If we go along a wide space without any obstacles, we'll get shot! {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}
        
        #char:Kleber_angry_angry|R
        Even that garage on the right would give us a better chance!
}

+ [POINT_LEFT¬Turn left.>F>]

    ~ crystalsChaseDirection = "Left"

-> crystals_dice_roll

+ [POINT_UP¬Go up.>F>]

    ~ crystalsChaseDirection = "Front"

-> crystals_dice_roll

+ [POINT_RIGHT¬Turn right.>F>]

    ~ crystalsChaseDirection = "Right"

-> crystals_dice_roll



= crystals_chase_4

#char:--
You're close to the gate now. Unfortunately, even more ships have come.

#char:Kleber_angry_angry|R
Come on, come <shake>on</shake>! We're so close! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit2")}

~ azureGuardsDirection = RANDOM(1,30)

#char:Kleber_angry_angry|R
Ok, two ways to get there: do we take the elevated path on the left or stay here on the right?

+ [POINT_LEFT¬Take the path on your left.>F>]

    ~ crystalsChaseDirection = "Left"

-> crystals_dice_roll

+ [POINT_RIGHT¬Take the path on your right.>F>]

    ~ crystalsChaseDirection = "Right"

-> crystals_dice_roll



= crystals_chase_outrun

~ g_outran_azurian_pursuers = true

#char:--
You approach the gated fence. Kleber puts you at full speed.

{
    - helped_horacio:

        #char:Barto_fear_angry|L
        Kleber, are you mad!? We'll crash! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

        #char:Kleber_angry_angry|R
        That's exactly what I'm going for!

        #char:Jackie_happy_happy|L
        Just a <wave>liiiittle</wave> more and...

        #char:Horacio_happy|R
        You did it, Jackie! It's finished! {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

        #char:--
        Barto and Kleber fall to the ground and cover their heads. The 41-Bis shakes violently.  {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")} {StopMusic()}

        #char:--
        You get back up. Surprisingly, nothing is broken.

        #char:Kleber_surprised_happy|R
        Guess we got through?

        ~ g_morale += g_statChangeHigh

        #char:--
        In front of you, in the distance, is a small military outpost.
        
        #char:--
        It's not that big, just couple of security rooms and a warehouse built around a gated fence.

        #char:Barto_surprised_sad|L
        <shake>What... what happened?</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

        #char:Horacio_happy|R
        Ah, looks like it worked!

        #char:--
        Horacio and Jackie come back to the cockpit.

        #char:Jackie_happy_neutral|L
        Sorry about the emergency test drive, everyone. 

        #char:Horacio_neutral|R
        We thought it would be the best way to get out of that pickle, see.

        #char:Kleber_surprised_sad|R
        Wait, wait, what did you two do? Didn't we crash? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

        #char:Jackie_happy_happy|L
        What did we do with a <i>time machine</i>? We went back in time again, of course! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

        #char:Horacio_neutral|R
        I sent the ship and everything in it to <i>just before</i> your ship entered the city. 
        
        #char:Horacio_neutral|R
        <i>Yesterday</i>, to be precise.

        #char:Horacio_happy|R
        So to the government sea-dogs, you've never got past this outpost, and I vanished without a trace.

        {
            - E_Mission_Rookie_TheCursedCachaca.ending_bottle_breaking:
                #char:--
                Good. Being wanted in one place in the Skyways is good enough, thank you.
        }

        #char:Horacio_fear|R
        Now, I'd love to go into the intricacies of the process... at a safer location, of course.

        ~ FadeTo("black", 1, 1)

        -> horacio_good_ending


    - left_horacio:

        #char:--
        Some guards notice you, but it's too late.

        #char:--
        The 41-Bis crashes through, damaging the front of the ship, but not much else.  {Shake("All", 3, -1)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {Blink("All", 1, -1, "white")}

        #char:Kleber_happy_angry|R
        <shake>Ha... haha... ahahAHAHAHA!</shake> {StopMusic()}
        
        #char:Kleber_happy_angry|R
        I love this piece of junk's chassis so much! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

        #char:--
        After a few more minutes, you lose your pursuers in the waters of the Floating Ocean.

        ~ g_morale += g_statChangeLow

        ~ FadeTo("black", 1, 1)

        -> horacio_neutral_ending

}

= horacio_good_ending

#location: Skyways

#char:Horacio_neutral|R
Well, this is goodbye, then. {PlayMusic("Sad")}

#char:Jackie_happy_happy|L
That was amazing! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:Jackie_happy_happy|L
Never thought I'd help with a time machine in my life!

#char:Horacio_happy|R
And help you did! I wouldn't have this chance without you.

#char:Horacio_neutral|R
In fact... here. I want you to have this.

#char:--
Horacio hands her a small Angra Crystal from the cargo.

#char:Horacio_neutral|R
If you use the blueprints I took with me to the ship, you can probably harness this crystal.

#char:Horacio_neutral|R
It's not much, but it can probably help you rewind a few seconds in a pinch.

#char:Jackie_surprised_happy|L
Seriously? You're letting us have it? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Horacio_neutral|R
It won't impact my travel too much. Consider it an extra reward.

~ g_morale += g_statChangeHigh
~ CheckCabinet()

#char:Horacio_neutral|R
All I ask is that you keep the blueprints safe.

#char:Jackie_happy_happy|L
We will, of course! Thank you so much! {Emotion("Heart", "ea2929")} {PlaySFX("Shimmer2")}

#char:Horacio_happy|R
It's an odd feeling, you know? I have to return to my time, but part of me will always treasure this moment.

#char:--
Horacio turns a few dials in the back. The crystals begin to react.

#char:Horacio_sad|R
I don't know if this will work, to be honest.

#char:Horacio_neutral|R
But there are people waiting for me, so the least I can do is try.

#char:Kleber_happy_sad|L
Heh. That's the caravaneer spirit there, old man!

#char:Barto_happy_happy|R
Kleber, being <i>poetic</i>? I never thought I would see the day.

#char:--
The machine and Horacio are engulfed in a bright light.

#char:Horacio_neutral|R
Farewell, folks from the future! 

#char:Horacio_happy|R
<fade>I wish you the best of luck!</fade> {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")}

~ FadeTo("white", 1, 1)

#char:--
This time, nobody falls down.

#char:Jackie_surprised_neutral|L
...

#char:Jackie_neutral_sad|L
You know, I spent my whole life listening to stories about the caravan life.

//AFFINITY PASS
{
    - g_affinity_Jackie >= 25:
        #char:Jackie_happy_happy|L
        But now... thanks to you, {g_name}, <>

    - g_affinity_Jackie < 25 && g_affinity_Jackie >= 0:
        #char:Jackie_happy_angry|L
        But now... after all these trips with you, <>

    - g_affinity_Jackie < 0 && g_affinity_Jackie >= -40:
        #char:Jackie_neutral_neutral|L
        But now... <>

    - else:
        #char:Jackie_neutral_sad|L
        But now... even though I'm not happy with the way things are between us, <>
}

I feel like I've finally <i>lived</i> the caravan life. {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

#char:Barto_happy_neutral|R
Definitely. Some things cannot be learned via second hand knowledge.

#char:Jackie_happy_happy|L
Next time I see grandma, <i>I'll</i> be the one with stories to tell <i>her</i>!

#char:Kleber_happy_happy|R
You bet! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

//AFFINITY PASS:

{   
    - g_affinity_Kleber >= 0:

        #char:Kleber_neutral_neutral|R
        Speaking of that...

        #char:Kleber_sad_neutral|R
        We have someone else here who risked their life for family.

        #char:Kleber_sad_sad|R
        {g_name}. Your deadline is getting close, right?

}

#char:Barto_surprised_angry|L
...I believe that was our last mission together, then?

//AFFINITY PASS
{
    - g_affinity_Jackie > 0:
        #char:Jackie_neutral_neutral|L
        Well... No. Not yet.

        #char:Jackie_neutral_neutral|L
        If we could help Horacio, we can help <>

        {
            - g_pronoun == "He":
                him.

            - g_pronoun == "She":
                her.

            - g_pronoun == "They":
                them.
        }

        #char:Jackie_happy_angry|L
        We'll definitely find a fix for this, {g_name}! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

//AFFINITY PASS
{
    - g_affinity_Kleber > 0:
        #char:Kleber_neutral_sad|R
        Well, you aren't getting rid of me that easily, {g_name}. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

//AFFINITY PASS
{
    - g_affinity_Barto > 0:
        #char:Barto_fear_neutral|L
        ...Runaway pets, cursed bottles, tentacles, time traveling and now this.

        #char:Barto_neutral_neutral|L
        You will be the death of me. 
        
        #char:Barto_neutral_neutral|L
        But... Count me in to help with the loan shark.

        #char:Barto_happy_happy|L
        A cook cannot leave his crew starving, can he? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

//AFFINITY PASS
{
    - g_affinity_Barto > 0 || g_affinity_Jackie > 0 || g_affinity_Kleber > 0:
        #char:--
        You're still nervous. But the reassurance is welcome.

        #char:--
        Horacio kept struggling alone. But you have a crew.

    - else:
        #char:--
        It's hard to define what you're feeling right now.

        #char:--
        But it's time to do what you set out to do.
}

#char:--
Back in Surface, your family is still waiting for you. {StopMusic()}

{UnlockAchievement("TURTLE_IN_TIME")}

-> EVENT_END



= horacio_neutral_ending

#char:--
The crew is silent as Kleber steers the ship awy from Azure. Until a transmission comes. {PlayMusic("SupplyManager")}

#char:--
"Hello, fugitives. It is our understanding that you may have come into contact with sensitive informaton." {PlaySFX("Transmission")}

#char:--
"We'd like to extend a deal to you."

#char:Kleber_angry_neutral|R
Oh, I bet you want to "deal" with us, alright! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

#char:--
Jackie and Barto shush Kleber. If the soldier is annoyed, you can't tell.

#char:--
"We'll transfer about {g_granaChangeMid} Grana to you via a close-by Capy-Bar."

~ g_grana += g_granaChangeMid

#char:--
"All we ask is that you keep quiet about this delivery and its client."

#char:--
"Keep the money if you want, but otherwise it'll be like it never happened."

#char:Kleber_angry_neutral|R
What's the catch, huh?

#char:--
"No 'catch'. But if you do choose to chat about what happened... You'll be considered enemies of the state."

#char:--
"And that means you will be pursued until the end of your life."

#char:--
"That is all. Do not come back to Azure." {StopMusic()}

~ FadeTo("Black", 1, 1)

#char:Kleber_surprised_sad|R
Seems like a "surrender or die" kinda thing.

#char:Barto_neutral_angry|L
Indeed. The bribe is probably waiting for us already, too.

// {
//     - g_affinity_Kleber > 25:
//         #char:Kleber_surprised_sad|R
//         Hmph. Maybe you should have bargained for more money, Cap.
// }

//AFFINITY PASS
{
    - g_affinity_Jackie >= 25:
        #char:Jackie_sad_angry|L
        I get why we did it, {g_name}, but still. We should have been able to help Horacio... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    - g_affinity_Jackie < 25 && g_affinity_Jackie >= 0:
        #char:Jackie_sad_neutral|L
        We should have been able to help Horacio... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    - g_affinity_Jackie < 0 && g_affinity_Jackie >= -25:
        #char:Jackie_sad_sad|L
        I really regret not doing more. We could have taken the risk there. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    - else:
        #char:Jackie_sad_sad|L
        I can't believe we threw Horacio to the wolves after he risked so much... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
}

//AFFINITY PASS:

{   
    - g_affinity_Kleber >= 0:
    
        #char:Kleber_sad_sad|R
        {g_name}. Your deadline is getting close, right?

}

#char:Barto_surprised_angry|L
...I believe that was our last mission together, then?

//AFFINITY PASS
{
    - g_affinity_Jackie > 0:

        #char:Jackie_sad_neutral|L
        Well... No. Not yet.

        #char:Jackie_neutral_neutral|L
        If we managed to get rid of so many things together, we can help <>

        {
            - g_pronoun == "He":
                him.

            - g_pronoun == "She":
                her.

            - g_pronoun == "They":
                them.
        }

        {
            - savedHoracio == true:

                #char:Jackie_sad_angry|L
                Especially after we managed to help Horacio.
        }

        #char:Jackie_happy_angry|L
        We'll definitely find a fix for this, {g_name}! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

//AFFINITY PASS
{
    - g_affinity_Kleber > 0:
        #char:Kleber_neutral_sad|R
        Well, you aren't getting rid of me that easily, {g_name}. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

}

//AFFINITY PASS
{
    - g_affinity_Barto > 0:
        #char:Barto_fear_neutral|L
        ...Runaway pets, cursed bottles, tentacles, time traveling and now this.

        #char:Barto_neutral_neutral|L
        You will be the death of me. 
        
        #char:Barto_neutral_neutral|L
        But... Count me in to help with the loan shark.

        #char:Barto_happy_happy|L
        A cook cannot leave his crew starving, can he? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

//AFFINITY PASS
{
    - g_affinity_Barto > 0 || g_affinity_Jackie > 0 || g_affinity_Kleber > 0:
        #char:--
        You're still nervous. But the reassurance is welcome.

        #char:--
        Horacio kept struggling alone. But you have a crew.

    - else:
        #char:--
        It's hard to define what you're feeling right now.

        #char:--
        But it's time to do what you set out to do.
}

#char:--
Back in Surface, your family is still waiting for you. {StopMusic()}

{UnlockAchievement("TURTLE_IN_TIME")}

-> EVENT_END


= crystals_chase_captured

#char:--
The 41-Bis is surrounded by several patrol ships at the next intersection.

#char:Jackie_sad_sad|L
<shake>No...</shake> Not like this! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

{
    - helped_horacio:
        #char:Horacio_sad|R
        Marina... Berilo... Iara... My dears, I'm sorry. {Emotion("Heart", "ea2929")} {PlaySFX("Bad2")}

        #char:Horacio_sad|R
        Looks like you'll have to wait a while longer. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:--
        You can't help but think about your loved ones too.

    - left_horacio:
        #char:--
        Kleber lets out a few expletives as the ship slows to a stop.
}

#char:--
The government ships immediately surround you. {StopMusic()}

{
    - helped_horacio:
        #char:--
        Everything else is a blur. You're all separated from Horacio and taken in for questioning.

    - left_horacio:
        #char:--
        Everything else is a blur. You're separated from each other and taken in for questioning.
}

~ g_timeChange = 7
~ g_fuelChange = 0
~ g_suppliesChange = 0
~ g_moraleChange = 0

~ DayChange()

#char:--
After being detained for a week, you end up being released — but not without a mighty fine.

~ g_grana -= g_granaChangeHigh * 2
~ g_morale -= g_statChangeMid

#char:--
The reunion with your crew is mostly silent. Guards escort the 41-Bis outside of the city.

#char:--
"And remember, if we catch you in the city again, you'll get <i>way</i> more than a slap on the wrist."

#char:--
Even after you leave, the mood remains low for a while.

#char:Jackie_sad_sad|L
...You think Horacio is alright? Alive, at least? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

#char:Kleber_sad_sad|R
I guess. He's valuable to the provisional government, so he'll probably keep working for them.

#char:Barto_sad_sad|R
Regardless, it is out of our hands now.

#char:--
There's something else worrying you, though.

#char:--
With your little time behind bars, Marimbondo's deadline has drawn near. {StopMusic()}

{UnlockAchievement("TURTLE_IN_TIME")}

-> EVENT_END