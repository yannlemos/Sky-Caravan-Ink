=== Outpost_Jackie ===

~ temp storyDirection = -> meet_jackie

{
    - g_lastMissionCleared == "Crystals":
        {
            - !jackie_after_crystals_of_bygone_times:
                ~ storyDirection = -> jackie_after_crystals_of_bygone_times

            - else:
                ~ storyDirection = -> jackie_lines
        }

    - g_lastMissionCleared == "Octornado":
        {
            - !jackie_after_grasp_of_the_octornado:
                ~ storyDirection = -> jackie_after_grasp_of_the_octornado

            - else:
                ~ storyDirection = -> jackie_lines
        }

    - g_lastMissionCleared == "Cachaça":
        {
            - !jackie_after_the_cursed_cachaca:
                ~ storyDirection = -> jackie_after_the_cursed_cachaca

            - else:
                ~ storyDirection = -> jackie_lines
        }

    - g_lastMissionCleared == "Mafagafo":
        {
            - !jackie_after_the_mafagafo_passenger:
                ~ storyDirection = -> jackie_after_the_mafagafo_passenger

            - else:
                ~ storyDirection = -> jackie_lines
        }

    - meet_jackie > 0:
	    ~ storyDirection = -> has_met_jackie
}

~ SetCurrentStitch(storyDirection)

-> storyDirection

= meet_jackie

#char:--
You eye the pool table. A girl with three arms is playing against a hologram, immensely focused.

#char:--
Looks like it's your new engineer. You approach her in order to introduce yourself.

#char:Jackie_happy_neutral|L
Oh, hey! Come here for a sec! {Shake("Big Face", 1, 0.3)} {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} {Blink("Big Face", 0.5, -1, "white")}

#char:Jackie_neutral_neutral|L
You see that ball 3 over there? I want to pocket it, but there's ball 7 right in front of it.

#char:Jackie_happy_angry|L
There's two ways I can tackle this. 

#char:Jackie_happy_sad|L
I could try to shoot ball 6 - which is really close - at the 3 directly. 

#char:Jackie_happy_sad|L
Or I can go bold and try to vault the ball 1 over the 7.

#char:Jackie_surprised_sad|L
Both moves can work, so I'm kinda torn between the two. Want to pick one? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

    + [SIX¬Shoot the six.>>]
    
    #char:--
    You suggest shooting ball 6. Seems like the safest route.

    #char:Jackie_neutral_neutral|L
    Fair enough!

    #char:--
    She takes a big breath...
    
    #char:--
    ...and hits it impeccably! {PlaySFX("PoolHit")}

    #char:Jackie_happy_happy|L
    <wave>NICE!</wave> {Shake("Big Face", 1, 0.7)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("LightWoosh")}
    
    #char:Jackie_happy_sad|L
    I see you're the responsible type, huh? {Emotion("Explosion", "ffb71b")} {PlaySFX("Shimmer1")}

    + [ONE¬Vault the one.>>]

    #char:--
    You tell her to try the trickshot. Life's too short.

    #char:Jackie_neutral_neutral|L
    Sounds good!

    #char:--
    She takes a big breath...
    
    #char:--
    ...and hits it impeccably! {PlaySFX("PoolHit")}

    #char:Jackie_happy_happy|L
    Look at that! {Shake("Big Face", 1, 0.7)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("LightWoosh")}

    #char:Jackie_happy_sad|L
    So you're the daredevil type, Captain? {Emotion("Explosion", "ffb71b")} {PlaySFX("Shimmer1")}

- #char:Jackie_neutral_neutral|L
It's great to meet you! 

#char:Jackie_neutral_neutral|L
I'm Jackie, your engineer. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

#char:--
She shakes your hand with all three of hers at the same time.

#char:--
She looks at you with anticipation and curiosity, waiting for you to you greet her back.

    + [STERN¬As the Captain, you want to maintain your composure.>>]

    #char:--
    You shake her hands with firmness and say that you hope to see her best work aboard the 41-Bis.

    #char:Jackie_neutral_angry|L
    You sure will! Don't worry about it, Captain.

    + [EASYGOING¬A warm smile goes a long way.>>]

    #char:--
    You shake her hands warmly. As long as she makes sure nothing explodes, you're all good.

    #char:Jackie_happy_angry|L
    Absolutely! I'll make sure the ship runs <wave>super smoothly.</wave>

    ~ g_affinity_Jackie += g_affinityChangeLow
    
    #char:Jackie_happy_neutral|L
    No explosions. Unless we want to, of course! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

    + [EXCITED¬She does seem very excited, and so do you.>>]
    
    #char:--
    You shake each hand separately, and she seems to appreciate the joke.
    
    #char:--
    You say that you're excited to work alongside her.

    ~ g_affinity_Jackie += g_affinityChangeLow

    #char:Jackie_happy_neutral|L
    You can count on me, Captain! I'll make sure the ship runs super smoothly. {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")}

- #char:Jackie_happy_neutral|L
I can't really hide my excitement, can I? 

#char:Jackie_happy_happy|L
It's been my dream to be a caravaneer since I was a kid. Feels great to finally be here!

#char:--
Now that you've broken the ice, it's a good opportunity to learn a bit more about your new crewmate.

#char:--
You can ask for more information about her, her area of expertise or maybe talk about your ship.

-> get_to_know_jackie


= get_to_know_jackie

{
    - jackie_interest && jackie_herself && jackie_ship:

        -> jackie_talks_about_you

    - jackie_interest || jackie_herself || jackie_ship:

        #char:Jackie_neutral_neutral|L
        Got anything else to say? I'm all ears.
}


    * (jackie_herself) [JACKIE¬Ask about Jackie's past.>>]

        #char:Jackie_happy_angry|L
        Well, I'm from this skyport right here! Born and raised.

        #char:Jackie_happy_neutral|L
        Learned everything from grandma. She is a caravaneer herself, but retired just before I was born.

        #char:Jackie_happy_happy|L
        I grew up with stories from her and other caravaneers from all around the Skies. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

        #char:Jackie_happy_happy|L
        I've been waiting for this moment since forever.

        -> get_to_know_jackie


    * (jackie_interest) [ENGINEERING¬Talk about her role as the crew's engineer.>>]

            {
                - g_interest == "Engineering":

                    #char:--
                    You tell Jackie you're definitely not a professional like her, but you learned a bit by tinkering with machines when younger. 

                    #char:Jackie_happy_happy|L
                    That's awesome! I want to hear all about it! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")} {Blink("Big Face", 1, -1, "white")} {Shake("Big Face", 1, 0.7)}

                    #char:Jackie_happy_sad|L
                    Maybe I can even teach you a trick or two if you want to.

                    ~ g_affinity_Jackie += g_affinityChangeHigh
                    
            }

        #char:Jackie_happy_neutral|L
        I'll make the 41-Bis run like a charm. You'll see.

        #char:Jackie_happy_angry|L
        If there are any problems, count on me to offer solutions and execute them!

        #char:Jackie_happy_sad|L
        That doesn't mean I will <i>always</i> have the perfect solution, of course. I might be a cyborg, but I'm still human.

        #char:Jackie_surprised_sad|L
        I know my way around an engine room on fire, though. True story. {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery2")}

        -> get_to_know_jackie


    * (jackie_ship) [SHIP¬Talk about 41-Bis.>>]

        #char:--
        You give some info on your ship, hoping she understands it better than you do.

        #char:Jackie_surprised_angry|L
        Not gonna lie, Captain: the way you describe it, the 41-Bis will be quite an engineering challenge. {Emotion("Spiral", "53e66b")} {PlaySFX("Bad1")}

        #char:Jackie_surprised_angry|L
        The heat may be a problem, depending on the cargo. We'll have to look at it case by case.

        #char:Jackie_happy_angry|L
        Don't worry, though! It might be an outdated class of Caravan, but if it survived this far, we can go even farther with it! Trust me. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        -> get_to_know_jackie

    * { jackie_interest || jackie_ship || jackie_herself } [NO¬You're good for now.>>]

        -> jackie_talks_about_you
    
= jackie_talks_about_you

    #char:Jackie_neutral_sad|L
    What about you, Captain? I've never seen you around the skyport.

    #char:--
    You tell her about your Surfacer roots and a bit about your past {g_family} life.

    #char:Jackie_surprised_neutral|L
    <wave>Whoa!</wave> A Surfacer? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}

    #char:Jackie_surprised_sad|L
    So you don't really know much about the Skies yet, right?

    #char:Jackie_surprised_happy|L
    B-but don't worry, this won't be a problem at all! I trust you. {Shake("Big Face", 1, 0.7)}

    #char:Jackie_happy_neutral|L
    We'll make a good crew! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

    #char:Jackie_happy_neutral|L
    Anyway! I'll be here waiting for our first delivery.

    #char:Jackie_happy_happy|L
    Can't wait to start adventuring with you, Captain {g_name}!

    -> END


// Has met Jackie for the first time, but hasn't gone to a mission yet
= has_met_jackie

#char:Jackie_happy_neutral|L
Waiting for your call, Captain!

-> END


= jackie_after_the_mafagafo_passenger

//AFFINITY PASS:
{   
    - g_affinity_Jackie <= -2:
        #char:Jackie_happy_sad|L
        Whoa, I can't believe we've done our first delivery.

    - else:
        #char:Jackie_happy_happy|L
        Hey, {g_name}! I'm happy we got the job done. Our first delivery! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

}


{
    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_loop:
        #char:Jackie_surprised_neutral|L
        Though I wish we had spent more time having fun at the Marketplace and less chasing the Mafagafo around.

        {
            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
                #char:Jackie_neutral_sad|L
                At least we got it back in the end.

            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_ran_away:
                #char:Jackie_sad_sad|L
                Doesn't help that we lost it. Let's make sure this doesn't happen again. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
        }

    - else:
        #char:Jackie_happy_happy|L
        Despite all the hassle, we managed to get the full cargo to the client!
}

{
    - E_Mission_Rookie_TheMafagafoPassenger.jackie_bait:

        //AFFINITY PASS:
        { 
            - g_affinity_Jackie <= -2:
                #char:Jackie_neutral_angry|L
                Oh, and I'm glad you followed my advice about the grease.

            - else:
                #char:Jackie_happy_neutral|L
                And hey, I'm happy you followed my advice about the grease!

        }

        {
            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_caught:
                #char:Jackie_neutral_angry|L
                I know I'm not the most experienced, but I knew it would work!

            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_escaped:
                #char:Jackie_surprised_sad|L
                Even though, er... you know.
        }
}

#char:Jackie_neutral_angry|L
I won't lie, though, I wonder what'll happen to that Mafagafo now...

{
    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
        #char:Jackie_neutral_neutral|L
        I hope it finds a good home.

    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_animal_sanctuary:
        #char:Jackie_sad_angry|L
        I just wonder if it's gonna be happy in the sanctuary.

    - else:
        #char:Jackie_sad_sad|L
        I hope it doesn't get hurt out there... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
}

#char:Jackie_happy_happy|L
Regardless, our next delivery is right around the corner!

#char:Jackie_neutral_angry|L
Anything you want to ask before we go?

+ {E_Environment_FavelaFestival.festival_follow_jackie} [ONE¬Ask about the pool game.>>]
    #char:--
    You ask Jackie about the pool game at the festival. How'd she get so good?

    #char:Jackie_happy_angry|L
    Easy! I've been practicing since my childhood! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

    #char:--
    ...

    #char:Jackie_neutral_neutral|L
    I, er, alright, maybe that's not an option for you anymore.

    //AFFINITY PASS:
    { 
        - g_affinity_Jackie >= 5:
            #char:Jackie_happy_happy|L
            But hey, we can play at the Capy-Bar when we aren't working!

            {
                - win == true:
                    #char:Jackie_happy_angry|L
                    But you're not a bad player, really. We won that match together, you know!

                    #char:Jackie_neutral_neutral|L
                    I'm sure a little practice on our free time will do wonders! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                - else:
                    #char:Jackie_neutral_neutral|L
                    I can't promise you I can make you a good player, but I can teach you the basics, at least!

                    #char:Jackie_happy_sad|L
                    Truth be told, everything starts somewhere. Whether it's pool, engineering or being part of a caravan! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
            }

    }

+ [ROSANA¬Ask about Rosana and Aquarela merchants.>>]
    #char:--
    You ask about Rosana. Are all Aquarela merchants like her?

    #char:Jackie_neutral_sad|L
    I wouldn't say so. In Aquarela you can find all kinds of people with all kinds of backgrounds.

    #char:Jackie_neutral_angry|L
    Rosana was pretty confident in what she was doing, wasn't she?

    #char:Jackie_happy_angry|L
    I guess she's had her shop for a long while. Which isn't that uncommon, really.

    #char:Jackie_surprised_neutral|L
    There's this barber shop I know that is there since I was a kid.

    {
        - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
            #char:Jackie_neutral_neutral|L
            Good thing we delivered her whole cargo. That means she can recommend us directly!

        - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_ran_away:
            #char:Jackie_sad_angry|L
            It's a shame we lost part of her cargo, though. That won't be good for our reputation. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
    }

+ [SHIP¬Ask about ship's condition.>>]
    #char:--
    You ask about the 41 Bis' state after the delivery and if any repairs are needed.

    {
        - E_Environment_ThroughTheThunderCloud.kleber_through_thunder:
            #char:Jackie_neutral_angry|L
            Well, now that we're here, I'll probably check up the electrical parts again.

            #char:Jackie_neutral_sad|L
            You know... since you and Kleber weren't happy with Barto's fried snacks and decided to have fried <i>ship</i> instead.

            #char:Jackie_sad_angry|L
            You really should try to prevent damage instead of asking for repairs all the time, Captain.  {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        - E_Environment_ThroughTheThunderCloud.jackie_around_thunder:
            #char:Jackie_neutral_neutral|L
            Well, since we went around the storm, we weren't struck by lightning.

            #char:Jackie_neutral_neutral|L
            I'll do a checkup just in case, but the 41-Bis seems stable!

        - else:
            #char:Jackie_neutral_angry|L
            Well, thankfully, we weren't struck by lightning.

            #char:Jackie_neutral_neutral|L
            I'll do a checkup just in case, but the 41-Bis seems stable!
    }

    {
        - E_Mission_Rookie_TheMafagafoPassenger.Rosana_explanations && E_Mission_Rookie_TheMafagafoPassenger.mafagafo_relax:
            #char:Jackie_sad_angry|L
            Not much I can do about the heat in the cargo hold, though.

            #char:Jackie_sad_sad|L
            The 41-Bis is a bit old. It's hard enough to find the correct parts. Some aren't even made anymore. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            #char:Jackie_sad_angry|L
            Plus, we'd have to modify the entire circuitry of the ship and buy cooling units that might not even fit in there—

            #char:Jackie_sad_neutral|L
            Er, point is, even if it could be done, it would cost so much time and money, it's not worth it.

            #char:--
            Time and money you don't have.

            #char:Jackie_neutral_angry|L
            Right... So let's hope the temperature isn't a problem and cross that bridge when we get there.
    }

-   #char:Jackie_happy_neutral|L
    Anyway, let's learn from what went wrong and keep working hard on our next deliveries.

    //AFFINITY PASS:

    { 
        - g_affinity_Jackie >= 10:
            #char:Jackie_happy_neutral|L
            I have a good feeling about you, Captain.
    }

-> END



= jackie_after_the_cursed_cachaca

//AFFINITY PASS:
{   
    - g_affinity_Jackie <= -2:
        #char:Jackie_fear_neutral|L
        Gosh, I thought we'd never get rid of that bottle.

    - else:
        #char:Jackie_neutral_neutral|L
        I'm glad we managed to get rid of that bottle, {g_name}.

}


{
    - cursedByTheBottle == "Captain":

        //AFFINITY PASS:

        {
        - g_affinity_Jackie <= -2:
            #char:Jackie_neutral_neutral|L
            You're feeling better now, I suppose?

        - else:
            #char:Jackie_surprised_angry|L
            I hope you're feeling better now.

        }

    - cursedByTheBottle == "Jackie":
        #char:Jackie_sad_angry|L
        I remember feeling weird for days after I got taken over by it. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    - cursedByTheBottle == "Barto" || cursedByTheBottle == "Kleber":
        #char:Jackie_neutral_angry|L
        By the way, I asked <>
        {
            - cursedByTheBottle == "Barto":
                Barto <>

            - cursedByTheBottle == "Kleber":
                Kleber <>
        }

        if he was doing better. So far, so good.
}

#char:Jackie_neutral_angry|L
There's no long-lasting side effects, I guess, which is a good thing.

{
    - E_Crew_DeuRuim.deu_ruim_party:

        #char:Jackie_sad_neutral|L
        I guess us drinking Deu Ruim might have made things worse too. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Jackie_sad_angry|L
        I mean, being drunk <i>and</i> possessed? Not a good combination.

}

#char:Jackie_neutral_sad|L
...Hey, I'm curious about something, from one caravaneer to another.

#char:Jackie_surprised_angry|L
What do you think we could have done differently in this delivery?

+ [SILVA¬You should've treated Silva differently.>>]
    #char:--
    There's definitely a part of you that wanted to punch Silva.

    #char:--
    Maybe you should be more careful with your clients in the future.

    #char:Jackie_neutral_neutral|L
    Yeah, can't say it's not frustrating. But we can't fix everything by giving it a smack.

    {
        - E_Mission_Rookie_TheCursedCachaca.ending_bottle_intact:
            #char:Jackie_sad_neutral|L
            To be fair, though, with all those armed goons, it wouldn't matter how many arms we had in total. {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|L
            And about what he said... about you getting burned in the future because you did the right thing.

            #char:Jackie_sad_sad|L
            You think there's any truth to that?

            ++ [YES¬Bad things can happen to good people.>>]
                #char:--
                Sadly, you've had some experience with this in Surface.

                #char:--
                You still don't regret helping Kleber, but you can't let your guard down.

                #char:Jackie_sad_angry|L
                Makes sense. There's a difference between being honest and being naive.

                //AFFINITY PASS:

                {  
                    - g_affinity_Jackie >= 5:
                
                        #char:Jackie_neutral_neutral|L
                        Thanks again, {g_name}. I feel like I finally understand some things about the caravan life.
                        
                        #char:Jackie_neutral_sad|L
                        I mean, I spent my life hearing stories, but the caravan life has to be lived.

                        #char:Jackie_surprised_sad|L
                        I knew it wouldn't be easy, but I'd rather not deal with someone like Silva anytime soon.
                                    
                }


            -> END

            ++ [NO¬What's important is doing the right thing.>>]
                #char:--
                Even if you stumble and fall, you've gotten back up before.

                #char:--
                If it happens again, it won't be any different.

                #char:Jackie_sad_sad|L
                What if you can't get back up, though?

                #char:Jackie_sad_sad|L
                To be honest, there's a small part of me that doesn't envy your responsibility.

                #char:Jackie_surprised_neutral|L
                But I hope I'll grow enough as a caravaneer to overcome that and become a captain one day, too.

                //AFFINITY PASS:

                {  
                    - g_affinity_Jackie >= 10:
                
                        #char:Jackie_happy_neutral|L
                        Point is... Be kind with <i>yourself</i> too, okay?

                }

                {  
                    - g_affinity_Jackie >= 25:
                
                        #char:Jackie_happy_neutral|L
                        I'll be here to support you. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                }


            -> END

        - E_Mission_Rookie_TheCursedCachaca.ending_bottle_breaking:
            #char:Jackie_happy_happy|L
            Guess a part of me kinda felt vindicated when <>

            {
                - paidTheDebt == true:
                    Kleber <>

                - else:
                    you <>
            }

            smashed his precious bottle. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            #char:Jackie_sad_angry|L
            Does that make me a bad caravaneer, {g_name}? Putting myself and the crew above the job?

            ++ [YES¬Then again, maybe you both are.>>]

                {
                    - paidTheDebt == true:
                        #char:--
                        You tell her that yes, that might be too naive - but you can't deny that was pretty much what you did when you helped Kleber.

                    - else:
                        #char:--
                        You tell her that yes, that might be too naive. 
                        
                        #char:--
                        But still, you can't deny that you did the same - you broke the bottle, even though it was the client's cargo.
                }

                #char:--
                Honestly, the job itself is not the problem — after all, you have a debt to pay.

                #char:--
                But Jackie doesn't have to know about it yet.

                //AFFINITY PASS:

                { 
                    
                    - g_affinity_Jackie >= 5:
                        #char:Jackie_neutral_sad|L
                        Heh, that's noble of you. I'm glad I could talk to you about this, Captain.

                        #char:Jackie_happy_angry|L
                        No matter how hard things get, I wanna have everyone's back too.

                        #char:Jackie_happy_angry|L
                        So let's keep being "bad caravaneers" together, then! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                    - else:
                        #char:Jackie_sad_sad|L
                        ...Yeah, I guess so.
                }

            -> END

            ++ [NO¬Can't have a caravan without its caravaneers.>>]
                #char:--
                No matter what the death rate is or what your contracts say, your lives come first.

                #char:--
                Delivering the bottles wouldn't matter if you ended up dead or if Kleber was handed to Silva.


                //AFFINITY PASS:

                { 
                    
                    - g_affinity_Jackie <= -2:
                        #char:Jackie_neutral_sad|L
                        ...Yeah, at least we agree on that.

                    - else:
                        
                        #char:Jackie_happy_neutral|L
                        Yeah... I'm glad we agree on that one. And I'm glad you're the one leading my first crew.

                        #char:Jackie_neutral_sad|L
                        If it were someone with a different mindset, I'm not sure things would have ended well.

                }


            -> END
    }

+ [KLEBER¬Maybe going easier on Kleber.>>]
    #char:--
    Kleber deserved more trust from his crew, that's for sure.

    {
        - E_Crew_DeuRuim.deu_ruim_press_kleber:
            #char:Jackie_sad_sad|L
            Yeah, we all ganged up on him, didn't we? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        - else:
            #char:Jackie_sad_sad|L
            Yeah, me and Barto shouldn't have put his back to the wall. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
    }

    #char:Jackie_neutral_neutral|L
    Truth is, none of us is perfect. Far from it.

    #char:Jackie_neutral_neutral|L
    Sure, Kleber is reckless. That's part of who he is.

    #char:Jackie_neutral_angry|L
    Doesn't mean he doesn't deserve to be heard, right?

    {
        - E_Crew_DeuRuim.deu_ruim_party:
            #char:Jackie_neutral_neutral|L
            All I know is that I'll hold back on making more Deu Ruim for a time.

            //AFFINITY PASS:

            {    
                - g_affinity_Jackie >= 5:
                    #char:Jackie_happy_happy|L
                    Unless we're already in the Capy-Bar celebrating a delivery, of course! {Emotion("Explosion", "ffb71b")} {PlaySFX("Shimmer1")}
            }

    }

-> END

+ {bought_booster_x} [FUEL¬Maybe refrain from buying weird fuel.>>]
    #char:--
    You think there are better ways to spend your hard-earned Grana.

    #char:Jackie_sad_sad|L
    Come on, Captain, I'm being serious here!

    {
        - E_Mission_Rookie_TheCursedCachaca.ending_bottle_breaking:
            #char:Jackie_neutral_angry|L
            Besides, I think it helped save us back in Spore Heights.

            #char:Jackie_neutral_neutral|L
            Kleber was right about his Batizada in the end.

            #char:Jackie_neutral_happy|L
            Might ask him more about it later, even if I have my doubts.

            #char:Jackie_sad_neutral|L
            But I wanted to talk more about Kleber. Or our black cargo.

        - else:
            #char:Jackie_sad_angry|L
            Don't you think we should talk about the way we treated Kleber?

            #char:Jackie_sad_sad|L
            Or the risk we were in thanks to the cargo and Silva?

            #char:Jackie_sad_neutral|L
            I mean, I knew the caravaneer life came with disagreements and danger, but this? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
    }

    #char:Jackie_sad_angry|L
    It just feels like we could have done something better.

    #char:Jackie_sad_neutral|L
    Just... ah, I don't know. Maybe we should all sleep on this.

    //AFFINITY PASS:
    { 
        - g_affinity_Jackie >= 5:
            #char:Jackie_neutral_neutral|L
            Anyway. I'll see you at the ship when we leave for the next job!
    }


-> END



= jackie_after_grasp_of_the_octornado

{
    - E_Mission_Rookie_GraspOfTheOctornado.left_refinery:
        #char:Jackie_sad_angry|L
        I still have a headache from... whatever we went through at the Refinery. {Emotion("Spiral", "53e66b")} {PlaySFX("Bad1")}

        #char:Jackie_neutral_angry|L
        I remember what happened to my arms, the oven and the sail controls.

        {
            - E_Crew_WhatsForDinner.improvise_for_dinner:
                #char:Jackie_surprised_neutral|L
                Barto managed to improvise with the fuel, though, and we had moqueca.

            - E_Crew_WhatsForDinner.cans_for_dinner:
                #char:Jackie_fear_angry|L
                We ate that... <i>appetizing</i> canned food.
        }


        #char:Jackie_neutral_angry|L
        Then we went straight to Abyss Metalworks. There was that Octornado...

        #char:Jackie_surprised_sad|L
        And nothing. That's where my memories cut off straight to when we were heading back.

        #char:Jackie_sad_sad|L
        Don't know how I feel about losing memories for a job. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Jackie_sad_angry|L
        But at least we're fine. There are worse fates out there for caravaneers.

        //AFFINITY PASS:

        { 
            - g_affinity_Jackie >= -1:
                #char:Jackie_happy_happy|L
                And hey, we did it! That's three deliveries finished! {Emotion("Explosion", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:Jackie_happy_happy|L
                I think we're doing a fine job as a crew, don't you think?


            - else:

                #char:Jackie_neutral_neutral|L
                Well, at least we've managed to complete three deliveries already.

                #char:Jackie_sad_angry|L
                I know you and I don't really get along that well, but at least we're doing a good job together, aren't we?
        
        }

        + [YES¬You definitely are.>>]
            #char:--
            At the very least, you learned a bit about the Skies.

            ~ g_affinity_Jackie += g_affinityChangeMid

            //AFFINITY PASS:

            {   
                
                - g_affinity_Jackie <= 0:

                    #char:Jackie_neutral_neutral|L
                    Yeah. And there's even more for you to see.

                - else:

                    #char:Jackie_happy_happy|L
                    Yeah! And there's even more for you to see!

                    #char:Jackie_neutral_angry|L
                    Who knows? Maybe you'll find a good place for your family somewhere!

                    #char:Jackie_happy_angry|L
                    Don't worry, {g_name}. After our next job, you're paying that debt. I'm sure of it! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
            }

        -> END

        + [NO¬You're definitely not.>>]
            #char:--
            You can't lie: you're kinda just making up solutions as you go.

            ~ g_affinity_Jackie -= g_affinityChangeMid

            #char:Jackie_sad_sad|L
            Oh, come on, {g_name}. Coming this far isn't something any crew can do! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            #char:Jackie_sad_angry|L
            You know the death statistics, right?
            
            #char:Jackie_sad_angry|L
            Trust me, if we made it to our fourth delivery, that's already a milestone.

            //AFFINITY PASS:
            
            { 
                - g_affinity_Jackie >= 5:

                    #char:Jackie_neutral_neutral|L
                    Is this about your debt? Don't worry. I'm sure you'll be able to pay it!

                    #char:--
                    ...You sure hope so.
            } 

        -> END

    - E_Mission_Rookie_GraspOfTheOctornado.stayed_at_refinery:
        #char:Jackie_surprised_neutral|L
        Well, that was... something. I guess staying really was the best choice.

        #char:Jackie_neutral_angry|L
        At least we were safe from the Octornado.

        #char:Jackie_sad_sad|L
        I do feel bad for Gabriela, though. We couldn't even say goodbye.
        
        #char:Jackie_sad_angry|L
        Not to mention Barto. If we stayed two years in that place, well...

        #char:Jackie_sad_sad|L
        I would lose time from my caravan career.

        //AFFINITY PASS:

        {      
            - g_affinity_Jackie >= -1:
                #char:Jackie_sad_sad|L
                And your family—

                #char:Jackie_surprised_happy|L
                Skies, your family! You have one more delivery to pay that debt! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                #char:Jackie_surprised_happy|L
                How— how are you feeling, {g_name}?
        
        }

        + [MOTIVATE¬We should be prepared for what comes next.>>]
            #char:--
            You have to keep going forward. Your family waits in Surface.

            //AFFINITY PASS:

            {   
                
                - g_affinity_Jackie <= -2:

                    #char:Jackie_neutral_neutral|L
                    Yeah. I'm confident about this one.

                - else:
                    #char:Jackie_happy_happy|L
                    That's good to hear! I'm confident about this one!

            }

            #char:--
            Well, at least your engineer hasn't lost her determination.

            #char:--
            You can definitely use some of that.

        -> END

        + [FEAR¬You feel uneasy with all that's happened.>>]

            #char:--
            The caravan life is definitely more scary than it seems. There's a lot at stake.
        
            #char:--
            One last chance to get the Grana. The next job better pay well.

            #char:Jackie_sad_sad|L
            Come on, Captain! Believe in your crew a bit more! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            //AFFINITY PASS:

            {      
                - g_affinity_Jackie >= -1:

                    #char:Jackie_happy_neutral|L
                    Okay, I've decided — if we have the chance, I'm taking you to play some pool! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                    #char:Jackie_neutral_neutral|L
                    Might be good to take your mind off of things.

                    #char:Jackie_happy_angry|L
                    I'm sure you'll see your family again — and it'll be here in the Skies!
        
            }

            #char:--
            You wish you had Jackie's confidence right now.

        -> END
}



= jackie_after_crystals_of_bygone_times

{
    - E_Mission_Rookie_CrystalsOfBygoneTimes.helped_horacio:
        {
            - E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_captured:
                #char:Jackie_sad_sad|L
                Captain, I... I'm sorry.

                #char:Jackie_sad_angry|L
                Maybe if I was a better engineer, we could have completed the machine in time. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                #char:Jackie_sad_sad|L
                You ended up losing Grana you needed to pay your debt and Horacio—

                #char:Jackie_sad_sad|L
                He's never seeing his family again.

            - else:
                #char:Jackie_happy_neutral|L
                I have to say, working on a time machine was pretty exciting! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:Jackie_happy_happy|L
                Bit of an improvised job, but really, a milestone for any engineer!

                #char:Jackie_surprised_neutral|L
                And a milestone for a caravaner too! You know how hard it is to escape the Azurian military like that?

                #char:Jackie_neutral_neutral|L
                I'm going to keep that Angra Crystal as a reminder of what happened.
        }

    - E_Mission_Rookie_CrystalsOfBygoneTimes.left_horacio:
        #char:Jackie_sad_neutral|L
        Captain, I think we shouldn't have left Horacio. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Jackie_sad_neutral|L
        Nevermind him not helping us escape, he's never seeing his family again.

        #char:Jackie_sad_sad|L
        You should be able to sympathize with that.

        {
            - E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_captured:
                #char:Jackie_sad_sad|L
                You even lost money you'd use to pay for your debt.

            - else:
                #char:Jackie_sad_neutral|L
                We got some Grana, but at the cost of someone else's life. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
        }
}

#char:Jackie_sad_sad|L
I had no idea the situation in Azure was that bad.

#char:Jackie_sad_sad|L
It's like I said before. Living the caravan life is different than hearing about it.


//AFFINITY PASS:
{
    - g_affinity_Jackie >= 5:

        #char:Jackie_neutral_sad|L
        But I'm not giving up. This is still my <i>dream</i>!

        #char:Jackie_neutral_neutral|L
        Hey, can I ask you something, {g_name}?

        #char:Jackie_neutral_neutral|L
        Do you think I would be a good captain? 
        
        #char:Jackie_surprised_neutral|L
        I mean... not now, but in the near future?

        + [YES¬You think so.>>]
            #char:--
            If she keeps following the caravan path, certainly.

            #char:--
            She's a great engineer and crewmember. Her excitement for the job will take her places.

            ~ g_affinity_Jackie += g_affinityChangeHigh

            #char:Jackie_happy_happy|L
            Thank you, {g_name}! That means a lot to me, really! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            #char:Jackie_happy_angry|L
            I'll make sure you can depend on me, too!

        -> END

        + [NO¬You don't think so.>>]
            #char:--
            Maybe it'll take a bit longer. The more experience she has, the better.

            #char:--
            Besides, she'll be a better captain if she learns from all the mistakes <i>you</i> made.

            #char:Jackie_neutral_neutral|L
            I get it, Captain. Leading a caravan isn't easy. People's lives depend on you.

            #char:Jackie_neutral_angry|L
            I'll make sure you can count on me, too!

        -> END

    - else:

        #char:Jackie_neutral_neutral|L
        Anyway. We'd better start preparing for the next delivery.

    -> END

}



= jackie_lines

{shuffle:
    -
        //AFFINITY PASS:

        {        
            - g_affinity_Jackie <= -2:
                #char:Jackie_neutral_neutral|L
                Well, if we ever need more fuel for the trip, you can buy it with the Caravan Manager. Don't forget. 

            - else:
                #char:Jackie_happy_angry|L
                Oh, Captain, if we need more fuel for the trip, we can buy it with the Caravan Manager. Don't forget!
        
        }


    - 
        //AFFINITY PASS:

        {        
            - g_affinity_Jackie <= -2:
                #char:Jackie_sad_sad|L
                I hope the 41-Bis stays in shape during our next delivery. It's difficult to operate such an old ship sometimes...

            - else:
                #char:Jackie_happy_happy|L
                I'll make sure the 41-Bis is in shape for our next delivery!

                #char:Jackie_surprised_sad|L
                Just, uhh, let's try to not bang it around too much, yeah?        
        }


    -
        //AFFINITY PASS:

        {        
            - g_affinity_Jackie <= -2:
                #char:Jackie_neutral_neutral|L
                I'm waiting for your call, Captain.

            - else:
                #char:Jackie_happy_angry|L
                Say, would you and the others be willing for a pool match? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:Jackie_happy_happy|L
                Losing team cleans the common room for a week! What do you say?   
        }

}

-> END
