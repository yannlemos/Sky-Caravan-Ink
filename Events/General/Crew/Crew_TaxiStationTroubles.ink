===E_Crew_TaxiStationTroubles===

#scope: General
#category: Crew
#tier: Intermediate, Expert
#intensity: Medium

/*Você para num ponto dos taxistas-caravaneiros da rodoviária geral para descansar.
Um taxista provoca o Kleber. Você pode investigar o passado dele tendo trabalhado como taxista e várias doideras que passou.*/

VAR wounded_by_dourado = false

#char:--
Rather than spend the night in the Skyways, the crew decides to make a quick stop at a Caravan Station you find in the wilds.

#char:--
It's rare to find an independent outpost like this. 

#char:--
By this point, you'd think Capy-Bar bought out any viable locations.

#char:Jackie_happy_sad|L
Can't wait to put my feet up for the night! {Emotion("Outer", "white")}

#char:Barto_neutral_sad|R
It's a shame that there's no shop to restock, but at least I can rest and get some prep done later.

#char:Jackie_neutral_sad|L
Yeah, no fuel for us either, this place is pretty much used mainly by Taxi Caravans. 

#char:Jackie_happy_sad|L
Y'know, the ones that carry people instead of cargo.

#char:--
One of you, however, isn't as enthusiastic.

#char:Jackie_sad_sad|L
Uh, Kleber, are you okay? You haven't said anything in a while. {Emotion("Inner", "blue")}

#char:Kleber_sad_sad|R
...H-huh? Me? {Emotion("Inner", "blue")}

#char:Barto_neutral_angry|R
This isn't like you. Even I am starting to find it odd, you know.

+ [QUESTION>>]

    #char:--
    You ask him if he's tired. You're all in need of a good rest.

    #char:Kleber_sad_neutral|R
    Y-yeah, that's it. 
    
    #char:Kleber_happy_happy|R
    Don't get me wrong, I love piloting, but doing it all day is exhausting, y'know?

+ [RELAX>>]

    #char:--
    You tell Kleber to relax and that some time resting won't be that bad for your mission.

    #char:Kleber_sad_neutral|R
    ...Yeah, yeah, I know. And after we're rested, we'll be back on the road.

-   #char:--
    Odd, but it doesn't look like Kleber wants anyone pressing further.

-> caravan_station


= caravan_station

#char:--
It takes only a few minutes to find a good spot to park. 

#char:--
Kleber lands 41-Biz, and the crew gets out for a stretch soon after.

#char:Jackie_neutral_neutral|L
I think I'll take a look around, see if I can get my hands on some tools.

#char:Barto_neutral_neutral|R
Maybe there's a food stand around here - it pays to feed hungry caravaneers. 

#char:Barto_neutral_angry|R
Want me to bring you something, Captain?

+ (snack_at_station) [YES>>]

    #char:Barto_neutral_neutral|R
    Understood. I'll try to find a snack for us all.

+ [NO>>]

    #char:Barto_neutral_neutral|R
    Suit yourself.

-   #char:--
    And with that they go off, leaving you and Kleber alone near the 41-Biz.

    #char:Kleber_happy_sad|R
    I-I think I'll stay here and catch some Zs.

//TO DO INTRO: Colocar o sobrenome do Kleber quando você conhece ele pela primeira vez lá na intro do capy-bar, pra não ficar muito jogada a referência aqui.
    #char:Maned Wolf|L
    <i>Fonseca?</i> 
    
    #char:Maned Wolf|L
    Is that you?

    #char:Kleber_sad_neutral|R
    ...Wait, what? {Emotion("Inner", "blue")}

    #char:Kleber_angry_neutral|R
    Are you <shake>serious</shake> right now!? {Emotion("Outer", "red")}

    #char:Maned Wolf|L
    Oh wow, it is! Can't believe you decided to show your face here again!

    #char:--
    A reddish-maned wolf is coming your way, his fangs bared in a mocking grin. 
    
    #char:--
    His fashion sense is somewhat like Kleber's, but with a lot of floral prints.

    #char:Maned Wolf|L
    That's a sweet ride you've got, Fonseca. 
    
    #char:Maned Wolf|L
    Back to being a Taxi driver, eh? 
    
    #char:Maned Wolf|L
    Is this your new client?

    + [NO>>]

        #char:--
        You point at your ship while explaining that you're the Captain and Kleber is your pilot and navigator.

        #char:Maned Wolf|L
        Ooh, I see. Fonseca's a good pilot alright, but be warned, he's not a team player.

    + [QUESTION>>]

        #char:--
        Kleber, a Taxi driver? Is that what he used to do before?

        #char:Maned Wolf|L
        More like <i>tried</i> to do. 
        
        #char:Maned Wolf|L
        Didn't get along too well with most of us here.

    -   #char:Kleber_angry_neutral|R
        Shut it, Dourado! Y'all scared off all the good Taxi pilots in the first place! {Emotion("Outer", "red")}

        #char:Dourado|L
        What can I say? We offered them to play ball with us, none of them wanted to.

        #char:Dourado|L
        Besides, at least they still have their own ships. 
        
        #char:Dourado|L
        You haven't even got that to your name...

        #char:--
        The two get closer, and it looks like things might come to blows.

        #char:Kleber_angry_angry|R
        <shake>WHO CARES!</shake> {Emotion("Outer", "red")}
        
        #char:Kleber_angry_angry|R
        I'm better off working in this Cargo Caravan, probably get paid more too!

        #char:Dourado|L
        <i>Oh?</i> 
        
        #char:Dourado|L
        So maybe you've come back to buy your old ship from me? 
        
        #char:Dourado|L
        Still got that dream about racing?

        + [CONFUSED>>]

            #char:Dourado|L
            So, Fonseca's old ride? 

            #char:Dourado|L
            It's s a decent machine, I'd be willing to give it back to him for about... 200.000 Grana, let's say.

            #char:Kleber_angry_angry|R
            Leave it, Cap! I don't care about my old ship, don't give this crook a thing! {Emotion("Outer", "red")}

            #char:Dourado|L
            Suit yourself. Your captain at least understands negotiations, unlike you. 
            
            #char:Dourado|L
            Then again, they hired you, so...

        + [KLEBER>>]

            #char:--
            You turn to Kleber, but he immediately looks away.

            #char:Dourado|L
            He didn't tell you about this either? 
            
            #char:Dourado|L
            Fonseca had to sell his ship to me and look for another job because he was out of Grana!

            #char:Dourado|L
            Heard he spent part of it hitching a ride to one of these capybara-run joints somewhere.

        -   #char:--
            You've heard enough. 
            
            #char:--
            This isn't going anywhere and you're not about to sit here while it continues.

            + [KLEBER>>]

                #log: Met Kleber's old boss, Dourado.

                #char:--
                You tell Kleber to calm down and get inside the ship. 
                
                #char:--
                Better not escalate the situation any further.

                #char:Dourado|L
                Running away again? Typical Fonseca.
                
                #char:Dourado|L
                Taxi Driver or Caravan Pilot, some things never change...

                #char:--
                Kleber turns to glare at Dourado, but you push him inside the 41-Biz.
                
                #char:--
                The maned wolf talks some more, but after seeing his taunts are of no more effect, he leaves.

            -> klebers_taxi_story

            + [CREW>>]

                #log: Met Kleber's old boss, Dourado.

                #char:--
                You tell Dourado to leave before the rest of your crew comes back, unless he wants trouble.

                #char:Dourado|L
                "<wave>Trouble</wave>"? Tsk!
                
                #char:Dourado|L
                Have you any idea who you're talking to? I <i>RUN</i> this place!

                #char:Kleber_angry_neutral|R
                Maybe, but I'd like to see you deal with a full Cargo crew with an armed ship. {Emotion("Outer", "red")}

                #char:Kleber_happy_neutral|R
                Unless you've somehow equipped your Taxi drivers with some defenses, which we both know you wouldn't do. 
                
                #char:Kleber_happy_neutral|R
                <i>Too costly</i>, right?

                #char:--
                Dourado's ears and nose twitch in clear annoyance, but he doesn't move. 
                
                #char:--
                After a few seconds of the threat hanging in the air, he growls and turns away.

                #char:Dourado|L
                <bounce>Tch</bounce>. Whatever. 
                
                #char:Dourado|L
                Better not catch you around our ships, though.

            -> klebers_taxi_story

            + [PUNCH_RIGHT>>]

                #log: Got in a fight with Kleber's old boss, Dourado.

                #char:--
                You take a step closer and punch Dourado right in the muzzle. 
                
                #char:--
                Surprisingly, he stumbles, but doesn't fall. {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

            -> taxi_station_brawl


= klebers_taxi_story

{
    - taxi_station_brawl:
        #char:Kleber_angry_angry|R
        You better leave now if you know what's good for you, Dourado! {Emotion("Outer", "red")}

        #char:--
        You've only just noticed, but there's about half a dozen Taxi Caravaneers watching the exchange from a distance. 
        
        #char:--
        But none moved to aid Dourado.

        #char:--
        Strange, considering Kleber said he was a big-wig here. 
        
        #char:--
        Whether it's because they're afraid, don't care or secretly hate Dourado, you'll never know.

}

#char:--
With both of you alone inside the 41-Biz once more, you think this is a good time to ask Kleber what was that about.

{
    - wounded_by_dourado == true:
        #char:--
        As you dress your wounds, you listen to what your pilot has to say.

    - else:
        #char:--
        You both sit in your cockpit as he answers your query.
}

#char:Kleber_sad_neutral|R
It's like Dourado said. I sold my old Taxi ship to him. {Emotion("Inner", "blue")}

#char:Kleber_sad_sad|R
Not one of my best decisons, but I needed the money. 

#char:Kleber_sad_sad|R
And I wasn't getting that much working for him, anyway.

+ [QUESTION>>]

    #char:--
    How did he start working for Dourado anyway? What's the guy's deal?

    #char:Kleber_angry_angry|R
    Dourado's a crook! {Emotion("Outer", "red")}
    
    #char:Kleber_angry_angry|R
    The Caravans he has under his belt? Clandestine, most of them. 
    
    #char:Kleber_angry_angry|R
    I bet most pilots working for him don't even have a license.

    #char:Kleber_angry_neutral|R
    They offer to go through really dangerous routes to get to places faster.

    #char:Kleber_angry_neutral|R
    And since no one else is willing to do it, he charges whatever he wants.

    {
        - E_Crew_RockyDetour:
            #char:--
            ...Is that how Kleber learned about his "detours"?

            #char:Kleber_neutral_neutral|R
            Uh, some of them, yeah.

            #char:Kleber_neutral_neutral|R
            That was actually one of the few useful things about the job.
    }

+ [MOTIVATE>>]

    #char:--
    You're sure Kleber must have had his reasons. What matters is that you're together in this now.

    #char:Kleber_neutral_neutral|R
    Cap, I... thanks. 

    #char:Kleber_happy_sad|R
    Heck, I think I'd even miss arguing with Jackie or eating Barto's food if I ever leave. 
    
    #char:Kleber_happy_neutral|R
    It's become part of my day-to-day, you get me?

-   #char:Kleber_neutral_neutral|R
    Oh, as for how I got to work for him... promise you won't laugh.

    #char:Kleber_neutral_sad|R
    I wanted to be a professional racing pilot. 
    
    #char:Kleber_neutral_sad|R
    That's why I learned how to handle a ship in the first place.

    #char:Kleber_sad_neutral|R
    But the problem is that the career path is really expensive... {Emotion("Inner", "blue")}
    
    #char:Kleber_sad_neutral|R
    So I had to earn money.
    
    #char:Kleber_sad_neutral|R
    And the fastest way at the time was joining the Taxi Caravans. 
    
    #char:Kleber_sad_neutral|R
    Problem is, I didn't know anyone here and most pilots were working for Dourado.

    #char:Kleber_sad_neutral|R
    On top of all of this, the pay wasn't that good, and since I didn't do everything Dourado wanted me to, I got less opportunities.

    #char:Kleber_sad_sad|R
    Eventually my only option was to sell my old ship. 
    
    #char:Kleber_sad_neutral|R
    I didn't really have much attachment to it, and it was my only way to get outta here.

    #char:Kleber_neutral_neutral|R
    A few months later, I met you at that Capy-Bar. 
    
    #char:Kleber_neutral_neutral|R
    That's... about it, really.

    #char:--
    Right on cue, Jackie and Barto arrive.

    {
        - wounded_by_dourado == true:
            #char:Barto_neutral_neutral|L
            Oh, you two stayed on the ship? 
            
            #char:Barto_neutral_neutral|L
            Pity, should have taken the chance to stretch y-

            #char:Jackie_sad_neutral|L
            <bounce>Whoa</bounce>, whoa! What happened? Did you two fight? {Emotion("Inner", "blue")}

        - else:
            #char:Barto_neutral_neutral|L
            You two didn't leave? 
            
            #char:Barto_neutral_neutral|L
            Shame, there are a few food stands out there.

            #char:Jackie_neutral_neutral|L
            I'm disappointed, to be honest.

            #char:Jackie_sad_neutral|L
            Couldn't find any tool shops, and the caravaneers here aren't willing to sell their own...

            #char:Jackie_sad_neutral|L
            But... what's with the tense faces, you two? {Emotion("Inner", "blue")}
            
    }

    #char:--
    You and Kleber explain what happened with Dourado.

    #char:Jackie_sad_neutral|L
    Wow. Must have been a rough time. {Emotion("Inner", "blue")}

    #char:Kleber_neutral_sad|R
    Eh, I'm better off now. 
    
    #char:Kleber_happy_sad|R
    Cap already did plenty for me today.

    ~ g_affinity_Kleber += 20

    {
        - snack_at_station:
            #char:Barto_neutral_sad|L
            Well, I bought some extra Empadas, as per the captain's request. 
            
            #char:Barto_neutral_sad|L
            You can have some too, if that helps.

        - else:
            #char:Barto_neutral_angry|L
            Still, I'm cooking a hearty meal for you tonight. No ifs or buts.
    }

    #char:Barto_neutral_angry|L
    But let's have a change of scenery first, yes? 
    
    #char:Barto_neutral_angry|L
    We don't want the ambience making the food taste bad.

    #char:Kleber_happy_sad|R
    You guys... yeah. Let's get outta here! {Emotion("Outer", "white")}

    ~ g_morale += 20

-> EVENT_END



= taxi_station_brawl

#char:--
He recovers quickly, and runs toward you to strike back.

+ [PUNCH_LEFT>>]

    #char:--
    You go for a straight left punch,<>

    {shuffle:

        - but Dourado dodges to his left and slashes you across the face with his claws.

            ~ wounded_by_dourado = true
            ~ g_morale -= 15

            #char:--
            It's not that bad, though it might leave a scar. {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}
            
            #char:--
            Dourado is then promptly tackled to the ground by Kleber.

            #char:--
            The two wrestle for a bit, but Kleber gets a few good punches in right away and gets up first, with Dourado groaning in pain. {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

        - just barely evading his claw and hitting him in his left cheek.

            ~ g_affinity_Kleber += 10

            #char:--
            He takes a few steps back and looks at you in rage. {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}
            
            #char:--
            With his teeth bared, you can see he's considering another attack.

        - but Dourado takes a step back and then bites your arm. 
        
            #char:--
            He twists his head around, hurting you even more.

            ~ wounded_by_dourado = true
            ~ g_morale -= 15

            #char:--
            Powering through the pain, you use your other arm to hit him on the neck. {Shake("All", 3, -1)}

            #char:--
            He clamps harder for a second, but you must have hit a good spot because he releases your arm right after, gasping and coughing. {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}
    }


-> klebers_taxi_story

+ [POINT_DOWN>>]

    #char:--
    Dourado seems faster, so you try to anticipate his move and duck.

    #char:--
    His claw swipes past your head. 
    
    #char:--
    You jab the maned wolf in the stomach and he crumples to the ground, wheezing.

    #char:--
    Kleber looks awestruck for a second, then smiles broadly, satisfied. {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

    ~ g_affinity_Kleber += 10

    //{
        /*- E_Mission_Rookie_TheCursedCachaca.punched_Silva:

            #char:Kleber_happy_happy|R
            That's my Captain's punch for you! {Emotion("Outer", "white")}*/

        //- else:

            #char:Kleber_happy_angry|R
            Whoa, nice counter, Cap! {Emotion("Outer", "white")}
            
            #char:Kleber_happy_happy|R
            Didn't know you had that in you!
    //}

    #char:--
    Kleber turns to Dourado, who is picking himself up from the ground.

-> klebers_taxi_story

+ [PUNCH_RIGHT>>]

    #char:--
    You go for an uppercut with your right hand, counting on it causing more damage to him than his claws will to you.

    #char:--
    Dourado's eyes widen, <>

    {shuffle:
    
        - but it's too late. Your fist collides with his chin and he falls on his back.

            ~ g_affinity_Kleber += 10

            #char:--
            Kleber watches awestruck. You actually finished this with one punch. {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

            //{
                /*- E_Mission_Rookie_TheCursedCachaca.punched_Silva:

                    #char:Kleber_happy_happy|R
                    <i>That's</i> my Captain's punch for you! {Emotion("Outer", "white")}

                - else:*/

                    #char:Kleber_happy_angry|R
                    WHOA, nice counter, Cap! {Emotion("Outer", "white")}
                    
                    #char:Kleber_happy_happy|R
                    Didn't know you had that in you!
            //}

            #char:--
            Kleber faces Dourado again, while the crook tries to get back up.

        - and he takes a step back, just enough to miss your hand.

            #char:--
            Dourado counters by sinking his teeth in your right arm. You instinctively punch him in the gut as a reaction.

            ~ wounded_by_dourado = true

            #char:Kleber_happy_angry|R
            WHOA, nice counter, Cap! {Emotion("Outer", "white")} {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)} 

            ~ g_affinity_Kleber += 10

            #char:--
            It works and the maned wolf lets go, though you're still bleeding from his bite.
    }

-> klebers_taxi_story