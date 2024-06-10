===E_Mission_Rookie_TheCursedCachaca===

//Mabel check: Ready to be localized!

#tier: Rookie
#scope: Mission

VAR cursedRoll = 0
VAR cursedByTheBottle = ""
VAR threwAwayTheBottle = false
VAR paidTheDebt = false
VAR trustedKleber = false
VAR shot_at_crew = false

~ temp storyDirection = -> part1

{
    - part2 > 0:
        ~ storyDirection = -> part3
    - part1 > 0:
        ~ storyDirection = -> part2
}

-> storyDirection

= part1

#location: Skyways

~ g_time = g_deadline_M2
~ g_timeLimit = g_deadline_M2


    #char:--
    The crew gathers in the cockpit once again.

    #char:--
    Client's call should come in soon.

    #char:--
    You feel a bit uneasy as you wait. Not as much as in the first delivery, though.

    #char:--
    The cargo helps this time - it's just liquor. Nothing alive or about to hatch.
    
    #char:--
    <i>Probably</i>. 

    #char:--
    Your eyes stop at Kleber. 
    
    #char:--
    You can't help but notice how the pilot keeps staring at the ground.

    #char:Kleber_sad_neutral|L
    ... {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")}

    #char:--
    He has been like this ever since he read the briefing. 

    #char:--
    Before you can ask about it, your client's hologram appears. {PlayMusic("ClientCall")}

    #char:Silva_laughing_hologram|L
    <wave>What's up, rookies?</wave> {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

    #char:Silva_neutral_hologram|L
    I'm Silva, owner of the one and only Champignons Casino, best in the Heights. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    #char:Jackie_neutral_neutral|R
    Pleased to meet you! 
    
    #char:Jackie_happy_angry|R
    We are—

    #char:Silva_disgust_hologram|L
    I couldn't care less, <i>tin can</i>. Spare me the formalities. {Shake("Big Face", 1, 0.3)} {PlaySFX("Hit1")}

    #char:Jackie_surprised_neutral|R
    <shake>What?</shake> {Blink("Big Face", 0.5, -1, "white")} {PlaySFX("LightWoosh")}
    
    #char:Jackie_angry_neutral|R
    Tin can? <shake a=1.5><b>Really?</b></i> {Shake("Big Face", 1, 0.3)} {Emotion("Spiral", "ea2929")} {PlaySFX("Bad2")}
    
    #char:Jackie_angry_angry|R
    Couldn't you come up with anything better? 
    
    #char:--
    Good thing he's a hologram, or Jackie's third hand would've probably slapped him by now. Maybe you'd join in.
    
    #char:Silva_disgust_hologram|L
    Anyway! I need that shipment of liquor in my premises in a week. 
    
    #char:Silva_neutral_hologram|L
    Got it? <wiggle>7 days</wiggle>.

    #char:--
    Silva gets distracted barking orders to someone behind him. 
    
    #char:--
    Barto gets closer and whispers something in your ear.

    #char:Barto_neutral_sad|R
    Captain, I know his Casino. Almost worked there once. {PlaySFX("LightWoosh")}
    
    #char:Barto_neutral_sad|R
    It's not even the best. It's actually second place. In a <bounce>regional</bounce> ranking.

    //AFFINITY PASS:

    { 
        - g_affinity_Barto <= -20:
        #char:Barto_angry_angry|R
        I mean, not that working here is any better. I'm starting to wonder if I should have been there instead... {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
    }

    #char:Silva_neutral_hologram|L
    So, ever been to the Spore Heights? Not that easy to fly around here. 
    
    #char:Silva_laughing_hologram|L
    <wiggle>Hope y'all got a good pilot!</wiggle>

    #char:Jackie_neutral_angry|R
    Now is the perfect time for your boasting, Kleb— 

    #char:Jackie_surprised_sad|R
    Wait, where did he go? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

    #char:--
    You look at the cockpit chair. No one's there.

    #char:Silva_disgust_hologram|L
    Hey hey, attention here! Ain't I paying you? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}
    
    #char:Silva_neutral_hologram|L
    Let me make something clear: 

    #char:Silva_disgust_hologram|L
    Do not damage the bottles and do not open them under <b><shake>any</shake></b> circumstances.

    #char:Silva_neutral_hologram|L
    Especially my black cachaça. That one is for VIPs only. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

    #char:Silva_disgust_hologram|L
    Believe me - if you try opening them, <b><shake>I'll know.</shake></b> {Shake("Big Face", 0.5, 1)}
    
    #char:Silva_disgust_hologram|L
    You'd be swallowing some spores before going back to your capybaras.

    #char:--
    You've handled nasty people on Surface, but this one is taking the cake. 
    
    #char:--
    He looks like he's expecting an answer to his intimidation.

        * [ANGRY¬Confront Silva about his attitude.>>]
        
        #char:--
        You say that being this rude to the crew that's carrying something so important for him is a stupid move, but you still guarantee you'll do the job.

        #char:Silva_laughing_hologram|L
        We got a feisty one here, huh? {Emotion("Explosion", "FFFFFF")} {PlaySFX("StrongWoosh")}
        
        #char:Silva_disgust_hologram|L
        Haven't you heard that the client is <shake>always right</shake>? 
        
        #char:Silva_disgust_hologram|L
        The only idiots who captain Caravans are the ones who desperately need the money. 
        
        #char:Silva_neutral_hologram|L
        Don't you look hungry, <wiggle>little Surfacer</wiggle>? 

        * [RELAX¬Take a deep breath and relax.>>]

        #char:--
        You take a deep breath and thank Silva for all the information. The job will done on time. 
        
        #char:--
        It takes some willpower.

        #char:Silva_disgust_hologram|L
        How obedient. Very <wiggle>Surfacey</wiggle> of you. 

        * [JOKE¬Joke about Champignons casino's actual ranking.>>]

        #char:--
        You ask Silva if all this alcohol is to celebrate being second best casino in the Spore Heights.

        #char:Silva_disgust_hologram|L
        ...

        #char:Silva_disgust_hologram|L
        This is a good moment to remind you that we'll be meeting in <i>person</i>. 
        
        #char:Silva_angry_hologram|L
        Soon. In <i>my</i> territory. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

        #char:Silva_disgust_hologram|L
        You'd do well to hold that filthy Surfacer tongue of yours.

    - #char:--
    You freeze for a moment. 
    
    #char:--
    How does he know you're a Surfacer? 

    #char:--
    The crew is visibly irritated. 
    
    #char:--
    If there's anything else about Silva or the cargo you would like to ask, it's best to do it quickly.

        * [SILVA¬Ask about Silva's role in Spore Heights.>>]

        #char:--
        You ask Silva about himself. If he's so important around the Spore Heights, it could be valuable to the job.

        #char:Silva_neutral_hologram|L
        I'm the boss around here. Built my way to the top of the Heights, all by myself.

        #char:Silva_neutral_hologram|L
        I was one of the first to realize the business potential of mixing gambling and giant mushrooms's real estate.

        #char:Silva_laughing_hologram|L
        A high-rolling patronage that's high on spores. <wave>Genius!</wave> {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        #char:Silva_neutral_hologram|L
        Still, I need to invest more on the booze. Hence the cargo. 

        #char:Silva_neutral_hologram|L
        If you're alive after this job, you'll be more than welcome in Champignons.

        #char:Barto_angry_angry|R
        So we can gamble back to you the money you just paid us? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

        #char:Silva_laughing_hologram|L
        Why - yes! Haha! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Bad1")} {Shake("Big Face", 1, 0.3)}

        * [CARGO¬Request more information about the bottles.>>]

        #char:--
        You ask about the cargo. What's special about these bottles?

        #char:Silva_neutral_hologram|L
        These are antique bottles, centuries old - some are even from Surface.

        #char:Silva_neutral_hologram|L
        Hit the freaking jackpot with this deal. Bough it from a collector.

        ##char:Silva_neutral_hologram|L
        If you're alive after this job, you'll be more than welcome in Champignons. I'll let you take a sip.

        #char:Barto_angry_angry|R
        So we can gamble back to you the money you just paid us? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

        #char:Silva_laughing_hologram|L
        Why - yes! Haha! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Bad1")} {Shake("Big Face", 1, 0.3)}

    - #char:Silva_neutral_hologram|L
    That was fun, rookies. See you in a week.  {StopMusic()}
    
    #char:Silva_disgust_hologram|L
    And <b>don't</b> touch my liquor. {Blink("Big Face", 1, 0.5, "white")} 

    #char:--
    There's a small window of silence as you all discreetly make sure Silva's not listening anymore. {PlaySFX("Hologram")}

    #char:Jackie_sad_sad|R
    <wave>Ugh</wave>. What a jerk. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

    #char:Barto_angry_neutral|L
    Tell me about it! The Heights are filled with businessmen just like him.

    #char:Barto_neutral_neutral|L
    You'd have to see the figures from Shitakassino... or Fungo Bingo. A <shake>nightmare!</shake>

    #char:Jackie_neutral_neutral|R
    <i>Speaking of shady...</i> {PlaySFX("Door")}

    #char:Barto_angry_angry|L
    Well, well. Look who finally decided to show up. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

    #char:Kleber_happy_sad|R
    H-Hey guys. Guess I missed the client's transmission, huh? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery1")} {Shake("Big Face", 1, 0.3)} {Blink("Big Face", 1, 0.5, "white")}
    
    #char:Kleber_happy_sad|R
    Too bad. Y'all seemed to have had a good time.

    #char:--
    You wonder if you should ask him about disappearing <i>right</i> when Silva called or just let it slide.

        * [QUESTION¬Confront Kleber about sneaking out.>>]

        #char:--
        You ask Kleber why he snuck out of the cockpit.

        //AFFINITY PASS:

            {
                - g_affinity_Kleber <= -10:
                    #char:Kleber_angry_neutral|R
                    Geez! When are you going to start trusting me, Captain? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                    #char:Kleber_angry_sad|R
                    I had to check something with the rudder. Making sure we stay alive while flying, you know.
                
                - else:
                    #char:Kleber_happy_angry|R
                    <i>Snuck out</i>, me? Paranoid much?

                    #char:Kleber_happy_happy|R
                    I had to check something with the rudder... Making sure we stay alive while flying, you know? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")}
            }

        ~ g_affinity_Kleber -= g_affinityChangeLow

        * [RELAX¬Let it slide this time.>>]

        #char:--
        You just tell Kleber to be present for the next client call.

        //AFFINITY PASS

        { 
            - g_affinity_Barto <= -10:

            #char:Barto_angry_neutral|L
            Are you <i>really</i> going to let it slide, Captain?

            #char:Barto_neutral_neutral|L
            ...I should have known better.

        }

        #char:Kleber_happy_happy|R
        Fine, fine, my bad. Had to take a quick look at the rudder. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")}


    - #char:Barto_angry_neutral|L
    ...

    #char:Jackie_sad_neutral|R
    ...

    #char:--
    The mood has definitely taken a turn for the worse.

    ~ g_morale -= g_statChangeLow
    
    #char:--
    Still, there are decisions to be made. {PlayMusic("Decision")} 

    #char:--
    You wonder if you should repeat last delivery's strategy. 
    
    #char:--
    Should someone be responsible for keeping an eye on the cargo again?

        + [YES¬Being cautious with the cargo is always good.>>]

        #char:--
        You decide that a bunch of bottles can still bring surprises. 
        
        #char:--
        That's just how the Skies work, apparently.

        #char:-- 
        Still, you have to be cautious. <>

        {
            - E_Mission_Rookie_TheMafagafoPassenger.barto_watches_eggs:
                Barto <>

            - E_Mission_Rookie_TheMafagafoPassenger.jackie_watches_eggs:
                Jackie <>

            - E_Mission_Rookie_TheMafagafoPassenger.kleber_watches_eggs:
                Kleber <>
        }

        really dropped the ball letting the Mafagafo hatch last time.
        
        #char:--
        Should you give your crew another chance or be the sole responsible for checking the cargo?

            ++ [CREW¬Delegate the responsability to the crew.>>]

            -> bottle_decision_crew

            ++ [CAPTAIN¬You will handle it alone.>>]

            ~ cursedByTheBottle = "Captain"

            #char:--
            Best to take matters into your own hands. {StopMusic()} 

            #char:--
            They're just bottles. How bizzare can the Skies get? 

            -> EVENT_END

        + [NO¬There is no need for a watch this time.>>]

        ~ cursedByTheBottle = "None"

        #char:--
        You decide on a hands-off approach with the cargo this time. {StopMusic()}
        
        #char:--
        They're just bottles. How bizzare can the Skies get? 

        -> EVENT_END

    = bottle_decision_crew

    #char:--
    Who should be responsible for the bottles?

    + [BARTO¬Barto.>>]

        ~ cursedByTheBottle = "Barto"

        #char:Barto_surprised_angry|L
        Oh, you want me to watch over the bottles?

        #char:Barto_neutral_sad|L
        I suppose it's fair. I <i>am</i> a cook, after all.

        //AFFINITY PASS:

        { 
            - g_affinity_Barto <= -10:
            #char:Barto_neutral_sad|L
            Seems like you are starting to trust me, huh. It's about time.
        
        }

        ~ g_affinity_Barto += g_affinityChangeMid

        ~ ScreenFlash("white", -1)

        #char:Barto_happy_neutral|L
        Oh! Speaking of bottles, I have an <i>exquisite wine</i> in storage. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

        #char:Barto_happy_angry|L
        I was thinking about using it for our next meal. Make this delivery start off on the right foot.
        
        #char:Kleber_neutral_sad|R
        You're putting the wine on the <shake>food</shake>? Let's just drink it, man! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

        #char:Barto_angry_neutral|L
        ...

        #char:Barto_neutral_neutral|L
        You brute. {StopMusic()}

    + (bottle_jackie) [JACKIE¬Jackie.>>]

        ~ cursedByTheBottle = "Jackie"

        //AFFINITY PASS:

        { 
            - g_affinity_Jackie <= -10:
                #char:Jackie_neutral_neutral|L
                Watch over the cargo? 

                #char:Jackie_neutral_sad|L
                I'll take it as a sign that you'll finally start to trust me, then.

                #char:Jackie_neutral_sad|L
                About time, huh?

            - else:

                #char:Jackie_neutral_neutral|L
                Watch over the cargo? Sure, I can do that! 

        }

        #char:Jackie_happy_angry|L
        We'll get it right this time. I've adjusted the temperature monitors of the cargo hold, so heat won't be a problem! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer2")}

        ~ g_affinity_Jackie += g_affinityChangeMid

        #char:Kleber_surprised_sad|R
        Well, at least one of us is excited about this. {StopMusic()}

    + (bottle_kleber) [KLEBER¬Kleber.>>]

        ~ cursedByTheBottle = "Kleber"

        #char:Kleber_surprised_sad|R
        Hm? Me, take care of all these bottles?

        //AFFINITY PASS:

        { 
            - g_affinity_Kleber <= -10:
                #char:Kleber_neutral_neutral|R
                Oh, so you've <i>finally</i> decided to trust me?
                
                #char:Kleber_neutral_angry|R
                Tsk. About time!

            - else:
                #char:Kleber_surprised_sad|R
                ...

                #char:Kleber_happy_happy|R
                <wave>Suuuuure</wave>! Why not?
            
        }

        ~ g_affinity_Kleber += g_affinityChangeMid

        #char:Barto_angry_angry|L
        You weren't here, Kleber, so I'll repeat.
        
        #char:Barto_angry_angry|L
        Don't tamper with the bottles or Silva will know, Kleber.

        #char:Kleber_angry_neutral|R
        Thanks for the trust guys. Means a lot. 
        
        #char:Kleber_angry_neutral|R
        Of course I ain't tampering with the cargo! {Shake("Big Face", 2, 1)} {StopMusic()}

    -   #char:--
        With that decided, you set course to Spore Heights. 

    -> EVENT_END

= part2

    {
        - cursedByTheBottle == "None":
            {GetRandomCurse()}
    }

    #char:--
    Sleep has been a difficult undertaking.

    #char:--
    The crew is complaining about it too, each with their own nightmares.

    #char:--
    That's probably why you're walking in the middle of the night.

    #char:--
    Alone. 
    
    #char:--
    In the cargo hold.

    #char:--
    Heart beating fast.
    
    #char:--
    A nagging feeling that you shouldn't be here.

    #char:--
    You eye the black crate that houses Silva's special cachaça.

    {
        - cursedByTheBottle == "Captain":

            -> scene_of_the_crime_captain

        - cursedByTheBottle == "Barto" || cursedByTheBottle == "Kleber" || cursedByTheBottle == "Jackie":

            -> scene_of_the_crime_crew
    }

    = scene_of_the_crime_crew

            ~ ScreenFlash("red", -1)
            
            #char:--
            The crate has been bust open - the bottle is <shake>gone!</shake> {PlayMusic("Tension")}

            * [FEAR¬Start panicking.>>]

                #char:--
                You pace around for a few moments, hands in your head.

                #char:--
                Did someone break in? Are Jackie, Kleber and Barto involved in this!?

            * [ANGRY¬Be suspicious of your crewmates.>>]

                #char:--
                You trash around franctically in search of the bottle, to no avail.

                #char:--
                If this is Kleber, Jackie or Barto's doing, there will be consequences!

            * [RELAX¬Try to compose yourself.>>]

                #char:--
                You need to understand what happened. No time for despair.

                #char:--
                Taking a deep breath, you examine the scene of the crime. 

            - #char:--
            The crate <>
                
                {
                    - cursedByTheBottle == "Barto":
                        has big scratch marks all over it. Seems like a rushed job.

                    - cursedByTheBottle == "Jackie":
                        has all its upper bolts uncorked. Someone carefully disassembled it.

                    - cursedByTheBottle == "Kleber":
                        has been chipped all over it. Maybe by a switchblade. Looks like someone was looking for a weak spot.
                }

                #char:--
                There's only one who can answer for this.

                * [BARTO¬Confront Barto.>>]
                    
                    #char:--
                    Your chef is in dire straits. 
                    
                    #char:--
                    Time to visit the kitchen. 

                    ~ FadeTo("Black", 1, 1)

                -> confrontation_barto

                * [JACKIE¬Confront Jackie.>>]

                    #char:--
                    Your engineer has a lot to answer to. 
                    
                    #char:--
                    Time to visit the engine room. 

                    ~ FadeTo("Black", 1, 1)

                -> confrontation_jackie

                * [KLEBER¬Confront Kleber.>>]

                    #char:--
                    Your pilot won't be able to sneak out this time. 

                    #char:--
                    Time to visit the cockpit. 

                    ~ FadeTo("Black", 1, 1)

                -> confrontation_kleber

    = scene_of_the_crime_captain

        #char:--
        <color=mafaRed><shake a=0.3>An inspection won't hurt. It's your responsibility.</shake></color>

        #char:--
        Maybe you should leave the cargo hold instead...

        #char:--
        <color=mafaRed><shake a=0.3>You know what, maybe you should stay.</shake></color>

        + [CARGO¬Inspect the cargo.>>]

            #char:--
            <color=mafaRed><shake a=0.3>Yes. Stay.</shake></color>

            ~ FadeTo("Black", 0.5, 0.1)

        #char:--
        <color=mafaRed><shake a=0.5>You open the crate.</shake></color>

        ~ FadeTo("Black", 0.5, 0.1)

        #char:--
        <color=mafaRed><shake a=0.7>The bottle is now in your hands. </shake></color> {PlaySFX("Bottle")}

        ~ FadeTo("Black", 1, 1)

        -> confrontation_captain



    = confrontation_captain

        #char:--
        <color=mafaRed><shake>The black liquid is swishing inside the bottle. It's mesmerizing.</shake></color> {Shake("All", 0.3, 10)} 
        
        //TODO SFX SCREAM
        //TODO UNIQUE EFFECTS DISTORÇÃO

        #char:--
        <color=mafaRed><shake a=0.5>Something's approaching.</shake></color> {PlayMusic("Tension")} {PlaySFX("Door")}

        #char:--
        <color=mafaRed><shake a=0.5>You look at the direction of the sound.</shake></color>
        
        ~ ScreenFlash("red", -1)
        ~ PlaySFX("Hit2")

        #char:--
        <color=mafaRed><shake a=0.5>There are four creatures coming in your direction.</shake></color>
        
        #char:--
        <color=mafaRed><shake a=0.5>One is lanky and has a shining eye.</shake></color>
        
        #char:--
        <color=mafaRed><shake a=0.5>The second has multiple arms.</shake></color>
        
        #char:--
        <color=mafaRed><shake a=0.5>The third is a large, furry beast.</shake></color>

        #char:--
        <color=mafaRed><shake a=0.5>There's a last shadow, hovering above it.</shake></color>
        
        #char:--
        <color=mafaRed><shake a=0.5>It's flying, with insect wings.</shake></color>

        ~ UniqueEffectActivate("CursedCachaça")

        #char:--
        <color=mafaRed><shake a=2><b>"I can save you..."</shake></color></b>

        #char:--
        <color=mafaRed><shake a=2><b>"YOU JUST HAVE TO OPEN!"</shake></color></b>

        #char:--
        <color=mafaRed><shake a=0.5>The bottle is in one of your hands. You grasp your pistol with the other. The first time you'd use it.</shake></color>

        

        + [OPEN¬Open the bottle.>>]

                ~ UniqueEffectDeactivate("CursedCachaça")

                #char:--
                <color=mafaRed><shake>You desperately attempt to uncork the bottle.</shake></color>

                #char:--
                <color=mafaRed><shake>You manage to start rotating it—</shake></color>

                ~ ScreenFlash("white", -1)
                
                #char:--
                You are tackled by one of the beasts! {Shake("All", 1, 1)} {PlaySFX("SmallDamage")} {Blink("All", 2, -1, "White")}

                #char:--
                The bottle falls off of your hands...  {Shake("All", 3, -1)} {StopMusic()}

                #char:--
                And then there's darkness. 

                ~ FadeTo("black", 1, 1)

                #location:Skyways

                #char:--
                You open your eyes. 
                
                #char:--
                Your body still hurts from falling to the ground.

                #char:--
                Looking around, you don't see your aggressor.
                
                #char:--
                Just Kleber, who stares at you incredulously.

                #char:--
                Behind him, Jackie and Barto are frozen in place.

                //AFFINITY PASS:

                {   
                    - g_affinity_Jackie <= -10:
                        #char:Jackie_fear_neutral|L
                        ...What even got into you, Captain? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                
                    - else:
                        #char:Jackie_surprised_angry|L
                        Captain? Are you okay? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}   
                }

                #char:Barto_surprised_angry|L
                {
                    - g_pronoun == "She":
                    Is she even listening to us?

                    - g_pronoun == "He":
                    Is he even listening to us?

                    - g_pronoun == "They":
                    Are they even listening to us?
 
                }

                #char:Kleber_neutral_sad|R
                Huh. Hey, Cap. If you don't mind...
                
                #char:Kleber_angry_sad|R
                Can you <shake>PlEASE</shake> explain what the heck is going on!? {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 2, 0.3)} {PlaySFX("Hit1")}

        + [SHOOT¬Shoot at their direction.>>]

                ~ UniqueEffectDeactivate("CursedCachaça")

                ~ shot_at_crew = true

                #char:--
                You take out your pistol, but it's hard to focus.

                #char:--
                After a second, you shoot— {PlaySFX("Gunshot")}

                ~ ScreenFlash("white", -1)
                
                #char:--
                You miss by a wide margin! {Shake("All", 1, 1)} {PlaySFX("SmallDamage")} {Blink("All", 2, -1, "White")}
                
                #char:--
                The creatures rush forward and one of them throws something at you. {PlaySFX("StrongWoosh")}

                #char:--
                The heavy object sails through the air and smacks you in the shoulder. {PlaySFX("Hit2")} {Shake("All", 0.5, 1)} {Blink("All", 1, -1, "White")} {PlaySFX("Hit1")}
                
                #char:--
                You lose your balance, falling backwards.

                #char:--
                The bottle slips off your hands... {StopMusic()}
                
                #char:--
                ...And then there's darkness. 

                ~ FadeTo("black", 1, 1)

                #char:--
                You open your eyes.
                
                #char:--
                Your body still hurts from falling to the ground.

                #char:Barto_angry_angry|R
                Was that really necessary? You could have killed the Captain, Kleber. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

                #char:Kleber_surprised_sad|L
                Well, what were we supposed to do?

                {
                    - g_pronoun == "She":
                    #char:Kleber_surprised_sad|L
                    Let her open the bottle?

                    - g_pronoun == "He":
                    #char:Kleber_surprised_sad|L
                    Let him open the bottle?

                    - g_pronoun == "They":
                    #char:Kleber_surprised_sad|L
                    Let they open the bottle?
 
                }
                
                //AFFINITY PASS:
                {   
                    - g_affinity_Jackie <= -10:
                        #char:Jackie_fear_neutral|L
                        ...What even got into you, Captain? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                
                    - else:
                        #char:Jackie_surprised_angry|L
                        Captain, are you there? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}   
                }

                #char:Jackie_sad_neutral|R
                ...

                #char:Barto_angry_neutral|L
                ...

        -   #char:--
            You feel like you are finally coming back to your own body.

            #char:--
            With some explaining to do.

            ~ FadeTo("black", 1, 1)

            -> reunion



= confrontation_barto

    #char:--
    You arrive <>
    
    {   
        - confrontation_jackie:
        with Jackie <>

        - confrontation_kleber:
        with Kleber <>
    
    }
    
    at the kitchen {confrontation_jackie||confrontation_kleber:, both} out of breath. 
    
    #char:--
    Barto is cooking while holding something in his hands.

    #char:Barto_happy_happy|L
    Why, hello, Captain<>
    
    { 
        - confrontation_jackie:
        , Jackie<>

        - confrontation_kleber:
        , Kleber<>
        
    }
    . Can't sleep as well? 
    
    //AFFINITY PASS:

    { 
            - g_affinity_Barto <= -10:
                #char:Barto_happy_happy|L
                As you can see, I also fashion myself a bit of saucier.

            - else:

                #char:Barto_neutral_happy|L
                As you can see, I also fashion myself a bit of saucier.

                #char:Barto_neutral_happy|L
                Yes, I do have a <i>fine</i> taste.

                #char:Barto_neutral_angry|L
                ...That's one of the reasons why you should appreciate me more, Captain.

    }

    #char:Barto_sad_sad|L
    Though if I'm being completely honest, the wine I'm making the sauce with isn't that refined.

    #char:Barto_happy_angry|L
    That said, I'm still confident I can make an <bounce>exquisite</bounce> meal out of it. You'll see. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    {   
        
        - confrontation_jackie:

        #char:Jackie_surprised_happy|L
        Wait, Barto...! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

        - confrontation_kleber:
        #char:Kleber_surprised_angry|L
        ...Wait, what?! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}
        

    }

    #char:--
    You can definitely see two things.

    #char:--
    One: The bottle he's holding looks a lot like Silva's cachaça.

    #char:--
    Two: <shake>he's about to uncork it!</shake>

    {
        - confrontation_jackie > 0:
                #char:--
                Jackie quickly grabs Barto's secret seasoning jar with one of her bionic arms. {PlaySFX("LightWoosh")}

                #char:Barto_surprised_sad|L
                W-what did you...! {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}
                
                #char:Barto_angry_angry|L
                Jackie, tell me: do you have a death wish? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

                #char:Jackie_angry_neutral|R
                I certainly don't want to get killed by that mushroom crook, Barto.

                #char:Jackie_angry_neutral|R
                What on Skies were you doing with the <shake>bottle!?</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("Mistery1")}

                #char:Barto_angry_angry|L
                <shake>What?!</shake> This is my...

                #char:Barto_surprised_sad|L
                My... <waitfor=0.5><i>Oh my</i>... this is not my wine. {StopMusic()}
                
                #char:Barto_fear_sad|L
                I-I apologize.

                #char:Barto_fear_sad|L
                What's gotten into me? {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad2")}

        -> confrontation_midpoint

        - confrontation_kleber > 0:

                #char:--
                Kleber snaps the bottle out of Barto's hands. {PlaySFX("LightWoosh")}

                #char:Barto_surprised_sad|L
                W-what did you...! {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}
                
                #char:Barto_angry_angry|L
                How dare you touch <shake>my</shake> ingredient?

                #char:Kleber_angry_angry|R
                <i>Ingredient?</i> This is the freaking <shake>cachaça bottle!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("Mistery1")}

                #char:Barto_angry_angry|L
                <shake>What?!</shake> This is my...

                #char:Barto_surprised_sad|L
                My... <waitfor=0.5><i>Oh my</i>... this is not my wine. {StopMusic()}
                
                #char:Barto_fear_sad|L
                I-I apologize.

                #char:Barto_fear_sad|L
                What's gotten into me? {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad2")}

        -> confrontation_midpoint

        - else:

            #char:--
            Maybe you're just confused. It can't be Silva's bottle, <i>can it?</i>

            #char:--
            Do you calm down and trust Barto or snatch the bottle from him? 

            * [RELAX¬Trust Barto.>>]
                #char:--
                You watch as he pops the cork out. {StopMusic()} {PlaySFX("Pop")}

                {
                    - cursedByTheBottle == "Barto":

                        #char:Barto_fear_sad|L
                        <shake>W-what?!</shake> N-no, I though it was my... my wine! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} 

                        -> red_mist_death

                    - else:

                        #char:--
                        The cork falls to the ground.

                        #char:--
                        To your relief, nothing happens.

                        #char:Barto_happy_happy|L
                        Hm. Smells good. {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")}


                        //AFFINITY PASS:

                        { 
                            
                            - g_affinity_Barto <= - 10:
                                #char:Barto_neutral_angry|L
                                ...And what exactly are you doing standing there, Captain?

                            - else:
                                #char:Barto_happy_angry|L
                                Oh! Do you want to talk about something, Captain? You look frightened.
                                    
                        }

                    -> confrontation_midpoint
                }

            * [ANGRY¬Snatch the bottle out of his hands.>>]
                #char:--
                You rush towards him, almost taking him down while grasping the bottle from his hands. {PlaySFX("StrongWoosh")}

                #char:Barto_angry_angry|L
                How dare you! I'm in my kingdom, my kitchen! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                ~ g_affinity_Barto -= g_affinityChangeMid

                #char:Barto_angry_neutral|L
                Mind explaining what was that, {g_name}?

                {
                    - cursedByTheBottle == "Barto":
                        #char:--
                        You glance at your hands. {StopMusic()}
                        
                        #char:--
                        It's Silva's cachaça, no doubt.

                        #char:--
                        You turn to Barto and notice his claws doubled in size. 

                        #char:--
                        He looks like he's about to slash at you... but then he takes another look at the bottle.

                        #char:Barto_sad_sad|L
                        Oh my... this is not my wine. 
                        
                        #char:Barto_sad_sad|L
                        I deeply apologize, Captain.

                        #char:Barto_fear_sad|L
                        What's gotten into me? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery1")}

                    -> confrontation_midpoint
                    
                    - else:
                        #char:--
                        You glance at the bottle and finally make out the writing in it: "<i>Anteater's Finest</i>".

                        #char:--
                        It's just a really dark wine. 

                        #char:Barto_angry_angry|L
                        ... 

                        ~ g_affinity_Barto -= g_affinityChangeMid

                        #char:--
                        You recount what you've seen in the cargo hold.

                    -> confrontation_midpoint
                }
    }


= confrontation_jackie

#char:--
You arrive out of breath. Jackie is hunched over her workstation.

//AFFINITY PASS:

{ 
    - g_affinity_Jackie <= -2:
        #char:Jackie_surprised_neutral|L
        Oh... Hello, Captain. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} 
        //distant

    - g_affinity_Jackie >= 25:

        #char:Jackie_surprised_neutral|L
        ...Oh hey, {g_name}! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} 
        //friends


    - g_affinity_Jackie > -2 && g_affinity_Jackie < 25:

        #char:Jackie_surprised_neutral|L
        ...Oh hey, Captain! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} 
        //acquaintances and colleagues

}


{ 
    - confrontation_barto: 

    #char:Jackie_surprised_neutral|L
    Barto too... Huh... 

    - confrontation_kleber: 

    #char:Jackie_surprised_neutral|L
    Kleber too... Huh...
      
} 


{ 
    - confrontation_barto: 

    #char:Barto_neutral_angry|L
    Jackie, we...

    - confrontation_kleber: 

    #char:Kleber_neutral_sad|L
    So, Jackie...
      
} 

#char:--
She quickly hides what's in her table. You could see it was a small object.

#char:--
The size of a bottle, perhaps?

#char:Jackie_surprised_neutral|L
I-I'm just finishing up some stuff. Do you need anything?

#char:--
Her bionic arms seems to be moving behind her back.

{
    - confrontation_barto > 0:

        #char:--
        Barto slashes a bunch of wires that were hanging above his head.

        #char:Jackie_fear_neutral|L
        Barto, are you crazy!? 

        #char:Jackie_fear_angry|L
        I had just fixed that! {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

        #char:Barto_surprised_angry|R
        Now, calmly step away from the bottle.

        #char:Jackie_surprised_neutral|L
        <i>Bottle?</i> What are you...?

        #char:--
        She glances at her arms.

        #char:Jackie_fear_angry|L
        <shake>What?!</shake> {Emotion("Question", "fd97c9")} {StopMusic()} {PlaySFX("Mistery1")}

        #char:Jackie_sad_sad|L
        Wait. I'm so lost.  
        
        #char:Jackie_surprised_neutral|L
        I could've sworn I was just fixing my watch. Why is my other hand even holding Silva's bottle?

        #char:Barto_surprised_sad|R
        Oh my, this is a ship of crazy humans... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")}

    -> confrontation_midpoint

    - confrontation_kleber > 0:

        #char:--
        Kleber points at it.

        #char:Kleber_neutral_sad|L
        Anything wrong with your bionic arms, Jackie? 

        #char:Jackie_surprised_angry|L
        No! Why would something be wrong with them?

        #char:Jackie_surprised_neutral|L
        Look! I was just fixing- 

        #char:--
        She glances at her arms. 
        
        #char:--
        They are holding the bottle.

        #char:Jackie_fear_angry|L
        <shake>What?!</shake> {Emotion("Question", "fd97c9")} {StopMusic()} {PlaySFX("Mistery1")}

        #char:Jackie_sad_sad|L
        Wait. I'm so lost. 
        
        #char:Jackie_surprised_neutral|L
        I could've sworn I was just fixing my watch. Why is my other hand even holding that?

    -> confrontation_midpoint

    - else:

        #char:--
        Could they be holding the bottle?
        
        #char:--
        Maybe you're just agitated... <shake>right</shake>?

        #char:--
        Do you calm down and trust Jackie or will you take whatever she's working on from her?

        + [RELAX¬Trust Jackie.>>]

            #char:--
            You calmly explain the situation to Jackie while her bionic arms keep working.

            {
                - cursedByTheBottle == "Jackie":

                        #char:--
                        It all seems fine...

                        #char:--
                        ...Until you hear a pop. {PlaySFX("Pop")} {StopMusic()}

                        #char:--
                        Next thing you see is the bottle in Jackie's hand. 

                        #char:Jackie_fear_sad|L
                        W-wait! What? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} 

                        #char:Jackie_fear_sad|L
                        <shake>C-captain!</shake> I could've sworn I was just fixing my watch!

                        #char:--
                        Jackie lets it fall to the ground as she realizes what's happening.

                        -> red_mist_death

                - else:

                    //AFFINITY PASS:

                    { 
                        - g_affinity_Jackie <= -2:

                            //distant pra baixo
                            #char:Jackie_surprised_neutral|L
                            Oh... Ok, that makes sense.

                            #char:Jackie_neutral_neutral|L
                            But it's nothing like that, really.

                            #char:Jackie_neutral_neutral|L
                            I'm making a replica of the 41-Bis with some scraps. {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}
                            

                        - else:
                            #char:Jackie_happy_happy|L
                            Oh, then I guess I'm being super suspicious right now! Sorry, {g_name}! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                            #char:Jackie_happy_neutral|L
                            I'm making a replica of the 41-Bis with some scraps! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

                    }


                    #char:Jackie_neutral_sad|L
                    It's a keepsake, you know. To always remind me of my first caravan.

                    #char:--
                    She shows it to you, her face red.

                    #char:Jackie_sad_neutral|L
                    It's kinda... personal, so that's why I was a little weird about it.

                -> confrontation_midpoint

            }

        + [ANGRY¬Take it from her.>>]

            #char:--
            You rush to her, screaming at her to stop her bionic arms.

            #char:Jackie_surprised_sad|L
            Hey, hey! What's gotten into you, {g_name}? {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}

            ~ g_affinity_Jackie -= g_affinityChangeMid

            {
                - cursedByTheBottle == "Jackie":

                    #char:Jackie_surprised_angry|L
                    See? I was just fixing- 

                    #char:--
                    She glances at her arms. 
                    
                    #char:--
                    They're holding the bottle.

                     #char:Jackie_fear_angry|L
                    <shake>What?!</shake> {Emotion("Question", "fd97c9")} {StopMusic()} {PlaySFX("Mistery1")}

                    #char:Jackie_sad_sad|L
                    Wait. I'm so lost. 
        
                    #char:Jackie_surprised_neutral|L
                    I could've sworn I was just fixing my watch. Why is my other hand even holding that?

                    #char:Jackie_sad_sad|L
                    I'm so sorry, {g_name}. I'm as confused as you. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}


                - else:

                    #char:Jackie_neutral_angry|L
                    See? I was just making a replica of the 41-Bis with some scraps.

                    ~ g_affinity_Jackie -= g_affinityChangeMid

                    #char:Jackie_neutral_sad|L
                    It's a keepsake, you know. To always remind me of my first caravan. 
                    
                    #char:Jackie_sad_sad|L
                    I really don't understand why you're being like this, Captain. {Emotion("WaveIn", "0a4de8")}  {PlaySFX("Bad2")}
            }

        -> confrontation_midpoint
}



= confrontation_kleber

{
    - cursedByTheBottle == "Kleber":

        #char:--
        As you climb out of the cargo hold, you start hearing screams. 

        #char:--
        Kleber is cornered, holding a bottle in his hands.

        #char:Barto_angry_angry|L
        Give us the bottle right now, Kleber! {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

        #char:Jackie_angry_neutral|R
        You were all high and mighty about not opening the bottle and now look at it! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

        #char:Kleber_angry_angry|L
        <shake>No!</shake> <i>You two</i> are the ones trying to open it. I'm just protecting it! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit2")}

        #char:Kleber_angry_neutral|L
        Don't come near me.

        //AFFINITY PASS:

        {
                - g_affinity_Kleber <= -10:

                    #char:Kleber_angry_neutral|L
                    Oh <i>great</i>, now Captain is here too.

                    #char:Kleber_angry_neutral|L
                    Are you siding with them? Don't you dare take the bottle away from me!

                    #char:Kleber_angry_neutral|L
                    I. MUST. PROTECT. IT! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
                
                - else:

                    #char:Kleber_fear_neutral|L
                    Oh! Captain, you're here! Help me, they're trying to take the bottle from me! {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}
        }


        #char:Jackie_angry_happy|R
        Don't believe him, Captain! We found him in the cockpit with the bottle!

        #char:--
        This is chaos. Who should you trust?

            * [JACKIE¬Jackie's right. You should take the bottle from him.>>]

                ~ g_affinity_Jackie += g_affinityChangeMid

                ~ g_affinity_Barto +=  g_affinityChangeMid

                ~ g_affinity_Kleber -=  g_affinityChangeMid

                #char:--
                You tell Kleber to give the bottle to Jackie. 

                #char:--
                Jackie uses the opportunity to distract him with two arms while grabbing the bottle with the third.

                #char:Kleber_angry_angry|L
                <shake>NO! GIVE IT BACK!</shake>

                #char:--
                Barto holds Kleber tightly, immobilizing him. 

                #char:Kleber_angry_angry|L
                I j-just...!
                
                #char:Kleber_fear_neutral|L
                ...<i>What?</i> {StopMusic()}
                
                #char:Kleber_fear_neutral|L
                Jackie? Barto?

                #char:Kleber_sad_sad|L
                Y-you were not what I was seeing! You were monsters like a second ago! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

                #char:Barto_angry_angry|L
                How do you expect us to trust you now, Kleber? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                #char:Jackie_sad_angry|L
                You almost screwed up the cargo! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

                #char:Barto_neutral_angry|L
                Captain, we need answers. We should sit down and talk.

                ~ FadeTo("black", 1, 1)

            -> reunion

            * [KLEBER¬Maybe Kleber was really protecting the cargo.>>]

                ~ g_affinity_Kleber += g_affinityChangeMid

                ~ g_affinity_Barto -=  g_affinityChangeMid

                ~ g_affinity_Jackie -=  g_affinityChangeMid

                #char:--
                You ask Kleber to explain what's going on.
            
                #char:Kleber_fear_angry|L
                Captain... The only way is... the only way is to <shake>open it</shake>! 

                #char:Kleber_fear_sad|L
                <shake a=2>It's telling me.</shake>

                #char:Jackie_fear_angry|R
                <shake>Kleber, stop it!</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

                #char:--
                Jackie and Barto advance towards him, but Kleber is faster.

                #char:--
                He uncorks the bottle. {PlaySFX("Pop")} {StopMusic()}

                -> red_mist_death

    - else:

        #char:--
        You arrive out of breath. Kleber is fiddling with the ship's navigation systems.

        #char:Kleber_neutral_neutral|L
        What up, Captain! Need something?

        #char:--
        He's acting like there's nothing wrong. 

        #char:--
        How should you confront him about the bottle?

        * [RELAX¬Stay calm and ask if he has seen the bottle.>>]

            #char:--
            You ask him if he has seen the bottle.

            #char:Kleber_angry_sad|L
            Honestly, Captain, after all that happened, you still thinking that I want that stupid cachaça...  {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

            ~ g_affinity_Kleber -= g_affinityChangeMid

        -> confrontation_midpoint

        * [ANGRY¬Blame him and ask for the bottle.>>]

            #char:--
            You demand that Kleber give the bottle back.

            #char:Kleber_angry_angry|L
            You're a piece of work, Captain. After all that happened, why would I take the bottle?  {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

            ~ g_affinity_Barto -= g_affinityChangeMid

        -> confrontation_midpoint
        
}

= red_mist_death

~ PostProcess("Redmist",1)

#char:--
It shatters on the floor! {PlaySFX("RedMist")}

#char:--
The ship rumbles in response. {Shake("All", 1, 2)} {PlaySFX("BigDamage")} {Blink("All", 1, -1, "white")}

#char:--
Red mist fills your lungs.

#char:--
You start falling into a forceful sleep. 

~ ScreenFlash("black", -1)

#char:--
You feel the ship tipping over, the sound of your crew's voices growing distant...

{UnlockAchievement("MARVADA_PINGA")}

~ ScreenFlash("black", -1)

{Die("Curse")}

-> END

= confrontation_midpoint

{
    - (cursedByTheBottle == "Barto" && confrontation_barto) || (cursedByTheBottle == "Jackie" && confrontation_jackie) || (cursedByTheBottle == "Kleber" && confrontation_kleber):
        
        #char:--
        Something is really wrong here. 

        #char:--
        This calls for a meeting.

        ~ FadeTo("black", 1, 1)

    -> reunion

    - else:
        #char:--
        Your heart is still racing as you explain the scene in the cargo hold.

        {
            - confrontation_barto:
                {
                    - cursedByTheBottle == "Kleber":
                        
                        #char:Barto_neutral_angry|L
                        Switchblade, you say? Hm...

                        #char:Barto_angry_angry|L
                        This screams of Kleber to me! That sneaky snake, hypocrite! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")} 

                        #char:Barto_angry_angry|L
                        We must confront him!

                        #char:--
                        Barto rushes in front of you to the cockpit.

                        ~ FadeTo("black", 1, 1)

                        -> confrontation_kleber

                    - cursedByTheBottle == "Jackie":

                        #char:Barto_angry_angry|L
                        <wiggle>Disassembled?</wiggle> Sounds like Jackie!

                        #char:Barto_sad_sad|L
                        I can't believe she'd do that. We must talk to her! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                        #char:--
                        You can barely keep with Barto as he races to the engine room.

                        ~ FadeTo("black", 1, 1)

                        -> confrontation_jackie
                }

            - confrontation_jackie:
                {
                    - cursedByTheBottle == "Kleber":
                        
                        #char:Jackie_surprised_sad|L
                        <wiggle>Switchblade</wiggle> marks, huh...?

                        #char:Jackie_sad_sad|L
                        Sounds like we really can't trust Kleber. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                        
                        #char:Jackie_sad_neutral|L
                        We should get going, Captain.
                        
                        #char:Jackie_sad_neutral|L
                        We have to stop him before he does anything to the bottle!

                        #char:--
                        You can barely keep with Jackie as she races to the cockpit.

                        ~ FadeTo("black", 1, 1)

                        -> confrontation_kleber

                    - cursedByTheBottle == "Barto":

                        #char:Jackie_surprised_sad|L
                        <wiggle>Scratches, you say?</wiggle>
                        
                        #char:Jackie_sad_angry|L
                        There's only one person that has claws in this ship, Captain...

                        #char:Jackie_sad_sad|L
                        I can't believe Barto would do something like this! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                        #char:Jackie_sad_neutral|L
                        Captain, we need to stop him from doing something to the bottle.

                        #char:--
                        You can barely keep with Jackie as she races to the kitchen.

                        ~ FadeTo("black", 1, 1)

                        -> confrontation_barto
                }

            - confrontation_kleber:
                {
                    - cursedByTheBottle == "Barto":

                        #char:Kleber_surprised_angry|L
                        You just said that the crate had scratch marks. 
                        
                        #char:Kleber_angry_neutral|L
                        Do I look like I have <shake>claws</shake>? 

                        #char:--
                        Kleber made a fine point.

                        #char:Kleber_angry_neutral|L
                        Jeez, what's going on with this ship? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                        #char:--
                        You need to have a chat with your chef.

                        ~ FadeTo("black", 1, 1)

                    -> confrontation_barto

                    - cursedByTheBottle == "Jackie":

                        #char:Kleber_surprised_angry|L
                        You just said that the crate was <wiggle>disassembled</wiggle>. 
                        
                        #char:Kleber_neutral_neutral|L
                        Why wouldn't you think of the only engineer in the ship?

                        #char:--
                        Kleber made a fine point.
                        
                        #char:Kleber_angry_neutral|L
                        Jeez, what's going on with this ship? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                        #char:--
                        You need to have a chat with Jackie.

                        ~ FadeTo("black", 1, 1)

                    -> confrontation_jackie
                }
        }
}



    = reunion

    #char:--
    The mood in the ship is grim, to say the least.

    ~ g_morale -= g_statChangeMid

    #char:--
    Everyone is shifting in their seats, eyeing each other suspiciously. {PlayMusic("Decision")}

    #char:--
    You break the silence by <>

    {
        - cursedByTheBottle == "Barto":
            <>asking Barto to explain himself.

            #char:Barto_sad_sad|L
            I don't remember going into the cargo hold. I swear on my love for food. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            #char:Barto_sad_sad|L
            Gazing upon the bottle, all I could see was my wine.

            #char:Barto_sad_sad|L
            It was... almost <shake>asking</shake> me to open it. I felt bewitched.

        - cursedByTheBottle == "Jackie":
            <>asking Jackie to explain herself.

            #char:Jackie_sad_sad|L
            I swear I wasn't trying to open it or anything like that.

            #char:Jackie_surprised_angry|L
            I don't even remember going into the cargo hold, to be honest.

            #char:Jackie_sad_sad|L
            I didn't see the bottle when looking at it. All I saw was a defective machine, asking me to fix it. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        - cursedByTheBottle == "Kleber":
            <>asking Kleber to explain himself.

            #char:Kleber_sad_sad|L
            Listen: I've been a bit paranoid lately.

            #char:Kleber_sad_neutral|L
            I started feeling like blacking out. Next thing I remember was me on the cockpit, holding the bottle.

            #char:Kleber_fear_angry|L
            It kept yelling at me, warning that someone was coming for it... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            #char:Kleber_fear_angry|L
            ...And the only way to protect it was to open it. 

        - cursedByTheBottle == "Captain":
            <>trying your best to explain youself.

            #char:--
            You piece together your blackouts and the feeling of the bottle talking to you.

            #char:--
            You sense some doubt on the crew's part. But most of all, there's dread in the air.
    }

    #char:Jackie_sad_angry|L
    There's gotta be a scientific explanation to it.

    #char:Barto_angry_neutral|R
    There is: 
    
    #char:Barto_angry_angry|R
    <b><shake>That cachaça is cursed!</shake></b> {Shake("Big Face", 1, 0.3)} {Emotion("Explosion", "ffb71b")} {PlaySFX("Hit2")} {Blink("Big Face", 0.5, -1, "white")}
    
    #char:Barto_fear_angry|R
    There's a demon inside it. I have a sense for these things! 

    ~ ScreenFlash("red", -1)

    #char:Jackie_surprised_sad|L
    Barto, c'mon, this can't be—

    ~ UniqueEffectActivate("CursedCachaça")

    #char:--
    You all take a moment to look at the bottle.

    #char:--
    ...

    ~ UniqueEffectDeactivate("CursedCachaça")
    
    #char:Jackie_fear_happy|L
    Ok, it's cursed.

    #char:Kleber_fear_happy|L
    Yep, super cursed.

    #char:Jackie_sad_sad|L
    This explains why we were acting so aggressive that day <>

    {
        - E_Crew_DeuRuim.deu_ruim_party:
            we drank Deu Ruim...

        - else:
            we tried to have a party.
    }

    #char:Barto_fear_angry|R
    We've been manipulated by the freaking bottle! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
    
    #char:Kleber_sad_neutral|L
    Right! You know what? This is getting too crazy. I'm coming clean: {StopMusic()}
    
    #char:Kleber_sad_sad|L
    I know Silva.
    
    #char:Kleber_sad_neutral|L
    I've worked for him. Main pilot.

    #char:Kleber_sad_neutral|L
    I left the Spore Heights a few months ago. 
    
    #char:Kleber_sad_sad|L
    <i>Fled</i>, I guess. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

    #char:Kleber_fear_angry|L
    I owe him some dough. Lots of it.

    #char:Barto_angry_neutral|R
    ...I appreciate the honesty, late as it is.

    #char:Jackie_sad_sad|L
    ...

    #char:Jackie_sad_sad|L
    So that's why you snuck out of the call... Why didn't you tell us?

    #char:Kleber_angry_neutral|L
    Like you'd take it ok having a criminal fresh out of the oven in your crew.

    #char:Kleber_sad_sad|L
    Hear me out: I know I'm not the easiest to trust, but I'm not a bad person.

    #char:Kleber_sad_sad|L
    This is my only way out. And this bottle and Silva are on the way.

    #char:Kleber_angry_neutral|L
    Silva is one of the worst people in the Skies. {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}
    
    #char:Kleber_fear_angry|L
    I've seen him throw people from the giant mushrooms more times than I can count.

    #char:Kleber_angry_neutral|L
    And he loves to collect artifacts, like this bottle. He has a whole room dedicated to that in his casino.

    #char:Jackie_sad_neutral|R
    Hmmm... It's not uncommon for caravans to transport some sort of "black cargo" with the normal one.

    #char:Jackie_sad_angry|R
    I've heard some horror stories. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

    #char:Jackie_neutral_angry|R
    I'd never imagined we'd have to deal with it that so soon.
    
    #char:Jackie_neutral_angry|R
    This should have went to an experienced caravan.

    #char:Kleber_angry_neutral|L
    Yeah. I believe he's trying to spend as little as possible, so he didn't brief the C.C.A. about it.

    #char:--
    You'd think Marimbondo was the worst that life could throw at you, but Silva is getting close.

    #char:--
    The crew is pensive. Something needs to be done.

    #char:Barto_neutral_angry|R
    I'd like to propose something. I think we should throw the bottle overboard.

    #char:Kleber_angry_angry|L
    <shake>What?!</shake> 
    
    #char:Kleber_angry_angry|L
    You want to get to the Spore Heights without the main reason for this trip? He'd kill us! {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

    #char:Barto_angry_angry|R
    Well, I certainly don't want to die even <i>before</i> getting to the Spore Heights! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

    #char:Kleber_angry_neutral|L
    This is a bad idea. I say we should lock the cargo hold and hide the key.

    #char:Kleber_neutral_neutral|L
    We could throw it into some exhaust pipe. Me and Jackie could dig through it when we get there.

    #char:Kleber_neutral_neutral|L
    Our best shot is to just get this delivery done and never come back here again.

    #char:Kleber_neutral_sad|L
    I mean, we're only two days away from the Champigons!

    #char:Jackie_sad_sad|L
    It's gonna be a rough couple of days until we get there if we keep it here, though... 
    
    #char:Jackie_sad_sad|L
    ...I'm kinda torn. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

    #char:Jackie_neutral_angry|L
    It's up to you, Captain. Throw it overboard like Barto said, or lock it as Kleber suggested? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

        * [BARTO¬Agree with Barto.>M>]

            ~ threwAwayTheBottle = true

            ~ g_morale += g_statChangeMid

            #char:--
            You've gone through two crisis with your crew because of this. A third could be fatal.

            // AFFINITY PASS:

            {
                - g_affinity_Barto <= -2:
                    #char:Barto_neutral_angry|R
                    Thank you for being reasonable.

                - else:
                    #char:Barto_neutral_sad|R
                    Glad you agree, Captain. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}
            }


            ~ g_affinity_Barto += g_affinityChangeMid

            #char:Barto_neutral_sad|R
            I admire being committed to your duties, but it's not worth putting the crew at risk.

            #char:Barto_neutral_angry|R
            Now, Kleber: can we stop the turbines to dispose of the bottle?

            #char:Kleber_angry_neutral|L
            <bounce>Tsk.</bounce> 
            
            #char:Kleber_angry_neutral|L
            Yeah, I guess. I'll just leave us on the stabilizer sail.

            #char:Kleber_angry_neutral|L
            But I gotta say, get ready to flee when it goes south.

            // AFFINITY PASS:

            {
                - g_affinity_Kleber <= -10:
                    #char:Kleber_angry_neutral|L
                    You've been disappointing me, Cap. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            }


            ~ g_affinity_Kleber -= g_affinityChangeMid

            ~ FadeTo("black", 1, 1)

            #char:--
            Minutes later, the deed is done. 
            
            #char:--
            The bottle is thrown from the ship and disappears below the clouds.

            #char:--
            For a second, you hear a faint... <i>laughter?</i> It's like the bottle is mocking you. {SetToDay()}

            #char:--
            Only a couple of days left. You hope there are no more incidents.


            -> EVENT_END

        * [KLEBER¬Agree with Kleber.>>]

            //~ threwAwayTheBottle = false

            #char:--
            Kleber is right. All you have to do is not go in the cargo hold until the Mission is done.

            #char:Jackie_neutral_neutral|L
            Okay. We can do this.

            // AFFINITY PASS:

            {
                - g_affinity_Kleber <= -2:
                    #char:Kleber_angry_angry|L
                    Thanks for trusting me this time.

                - else:
                    #char:Kleber_happy_happy|L
                    Thanks, Cap! at least someone here gets me! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}
            }

            ~ g_affinity_Kleber +=  g_affinityChangeMid

            // AFFINITY PASS:
            {

                - g_affinity_Barto <= -10:
                    #char:Barto_angry_angry|R
                    ...I'm disappointed, Captain. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            }

            ~ g_affinity_Barto -=  g_affinityChangeMid

            #char:Barto_angry_angry|R
            I just hope we don't kill each other. A friendly reminder: I have claws. {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny1")}

            #char:Kleber_angry_neutral|L
            Nah, there won't be any more incidents. We just have to leave the cargo alone.

            #char:Barto_angry_angry|R
            I just hope the cargo leaves <i>us</i> alone.

            ~ g_morale -= g_statChangeMid

            #char:--
            You know the crew is tense, but the idea of flying off a mushroom to Surface is not the return you've been dreaming of. {SetToDay()}

            #char:--
            Only a couple of days left. You hope there are no more incidents.
            
            {
                - g_morale < 10:

                    ~ FadeTo("black", 1, -1)

                    #char:--
                    You're having trouble sleeping.

                    #char:--
                    With the way the crew is feeling, you wonder if letting the bottle in the ship was—

                    #char:--
                    "<color=mafaRed><shake a=1>I'm sorry, crew. I <i>HAVE</i> TO OPEN IT!</shake></color>"

                    #char:--
                    You run towards the scream, but it's already too late.

                    {UnlockAchievement("MARVADA_PINGA")}

                    {Die("Curse")}
                    
            }

            -> EVENT_END

= part3

    #char:--
    The crew is pure nervousness in expectation of the delivery.

    {
        - threwAwayTheBottle:

            #char:--
            It's time to face the consequences of dumping the client's main cargo.
        
        - else:

            #char:--
            The last few days were tense. Trouble sleeping, voices in the halls of the ship.

            #char:--
            But you made it here.

    }

    #char:Kleber_neutral_happy|L
    Hey crew, can I have everyone's attention just for a sec? {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

    #char:--
    Everyone gathers on the cockpit.

    #char:Kleber_neutral_neutral|L
    I know my way out of here. I've zig-zagged these mushrooms many times before.

    #char:Kleber_neutral_angry|L
    I'd rather stay behind, inside the ship. In case anything goes south, hop up aboard and I'm flying us out of here. 

    #char:Kleber_sad_sad|L
    And yeah, I'm also trying to avoid Silva for my own sake. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
    
    #char:Kleber_sad_sad|L
    No way I'll be able to pay him right now.

    #char:Jackie_neutral_neutral|R
    I can get by this plan. 
    
    #char:Jackie_happy_neutral|R
    You're our crewmate, Kleber. We've got your back.

    #char:Barto_neutral_neutral|R
    In return, we hope you'll be more forthcoming from now on, of course.

    #char:Kleber_neutral_happy|L
    I'll be a paragon of trust, don't worry!
    
    // AFFINITY PASS:

    {
        - g_affinity_Kleber <= -2:
            #char:Kleber_sad_sad|L
            ...Listen, I know you don't really trust me that much yet, Captain.
            
            #char:Kleber_sad_sad|L
            But can you do this for me? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

        - else:
            #char:Kleber_neutral_happy|L
            Cap, is that ok with you? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}
    }


    #char:--
    Should Kleber stay on the ship? 

    * (kleber_stays_on_the_ship) [YES¬Let Kleber stay behind.>>]

        ~ g_affinity_Kleber += g_affinityChangeHigh

        #char:--
        You agree with the plan. It's the perfect timing for Kleber to show his getaway driver skills.

        #char:Kleber_surprised_sad|L
        Thanks, Cap. I mean it.

        #char:Kleber_neutral_angry|L
        Good luck, family.

        #char:Barto_neutral_angry|R
        ...Don't push it.

    * (kleber_stays_with_you) [NO¬Ask him to follow you.>>]

        ~ g_affinity_Kleber -= g_affinityChangeHigh

        #char:--
        You disagree with the plan, requesting Kleber to stay alongside everyone in the delivery.

        #char:--
        He knows Silva and Spore Heights more than anyone in the crew.
        
        #char:--
        Having him on the ground can be more useful.

        #char:Kleber_fear_angry|L
        Seriously, Captain? If I was a bit more savy I'd say you're trying to get me killed. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

        #char:Kleber_angry_angry|L
        Who knows what he'll do to me... I better be ready for the consequences.

        #char:Barto_sad_sad|R
        ...

        #char:Jackie_sad_sad|R
        ...

    - #char:--
    With the plan decided, Kleber starts the landing procedures at the Champignons's storage entrance. {ShipOut()}

    ~ FadeTo("black", 1, 1)

    #char:--
    Silva's casino is... <wiggle>peculiar</wiggle>, to say the least. {PlayMusic("SporeHeightsTension")}

    #char:--
    The kind of extravagance you can only find in Skies.

    #char:-- 
    From its windows, you can glimpse at tables set atop mushroom caps emitting yellow spores.

    #char:--
    Some gamblers are using gas masks; others are gorging on the yellow clouds.

    {
        - g_ownership == "Gambler":

            #char:--
            It would be a lie to say you don't feel enticed by the game tables. 

            #char:--
            Still, if you gambled here, you'd probably lose a ship instead of winning one.
    }

    #char:--
    As you land and Jackie and Barto start the unpacking procedures, Silva arrive with a few of his goons. 

    #char:Silva_laughing|L
    There they are, my dear Surfacer captain with my favorite rookie caravaneers. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} {Blink("Big Face", 0.5, -1, "white")} {PlaySFX("LightWoosh")}

    {
        - kleber_stays_with_you:

            #char:Kleber_fear_sad|R
            <shake>...</shake> {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad2")}

            #char:--
            He doesn't seem to notice Kleber's presence - or rather chooses to ignore it.
    
    }

    #char:--
    Silva seems to be expecting you to return the provocation.


        * [ANGRY¬Go straight to the point and ask for the payment.>>]

            #char:--
            You tell Silva to cut the crap and get to the payment.

            #char:Silva_neutral|L
            Hey feisty, what's the rush? Enjoy this business transaction, will ya?

        * [RELAX¬Maintain your composure.>>]

            #char:--
            You greet Silva and his crew cordially, shaking everyone's hands with a smile in your face.

            #char:--
            The goons are instantly disarmed by this gesture. 
            
            #char:--
            Silva must be such a crap boss that they're frozen by kindness.

            #char:Silva_surprised|L
            Get your filthy hands off my men! {Emotion("Explosion", "39f2d6")} {PlaySFX("StrongWoosh")}


        * [JOKE¬Provoke him.>>]

            #char:--
            You tell Silva that you're the one who is impressed. You thank him for the opportunity to visit the <i>second best</i> casino in the Heights.

            #char:--
            His crew turns deathly silent.

            #char:Silva_surprised|L
            ...

            #char:Silva_angry|L
            Men, weapons out! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

            #char:--
            You're surrounded by harpoons pointing at you and your crew.       

            #char:Barto_fear_angry|R
            Captain, stop provoking him! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

            #char:Jackie_fear_angry|R
            Now is not the time! {Emotion("WaveIn", "0a4de8")}

            #char:Silva_disgust|L
            You better watch your mouth, Surface trash.

        - #char:Silva_disgust|L
        Despite your manners, I repeat the invitation: you're welcome to enjoy the premises once I pay you.

        #char:Silva_disgust|L
        Now, show me the cargo and let's get this over with.
        
        {
        
            - threwAwayTheBottle:

                {
                    - kleber_stays_with_you:

                    #char:--
                    Kleber is shaking by your side.
                    
                }

                #char:--
                You ready yourself for a negotiation. Once Silva sees that the cachaça is gone, who knows what will happen?

                #char:--
                Jackie is looking down and Barto is clutching his utensils tightly.

                #char:--
                The armed goons start inspecting the cargo.

                #char:--
                Silva watches their every move, inspecting every bottle.

                #char:--
                ...

                #char:--
                Any time now.

                #char:Silva_neutral|L
                Well, looks like you did your job properly.

                ~ ScreenFlash("white", -1)

                #char:--
                ...Huh? {PlaySFX("Mistery1")}
                                
                #char:--
                Silva pulls the black-labeled bottle out of the crate.

                #char:Silva_neutral|L
                I must say I wasn't expecting much out of you.

                #char:Silva_laughing|L
                But here it is: my dear cachaça! Safe and sound. {Emotion("Heart", "ea2929")} {PlaySFX("Love2")}

                #char:Jackie_fear_happy|R
                <shake>What</shake>!? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                #char:--
                Silva is indeed holding the bottle of cachaça in his hand, to everyone's surprise.

                #char:--
                Your crew members look between each other, not knowing what to say.

                ~ g_morale -= g_statChangeMid

                #char:--
                Silva raises his brow, but doesn't question it, only motioning to his associates.

            - else:

                #char:--
                Even though you kept the cargo hold locked, you're still nervous about any problem happening.

                #char:--
                You open the door for Silva and he starts circling the cargo, inspecting every bottle.

                #char:--
                Then, out of the crates, Silva pulls the black-labeled bottle.

                #char:Silva_laughing|L
                Here she is: my dear cachaça! {Emotion("Heart", "ea2929")} {PlaySFX("Love2")}
                
                #char:Silva_neutral|L
                Safe and sound.
                
                #char:--
                Your crew members exchange glances, not knowing what to say.

                #char:--
                Silva raises his brow, but doesn't question it, only motioning to his associates.
        }

    #char:Silva_neutral|L
    Go on. Give them the payment.

    #char:--
    A lizard man hands you the grana. The rest of the crew starts hauling the crates out of the ship, Silva himself taking the special bottle. {StopMusic()} 

    ~ g_grana += g_reward_M2

    ~ g_currentReward = g_reward_M2

    ~ CompleteDelivery()


    #char:Silva_neutral|L
    Now, let's-

    {
        - cursedByTheBottle == "Barto":

            #char:Barto_neutral_angry|R
            A moment, Mr. Silva. There is something we would like you to explain.

            #char:Barto_neutral_angry|R
            During our journey, we had a few issues with that <i>special bottle</i> of yours.

            #char:Barto_neutral_neutral|R
            To be precise...
            
            #char:Barto_angry_angry|R
            It made us hallucinate! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

            #char:Barto_angry_neutral|R
            What even happens when the bottle opens?!

            #char:--
            You're surprised by Barto's outburst.

        - cursedByTheBottle == "Jackie":

            #char:Jackie_neutral_neutral|R
            Hang on. There's something we'd like to know.

            #char:Jackie_angry_neutral|R
            That bottle messed with our heads, and you <i>know it</i>. 
            
            #char:Jackie_angry_neutral|R
            You should have briefed the C.C.A. about it!
            
            #char:Jackie_angry_neutral|R
            What if we had opened it? What could have happened?! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

            #char:--
            You are taken by surprise by Jackie's bravery.

        - cursedByTheBottle == "Captain" || cursedByTheBottle == "Kleber":

            #char:--
            You can't hold yourself watching Silva walk away like he didn't put your crew in danger.

            #char:--
            You ask what would have happened if the bottle had been opened.
    }

    #char:Silva_disgust|L
    That's none of your business.

    {
        - cursedByTheBottle == "Jackie":
            #char:Jackie_angry_neutral|R
            Of course it is! That was an enormous risk to our safety! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

        - cursedByTheBottle == "Barto":
            #char:Barto_angry_angry|R
            If we risked our necks for a job, at least we should know why. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

        - cursedByTheBottle == "Captain" || cursedByTheBottle == "Kleber":
            #char:--
            You tell him it <i>is</i>, if you're the ones that brought it this far.

            #char:--
            Kleber sends you a pleading look.
    }

    #char:Silva_laughing|L
    Ha! You really are a rookie bunch, aren't you? {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer1")}

    #char:Silva_neutral|L
    Our transaction is done. {StopMusic()}

    #char:--
    You could press Silva for more information or just wrap things up and walk away.


            + (question_silva) [QUESTION¬Demand an explanation.>>]

                #char:--
                You tell Silva that you need to know the truth about the bottle before leaving.

                #char:--
                Two of his henchemen get ready to pounce you, but he waves them off.

                #char:Silva_neutral|L
                Hehe. I suppose it must have been a stressful trip.

                #char:Silva_neutral|L
                You see, there is something very old inside this bottle. Very powerful.

                #char:Silva_neutral|L
                It wants to be opened because something has been sealed inside of it.

                #char:Silva_neutral|L
                I'll make sure it's opened in the... <wave>right premises</wave>. {Emotion("Shine", "ffb71b")} {PlaySFX("Bad2")}

                #char:--
                A chill runs down your spine. If you had opened it on the ship...

            
            + [HANDSHAKE¬Wrap it up.>>]

                #char:--
                The payout is in hand. It's best to leave now.

                #char:Silva_neutral|L
                Glad to see your captain has the right idea, finally.             

                #char:--
                The crew still looks mad at Silva, but they don't argue back with you.

                ~ g_morale -= g_statChangeLow

            -   #char:Silva_neutral|L
            We're done with the important part.

            #char:Silva_neutral|L
            Now, tell me: 

            {
                - kleber_stays_on_the_ship:

                    #char:Silva_disgust|L
                    Where is your pilot? {PlayMusic("Tension")}

                    #char:Barto_fear_neutral|R
                    ...! {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

                    #char:Jackie_surprised_neutral|R
                    ...! {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

                    #char:Silva_neutral|L
                    I'd <incr>love</incr> to meet him! Tell him to come down. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                    #char:--
                    That was clearly not a question.

                    #char:--
                    Before you can react, Kleber goes down the cargo ramp.
                    
                - else:

                    {PlayMusic("Tension")}
            }

            #char:Silva_neutral|L
            How are you doing, Kleber? 

            #char:Silva_neutral|L
            Long time no see.

            #char:Kleber_surprised_sad|R
            <shake>H-hey</shake> there, Silva! 

            #char:Silva_neutral|L
            How is the career change going? Satisfied?

            #char:Kleber_surprised_happy|R
            <shake>Y-yep!</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            #char:--
            Barto is extending his claws. Jackie is clenching her arms. 

            #char:Silva_neutral|L
            That's good to hear. That means you've been getting some <i>good Grana</i>, right?

            #char:Kleber_fear_neutral|R
            ...

            #char:Kleber_sad_sad|R
            Silva, I don't have the Grana... I can't pay you, man.

            #char:Silva_neutral|L
            I know that already, Kleber. I could push you to Surface right now. 
            
            #char:Silva_neutral|L
            But I have another idea.

            #char:Silva_laughing|L
            I want my pilot back. You'll be working for me from now on! {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad2")}

            #char:Silva_disgust|L
            Captain {g_name}, I hope you don't mind.

            #char:Silva_neutral|L
            I'll take very good care of him.

            #char:Jackie_angry_happy|R
            No! Kleber is <b>our</b> pilot! {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

            #char:Barto_angry_angry|R
            This is ridiculous! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit2")}
            
            #char:Barto_fear_angry|R
            Captain, we can't let this happen.

            #char:Kleber_sad_sad|R
            ...

            #char:Kleber_sad_happy|R
            Ok, Silva. Just don't hurt these guys. They don't deserve it.

            #char:Kleber_sad_sad|R
            They're great people.

            * [THINK¬There must be another solution.>>]

                #char:--
                You stay silent, weighing your options.

                #char:--
                You are surrounded by crooks, so a fight would be suicide.

                #char:--
                Still, Silva is a business man. There might be a way to negotiate Kleber out of this.

            * [ANGRY¬Silva will have to run over you first.>>]

                #char:--
                You put your hand in your pistol. Dozens of harpoons are aimed towards you.

            * [FEAR¬Fear takes over you.>>]

                #char:--
                You're paralyzed. How are you even going to proceed without your pilot?

                #char:--
                Wait, Silva is a business man. There might be a way to negotiate Kleber out of this.

        - #char:--
        You tell Silva that Kleber will stay in the 41-Bis, baiting him.

        #char:Silva_angry|L
        <i>Oh, he is?</i> Then what about my Grana?

        #char:Silva_angry|L
        Who's going to pay me <b>{kleberDebt},00 G$</b>, then? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}
        
        #char:Kleber_fear_angry|R
        I-it's ok Cap! I'll be fine!
        
        #char:Kleber_fear_angry|R
        Just leave it to me, please!

        #char:--
        Time stops around you as you assess the situation. 
        
        #char:--
        You can <>
        
        {
            - g_grana >= kleberDebt:
                pay Kleber's debt, or <>
        }
        
        agree with Silva's request and let Kleber go with him.

        #char:--
        On the other hand, the bottle of cachaça is right there... and you are at arms' length.

        {
            - g_grana >= kleberDebt:
                * [GRANA¬Offer to pay the debt.>G>]

                    ~ paidTheDebt = true

                    #char:--
                    You are not letting a debt control someone's destiny, not after all you've been through. {StopMusic()}

                    #char:--
                    You reach to your satchel and take out the Grana.

                    ~ g_grana -= kleberDebt

                    #char:Kleber_fear_sad|R
                    C-Captain, what are y-

                    ~ g_affinity_Kleber += g_affinityChangeLow

                    #char:Silva_surprised|L
                    What?!

                    #char:Silva_neutral|L
                    Heh.

                    #char:Silva_laughing|L
                    You think yourself a savior, don't you? 
                    
                    #char:--
                    He takes the money.

                    #char:Silva_neutral|L
                    Word of advice: you're going to try self-righteous crap again and you ain't going to make it.

                    #char:Silva_disgust|L
                    Let's see how hard you'll fall, then.

                    #char:Silva_disgust|L
                    And you, Kleber: never come near the Heights again. I'll know.

                    #char:--
                    He motions his men to go back to the casino.

                        {
                            - g_affinity_Kleber > 30:

                                #char:Kleber_sad_neutral|R
                                ...

                                #char:Kleber_neutral_neutral|R
                                Hey, Silva. 

                                #char:Kleber_angry_angry|R
                                <shake>THINK FAST!</shake> {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

                                #char:Silva_angry|L
                                <shake>What are you-</shake>

                            #char:--
                                Kleber steps forward and slaps the bottle out of Silva's hands!  {StopMusic()}

                                -> ending_bottle_breaking

                            - else:

                                -> ending_bottle_intact
                        }
        }
            
        * [HANDSHAKE¬Let Kleber go with Silva.>M>]

            -> ending_kleber_is_handed_to_silva

        * [OPEN¬Open the bottle.>>]

            ~ paidTheDebt = false

            #char:--
            You slap the bottle off of Silva's hands. {StopMusic()}

            -> ending_bottle_breaking


= ending_bottle_breaking

~ g_cursed_bottle_was_broken = true

#char:--
It falls to the ground, breaking into pieces! {PlaySFX("RedMist")}

{
- paidTheDebt:

    #char:Jackie_fear_angry|R
    Kleber, what did you do!? {Emotion("Explosion", "2c2b30")} {PlaySFX("LightWoosh")}

    #char:Kleber_angry_angry|R
    Saved our butts!
    
    #char:Kleber_angry_angry|R
    EVERYONE, BACK TO THE SHIP!
}

#char:Silva_fear|L
<shake>AHHHHHH!</shake> 

#char:Silva_angry|L
I'M GOING TO K- {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit2")}

~ PostProcess("Redmist", 1)

#char:--
He's stopped by a red mist, which starts enveloping the casino's cargo bay.

#char:--
His goons try to shoot wisps of red that fly by, screaming and falling to the ground in disarray. {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")}

#char:--
You run to the cargo hold of the 41-Bis, your crew behind you, barely standing.

#char:--
You take one last look behind you:

#char:--
You see the back of a muscular scarlet figure towering over Silva.{ShipIn()}

#char:Barto_fear_angry|R
Let's just get the hell out of here. Please. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}  

~ FadeTo("black", 0.5, -1)
~ PostProcess("Normal", 0.5)

#char:--
The cargo door closes. You run to the cockpit. {PlaySFX("Door")} {PlayMusic("Action")} {StopSFX("RedMist")} {PlaySFX("41Rockets")}

#char:Kleber_surprised_sad|R
Listen, Cap. I'm gonna need to do something risky to get us out of this mushroom. {Shake("All", 0.8, 3)}

#char:Kleber_neutral_neutral|R
So answer me: <b>Do you trust me?</b> {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

* (trusted_kleber) [YES¬Trust him.>>]

    ~ trustedKleber = true

    #char:--
    You look into Kleber's eyes and nod your head affirmatively.

    ~ g_affinity_Kleber += g_affinityChangeHigh

    #char:Jackie_happy_happy|L
    You've got this, Kleber!

    #char:Barto_neutral_sad|L
    ...I trust you, too.

    #char:Kleber_surprised_angry|R
    ...

    #char:Kleber_neutral_happy|R
    Then buckle up, my friends. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    #char:--
    He accelerates the 41-Bis in what feels like a jump! {Shake("All", 1, 3)} {PlaySFX("SmallDamage")}

    #char:--
    Right when the ship starts lifting, the red mist reaches the cockpit's window.

    #char:Kleber_neutral_angry|R
    Alright, alright! <wave>Here we go!</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

    //SFXs take off


* [NO¬You don't want any more surprises.>>]

    #char:--
    You just can't say you trust him. Not Kleber.

    #char:Kleber_angry_neutral|R
    I gotta tell you, I was expecting a goddamn pep-talk!

    ~ g_affinity_Kleber -= g_affinityChangeHigh

    #char:Kleber_happy_happy|R
    Well, I'm doing it anyway! I'm not the only one that wants to get outta here alive. {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit1")}

- #char:--
The ships starts turning... 

~ PlaySFX("BarrelRoll")
~ UniqueEffectActivate("UpSideDown")
// ~ PlaySFX("Turbulence")

    {
        - trustedKleber || bought_booster_x:

            //TODO efeito de barrel roll.

            #char:--
            ...and rolls, dodging an uncannily solid spike of red mist! {StopMusic()} {StopSFX("41Rockets")}

            #char:Kleber_happy_angry|R
            <wave>Booyah!</wave> {bought_booster_x: What did I tell you about that Batizada?} Last time I tried doing this, I crashed Silva's ship! 

            #char:Kleber_happy_angry|R
            <wave>HAHAHAHA!</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

            #char:Jackie_fear_neutral|L
            ...

            #char:Barto_fear_angry|L
            ...

            #char:--
            They both stare at you.

            #char:Jackie_happy_angry|L
            <wave>HAHAHAHA!</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

            #char:Barto_happy_neutral|L
            <wave>Hehehe.</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer2")}

            #char:--
            The red mist envelops the entire mushroom as the ship's distance grows.

            ~ FadeTo("black", 1, 1)

            #char:--
            Everyone is helping clean up the mess that is the 41-Bis' cockpit.

            #char:--
            Still, no one was hurt. That really was quite the maneuver.

            #char:Kleber_neutral_neutral|R
            Uh, Cap... and crew.

            #char:Kleber_sad_sad|R
            What y'all did for me... Well, nobody ever did that before. 

            #char:Kleber_sad_sad|R
            I just want everyone here to know that you can count on me. <b>For real.</b>

            // AFFINITY PASS:

            { 
                
                - g_affinity_Kleber <= -2:
                #char:Kleber_neutral_sad|R
                And yeah, that includes you, Captain.

                #char:Kleber_neutral_sad|R
                ...Maybe we can start getting along?
            
            }

            #char:Barto_happy_angry|L
            ...Thank you, Kleber. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            #char:Jackie_happy_happy|L
            100% agreed! You can count on us too. {Emotion("Shine", "ffb71b")} {PlaySFX("LightWoosh")}
            
            #char:Barto_happy_neutral|L
            Just never do a barrel roll again, <i>please</i>.

        - else:

            // TODO: unique effect de barrel roll 
            ~ UniqueEffectActivate("41BisDamage")
            ~ PlaySFX("SmallDamage")

            #char:--
            ...and it rolls, taking damage while maneuvering! {StopMusic()} {StopSFX("41Rockets")}

            #char:--
            You're on your knees. Everything hurts. 
            
            #char:--
            But why? Maybe you... hit your... hea... {PlaySFX("SmallDamage")}

            
            ~ FadeTo("black", 1, 1)

            #char:--
            You get up in a jump, expecting red mist to have swallowed the ship.

            #char:--
            Instead, you see the complete mess that is the cockpit of the 41-Bis.

            #char:--
            Barto is sitting down with an icebag in his snout.

            #char:--
            Jackie is fixing her bionic arms.

            #char:--
            Kleber is looking at you.

            #char:Kleber_surprised_neutral|L
            ...That was quite the hit in your head.

            //AFFINITY PASS:
            { 
                
                - g_affinity_Kleber > 10:
                #char:Kleber_surprised_neutral|L
                We were all worried. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}
            
            }

            #char:Jackie_fear_angry|R
            Whew... I guess we're never coming back to the Spore Heights again?

            #char:Barto_fear_angry|L
            Nope. We're not.

            #char:Kleber_sad_angry|L
            Everyone... I can't thank you enough. 

            #char:Kleber_sad_sad|L
            What y'all did for me... well, nobody ever did that before.

            #char:Kleber_sad_sad|L
            Honestly, I'm not even sad you don't trust me yet. I can work towards it.

            #char:Kleber_happy_angry|L
            I just want everyone here to know that you can count on me. <i>For real.</i>

            //AFFINITY PASS:
            { 
                
                - g_affinity_Kleber <= -2:
                #char:Kleber_neutral_sad|L
                And yeah, that includes you, Captain.

                #char:Kleber_neutral_sad|L
                ...Maybe we can start getting along?
            
            }

            #char:Barto_happy_angry|L
            ...Thank you, Kleber. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            #char:Jackie_happy_happy|R
            100% agreed! You can count on us too. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}
            
            #char:Barto_happy_neutral|L
            Just never do a barrel roll again, <i>please</i>.

    }

    - #char:--
    Your crew resumes their usual banter.

    #char:--
    Kleber shakes your hand firmly.

    {
        - paidTheDebt:

        #char:--
        When he lets go of your hands, you see it.

        ~ ScreenFlash("white", -1)

        #char:--
        {kleberDebt},00 G$.

        ~ g_grana += kleberDebt

        #char:Kleber_surprised_sad|L
        What can I say? Did you <i>really</i> think I'd let Silva keep your money?

        #char:Kleber_neutral_neutral|L
        I can be stealthy too, you know.

        #char:--
        You can't even believe your eyes. 
    }

    //AFFINITY PASS:
    { 
                
        - g_affinity_Kleber <= 20:
        #char:Kleber_neutral_sad|L
        Well, that's it.

        - else:
        #char:Kleber_neutral_happy|L
        My pleasure, Captain.
            
    }

    #char:Kleber_neutral_neutral|L
    ...

    #char:Kleber_happy_angry|L
    ...Hey, Barto! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}
    
    #char:Kleber_happy_happy|L
    How about a grilled cheese? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    {UnlockAchievement("A_HELL_OF_A_HANGOVER")}     

    -> MISSION_END


= ending_kleber_is_handed_to_silva

    #char:--
    You tell Silva that he can take Kleber. {StopMusic()}

    #char:Jackie_fear_neutral|R
    <shake>WHAT!?</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery2")}

    ~ g_affinity_Jackie -= g_affinityChangeHigh

    #char:Barto_angry_angry|R
    <shake>C-CAPTAIN!</shake> This is... {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

    ~ g_affinity_Barto -= g_affinityChangeHigh

    #char:Kleber_sad_sad|R
    ... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    #char:Silva_surprised|L
    My... I'll confess I wasn't expecting that. 
    
    #char:Silva_neutral|L
    You're cold-hearted, huh?

    #char:Silva_laughing|L
    If caravaneering doesn't work out, come work for me! <wave>Hahaha!</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

    #char:Kleber_sad_sad|L
    Sorry about everything... Barto, Jackie...

    #char:Kleber_sad_happy|L
    You're great people.

    #char:Kleber_angry_angry|L
    As for {g_name}...

    #char:Kleber_angry_angry|L
    Good luck without a pilot. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
    
    ~ g_affinity_Kleber -= g_affinityChangeHigh

    #char:--
    Silva motions his goons to take Kleber inside the casino. He doesn't look back. 

    #char:Silva_laughing|L
    Anteater and machine-girl, seriously, with a boss like this...!

    #char:Barto_sad_sad|R
    ... {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad2")}

    #char:Jackie_sad_sad|R
    ... {Emotion("WaveIn", "2c2b30")}

    #char:--
    You motion your crew to go back to the ship.

    ~ FadeTo("black", 1, 1)

    #char:--
    You are in the cockpit with Jackie and Barto.

    #char:--
    They're eyeing you, bodies rigid.

    #char:Jackie_sad_sad|L
    <i>Who's</i> going to pilot now, Captain? Did you even think about that? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    -> pilot_choice

= pilot_choice

        #char:--
        Who will pilot the 41-Bis?

        +  [BARTO¬Assign Barto as the new pilot.>>]

            #char:Barto_angry_angry|R
            When did I say to you that <i>I</i> could pilot?

            #char:Barto_angry_neutral|R
            Forget it. Either pilot yourself or ask Jackie. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

            {
                - g_interest != "Piloting": 

                    #char:Barto_angry_neutral|R
                    Oh, I forgot: you can't pilot. 
            }

            -> pilot_choice

        + [JACKIE¬Assign Jackie as the new pilot.>>]

            #char:Jackie_neutral_sad|L
            Yeah, I can pilot.

            #char:--
            She stares at you.

        + {g_interest == "Piloting"} [CAPTAIN¬Pilot yourself.>>]

            #char:--
            You'll pilot it yourself.

        - #char:Jackie_neutral_neutral|L
        That's not going to happen, though.

        #char:--
        You freeze. How can she talk to her Captain like that?

        #char:Barto_angry_angry|R
        Exactly. Do you honestly think we're going to keep you as our Captain after you betrayed your crewmate? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

        #char:Jackie_angry_neutral|L
        How long, till you decide one of <i>us</i> deserves this treatment? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit2")}

        #char:--
        Your crewmates are getting ready for a fight. You don't know if you can take them both.

        * [PUNCH_LEFT¬Try to defend yourself from the left.>>]

            #char:--
            Barto quickly grabs you before you can do anything.

        * [PUNCH_RIGHT¬Try to defend yourself from the right.>>]

            #char:--
            Barto quickly grabs you before you can do anything.

        * [FLEE¬Try to escape.>>]

            #char:--
            Barto quickly grabs you before you can do anything.

        - #char:Barto_angry_angry|L
        <shake>Never</shake> betray your own crew. {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

        ~ g_morale -= 100

        -> END


= ending_bottle_intact

    #char:Kleber_surprised_sad|L
    Captain, that was so much Grana. I don't know what to say. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} {StopMusic()}

    //AFFINITY PASS:
    { 
                
        - g_affinity_Kleber >= -50 && g_affinity_Kleber <= -2:
        #char:Kleber_surprised_sad|L
        Plus, I wasn't expecting you would do that for me. <i>At all</i>.

        #char:Kleber_surprised_sad|L
        We don't even get along that well.

        - g_affinity_Kleber <= -51:
        #char:Kleber_surprised_sad|L
        Plus, I wasn't expecting you would do that for me. <i>At all</i>.

        #char:Kleber_surprised_sad|L
        I thought you hated me, seriously.

        - else:
        #char:Kleber_surprised_sad|L
        ...Thank you. really.

    }

    ~ g_affinity_Kleber += g_affinityChangeHigh
    
    #char:Barto_fear_angry|R
    Shall we get going, then...?

    #char:--
    You climb back the cargo hold with your crew. 
    
    #char:--
    You can see Silva's smirk in the distance. {ShipIn()}

    ~ FadeTo("black", 1, 1)

    #char:--
    The 41-Bis flies by the giant mushrooms, the crew silent.

    #char:--
    Kleber turns on the autopilot and stands up.

    #char:Kleber_sad_sad|L
    What y'all did for me... Well, nobody ever did that before.

    #char:Kleber_sad_sad|L
    Honestly, I'm not even sad you don't trust me yet. I can work towards it.

    #char:Kleber_happy_angry|L
    I just want everyone here to know that you can count on me. <i>For real.</i>

    //AFFINITY PASS:
    { 
        
        - g_affinity_Kleber <= -2:
        #char:Kleber_neutral_sad|L
        And yeah, that includes you, Captain.

        #char:Kleber_neutral_sad|L
        ...Maybe that's a start?
    
    }

    #char:Barto_happy_angry|R
    ...Thank you, Kleber. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    #char:Jackie_happy_happy|L
    100% agreed! You can count on us too. {Emotion("Shine", "ffb71b")} {PlaySFX("LightWoosh")}

    #char:--
    Your crew resumes their usual banter. Kleber shakes your hand firmly.

    #char:--
    When he lets go of your hand, you see it: {kleberDebt/2},00 G$.

    ~ g_grana += kleberDebt / 2

    #char:Kleber_happy_sad|L
    That's all I had... to pay him, you know. It's not that much. 
    
    #char:Kleber_neutral_happy|L
    But I promise I'll repay you. Everything.

    #char:--
    He walks back hastily to his chair, his face reddened.

    #char:Jackie_happy_angry|R
    ...
    
    #char:Barto_happy_happy|R
    ...

    #char:Kleber_happy_angry|L
    ...Hey, Barto! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}
    
    #char:Kleber_happy_happy|L
    How about a grilled cheese? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

    {UnlockAchievement("A_HELL_OF_A_HANGOVER")}

    -> MISSION_END


=== function GetRandomCurse ===

    ~ cursedRoll = RANDOM(1, 4)

    {        
        - cursedRoll == 1:
            ~ cursedByTheBottle = "Kleber"
        
        - cursedRoll == 2:
            ~ cursedByTheBottle = "Jackie"

        - cursedRoll == 3:
            ~ cursedByTheBottle = "Barto"

        - cursedRoll == 4:
            ~ cursedByTheBottle = "Captain"
    }