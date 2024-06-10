===E_Crew_BartosBananaPastels===

//Mabel check: Ready to be localized!

#scope: General
#category: DemoGeneral2
#tier: Rookie, Intermediate, Expert
#intensity: Low
#location: Skyways


#char:--
Now that you've started working together, mealtime has been... <waitfor=0.5><i>interesting</i>, to say the least. 

#char:--
Barto is a respectable chef. {PlaySFX("Frying")}

#char:--
He tends to carefully consider nutrition and supplies in his cooking, not just taste.

#char:--
He can be a tad peculiar sometimes, though. {PlayMusic("Light")} 

#char:--
Seems like it's one of those days, as he's been locked in the kitchen all morning without letting anyone in. 

#char:--
The noise, however, is quite enticing. 

~ ScreenFlash("White", -1)

#char:--
When the door finally opens, you see Barto holding a basket filled with rectangular fried snacks. {PlaySFX("Mistery3")} {StopSFX("Frying")} {PlaySFX("Door")}

#char:Barto_happy_angry|L
Everyone, today is your lucky day!

#char:Barto_happy_sad|L
I have just come up with a new recipe! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:Barto_happy_angry|L
<bounce>Please</bounce>, <bounce>please</bounce>, come try!

//AFFINITY PASS
{ 
    - g_affinity_Barto >= -10:

        #char:Barto_happy_angry|L
        I am sure it will <i>blow you away</i>, Captain!

    - else:

        #char:Barto_angry_angry|L
        You too, Captain. It is past time you gave me some recognition. {Emotion("WaveOut", "ea2929")}
        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)
}

#char:Jackie_happy_happy|R
Oooh, <i>pastel</i>! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

~ g_affinity_Jackie_Barto += g_affinityChangeLow

{
    - E_Environment_ThroughTheThunderCloud.barto_above_thunder:

        #char:Jackie_happy_neutral|R
        Look at you, pampering us with snacks.
        
        #char:Jackie_happy_sad|R
        I think someone is happy the Captain went with his plan yesterday, huh?

        //AFFINITY PASS
        {
            - g_affinity_Jackie_Barto > 0:
                #char:Jackie_happy_sad|R
                Are you trying to make up for the lost time, perhaps?

                #char:Jackie_happy_sad|R
                In any case, I'm glad!
        }

        #char:Barto_neutral_sad|L
        Oh, stop it. I just felt like doing something different. 

    - else:
        //AFFINITY PASS
        {
            - g_affinity_Jackie_Barto < 0:
                #char:Jackie_neutral_angry|R
                Maybe you should cook like that more often, huh?

            - else:
                #char:Jackie_happy_happy|R
                You've made my day already!
        }
}

#char:--
You sure haven't seen any snack like that back in the Surface.

#char:--
Considering Jackie's excitement, it must be quite tasty.

#char:--
Should you ask her about it or take a closer look yourself?

+ [JACKIE¬Ask Jackie if she has ever tried pastel.>>]

    #char:--
    You turn to Jackie and ask if pastels are common in the Skies.

    #char:Jackie_surprised_angry|R
    Wait, you've <i>never</i> had any?
    
    #char:Jackie_happy_sad|R
    They're pretty popular. I'm sure you'll enjoy it!

    ~ g_affinity_Jackie += g_statChangeLow
    
    #char:Jackie_happy_neutral|R
    Me and grandma always went for these with some sugar cane juice when I was a kid, you know.

+ [PASTEL¬Inspect the peculiar snack.>>]

    #char:--
    You take a snack from the basket and examine it closely.

    #char:--
    The filling must be sweet, judging by the cinnamon powder covering your hands.

-   #char:Barto_neutral_sad|L
    I experimented a bit with the filling.

    {
        - E_Environment_ThroughTheThunderCloud.kleber_through_thunder:

            #char:Barto_angry_sad|L
            After we got hit by a lightning bolt because of <wave>a certain someone</wave> yesterday, I had to do something about the fried ingredients.

            #char:Kleber_angry_angry|R
            <shake>HEY!</shake> I HEARD THAT! {Shake("Big Face", 1, 0.5)} {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

            //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

            //AFFINITY PASS
            {
                - g_affinity_Barto_Kleber < 0:
                    #char:Barto_angry_angry|L
                    Should you not be piloting instead of eavesdropping on us? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit2")}

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                    #char:Kleber_angry_neutral|R
                    Didn't you <wiggle>just</wiggle> call us for lunch? 
                    
                    #char:Kleber_neutral_neutral|R
                    Autopilot exists for a reason, you know?
            }

            #char:Barto_neutral_happy|L
            .<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>Anyway.

            #char:Barto_neutral_happy|L
            I had to find a way to save the Bittersweet Bananas from being wasted.

            #char:Kleber_surprised_angry|R
            ...<waitfor=0.5>Ew. Nevermind. {Emotion("Spiral", "53e66b")} {PlaySFX("Bad1")}
            
            #char:Kleber_happy_sad|R
            Guess that's my cue to go back to the cockpit.

        - E_Environment_ThroughTheThunderCloud.jackie_around_thunder:

            #char:Barto_neutral_happy|L
            Now that we had to change our route by going around that thundercloud, I had to get creative not to waste any supplies.

            //AFFINITY PASS
            {
                - g_affinity_Jackie_Barto > 0:
                    #char:Jackie_happy_neutral|R
                    Oh please, cut it out, chef.

                    #char:Jackie_happy_sad|R
                    At least we're safe, aren't we? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer2")}

                - else:
                    #char:Jackie_sad_neutral|R
                    Oh, come on! At least we're safe now! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                    #char:Jackie_sad_angry|R
                    Plus, if we waited, we'd have wasted an extra day of food anyway!
            }

            #char:Barto_neutral_sad|L
            ...I suppose.

            #char:Barto_neutral_angry|L
            Anyhow, we had some Bittersweet Bananas in storage.

            #char:Barto_happy_sad|L
            I have never worked with them before, but there is no time like the present.

        - E_Environment_ThroughTheThunderCloud.barto_above_thunder && E_Mission_Rookie_TheMafagafoPassenger:
        
            #char:Barto_neutral_angry|L
            We had some Bittersweet Bananas in storage.

            #char:Barto_happy_sad|L
            I've never worked with them before, but there's no time like the present.

            #char:Kleber_happy_sad|R
            <i>Phew!</i> When you said you were trying something new, I was afraid it had something to do with the eggs. {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

            //AFFINITY PASS
            {
                - g_affinity_Barto_Kleber < 0:
                    #char:Barto_angry_angry|L
                    Do you <shake>really</shake> think I would do that to our cargo? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                    #char:Kleber_surprised_sad|R
                    <wave>Jeez</wave>, don't sweat it. It was just a joke. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}
            }

            #char:Kleber_neutral_sad|R
            Anyways. I'm not a big fan of sweet stuff.
            
            #char:Kleber_neutral_sad|R
            Guess I'll pass.

            #char:Barto_angry_neutral|L
            Your loss.

        - else:

            #char:Barto_neutral_angry|L
            We had some Bittersweet Bananas in storage.

            #char:Barto_happy_sad|L
            I have never worked with them before, but there is no time like the present.

    }

    #char:Jackie_surprised_angry|R
    Bittersweet Bananas...? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}
    
    #char:Jackie_surprised_angry|R
    Well, I tend to stick to meats or cheese when it comes to fillings...

    #char:Jackie_happy_neutral|R
    But hey, I'm up for it!

    #char:Barto_happy_angry|L
    Well then... <waitfor=0.5><i><wave>bom apetite</wave></i>! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

    #char:--
    You take a bite out of the pastel.

    ~ ScreenFlash("White", -1)

    #char:--
    It's still piping hot. 
    
    #char:--
    But, most of all...

    #char:--
    ...It's <shake><b>insanely bitter</shake></b>. {PlaySFX("Funny2")}

    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)
    
    #char:--
    Whatever Barto did, it took the sweetness completely out of the equation.

    #char:--
    Looking at Jackie, her reaction is about the same as yours.

    #char:Jackie_fear_neutral|R
    .<waitfor=0.5>.<waitfor=0.5>. {Emotion("Spiral", "53e66b")} {PlaySFX("Bad1")}
    
    //AFFINITY PASS
    { 
    
        - g_affinity_Barto >= -1:

            #char:--
            Barto looks at you with anticipation in his eyes.
            
            #char:--
            You can't help but notice his tail - is it wagging like a dog's!?

            #char:Barto_happy_angry|L
            Well? What is your verdict? 
            
            #char:Barto_happy_angry|L
            It is an intriguing combination, is it not? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        - else:

            #char:--
            Barto looks at you, hesitantly.

            #char:--
            Seems like he's trying to maintain his composure, but he seems anxious about your response.

            #char:Barto_neutral_angry|L
            <i>Ahem</i>. <waitfor=0.5>What is your verdict, Captain?
    }

    + (banana_pastels_angry)[STERN¬Warn Barto about too much experimentation in the kitchen.>M>]

        #log: Tried Barto's bittersweet Banana pastels.

        #char:--
        You reprimand Barto for his invention. 
        
        #char:--
        What was he thinking by making something so bitter? 

        ~ g_affinity_Barto -= g_statChangeLow

        //AFFINITY PASS
        { 
        
            - g_affinity_Barto >= 0:

                #char:Barto_sad_sad|L
                I guess I got too excited at the prospect of making something new. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                #char:Barto_sad_sad|L
                My apologies, both of you.

                #char:--
                Barto returns to the kitchen, his pride hurt. {StopMusic()}

                ~ g_morale -= g_statChangeMid

                #char:--
                You and Jackie exchange awkward glances before going back to your posts.

            - else:

                #char:Barto_angry_sad|L
                <i>Tsk.</i> I should have known better. {Shake("Big Face", 1, 0.5)}

                #char:Barto_angry_angry|L
                I could forgive you making bad decisions, but now you insult my food? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                #char:--
                Barto goes back to the kitchen, his nose in the air. {StopMusic()}

                ~ g_morale -= g_statChangeMid

                #char:--
                You and Jackie exchange awkward glances before going back to your posts.
        }

    -> EVENT_END

    + (banana_pastels_lie)[LIE¬Tell him it was delicious.>S>]

        #log: Tried Barto's bittersweet Banana pastels.

        #char:--
        You'd rather not hurt your cook's feelings. You tell Barto that it's fine.

        ~ g_affinity_Barto += g_statChangeHigh

        #char:Barto_neutral_happy|L
        Perfect! Then I suppose I will make some more with the crust and bananas we have left.
        
        #char:Barto_happy_happy|L
        They should make a <bounce>great</bounce> snack for the journey! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        #char:--
        Before you or Jackie can interject, Barto is already heading back to the storage, presumably to pick the aforementioned supplies.

        ~ g_supplies -= g_statChangeMid

        #char:Jackie_fear_neutral|R
        Captain, what have you <shake>done</shake>? {Emotion("WaveIn", "2c2b30")} {PlaySFX("Funny1")}

        //TODO SFX: Efeito de fear/surprise. Exemplo do Animal Crossing: (https://youtu.be/Z0DZPwFciX4?t=56)
        
        #char:Jackie_sad_neutral|R
        Now we'll either have to keep eating the pastels or waste food! {StopMusic()}

        #char:--
        Well, at least <i>one</i> of you will be happy. 
        
        #char:--
        It could be a lot worse, right?


    -> EVENT_END

    + (banana_pastels_motivate)[MOTIVATE¬Be honest, but praise his creativity.>M>]

        #log: Tried Barto's bittersweet Banana pastels.

        #char:--
        You give Barto the truth, making sure to encourage him to try harder next time.
    
        ~ g_morale += g_statChangeMid

        //AFFINITY PASS
        { 
        
            - g_affinity_Barto >= -1:

                #char:Barto_sad_sad|L
                I see... so it ended up being too bitter for your tastes. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                ~ g_affinity_Barto += g_statChangeLow
                
                #char:Barto_neutral_angry|L
                Do not worry though, I know <i>exactly</i> how to fix this.

            - else:

                #char:Barto_neutral_sad|L
                ...I appreciate your honesty.

                ~ g_affinity_Barto += g_statChangeLow

        }

        #char:Jackie_happy_happy|R
        The crust was very nice, though - I <bounce>love</bounce> the cinnamon! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        #char:Barto_neutral_sad|L
        Much appreciated, you two. I shall keep that in mind. {StopMusic()}

        #char:--
        This could have gone better, but you're confident that Barto will make you some delicious pastels in the future.

    -> EVENT_END