=== Outpost_Barto ===

~ temp storyDirection = -> meet_barto

{   
    - g_lastMissionCleared == "Crystals":
        {
            - !barto_after_crystals_of_bygone_times:
                ~ storyDirection = -> barto_after_crystals_of_bygone_times

            - else:
                ~ storyDirection = -> barto_lines
        }

    - g_lastMissionCleared == "Octornado":
        {
            - !barto_after_grasp_of_the_octornado:
                 ~ storyDirection = -> barto_after_grasp_of_the_octornado

            - else:
                ~ storyDirection = -> barto_lines
        }

    - g_lastMissionCleared == "Cachaça":
        {
            - !barto_after_the_cursed_cachaca:
                ~ storyDirection = -> barto_after_the_cursed_cachaca

            - else:
                ~ storyDirection = -> barto_lines
        }
        

    - g_lastMissionCleared == "Mafagafo":
        {
            - !barto_after_the_mafagafo_passenger:
                ~ storyDirection = -> barto_after_the_mafagafo_passenger

            - else:
                ~ storyDirection = -> barto_lines
        }
    
    - meet_barto > 0:   
	    ~ storyDirection = -> has_met_barto
}

~ SetCurrentStitch(storyDirection)

-> storyDirection

// Meet Barto for the first time
= meet_barto

#char:--
The Capy-Bar may be a dump, but the food here probably outperforms most meals you've had in Surface.

#char:--
Looking around, you notice how the anteater seated next to you is staring at his plate.

#char:Barto_angry_angry|L
<wave>Hmmmmmm</wave>, I suppose the fries could use some salt. The steak is a bit tougher than I expected too...

#char:Barto_neutral_happy|L
Nevertheless, it works well enough as a dish. {Shake("Big Face", 0.5, 0.3)}

#char:Barto_angry_happy|L
Yet I could definitely improve the standards of this place...

#char:--
He's got to be your cook.

#char:Barto_neutral_neutral|L
...

#char:Barto_surprised_sad|L
Oh, greetings! Sorry if I caused a disturbance. {Shake("Big Face", 1, 0.3)} {Blink("Big Face", 0.5, -1, "white")}

#char:--
He takes a minute inspecting you before he realizes and jumps up.

#char:Barto_fear_angry|L
<shake>Captain!</shake> Of course! {Emotion("Explosion", "39f2d6")} {Shake("Big Face", 1, 0.7)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("StrongWoosh")}
 
#char:Barto_surprised_sad|L
Where are my manners?

#char:Barto_happy_sad|L
I am Barto. Your <i>humble</i> chef. Pleased to make your acquaintance! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:--
He looks at you, hesitantly. The mood is awkward. How should you greet him?

    + [STERN¬He looks intimidated by you. You keep a straight face.>>]

        #char:--
        You introduce yourself calmly, frowning at the sudden outburst. 

        #char:Barto_neutral_sad|L
        You are a serious one, I see. I appreciate that.

        ~ g_affinity_Barto += g_affinityChangeLow
        
        #char:Barto_neutral_sad|L
        I am like that too, especially about food.

    + [EASYGOING¬Acting playful would be good to break the ice.>>]

        #char:--
        You jump up to greet him, mirroring his previous movement.

        #char:--
        He seems petrified by your gesture.

        ~ g_affinity_Barto -= g_affinityChangeLow

        #char:Barto_surprised_sad|L
        I am not normally this excitable, I swear. {Emotion("WaveIn", "0a4de8")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Bad1")}

    + [EXCITED¬He seems nice. You show your excitement.>>]
        
        #char:--
        You say that you appreciate his energy and introduce yourself.
        
        #char:Barto_neutral_happy|L
        I don't usually behave like this though, it was just the surprise.

- #char:Barto_neutral_angry|L
Allow me to ask you a question if you don't mind, Captain {g_name}. Do you know how to cook? {Emotion("Explosion", "ffb71b")} {PlaySFX("Hit1")} {Blink("Big Face", 0.5, -1, "white")}

    + [YES¬You had no choice but to learn to.>>]

        ~ g_affinity_Barto += g_affinityChangeMid

        #char:--
        You had to learn at least a little if you wanted to survive in Surface.

        #char:--
        You certainly can't call yourself a chef, but you know the basics.

        #char:Barto_surprised_angry|L
        <i>Surfacer</i>, you say? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}
        
        #char:Barto_neutral_angry|L
        You must have gone through a lot to be a Caravan captain. 

        #char:Barto_neutral_angry|L
        I gather you did not have access to any particularly good ingredients or utensils down there.
        
        #char:Barto_neutral_angry|L
        Yet you still took the "do it yourself" route. That is the kind of initiative I respect.

    + [NO¬Not at all.>>]

        ~ g_affinity_Barto -= g_affinityChangeLow

        #char:--
        You were never the one to run excitedly to make the camp's stew back in Surface.
        
        #char:--
        You could never make it right.

        #char:--
        You sure loved to eat it, though.

        #char:Barto_surprised_angry|L
        <i>Surfacer</i>, you say? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}
        
        #char:Barto_neutral_angry|L
        You must have gone through a lot to be a Caravan captain. 

        #char:Barto_neutral_neutral|L
        Still, I am disappointed. <i>No love for cooking?</i>
        
        #char:Barto_neutral_angry|L
        I will fix that.

- #char:Barto_neutral_neutral|L
As for me, I am living the caravaneer life to challenge myself.

#char:Barto_neutral_sad|L
Although I have gathered quite the experience working in kitchens all over the Skyways, it is my first time working as a solo chef.

#char:--
Seems like Barto is beginning to feel more comfortable in the conversation. Now would be a good time to ask him a thing or two.

#char:--
You can ask for more information about him, his area of expertise or maybe talk about your ship.

-> get_to_know_barto

= get_to_know_barto

{
    - barto_interest && barto_himself && barto_ship:

        -> barto_talks_about_you

    - barto_interest || barto_himself || barto_ship:

        #char:Barto_neutral_neutral|L
        Very well. Can I help you with anything else, Captain?
}

    * (barto_himself) [BARTO¬Ask about his background.>>]

        #char:Barto_neutral_angry|L
        I come from distant clouds. Left my clan of anteaters to make my name as a chef. 

        #char:Barto_neutral_angry|L
        I was very young. They told me a cub like me wouldn't handle life in the Skyways.

        #char:Barto_neutral_sad|L
        Turns out I managed to join the Mandioca Cooks Guild and cooked in many places since then.
        
        #char:Barto_angry_sad|L
        Not all positive experiences, I have to say. 

        #char:Barto_neutral_sad|L
        One day, I will come back to my clan. 
        
        #char:Barto_angry_angry|L
        I will show them they were wrong. I just need to... {Shake("Big Face", 1, 0.7)}

        #char:Barto_sad_sad|L
        ... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:--
        His eyes drift to the wall ahead of him. In a second, Barto feels miles away. 

        #char:Barto_angry_sad|L
        <i><bounce>Ehem.</bounce></i> {Shake("Big Face", 1, 0.7)}

        -> get_to_know_barto


    * (barto_interest) [COOKING¬Talk about his role as the crew's cook.>>]

        {
            - g_interest == "Foraging":

                #char:--
                You tell Barto about your foraging adventures in Surface. He might be interested in them.

                #char:--
                His eyes light up instantly.

                #char:Barto_surprised_angry|L
                You, a forager?! 
                
                #char:Barto_happy_angry|L
                Why, that's my hobby too! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

                #char:Barto_neutral_neutral|L
                I was going to ask the Capybarman about the best stops to gather ingredients, but it seems like I already have an associate alongside me.

                ~ g_affinity_Barto += g_affinityChangeHigh
                
        }

    
        #char:Barto_neutral_neutral|L
        I will be responsible for feeding all of you. Tripulation's fuel, as I like to say.

        #char:Barto_happy_happy|L
        Overall, you can count on me making a magnificent feijoada to celebrate our deliveries. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    -> get_to_know_barto

    
    * (barto_ship) [SHIP¬Talk about your ship.>>]

        #char:--
        You brief him on your ship, trying to paint a picture of the storage space and kitchen.

        #char:Barto_surprised_neutral|L
        ...Oh my. That sounds <shake><i>terrible</i><shake>. {Emotion("Spiral", "53e66b")} {PlaySFX("Funny1")}
        
        #char:Barto_neutral_sad|L
        But I will make it work wonders. You will be delighted.

        #char:Barto_neutral_neutral|L
        I will probably deal with very old equipment, though. Repairs may be frequent. 

    -> get_to_know_barto

    * { barto_interest || barto_ship || barto_himself } [NO¬You're good for now.>>]

        -> barto_talks_about_you


= barto_talks_about_you

#char:Barto_neutral_angry|L
Anyway. I'll be finishing my meal here, waiting for your call.

#char:Barto_happy_sad|L
It was a pleasure, Captain. I'm looking forward to serve your ship. {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

-> END


// Has met Barto for the first time, but hasn't gone to a mission yet
= has_met_barto

#char:Barto_neutral_sad|L
I'm at your disposal, Captain. I promise to do my best both as a cook and as a teacher.

#char:--
Looks like Barto won't easily forget about trying to teach you how to cook better.

-> END


= barto_after_the_mafagafo_passenger

//AFFINITY PASS:
{   
    - g_affinity_Barto <= -2:
    #char:Barto_neutral_angry|L
    ...I have to say I am quite surprised we've managed to finish our first delivery.

    - else:
    #char:Barto_neutral_neutral|L
    I am glad we ended up finishing our first delivery, Captain.

}


{
    - E_Mission_Rookie_TheMafagafoPassenger.barto_watches_eggs:
        #char:Barto_neutral_angry|L
        Thank you for choosing me to take care of the cargo, by the way.

        #char:Barto_neutral_sad|L
        It means a lot to be entrusted with that kind of responsibility.

        //AFFINITY PASS:
        {   
            - g_affinity_Barto <= -2:
            #char:Barto_neutral_angry|L
            With that being said, I hope this proves to you that I am not <i>just</i> your cook.

            - else:
            #char:Barto_neutral_sad|L
            I was concerned you would think of me as <i>just</i> your cook.

            #char:Barto_sad_sad|L
            I am tired of being undervalued...

            #char:Barto_surprised_sad|L
            ...Ahem. My bad. I was just thinking out loud. {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

        }

}

{
    - E_Mission_Rookie_TheMafagafoPassenger.barto_bait:
        {
            - E_Mission_Rookie_TheMafagafoPassenger.barto_watches_eggs:
                #char:Barto_neutral_angry|L
                The same goes for following my advice about the bait.

            - else:
                #char:Barto_neutral_angry|L
                You may not have entrusted the eggs to me, but I am glad you used my bait.
        }

    - else:
        {
            - !E_Mission_Rookie_TheMafagafoPassenger.barto_watches_eggs:
                #char:Barto_sad_sad|L
                I hope you will allow me to do more for the crew next time, though.

                #char:Barto_sad_angry|L
                While I am your cook, it does not mean I am unwise about matters outside the kitchen.
        }
}

#char:Barto_surprised_angry|L
Oh, but forgive my prattling. Did you need something from me?

+ [ROSANA¬Ask what he thinks about your first client.>>]
    #char:--
    You ask Barto's opinion about Rosana.

    #char:Barto_neutral_sad|L
    Well, given she was our first client, it could have been far worse.

    {
        - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_loop:
            #char:Barto_fear_sad|L
            Still, she looked quite serious when she ordered us to go after the Mafagafo.

        - else:
            #char:Barto_surprised_angry|L
            Still, I am glad we did not test her patience.
    }

    #char:Barto_surprised_sad|L
    And seeing her complimenting my claws took me a little by surprise...

    #char:Barto_neutral_neutral|L
    But she seemed like a really skilled saleswoman.

    #char:Barto_neutral_happy|L
    The issue with the hatched egg was an accident rather than her purposely messing with us.

    #char:Barto_sad_angry|L
    And believe me, there are a lot of bad clients and bosses out there. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

+ [CARGO¬Ask how he feels about the Mafagafo.>>]

{
    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
        #char:Barto_sad_sad|L
        To be frank, I worry for the Mafagafo's safety. I hope it gets a good owner. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
        
        #char:Barto_sad_angry|L
        But I respect your commitment to the job. You were hired for a job and you accomplished it.

    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_animal_sanctuary:
        #char:Barto_happy_happy|L
        I'm sure the Mafagafo will be safe and sound at the sanctuary. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

        #char:Barto_happy_happy|L
        {g_name}, I am sure that purchasing the Mafagafo wasn't an easy choice.

        //AFFINITY PASS:
        {
            - g_affinity_Barto <= -2:
                #char:Barto_happy_angry|L
                I have to say I was quite surprised you did that.

            - else:
                #char:Barto_happy_angry|L
                You have more than earned my respect, believe me.
        }

    - else:
        #char:Barto_sad_sad|L
        I hope the Mafagafo stays safe after escaping... We do not know how Rosana intends to get it back. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
}

+ {E_Environment_FavelaFestival.festival_follow_barto} [COOKING¬Ask about his Mandioca Guild experience.>>]
    #char:--
    You ask more about the Mandioca Cook's Guild. You're curious about it after that offer for cheap meat.

    #char:Barto_happy_happy|L
    Ah, yes. The Guild has quite the network of connections. Including the C.C.A., of course. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    #char:Barto_happy_neutral|L
    Since quality ingredients and jobs are hard to come by, they make it easier for cooks!

    {
        - E_Environment_FavelaFestival.bought_meat_festival:
            #char:Barto_happy_neutral|L
            That is why you buying that meat was such a good deal, Captain!

            #char:Barto_happy_happy|L
            And it was given to us because of my membership. So I guess we helped each other, huh.

        - else:
            #char:Barto_neutral_angry|L
            This is why I said you would not find such a great price for that meat anywhere else...
    }
    
    #char:Barto_neutral_neutral|L
    The guild was established to facilitate the transport and lower prices when possible.

    #char:Barto_neutral_angry|L
    Only issue is that not anyone can be a part of the guild. You must pass an initiation test.

    #char:Barto_neutral_sad|L
    It happens once a year, in a different location every time.

    #char:Barto_neutral_sad|L
    I cannot tell you where, though. Secret recipe, if you know what I mean. {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

-   #char:Barto_neutral_angry|L
    Well, if you will excuse me, Captain, I want to gather some supplies before our next trip.

    #char:Barto_neutral_neutral|L
    I will meet you in the ship, as soon as you are ready.

-> END



= barto_after_the_cursed_cachaca

//AFFINITY PASS:

{   
    - g_affinity_Barto <= -2:
        #char:Barto_neutral_sad|L
        ...I am relieved this delivery is over.

    - else:
        #char:Barto_neutral_sad|L
        I must say, Captain, I am glad this delivery is over.

}

{
    - cursedByTheBottle == "Captain":
        #char:Barto_fear_sad|L
        Seeing you getting possessed like that and attacking us... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    - cursedByTheBottle == "Barto":
        #char:Barto_fear_sad|L
        I am not too keen on being possessed like that ever again. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    - cursedByTheBottle == "Jackie" || cursedByTheBottle == "Kleber":
        #char:Barto_fear_sad|L
        Seeing our crewmates possessed like that... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
}

#char:Barto_sad_sad|L
I know it was all Silva and the bottle's fault in the end, but still.

#char:Barto_sad_sad|L
Far from a pleasant experience.

{
    - threwAwayTheBottle == true:
        #char:Barto_fear_angry|L
        If even throwing that thing away did not work...
        
        #char:Barto_fear_sad|L
        I shudder to think what could have happened to us if it stayed in our posession any longer. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    - else:
        #char:Barto_angry_angry|L
        Part of me still thinks we should have thrown it away when we had the chance. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

        { - g_affinity_Barto <= -10:
            #char:Barto_neutral_happy|L
            ...But maybe I've expected too much from you.
        }

}

{
    - E_Mission_Rookie_TheCursedCachaca.ending_bottle_breaking:
        {
            - threwAwayTheBottle:
                #char:Barto_fear_happy|L
                And I would never want to suffer the same fate as Silva's goons. 

            - else:
                #char:Barto_fear_sad|L
                Then again, given what happened to Silva's goons, maybe it is best we did not. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
        }
}

//AFFINITY PASS:
{ 
    
    - g_affinity_Barto <= -2:
        #char:Barto_neutral_happy|L
        ...Anyway. Is there anything you would like to discuss about the delivery?

    - else:
        #char:Barto_neutral_neutral|L
        What about you, Captain? What are your thoughts on all that happened?
}

+ [SILVA¬You hope you never have to see Silva's face again.>>]
    #char:--
    You're disgusted by crooks like Silva. Kleber did great on quitting that job.

    #char:Barto_angry_neutral|L
    Yes, my word! I had bad bosses and clients before, but him?
    
    #char:Barto_angry_angry|L
    That man is a criminal, plain and simple! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

    {
        - E_Mission_Rookie_TheCursedCachaca.question_silva:
            #char:Barto_angry_neutral|L
            Nevermind making us carry a black cargo while underpaid and keeping us in the dark—

            #char:Barto_angry_neutral|L
            He flat out wanted to use it against someone!

            {
                - E_Mission_Rookie_TheCursedCachaca.ending_bottle_breaking:
                    #char:Barto_angry_neutral|L
                    Thankfully, now he will not be able to do so.
            }

            {
                - cursedByTheBottle == "Barto":
                    #char:Barto_neutral_neutral|L
                    Ah, but I do apologise for my outburst back then, however.

                    #char:Barto_sad_sad|L
                    With all of those armed goons around him, it could have made things worse. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
            }

        - else:
            #char:Barto_sad_sad|L
            (Sigh) Such a shame. Spore Heights is hauntingly beautiful, but filled with people like Silva.

            #char:Barto_neutral_neutral|L
            {g_name}, am I right to assume there were places like this in Surface too?

            #char:--
            You tell him there were, though most Surfacers aren't like that.

            #char:Barto_neutral_angry|L
            I was not judging, mind you. Know that for all contrasts between the Skies and Surface, there are similarities too.

            #char:Barto_neutral_sad|L
            Surely you do not need me to tell you, but no matter where, there exist those who always crave more power.
    }

+ [KLEBER¬Maybe you should all trust Kleber a bit more.>>]
    #char:--
    Sure, he can be a bit shady, but he's a far cry from someone like Silva.

    #char:--
    ...Or Marimbondo, you think to yourself.

    #char:Barto_sad_sad|L
    Fair enough. I suppose we were too hard on him. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    {
        - E_Crew_DeuRuim.deu_ruim_protect_kleber:
            #char:Barto_sad_neutral|L
            I know we were under the influence of the bottle when we argued, but that is not an excuse.

            #char:Barto_sad_angry|L
            In particular, Jackie and I put you on the spot to pressure Kleber.

            #char:Barto_sad_sad|L
            ...For that, you have my apologies, Captain.

        - else:
            #char:Barto_neutral_neutral|L
            I commend you for keeping a clear head, {g_name}. That was very admirable.

            #char:Barto_neutral_angry|L
            In fact, allow me to correct my statement from back then. Being a Captain means you will have to take sides sometimes, yes.

            #char:Barto_neutral_angry|L
            But you can be faced with tough choices. And picking a side on a whim is a recipe for disaster.

            //AFFINITY PASS:
            { 
                - g_affinity_Barto >= 1:
                    #char:Barto_happy_angry|L
                    After these two deliveries... I do think you are ready, Captain.
            }

    }

+ {E_Ship_RoadMerchant.bought_supplies} [SUPPLIES¬At least Junto & Misturado was a great purchase.>>]
    #char:--
    Barto wasn't lying when he told you to brace yourselves for dinner.

    #char:--
    His steak with rice and beans tasted twice as good that night.

    #char:Barto_surprised_sad|L
    ... {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

    #char:Barto_surprised_sad|L
    Captain, while I am honored with the compliment, mayhaps there were more important events in this delivery? 

    #char:Barto_neutral_happy|L
    That said, I am always happy to help in refining the palates of my crewmates.

    #char:Barto_sad_sad|L
    Ah, but I believe I will probably refrain from making any alcohol-based dishes for a while.

-   #char:Barto_sad_sad|L
    I know it is wishful thinking on my part, but I hope our next cargo is a normal one.

    #char:Barto_fear_neutral|L
    If we ever have another black cargo... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

-> END



= barto_after_grasp_of_the_octornado

#char:--
Barto is sitting at a table while staring at space.

#char:Barto_creepy_happy|L
I <>

{
    - E_Mission_Rookie_GraspOfTheOctornado.survey_yes:
        recommend <>

    - else:
        don't recommend <>
}

{
    - E_Mission_Rookie_GraspOfTheOctornado.survey_left_handed:
        the left hand that signs <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_right_handed:
        the right hand that signs <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_rate_1:
        the low-quality services <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_rate_2:
        the mediocre services <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_rate_3:
        the top of the line services <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_dissatisfied:
        the dissatisfactory experiences <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_neutral:
        the middling services <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_satisfied:
        the satisfactory services <>
}

{
    - E_Mission_Rookie_GraspOfTheOctornado.survey_human_souls:
        of bureaucratic souls <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_coxinha:
        of tear-shaped nourishment <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_pastel:
        of rectangular nutriments <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_yellow:
        of the manager in yellow <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_blue:
        of the deep blue buttons <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_red:
        of the red-clad clerks <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_bigfish:
        of titanic dwellers of the small world <>

    - E_Mission_Rookie_GraspOfTheOctornado.survey_littlefish:
        of microscopic macrocosm denizens <>
}

and I thank you for your cooperation.

#char:--
...Say <i>what</i>?

#char:Barto_creepy_happy|L
{protocolN1}-{protocolN2}-{protocolN3}. 3-6-<>

{
    - E_Mission_Rookie_GraspOfTheOctornado.teller_machine_7:
        7. <>

    - else:
        8. <>
}

Choose the laughing fac—

#char:--
You shake Barto from... whatever in the Skies this is.

//AFFINITY PASS:

{  
    
    - g_affinity_Barto <= -2:
        #char:Barto_angry_neutral|L
        Captain! What do you think you are doing?

    - else:
        #char:Barto_surprised_sad|L
        Ah! Captain! I did not see you there. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

}

#char:--
You ask if he's alright. He seems confused, but then sighs.

#char:Barto_sad_sad|L
I—I will be, Captain. In time for our next delivery. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

#char:Barto_sad_sad|L
Two whole years of my life, lost. Why did it have to happen to me? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

-> END



= barto_after_crystals_of_bygone_times

#char:Barto_fear_sad|L
The more I think about this delivery, the more I think we dodged several bullets. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

#char:Barto_fear_angry|L
Crashing with that expert caravan, being swallowed by a giant pirarucu, chased around by Azurian soldiers...

{
    - E_Ship_Pelicannons.barto_shot_pelicannons:

        //AFFINITY PASS:
        { 
            - g_affinity_Barto <= -10:
                #char:Barto_angry_angry|L
                And those <shake>pelicannons</shake>... At least you allowed me to shoot them. It was the bare minimum!

            - else:
                #char:Barto_angry_angry|L
                And those <shake>pelicannons</shake>! I am glad you allowed me to shoot them, Captain!
              
        }

    - else:
        #char:Barto_angry_angry|L
        And those <shake>pelicannons</shake>! I lost my precious egg jars because of them! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
}

#char:Barto_fear_neutral|L
The incidents with the Angra Crystals, too. I suppose none of us is at fault for that. Horacio included.

{
    - E_Mission_Rookie_CrystalsOfBygoneTimes.helped_horacio:
        {
            - E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_captured:
                #char:Barto_fear_neutral|L
                I hope he is alright. The prisons of Azure were bad enough for us, let alone a traitor like him. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - else:
                #char:Barto_happy_sad|L
                I hope he managed to reunite with his family.

                #char:Barto_happy_sad|L
                And leave the city in the past. Before the provisional government took over.
        }

    - E_Mission_Rookie_CrystalsOfBygoneTimes.left_horacio:
        {
            - E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_captured:
                #char:Barto_sad_sad|L
                We really should not have left him behind like that. 

                #char:Barto_fear_neutral|L
                The prisons of Azure were bad enough for us, let alone a traitor like him. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}{PlaySFX("Bad1")}

            - else:
                #char:Barto_sad_sad|L
                Speaking freely, Captain. I feel dishonest taking that bribe money from Azure. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                #char:Barto_sad_sad|L
                It was obtained at a great cost.
        }
}

#char:Barto_sad_sad|L
It is such a shame. Azure is beautiful, but its military... not so much.

-> END


= barto_lines

{shuffle:

    - 
        //AFFINITY PASS:
        {   
            - g_affinity_Barto <= -10:
                #char:Barto_neutral_angry|L
                I have to say, Captain. Sometimes you are hard to please.               

            - else:
                #char:Barto_neutral_neutral|L
                Hopefully I'll be able to learn everyone's culinary tastes as we complete more deliveries.
        }

    -
        //AFFINITY PASS:
        {   
            - g_affinity_Barto < 50:
                #char:Barto_neutral_angry|L
                ...All set, Captain.

            - else:
                #char:Barto_neutral_angry|L
                Don't think I have forgotten that I want to teach you the basics of the Skies' cuisine, Captain.
        }


    -
        //AFFINITY PASS:
        {   
            - g_affinity_Barto <= -2:
                #char:Barto_neutral_angry|L
                ...I really hope you're saving money for supplies.

            - else:
                #char:Barto_neutral_angry|L
                If I may, Captain, it might be a good idea to always save money for supplies.

                #char:Barto_happy_angry|L
                //Not only in quantity, I mean, but for more quality as well.
                Not only in quantity, I mean, but for more quality as well. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
        }

}

-> END
