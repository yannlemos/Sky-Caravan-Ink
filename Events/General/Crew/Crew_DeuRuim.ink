===E_Crew_DeuRuim===

//Mabel check: Ready to be localized!

#scope: General
#category: M2_General2
#tier: Rookie, Intermediate, Expert
#intensity: Low
#location: Skyways

#char:--
Living in the Skies can definitely shorten your life expectancy.

#char:--
But on the other end of caravan life is the doldrums... the days of nothing. It's coming <incr>hard</incr> today.

#char:--
While you try to find a distraction from your rising headache, Jackie comes to you.

#char:--
She's normally excited about briefing you on her daily check-up routine on ship.

#char:--
Not this time, apparently.

#char:Jackie_neutral_angry|L
Engine's ok, Captain. No fixes needed. {PlaySFX("LightWoosh")}

#char:Jackie_neutral_sad|L
Not even a single cable loose.

#char:Jackie_sad_sad|L
Quite boring. I'm a bit disappointed. 

#char:Jackie_sad_neutral|L
I kinda miss the Mafagafo... he really livened up the place. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

~ ScreenFlash("white", -1)

#char:Jackie_surprised_neutral|L
Oh, wait! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")} {Shake("Big Face", 0.5, 0.3)}

#char:Jackie_surprised_neutral|L
Speaking of livening up the place...

#char:Jackie_happy_happy|L
...I just had the greatest idea!

#char:Jackie_happy_angry|L
Let me make you a <i><wave>"Deu Ruim"!</wave></i> {Emotion("Shine", "ffb71b")} {PlayMusic("Light")} {PlaySFX("Funny1")} {Blink("Big Face", 1, -1, "white")}

    * [FEAR¬That sounds dangerous.>>]

    #char:--
    This reeks of bad idea. And you don't even know what it is.
    
    #char:--
    You tell Jackie you don't want anything that could light the ship on fire or something like that.

    * [CONFUSED¬You have no idea what that is.>>]

    #char:--
    You ask Jackie what on Skies is she talking about.

    * [RELAX¬Go with the flow.>>]

    #char:--
    You have no idea what is, but caravaneering has taught you to go with the wind sometimes. You ask Jackie about it.

- #char:Jackie_happy_neutral|L
It's just a cocktail!

//AFFINITY PASS:

{  
    - g_affinity_Jackie <= -5:

        #char:Jackie_sad_sad|L
        Look, I know we're not on the best of terms right now, but I can't help but notice you seem a little down.

        #char:Jackie_happy_angry|L
        You sure look like you could use a drink!

}

#char:Jackie_neutral_happy|L
As grandma likes to say: "When <i>nothing</i> happens, drink a Deu Ruim. Then you bet <i>something</i> will."

#char:Jackie_happy_neutral|L
I'm not the bragging type, but I have to admit engineers can get pretty creative with their drinks. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:Jackie_neutral_sad|L
I can't tell you its secret ingredient, though. That's part of the experience. 

#char:Jackie_happy_neutral|L
Want one?

    * (drank_deu_ruim) [YES¬Accept Jackie's offer.>M>]

        #char:--
        Jackie's grandma's words seem ominous. Sounds quite ideal for the moment.

        ~ g_morale += g_statChangeLow

        #char:Jackie_happy_happy|L
        Nice! {Emotion("Shine", "ffb71b")} {Blink("Big Face", 0.5, -1, "white")}
        
        #char:Jackie_happy_happy|L
        Hang tight, I'll be right back with it.

        #char:--
        She slides down the stairs on a rush.

    * (didnt_drank_deu_ruim) [NO¬You'll pass.>M>]

        #char:--
        You've spent enough time in the Skies to learn that drinking a nebulous drink in the middle of the day is inviting chaos.

        ~ g_morale -= g_statChangeLow

        #char:Jackie_sad_neutral|L
        Ah... that's a shame. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}
        
        #char:Jackie_sad_neutral|L
        I understand. Maybe another time. 

        #char:Jackie_sad_neutral|L
        Guess I'll go back to the engine room then.

        #char:--
        She slides down the stairs, looking disheartened.

- #char:Kleber_happy_happy|L
Yo, Jackie, can you hear me down there? I'd love one! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

#char:--
Kleber and his eavesdropping can be quite unnerving at times.

#char:--
Jackie's head pops out of the hatch in a second.

#char:Jackie_happy_happy|L
Awesome! I've always wanted to have a drink with my crewmates. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:Barto_angry_neutral|R
What's all this commotion there? I'm trying to read the "Spiritual Guide to The Perfect Farofa"! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

#char:Kleber_neutral_happy|L
Hey Barto, <wave>Jackie is making a cocktail</wave>! Come take some notes.

#char:Barto_surprised_angry|R
<shake>Preposterous!</shake> {Emotion("Explosion", "39f2d6")}  {PlaySFX("Hit1")} {Blink("Big Face", 0.5, -1, "white")} {Shake("Big Face", 0.5, 0.3)}

#char:Barto_angry_angry|R
How about I go fix the engine, Jackie?

#char:Jackie_surprised_neutral|L
Stop being insecure, chef.

#char:Jackie_neutral_neutral|L
I'm making one for you too, how about it?

#char:Barto_neutral_neutral|R
...

#char:Barto_neutral_happy|R
For study purposes, then. {PlaySFX("Funny1")}

#char:--
Now <i>everyone</i> wants to drink in the middle of a work day?

#char:--
On the one hand, your crew deserves to have some fun. They've been working hard.

#char:--
On the other hand, acting irresponsibly could expose you to danger.

#char:--
What do you do? Should you let them drink?

+ [YES¬A little fun won't hurt.>M_F_S>]

    #char:--
    The crew could use some unwinding together. There's something unnerving about this delivery.

    -> deu_ruim_party

+ [NO¬You can't let them drink. They should focus on work.>M>]

    #char:--
    You're concerned with the unprofessionalism of your crew. {StopMusic()}

    #char:--
    Does everyone really think that drinking in the middle of a delivery is ok?

    #char:--
    You dress them down for the irresponsibility.

    #char:Jackie_sad_sad|L
    You know what...

    #char:Jackie_angry_neutral|L
    This is bullcrap! {Emotion("WaveOut", "ea2929")}  {Blink("Big Face", 0.5, -1, "white")} {Shake("Big Face", 0.5, 0.3)}

    ~ g_affinity_Jackie -= g_affinityChangeMid

    #char:Jackie_angry_angry|L
    I've always done <shake>everything</shake> by the book. I just wanted some fun in the middle of a nothing day! {PlayMusic("Tension")}  //

    {
        - drank_deu_ruim: 
    
            #char:Jackie_angry_angry|L
            By the way, you're a hypocrite. You were about to have a drink before Barto and Kleber showed up.
    }

    #char:Barto_angry_angry|R
    I'm siding with Jackie on this one. We deserve downtime too.

    ~ g_affinity_Barto_Jackie += g_affinityChangeMid

    ~ g_affinity_Barto -= g_affinityChangeMid

    #char:Kleber_happy_happy|L
    <wave>Ooooh</wave>, feeling rebellious too? What's wrong with you today, Barto? 

    #char:Kleber_neutral_angry|L
    No one invited me to this mutiny.

    #char:Barto_angry_angry|R
    What's wrong with <shake>you</shake> sneaking out of the call with our client? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

    ~ g_affinity_Barto_Kleber -= g_affinityChangeMid

    #char:Jackie_angry_neutral|R
    Right? You want the good parts all together and friendly, but for the hard stuff you walk away?
    
    ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid

    #char:Jackie_angry_neutral|R
    Are you hiding something or what?

    #char:Kleber_angry_angry|L
    What?! Jackie, you're a kid. You know nothing.  {Blink("Big Face", 0.5, -1, "white")}

    ~ g_affinity_Kleber_Jackie -= g_affinityChangeMid

    #char:Kleber_angry_angry|L
    And you Barto, just shut up, will ya? Stop acting like you're more than a cook.

    ~ g_affinity_Kleber_Barto -= g_affinityChangeMid

    #char:--
    This is getting out of hand.

        ++ [ANGRY¬Yell at them.>>]

        #char:--
        You bang your hand on the desk in front of you, calling attention to yourself. {PlaySFX("Hit2")}

        #char:--
        You scold them for screaming at each other for mundane reasons.

        ~ g_morale -= g_statChangeLow

        #char:Jackie_sad_sad|L
        Forget it! I'm out. {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")}

        ~ g_affinity_Jackie -= g_affinityChangeLow

        ++ [RELAX¬Try to calm them down.>>]

        #char:--
        You tell the crew that the emotions are too high to have a rational conversation. Everyone should be alone for some time.

        #char:Jackie_sad_sad|L
        Forget it. {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")}

        ~ g_affinity_Jackie -= g_affinityChangeLow

    - #char:--
    She leaves the room.

    #char:Barto_angry_angry|R
    Breaks are important, Captain. Don't overwork your crew. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

    ~ g_affinity_Barto -= g_affinityChangeLow

    #char:--
    Barto leaves too. {StopMusic()} 


    #char:Kleber_angry_sad|L
    Woah, what's up with them? Never seen them act like this. {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

    #char:--
    Kleber walks to the cockpit, but comes back at the last second.

    #char:Kleber_sad_sad|L
    Trust me: we should do this delivery by the book. You were right back there.

    #char:--
    You're left to yourself, standing in the middle of the empty room. {SetToNight()}

    ~ g_morale -= g_statChangeMid

    #char:--
    Dinner is silent at the end of the day. 

    -> EVENT_END 

= deu_ruim_party

#char:--
You ponder for a minute the fact that Jackie is making the cocktail in the engine room, instead of the kitchen, though.

    {
        - drank_deu_ruim:
            
            ~ g_fuel -= g_statChangeMid
        
        - else:

            ~ g_fuel -= g_statChangeLow
    }

#char:--
Before you can reach a conclusion, she comes up with three small cups filled with a glowing red liquid.

#char:Jackie_happy_happy|L
A toast, Captain? {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

    {
        - didnt_drank_deu_ruim:

            #char:Jackie_happy_neutral|L
            I know you don't feel like drinking tonight, so I filled your cup with some water.

    }

#char:--
What should you toast to? {StopMusic()}

    + [CREW¬Your crewmates.>>]

        #char:--
        You toast to your crew, complimenting them on risking their lives with you in the Skyways.

        //AFFINITY PASS:
        {  
            - g_affinity_Barto <= -5:
            #char:Barto_neutral_angry|L
            Well, then you better start appreciating the food I put on your plate every day too, Captain.
          
        }

        ~ g_affinity_Barto += g_affinityChangeLow

        {  
            - g_affinity_Jackie <= -5:
            #char:Jackie_neutral_neutral|R
            That’s more like it. I was starting to feel like the recognition was never going to happen...
          
        }

        ~ g_affinity_Jackie += g_affinityChangeLow


        {  
            - g_affinity_Kleber <= -5:
            #char:Kleber_neutral_happy|L
            Finally, huh. It's time I got some words of gratitude.
          
        }

        ~ g_affinity_Kleber += g_affinityChangeLow


    + [CAPTAIN¬Yourself.>>]

        #char:--
        You toast to your magnanimous captain skills.

        ~ g_affinity_Kleber += g_affinityChangeLow

        #char:Kleber_neutral_angry|L
        That's <i>so</i> humble of you, Cap.

    + [SHIP¬The 41-Bis.>>]

        #char:--
        You toast to the piece of junk that is the 41-Bis - the piece of junk that saved your life and put you here with this crew.

    - #char:Barto_happy_happy|L
    To one of the worst-equipped kitchens I've worked in my entire life. 

    #char:Jackie_happy_happy|R
    To the rustiest engine I've ever graced my metal arms upon!

    #char:Kleber_happy_neutral|L
    To the...uh... 
    
    #char:Kleber_happy_happy|L
    ...Whatever! Let's just drink! {Emotion("Shine", "ffb71b")} {Blink("Big Face", 0.5, -1, "white")} {PlaySFX("Shimmer1")}

    {
        - drank_deu_ruim:

            #char:--
            You drink the Deu Ruim in a single gulp. It feels like licking one of the 41-Bis' exhaust pipes.

            ~ PostProcess("Drunk",0.5) 
            ~ PlaySFX("DeuRuim")
            ~ g_morale += g_statChangeLow

        - else:

            #char:--
            You watch as they drink the Deu Ruim, each one in a single a gulp.

            ~ ScreenFlash("white", -1)
            ~ g_morale += g_statChangeLow
    }

            #char:--
            Everyone's faces are contorting.
            
            #char:Barto_fear_sad|L
            I'll never recover from this. I believe I just burned my taste buds. 

            #char:Kleber_happy_angry|R
            What else are you capable of, Jackie?! Because this kinda sets the bar quite low.

            #char:Jackie_happy_happy|L
            That's Deu Ruim! It's so terrible it's <wiggle>perfect</wiggle>!  

            #char:Jackie_happy_happy|L
            Want another one? 

            #char:--
            ...Everyone agrees.

            ~ g_affinity_Kleber_Barto += g_affinityChangeMid
            ~ g_affinity_Kleber_Jackie += g_affinityChangeMid

            ~ g_affinity_Jackie_Kleber += g_affinityChangeMid
            ~ g_affinity_Jackie_Barto += g_affinityChangeMid

            ~ g_affinity_Barto_Jackie += g_affinityChangeMid
            ~ g_affinity_Barto_Kleber += g_affinityChangeMid

            #char:--
            Things go downhill fast from there. {PlayMusic("Comedy")}

            ~ FadeTo("black", 1, 1)

            {
                - drank_deu_ruim:
                ~ PostProcess("LightDrunk", 0.3)
            }

            #char:--
            It's been a few hours since the first shot of Deu Ruim. 

            #char:--
            Everyone is in quite the state.

            #char:--
            Jackie is playing rock, paper, scissors with her bionic arm.

            #char:Jackie_wasted_neutral|L
            <wiggle>Whyyyy</wiggle> do I keep losing... man. Whew. Again. {Emotion("Spiral", "53e66b")} {PlaySFX("Mistery2")}

            #char:--
            Kleber is singing with tears in his eyes.

            #char:Kleber_wasted_neutral|L
            "<wave>The suffering without you, my love... it's endlesssh.</wave>" {Emotion("Spiral", "53e66b")} {PlaySFX("Love2")}

            #char:--
            Such heartbreak.

            #char:--
            Barto is... fighting something?

            #char:Barto_attack|L
            That dendê oil... {PlaySFX("StrongWoosh")}

            #char:Barto_attack_anime|L
            ...It's <shake a=2>MINE!</shake> {Shake("Big Face", 3, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit2")}

            #char:Barto_wasted_neutral|L
            Don't I look menacing, crew?  {Blink("Big Face", 1, -1, "white")} {PlaySFX("LightWoosh")}

            #char:Barto_wasted_neutral|L
            <wiggle>Hic.</wiggle> {Emotion("Spiral", "53e66b")} {PlaySFX("Funny1")} {Shake("Big Face", 2, 0.3)}

            // #char:Kleber_surprised_neutral|L
            // What is the price of the abundant fear of all thruths?

            {
                - drank_deu_ruim:

                    #char:--
                    You're laughing, but you're not any better.

                    #char:--
                    But in your case, there's too much stress involved. 
                    
                    #char:--
                    The alcohol is almost bringing too much Surface to the table. {StopMusic()}

                    #char:--
                    ...

                 - else:

                    #char:--
                    There's not a drop of alcohol in your blood, but you're light headed from so much laughing.
                    
                    #char:--
                    It's been so much time since you had fun like this.

                    #char:--
                    Since you were back at Surface. {StopMusic()}

                    #char:--
                    ...
            }
        
            #char:--
            You say that you miss your family. 

             ~ PostProcess("Normal", 1)
            
            #char:Jackie_surprised_sad|L
            ...

            #char:Kleber_surprised_neutral|R
            ...

            #char:Barto_sad_neutral|R
            ... 
            
            #char:Barto_sad_sad|R
            I miss my clan too.

            #char:Barto_sad_sad|R
            My family, I mean. I don't think they miss me, though.

            #char:Jackie_sad_sad|L
            I miss grandma. I think I'll never be as good as she thinks I can be.

            #char:Kleber_fear_sad|R
            Guys, what a vibe. C'mon. You're killing me.

            ~ g_morale -= g_statChangeLow

            #char:--
            You all get silent for a moment. Maybe it's time for everyone to go to their quarters.

            #char:Jackie_happy_happy|L
            I have a new idea! Damn, I'm on fire today. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            #char:Jackie_happy_neutral|L
            Let's drink one of Silva's bottles! {Blink("Big Face", 1, -1, "white")} {Shake("Big Face", 0.5, 0.3)}

            #char:--
            Everyone freezes. {PlayMusic("Tension")}

            #char:Barto_surprised_angry|R
            ...

            #char:Barto_angry_angry|R
            ...That pompous <shake>spore-snorting</shake> prick. <bounce>I agree!</bounce>
            
            #char:Barto_angry_angry|R
            Let's do even better: let's drink from his <b><wiggle>precious</wiggle></b> black cachaça bottle.

            #char:--
            The bridge is silent. They all look at you.

            {
                - drank_deu_ruim:

                    #char:--
                    You're not thinking straight. There's too much drink. You feel the booze taking over.

                    ++ [MOTIVATE¬Accept the idea.>>]

                    #char:--
                    You bang your hands on the table, ushering everyone to the cargo hold. {PlaySFX("Hit2")} {ScreenFlash("white", -1)}

                    -> deu_ruim_confrontation
                
                - else:

                    #char:--
                    This has all the makings of a terrible ideia. But Silva was such an idiot that you can feel the mood for some mischief.

                    ++ [MOTIVATE¬Accept the idea.>>]

                        #char:--
                        You bang your hands on the table, ushering everyone to the cargo hold. {PlaySFX("Hit2")} {ScreenFlash("white", -1)}

                        -> deu_ruim_confrontation

                    ++ [FEAR¬You don't want to mess with Silva's cargo.>>]

                        #char:--
                        You remember Silva's words about knowing about any tampering with the cargo.
                        
                        #char:--
                        And the swallowing spores part too, of course.

                    -> deu_ruim_confrontation
            }

= deu_ruim_confrontation

    #char:Kleber_angry_angry|L
    <shake>Y'all crazy?!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}
    
    #char:Kleber_angry_angry|L
    You should all go to sleep.

    #char:Jackie_angry_neutral|R
    What? Who are you to order us around? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

    ~ g_affinity_Jackie_Kleber -= g_affinityChangeLow

    #char:Barto_angry_angry|L
    Aren't <i>you</i> always the first to propose ideas that put us in danger, Kleber? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

    ~ g_affinity_Barto_Kleber -= g_affinityChangeLow
    
    #char:Barto_angry_angry|L
    You are shadiness incarnate! {Shake("Big Face", 0.5, 0.3)}

    #char:Jackie_angry_angry|R
    That's right! What was that when the client called? 
    
    #char:Jackie_angry_angry|R
    You snuck out! What are you hiding from us? {Shake("Big Face", 0.5, 0.3)}

    {

        - E_Backstory_Part1.jackie_eavesdrops:
            #char:Jackie_angry_angry|R
            You too, {g_name}! I know you have a secret.

    }
    
    
    {

        - E_Backstory_Part1.barto_eavesdrops:
            #char:Barto_angry_angry|L
            {g_name} is hiding a secret from us too. 
            
            #char:Barto_angry_angry|L
            What's going on with this crew?

    }

    #char:Kleber_angry_angry|L
    Jackie, you're a kid. You know nothing yet. {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

    ~ g_affinity_Kleber_Jackie -= g_affinityChangeLow

    {
    
        - E_Mission_Rookie_TheMafagafoPassenger.jackie_watches_eggs:
            #char:Kleber_angry_angry|L
            You couldn't even deal with the responsibility of watching that Mafagafo egg!

    }


    #char:Kleber_angry_angry|L
    And you Barto, you're just a cook! Can't you understand that? {Shake("Big Face", 0.5, 0.3)}

    
    ~ g_affinity_Kleber_Barto -= g_affinityChangeLow

    {
    
        - E_Mission_Rookie_TheMafagafoPassenger.barto_watches_eggs:
            #char:Kleber_angry_angry|L
            You couldn't even deal with the responsibility of watching that Mafagafo egg!
    }
    
    {

      - E_Backstory_Part1.kleber_eavesdrops:
        #char:Kleber_angry_angry|L
        And look at you, {g_name}! 
        
        #char:Kleber_angry_angry|L
        You keep trying to hide your little secret from everyone.

    }
    
    #char:Kleber_angry_angry|L
    I'm not telling anything I don't need to. You can't make me.
    
    #char:--
    Will you demand an explanation or let it slide?

        + (deu_ruim_press_kleber) [QUESTION¬Ask him the truth.>>]

        #char:--
        You press Kleber to explain why he didn't stay for the client's call.

        ~ g_affinity_Kleber -= g_affinityChangeHigh

        #char:Kleber_sad_sad|L
        I see. So y'all gonna pile all over me, huh. 

        #char:Kleber_sad_sad|L
        Well, I should've known this was going to happen. People like me don't get second chances anywhere. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Kleber_angry_angry|L
        I'm out.

        #char:--
        He gets up and walks to the cockpit, slamming the door. 

        #char:Jackie_fear_angry|R
        Is he really going to pilot the ship the way he is?

        #char:Barto_fear_sad|L
        I really hope not.

        #char:--
        You feel a shiver down your spine. 
        
        #char:--
        To your relief, the autopilot light toggles in the bridge. Looks like he'll only be sleeping in the cockpit. {StopMusic()}

        #char:--
        With the tension dissipating, you see that Jackie and Barto have their eyes to the ground.

        #char:Jackie_sad_sad|L
        Huh...Thanks for siding with us, {g_name}.

        ~ g_affinity_Jackie += g_affinityChangeLow

        #char:Jackie_sad_sad|L
        I don't know what got into me. I'm really not like this. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        #char:Barto_sad_sad|R
        I understand, Jackie. I'm feeling the same way.

        ~ g_affinity_Barto += g_affinityChangeLow
        
        #char:Barto_sad_sad|R
        Maybe we were too harsh on him. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

        #char:--
        They retire to their quarters without another word.

        -> deu_ruim_vomit

        + (deu_ruim_protect_kleber) [RELAX¬Don't pressure Kleber for an explanation.>>]

        #char:--
        You tell Jackie and Barto that Kleber is right. If he doesn't want to share something, he doesn't need to.

        ~ g_affinity_Jackie -= g_affinityChangeMid

        #char:Jackie_angry_angry|L
        So that's how it is. I should have known that having an unprepared Surfacer for a captain would lead to this. {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

        ~ g_affinity_Barto -= g_affinityChangeMid

        #char:Barto_angry_angry|R
        If you're not ready to take the right side, you're not ready to be a captain.

        #char:--
        They storm out, each going to their quarters. {StopMusic()}

        #char:Kleber_sad_sad|L
        ...

        #char:Kleber_sad_happy|L
        Thanks for having my back there, {g_name}.

        ~ g_affinity_Kleber += g_affinityChangeHigh

        #char:Kleber_sad_sad|L
        This... this is new for me. Someone giving me a chance. 

        #char:Kleber_sad_neutral|L
        I know I'm a little shady. 
        
        #char:Kleber_fear_neutral|L
        C'mon, look at me. I was a criminal until like a month ago.

        #char:Kleber_sad_angry|L
        Getaway driver. It was terrible. Been doing this my whole life. 
        
        #char:Kleber_sad_sad|L
        I'm trying to do something that doesn't hurt people this time. That's it.
        
        #char:Kleber_sad_sad|L
        I'll explain everything about the client's call another time.

        #char:Kleber_sad_sad|L
        For now... thanks, cap. I'll keep the ship on autopilot today, ok?

        #char:--
        He leaves, eyes on the floor, walking slowly.

        -> deu_ruim_vomit
 
= deu_ruim_vomit

{
    - drank_deu_ruim:

        #char:--
        You finally get up. {PostProcess("Drunk", 0.5)}
        
        #char:--
        Bad idea. 

            ++ [VOMIT¬Vomit.>>]

            #char:--
            All the Deu Ruim you drank lands on the inner walls of the 41-Bis as you start projectile vomiting. {PlaySFX("Funny3")}

            #char:--
            You catch a final glimpse of the artful scenery you're painting before passing out.

            {UnlockAchievement("PAINT_SHIPS")}

            ~ DayChange()

            -> deu_ruim_next_day

            ++ [VOMIT¬Vomit.>>]

            #char:--
            All the Deu Ruim you drank lands on the inner walls of the 41-Bis as you start projectile vomiting. {PlaySFX("Funny3")}

            #char:--
            You catch a final glimpse of the artful scenery you're painting before passing out.

            {UnlockAchievement("PAINT_SHIPS")}

            ~ DayChange()

            -> deu_ruim_next_day

            ++ [VOMIT¬Vomit.>>]

            #char:--
            All the Deu Ruim you drank lands on the inner walls of the 41-Bis as you start projectile vomiting. {PlaySFX("Funny3")}

            #char:--
            You catch a final glimpse of the artful scenery you're painting before passing out.

            {UnlockAchievement("PAINT_SHIPS")}

            ~ DayChange()

            -> deu_ruim_next_day

    - else:

        #char:--
        You get up and head to your quarters.

        ~ DayChange()

        -> deu_ruim_next_day
}

= deu_ruim_next_day

{
    - drank_deu_ruim:   

        #char:--
        You wake up in what feels like a second after. 

        #char:--
        Words can't describe your hangover. You see Barto and Jackie beside your bed.

        ~ PostProcess("Normal", 1)

        #char:Barto_neutral_neutral|R
        Well, you are alive. That's a good start.

        #char:Jackie_sad_sad|L
        I'm really sorry, Captain. 
        
        #char:Jackie_sad_sad|L
        I thought you'd take it okay. Maybe Surfacers can't handle drinking fuel... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")}

        #char:Barto_neutral_angry|R
        You raided the kitchen at night. Ate like a monster and drank gallons of water.

        #char:Jackie_neutral_angry|L
        Oh, we used lots of supplies cleaning the bridge too. Nasty stuff. 

        ~ g_supplies -= g_statChangeLow

    - else:

        #char:--
        You wake from a troublesome sleep.

        #char:--
        At the breakfast table, Kleber is nowhere to be found.

        #char:Jackie_sad_neutral|L
        Good morning, Captain.

}

        #char:Jackie_sad_sad|L
        ...

        #char:Jackie_sad_sad|L
        I'm really sorry about last night. I was way out of line. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        #char:Barto_sad_sad|R
        I also need to apologize, Captain. I don't know what got into me.
        
        #char:Barto_fear_sad|R
        Felt like something was messing with my head. {Emotion("WaveIn", "0a4de8")} {Shake("Big Face", 0.5, 0.3)} {PlaySFX("Mistery1")}

        #char:Jackie_sad_sad|L
        Poor Kleber...

        #char:--
        Well, you felt off yourself.

        #char:--
        You wonder if this happens to crews that serve a long time in the Skyways.

        #char:--
        Barto suddenly gets up, takes a carefully prepared plate and ushers Jackie alongside him. She takes a look at it and smiles.

        #char:--
        You caught a glimpse of what he was holding.  {SetToNight()}
        
        #char:--
        Grilled cheese. Kleber's favorite.

    -> EVENT_END

// { 
//     - g_affinity_Jackie >= 0:

//         #char:Jackie_sad_neutral|L
//         ...You seem a little down, though.

//         #char:Jackie_sad_neutral|L
//         Let me guess, the doldrums got you?

//     - else:

//         #char:Jackie_neutral_neutral|L
//         ...

//         #char:Jackie_sad_neutral|L
//         I know we're not on the best of terms right now, but I can't help but notice you seem a little down.

//         #char:Jackie_sad_neutral|L
//         Something about the doldrums, perhaps?

// }


// + [LIE>>]

//     #char:--
//     You tell Jackie you're fine, you just don't want to be bothered.

    
//     {  
//         - g_affinity_Jackie >= 0:

//             #char:Jackie_sad_sad|L
//             Are you sure? 
        
//             #char:Jackie_happy_angry|L
//             Hmm... <waitfor=0.5>What if I got you something to drink?

//             #char:Jackie_happy_neutral|L
//             Us engineers are pretty creative, and you bet that applies to cocktails as well.



//         - else:

//             #char:Jackie_neutral_neutral|L
//             Well, you sure look like you could use a drink.

//             #char:Jackie_happy_neutral|L
//             I'm not the bragging type, but I have to admit engineers can get pretty creative with cocktails.

//     }

//     #char:Jackie_happy_neutral|L
//     Wanna see for yourself?
    
//     ++ [YES>S_F>]

//         #char:--
//         Maybe that's a good idea. Could help with the migraine, at least.

//         #char:Jackie_neutral_angry|L
//         Say, Captain, if you feel like trying something new, how about a <i>"Deu Ruim"</i>?

//         #char:Jackie_happy_neutral|L
//         As grandma likes to say: "When <i>nothing</i> happens, drink a Deu Ruim. Then you bet <i>something</i> will."

//     -> about_deu_ruim

//     ++ [NO>>]

//         #log: Sleep is the best medicine.

//         #char:--
//         You'd rather just close your eyes for the day.

            
//     {  
//         - g_affinity_Jackie >= 0:

//             #char:Jackie_sad_sad|L
//             I see. {Emotion("Inner", "blue")}
            
//             #char:Jackie_sad_sad|L
//             If you need anything, just shout, got it? 
            
//             ~ g_affinity_Jackie -= 10

//             #char:--
//             You nod and get ready to turn in. Maybe tomorrow will be a better day.
            

//         - else:

//             #char:Jackie_sad_neutral|L
//             Well, can't say I didn't try. {Emotion("Inner", "black")}

//             ~ g_affinity_Jackie -= 10

//             #char:Jackie_sad_neutral|L
//             I'll get going, then.

//             #char:--
//             You go back to your cabin. Maybe tomorrow will be a better day.

//     }


//     -> EVENT_END

// + [YES>>]

//     #char:--
//     It's kind of obvious, but you're in no condition to explain and just nod.

//     {  
//         - g_affinity_Jackie >= 0:

//             #char:Jackie_sad_sad|L
//             Are you sure? 
        
//             #char:Jackie_happy_neutral|L
//             Actually, I have an idea.

//             #char:Jackie_happy_angry|L
//             Have you ever drank something called <i>"Deu Ruim"</i>?

//             #char:Jackie_happy_neutral|L
//             Us engineers are pretty creative, and you bet that applies to cocktails as well.

//         - else:

//             #char:Jackie_neutral_neutral|L
//             Well, you sure look like you could use a drink.

//             #char:Jackie_neutral_angry|L
//             Have you ever drank something called <i>"Deu Ruim"</i>?

//             #char:Jackie_happy_neutral|L
//             I'm not the bragging type, but I have to admit engineers can get pretty creative with cocktails.

//     }

//     #char:Jackie_happy_neutral|L
//     As grandma likes to say: "When <i>nothing</i> happens, drink a Deu Ruim. You bet <i>something</i> will."

// -> about_deu_ruim


/* = about_deu_ruim

#char:Jackie_neutral_sad|L
You'd be the second person I make this for in the 41-Biz, actually.

#char:Jackie_sad_sad|L
It wasn't up to Kleber's taste, though... I <wave>kinda</wave> had to revive him. {Emotion("Inner", "green")}

#char:Jackie_neutral_neutral|L
...Nevermind. 

#char:Jackie_happy_neutral|L
Want to give it a shot?

+ [YES>S_F>] -> drink_deu_ruim

+ [NO>>]

    #log: Refused the questionable drink.

    #char:--
    <i>Revive?</i> Guess you will have to pass on the offer.

    {  
        - g_affinity_Jackie >= 0:


            #char:Jackie_sad_neutral|L
            Oh, ok then... well, see you later. {Emotion("Inner", "black")}
            
            ~ g_affinity_Jackie -= 10


        - else:

            #char:Jackie_sad_neutral|L
            Well, can't say I didn't try. {Emotion("Inner", "black")}

            ~ g_affinity_Jackie -= 10

            #char:Jackie_sad_neutral|L
            I'll get going, then.

    }

    #char:--
    So it goes. Better to sleep it off.

-> EVENT_END



= drink_deu_ruim

#log: Tried fuel and projectile vomited.

#char:--
You accept Jackie's suggestion. 

#char:--
She jumps down to the engine room. 

#char:--
You hear metallic noises and the opening of a bottle.

~ g_supplies -= 5
~ g_fuel -= 5

#char:--
A minute later, she's standing in front of you with a glowing red liquid in a metallic cup.

#char:Jackie_happy_happy|L
Savor it. <bounce>Family specialty</bounce>! {Emotion("Outer", "white")}

~ ScreenFlash("white", -1)

#char:--
One gulp and your body feels like its turning inside out. But it does taste better than boredom.

#char:--
Some minutes of chit chat and out of absolutely nowhere you start projectile vomiting in the bridge.

#char:Jackie_surprised_happy|L
Oh oh, not again! {Shake("Big Face", 2, 1)}

#char:Jackie_surprised_angry|L
Just wait a second! I'll be right back!

#char:--
Before she's back, you black out.

~ FadeTo("black", 1, 1)

#char:--
You awake in what feels like a second after.

#char:Barto_neutral_neutral|R
Well, you are alive. That's a good start.

#char:Jackie_sad_sad|L
I'm so sorry, {g_name}. I thought you'd take it better than Kleber, but maybe only mechanics can handle drinking fuel... {Emotion("Inner", "blue")}

+ [ANGRY>>]

    #char:--
    You scold Jackie for almost poisoning you. 

    {  
        - g_affinity_Jackie >= 0:


            She scratches her head with her third arm, looking away.

            ~ g_affinity_Jackie -= 10

            #char:Jackie_sad_sad|L
            No captain, I'm really sorry... just trying to do something about the doldrums. It won't happen again. {Emotion("Inner", "blue")}


        - else:

            #char:Jackie_sad_sad|L
            Well, guess my reconciliation attempt failed. {Emotion("Inner", "blue")}

            ~ g_affinity_Jackie -= 10

            #char:Jackie_sad_neutral|L
            I'll get going.

    }

    #char:--
    She gets up and leaves your quarters, her head down.

    #char:Barto_happy_neutral|R
    So... fuel? Can't say I never thought about it.

    #char:--
    Your stern look is enough, and Barto leaves. 
    
    #char:--
    No way you're complaining about the bitterness of cachaça in a long time.

-> EVENT_END

+ [RELAX>>]

    #char:--
    Well, that was a ride. Jackie smiles, her body releasing its built-up tension.


    {  
        - g_affinity_Jackie >= 0:

            #char:Jackie_happy_neutral|L
            Guess we'll have to stick with simple caipirinhas next time. {Emotion("Outer", "white")}

            ~ g_affinity_Jackie += 10

            #char:Barto_happy_neutral|R
            I promise I won't add fuel to my ingredient list.

        - else:

            #char:Jackie_neutral_neutral|L
            Glad you laughed it off, {g_name}.

            #char:Jackie_happy_neutral|L
            Maybe we'll get closer from now on.

            ~ g_affinity_Jackie += 10

    }

    #char:--
    No way you're complaining about the bitterness of cachaça in a long time.

-> EVENT_END

*/
