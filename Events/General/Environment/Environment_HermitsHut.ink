===E_Environment_HermitsHut===

#scope: General
#category: Environment
#tier: Rookie, Intermediate, Expert
#intensity: Low

#char:--
While flying closer to the ground one day, you spot a solitary person resting close to an improvised hut. 

#char:--
You order Kleber to land the ship near her.

#char:Hermit|L
Hello there. Been some time since I saw a Caravan going down this way.

+ [CONFUSED>>]

    ~ ScreenFlash("white", -1)

    #char:--
    You find a bit shocking to see someone here.

    #char:--
    It's not impossible for people to live out in the wilderness, but it is... odd, to say the least.

    #char:--    
    You ask the old woman how she's managed so far.

    #char:Hermit|L
    Well enough, except for the occasional storm.
    
    #char:Hermit|L
    The worst part is the lack of animals for hunting, though.

+ [QUESTION>>]

    #char:--
    You ask if she's looking for a ride.

    #char:Hermit|L
    No, no. I'm trying to live on my own out here.
    
    #char:Hermit|L
    I used to be a resident of the Floating City, but... well, now I'm here.

+ [THINK>>]

    #char:--
    You wonder if she knows more about the environment up ahead.

    #char:Hermit|L
    I'm afraid I can't really help you. I don't really go too far from home these days.

    #char:Hermit|L
    I do have to forage sometimes, but there's enough edible roots and plants nearby if you know where to look.

-   #char:Kleber_sad_sad|R
    Why would anyone want to live in the middle of nowhere like this? {Emotion("Inner", "black")}

    #char:Jackie_sad_sad|R
    There's a reason we're paid to cross the sky as a Caravan, you know.

    #char:Hermit|L
    Well, it's... complicated. It's dangerous, but in a few ways, it's calmer than living in that place.

    + (hermit_barto) [LAUGH>>]

        #char:--
        You're sure it's less risky than being in a Caravan, at least.

        #char:--    
        You'd be lying if you said a part of you didn't wish for a calmer life. 

        ~ g_affinity_Barto += 5

        #char:--
        Looking to the side, you see Barto vigorously nodding. Looks like you're not alone in that.

    + (hermit_jackie) [SAD>>]

        #char:--
        That sounds too lonely for you.

        #char:--    
        Even though you're constantly risking your neck, at least you have people with you.

        #char:Jackie_sad_sad|R
        Are you sure? There's no one to keep you company here - or to help you. {Emotion("Inner", "blue")}

        #char:Hermit|L
        Dear, I'm better off like this. Even if I had someone close to me, I'd rather they take care of their own future.

        ~ g_affinity_Jackie += 5

        #char:--
        Jackie purses her lips and looks to the side, as if she suddenly became uncomfortable with the lady's reassurance.

    + (hermit_kleber) [FACEPALM>>]

        #char:--
        You don't think you could handle such monotony.

        ~ g_affinity_Kleber += 5

        #char:--
        Kleber seems to agree with you. No surprises there - the man seems incapable of staying out of trouble.
        
        #char:Kleber_happy_neutral|R
        Eh, well. Who are we to judge?
        
        #char:Kleber_happy_sad|R
        Just be safe out here, old lady.

    -   #char:--
        She smiles, then turns to you again.

        #char:Hermit|L
        That said, I do appreciate the generosity of travelers every once in a while. Maybe you have something I could use.

        #char:Hermit|L
        Grana is of no use to me, but... maybe some fuel or food?

        + [FUEL>F_M>]

            #log: You offered some fuel to a hermit.

            #char:--
            You offer some fuel to the old woman.

            #char:Hermit|L
            Oh my! Thanks, this will help me power up my generator for a few days!

            ~ g_fuel -= 30
            ~ g_morale += 30

        -> EVENT_END

        + [SUPPLIES>S_M>]

            #log: You gave some food to a hermit.

            #char:--
            You give the old lady some of your food.

            #char:Hermit|L
            Why, thank you! If I ration these just right, they could even last me a few weeks!

            ~ g_supplies -= 30
            ~ g_morale += 30

        -> EVENT_END

        + [NO>M>]

            #log: You had nothing to spare for a hermit.

            #char:--
            You don't think you have enough to share.

            #char:Hermit|L
            Well, that's fine. I get that things are hard for everyone. Thanks for the chat anyway, it's rare to find some company here.

            #char:--
            You and the crew turn away to leave, but before you can enter the 41-Biz, you hear your fellow travelers arguing.

            {
                - hermit_barto:

                    ~ g_affinity_Barto -= 10

                    #char:Barto_sad_sad|R
                    We could have afforded to give something. It's not like she needed much, living all alone. {Emotion("Inner", "blue")}

                - hermit_kleber:

                    ~ g_affinity_Kleber -= 10

                    #char:Kleber_sad_sad|R
                    Cap, I can't believe I'm gonna say this, but maybe giving her some supplies was the right thing? {Emotion("Inner", "blue")}

                - hermit_jackie:

                    ~ g_affinity_Jackie -= 10

                    #char:Jackie_sad_sad|R
                    Captain, I know we don't have fuel or food to spare, but maybe we could have given just <i>a little</i>? {Emotion("Inner", "blue")}
            }

            #char:--
            For the old lady's sake, you hope she'll manage. But you can't help but feel a little bit guilty...

            ~ g_morale -= 30

        -> EVENT_END