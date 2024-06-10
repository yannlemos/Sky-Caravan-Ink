===E_Ship_RoadMerchant===

//Mabel check: Ready to be localized!

#scope: General
#category: M2_General1
#tier: Rookie, Intermediate, Expert
#intensity: Low
#location: Skyways

VAR bought_booster_x = false

~ ScreenFlash("white", -1)

#char:--
You wake up to screams in a robotic voice.

#char:--
What are the Skies going to throw at you today? 

#char:--
"<color=skyPeddler><incr w=0.5 a=0.5>The Sky Merchant has arrived, buying, selling, gold, silver, gadgets, supplies, fuel, anything you could ever imagine—</incr></color>"

#char:--
And so it goes, incessantly.

#char:--
You arrive at the cockpit and see Kleber grinning at the sight of the ship.

{ 
    - E_Crew_DeuRuim.deu_ruim_next_day:
        #char:--
        Seems like he's in a good mood. Bless the grilled cheese.

    - else:
        #char:--
        At least it seems like he's in a good mood today.

}

#char:Kleber_happy_happy|L
Morning, Cap! Time for you to meet a Sky Peddler.  {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:Kleber_neutral_angry|L
These guys travel the clouds buying and selling everything but their next of kin.

#char:Barto_angry_angry|R
Never trust their food. I worked at one of their ships once. 

#char:Barto_angry_angry|R
Worst cleaning standards I've ever seen. {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny1")}

#char:Kleber_neutral_neutral|L
Morning to you too, Barto.

#char:Kleber_neutral_happy|L
We should make a stop, Cap. It's a courtesy in the Skies to give' em a chance of making their dough.

#char:Jackie_happy_neutral|R
Morning, everyone! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

//AFFINITY PASS:

{ 
    - g_affinity_Jackie <= -5:
        #char:Jackie_neutral_neutral|R
        ...Morning, Captain.

}

#char:Jackie_happy_happy|R
Oh, a <bounce>Sky Peddler</bounce>! I've heard so much about them from Grandma. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")} {Shake("Big Face", 0.5, 0.3)}

#char:Jackie_fear_angry|R
We're making a stop, right? They get <shake>real</shake> angry if you ignore them...

+ (painted_by_peddler) [NO¬It's best to continue the trip.>M_S_T>]

    // #log: Ignored a merchant on the road.

    #char:--
    You think they might not be worth the time. You give Kleber the signal to detour to the left, so you don't have to deal with them.

    #char:Jackie_sad_neutral|R
    ...<i>Really</i>, Captain? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    //AFFINITY PASS:
    { 
        - g_affinity_Jackie <= -10:

            #char:Jackie_sad_neutral|R
            I don't even know why I'm still surprised.

    }

    ~ g_affinity_Jackie -= g_affinityChangeLow

    #char:Kleber_surprised_sad|L
    Cap, be careful with these little interactions between Skyfarers.

    ~ g_affinity_Kleber -= g_affinityChangeLow
    
    #char:Kleber_surprised_sad|L
    They can be the difference between a safe trip and-

    ~ UniqueEffectActivate("PaintSplash")
    ~ PlaySFX("LightWoosh")
    ~ ScreenFlash("white", -1)
    ~ PlaySFX("PaintSplash")

    #char:Kleber_angry_angry|L
    ...getting a can of paint in the <shake>freakin' cockpit window!</shake> {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.3)} 

    #char:Jackie_fear_sad|R
    Ok, I wasn't expecting them to be this quick! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

    #char:--
    You can hear the droning voice as it distances itself from the 41-Bis.

    #char:--
    "<color=skyPeddler><incr w=0.5 a=0.5>Paint is free of charge for disrespectful Captains! Have a nice trip, caravaneers!</incr></color>"
    
    #char:Kleber_sad_sad|L
    Damn, you can find some really "out there" deals with them. Maybe we should have listened.

    #char:Jackie_sad_sad|R
    I'm not gonna lie... it's going to take the whole day for us to clean up this mess. {Emotion("Spiral", "0a4de8")} {PlaySFX("Funny1")}
    
    #char:Jackie_sad_sad|R
    We'll have to use plenty of cleaning supplies too.

    #char:Barto_angry_angry|R
    ...Did you see if they threw any of their soup at the window? {Shake("Big Face", 1, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit1")}

    #char:Kleber_surprised_sad|L
    Huh, no? {Emotion("Question", "fd97c9")} {PlaySFX("Funny1")}

    #char:Barto_neutral_happy|R
    Good. We're safe, then.

    #char:--
    Well, that was an unexpected lesson in Skies courtesies. 

    ~ g_timeChange = 2
    ~ g_morale -= g_statChangeLow
    ~ g_supplies -= g_statChangeLow
    ~ UniqueEffectDeactivate("PaintSplash")

    #char:--
    You spend the rest of your day taking the paint off the window alongside the crew, the ship stopped. A day of travel is lost.

    -> EVENT_END

+ [YES¬Agree to stop for a bit.>S_F_G>]

    #char:Barto_angry_angry|L
    If anyone eats their risole or joelho, I'm out of this crew. {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

    ~ g_affinity_Barto -= g_affinityChangeLow

    //AFFINITY PASS:

    {   
        - g_affinity_Jackie <= -10:
        #char:Jackie_surprised_neutral|R
        Phew! I was starting to wonder when you were going to start listening to me.

        ~ g_affinity_Jackie += g_affinityChangeMid

        - else:
        #char:Jackie_surprised_neutral|R
        Don't mind him, Captain.

        ~ g_affinity_Jackie += g_affinityChangeMid
   
    }
       
    #char:Jackie_surprised_neutral|R
    Making a stop is the right thing to do. <i>I mean it</i>.

    //AFFINITY PASS:

    {   
        - g_affinity_Kleber <= -10:
        #char:Kleber_neutral_happy|L
        Ok, stopping it is.

        - else:
        #char:Kleber_neutral_happy|L
        Alright, let's go!
    
    }

    ~ g_affinity_Kleber += g_affinityChangeLow

    #char:--
    To Barto's nervousness, Kleber parks the ship.

    #char:--
    The peddler comes out wearing so many clothes at once that it's almost difficult to find the human inside it. {PlayMusic("SkyPeddler")}

    #char:--
    "<color=skyPeddler><wiggle>Hello, hello, good fellows. How are we?</wiggle></color>", says the peddler, sitting in a gangplank, the whole ship open like a giant wardrobe.
    
    #char:--
    "<color=skyPeddler><wiggle>We have everything from the most urgent to the most superfluous, at prices that will make you drop your jaw to the Surface!</wiggle></color>"

    #char:Jackie_happy_neutral|L
    I'm feeling like a true caravaneer! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

    #char:--
    The peddler notices your captain badge, greeting you with a pompous bow.

-> peddler_options

= peddler_options

    {
        - looked_at_fuel && looked_at_supplies && looked_at_morale:
            -> peddler_exit
    }

    #char:--
    "<color=skyPeddler><wiggle>Check my wares, my good Captain.</wiggle></color>"

        * (looked_at_fuel) [FUEL¬Take a look at their fuel.>>]

            #char:--
            He lifts a purplish drum of oil using a remote crane.

            #char:Kleber_surprised_angry|L
            No way...! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

            #char:--
            "<color=skyPeddler><wiggle>This is the "Batizada". I see your pilot knows all about it!</wiggle></color>", he says.

            #char:Kleber_happy_angry|L
            Captain, this is the best fuel there is for when you're in a pinch. 
            
            #char:Kleber_happy_angry|L
            The Batizada is legendary. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

            #char:Jackie_sad_sad|R
            Except I heard it's a terrible fuel. It corrodes the insides of the ship and can blow-up out of nowhere! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

            #char:Kleber_happy_neutral|L
            Well... If you only hear about Batizada from crap pilots, you're going to hear crap about Batizada! 
            
            #char:Kleber_happy_happy|L
            Don't trust them, trust me! {Blink("Big Face", 1, -1, "white")}

            #char:Barto_neutral_angry|R
            ...I just wanted to point out that it is made in the <color=refineryGreen><i><wiggle a=.3>Venom Refinery</wiggle></i></color>.

            #char:--
            Everyone looks at Barto, waiting for him to complete his point.

            #char:Barto_neutral_neutral|R
            ...

            #char:Barto_angry_angry|R
            Does the word <color=refineryGreen><i><wiggle>Venom</wiggle></i></color> not ring enough a bell for you? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

            #char:--
            "<color=skyPeddler><wiggle>Captain, Captain, reason with me... I have a feeling, a spiritual message</wiggle></color>", says the peddler.

            #char:--
            "<color=skyPeddler>This fuel... it will take you out of a <shake>deadly</shake> situation. <b><shake a=2>I know it.</shake></b></color>"
            
            #char:--
            "<color=skyPeddler><wiggle>{g_granaChangeLow} Grana and I'll fill 30% of your ship's tank with it.</wiggle></color>"

            #char:--
            "<color=skyPeddler><wiggle>How about that?</wiggle></color>", he asks.             

                ++ [YES¬Buy Batizada.>F_G>]

                    ~ bought_booster_x = true

                    #char:Kleber_happy_angry|L
                    YES! What a day, Captain. What a day! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                    ~ g_affinity_Kleber += g_affinityChangeMid

                    #char:Jackie_neutral_neutral|R
                    ...At least if anything explodes, I'll know the culprit right away.

                    ~ g_affinity_Jackie -= g_affinityChangeLow
                    ~ g_affinity_Jackie_Kleber -= g_affinityChangeLow

                    #char:--
                    "<color=skyPeddler><wiggle>You won't regret it, my good Captain</wiggle></color>", says the peddler, starting the refueling procedure.

                    ~ g_grana -= g_granaChangeLow
                    ~ g_fuel += g_statChangeHigh

                -> peddler_options

                ++ [NO¬Refuse the offer.>>]

                    #char:Kleber_sad_sad|L
                    C'mon... is this still about the client's call? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

                    ~ g_affinity_Kleber -= g_affinityChangeMid

                    #char:Jackie_happy_neutral|R
                    Good call, Captain. Sometimes it's best to be cautious.

                    ~ g_affinity_Jackie += g_affinityChangeLow
                    ~ g_affinity_Kleber_Jackie -= g_affinityChangeLow

                    #char:Barto_angry_angry|L
                    ...I can smell their kitchen from here. Let's leave already.

                    #char:--
                    "<color=skyPeddler>A shame, my good Captain... <wave>you may come to regret it.</wave></color>", he says, as ominously as he possibly can.

                -> peddler_options

        * (looked_at_supplies) [SUPPLIES¬Check the supplies.>>]

            #char:--
            He lifts a box containing several smaller, multicolored ones.

            #char:--
            "<color=skyPeddler>This is the <b><wiggle>Junto & Misturado</wiggle></b>, a premium collection of spices and ingredients from all over the Skies.</color>"

            #char:Barto_surprised_sad|L
            ...! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

            #char:Barto_surprised_sad|L
            I would <b>never</b> guess you would have that.

            #char:Kleber_fear_neutral|R
            I don't know if my bowels will be able to handle more spice in Barto's hands... {Emotion("Spiral", "53e66b")} {PlaySFX("Funny1")}

            #char:--
            "<color=skyPeddler><wiggle>Only {g_granaChangeLow} Grana for 30 pounds of exquisite food. None of it was cooked here, if I may say to my anteater friend.</wiggle></color>"

            #char:Barto_neutral_angry|L
            Decent price, sealed boxes, new tastes for my kitchen. You have the approval of your chef, Captain.

            #char:--
            "<color=skyPeddler><wiggle>Well... What do you say?</wiggle></color>"

                ++ (bought_supplies) [YES¬Buy Junto & Misturado.>G_S>]

                #char:--
                You tell the peddler to load up the supplies in the cargo hold.

                #char:Barto_happy_angry|L
                A revolution in the kitchen is incoming. You'll witness a new Barto. {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")} {Shake("Big Face", 1, 0.1)}

                ~ g_affinity_Barto += g_affinityChangeMid

                #char:Jackie_happy_neutral|R
                <wave>Ooooh.</wave> Now I'm curious!

                #char:Kleber_sad_angry|L
                Bold move, Cap. Your Surfacer digestory tract must be something.

                ~ g_affinity_Kleber -= g_affinityChangeLow
                
                #char:Barto_angry_happy|L
                ...I will pretend I did not hear that. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
                ~ g_affinity_Barto_Kleber -= g_affinityChangeLow

                ~ g_grana -= g_granaChangeLow
                ~ g_supplies += g_statChangeHigh

                -> peddler_options

                ++ [NO¬Refuse the offer.>>]

                #char:Barto_angry_angry|L
                ...I'm very disappointed. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                ~ g_affinity_Barto -= g_affinityChangeMid

                #char:Barto_sad_sad|L
                Oh, the things I could make with all that spice...! {Shake("Big Face", 1, 0.1)}

                #char:Jackie_sad_neutral|R
                That's too bad. I have to admit I was curious.

                -> peddler_options


        
        * (looked_at_morale) [QUESTION¬Ask if they sell morale.>>]

            #char:--
            "<color=skyPeddler><wiggle>What? How would someone buy or sell 'morale'?</wiggle></color>", he asks, cocking his head to the side. 

            #char:--
            You say that it's common in the C.C.A.

            #char:--
            "<color=skyPeddler><shake>Y-you work for the C.C.A.?!</shake></color>", he retreats a little bit inside his ship.

            #char:--
            "<color=skyPeddler><wiggle>The capybaras... they're an ancient force in this world.</wiggle></color>"
            
            #char:--
            "<color=skyPeddler><wiggle>I don't pretend to know their technologies. Please, look at my other wares.</wiggle></color>"

            #char:--
            You look around you. Everybody is quiet.

            #char:--
            The Capybarman did warn you not to ask about their morale tech...

            -> peddler_options

    = peddler_exit


    #char:--
    "<color=skyPeddler><wiggle>I have other clouds to attend to, my good Captain.</wiggle></color>", the peddler says, bowing again. {StopMusic()}

    #char:--
    "<color=skyPeddler><wiggle>However, before I go...</wiggle></color>", he continues, lifting his head sharply.

    #char:--
    "<color=skyPeddler><wiggle>What are you delivering?</wiggle></color>", he asks.

    #char:Jackie_surprised_angry|L
    Huh... Isn't this against caravaneer code?

    #char:--
    The peddler retreats to his ship, head low.

    #char:--
    "<color=skyPeddler><wiggle>I advise you to deliver whatever it is sooner... rather than later.</wiggle></color>"  {PlaySFX("Mistery1")}

    ~ ScreenFlash("white", -1)

    #char:--
    He closes the whole ship in seconds, flying away as if in a hurry. {PlaySFX("Door")}

    #char:Kleber_fear_angry|L
    That was... creepy. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    #char:Jackie_fear_angry|R
    You bet it was. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

    #char:Barto_fear_sad|L
    ...I confess I almost ate one their risoles. <shake>What have I become?</shake>

    {
        - bought_supplies:

            #char:Barto_Barto_neutral_sad|L
            I'm pleased with the new supplies, though. 
            
            #char:Barto_happy_happy|L
            Everyone, brace yourselves for tonight's dinner. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            #char:--
            The crew's collective sigh is audible.
    }

    {
        - bought_booster_x:

            #char:Kleber_happy_angry|L
            At least I got my kickass Batizada to play with! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

            #char:Kleber_surprised_sad|L
            <wiggle>Ahem.</wiggle> I mean, to drive safely and responsibly with!
    }

    #char:--
    The crew walks back to their posts slowlier than usual.

    #char:--
    At night, in bed, the peddler's words about the cargo echo in your head.

    -> EVENT_END

