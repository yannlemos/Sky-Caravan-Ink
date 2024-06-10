===E_Ship_ChamaleonicVulture===

#scope: General
#category: M3_General1
#tier: Rookie, Intermediate, Expert
#intensity: High

/*Synopsis: Um barulho de explosão acorda todos de madrugada. Nada está danificado. Aparentemente a nave está ok.
Você pode parar um dia inteiro para fazer uma revisão completa ou seguir em frente.
Se você seguir, você descobre depois que perdeu combustível, mas sem saber porque.
Se você investigar, descobre que um abutre-camaleão botou ovo e é um processo muito barulhento. Eles sugaram seu combustível e você se fudeu.*/

#char:--
Sleep is not coming easy. Night has swallowed the ship, but you are still fidgeting in bed.

~ ScreenFlash("white", -1)

#char:--
Just as your eyelids start feeling heavy, an explosion. {Shake("All", 1, 1)}

#char:Kleber_angry_angry|L
<shake>God freaking dammit</shake>, they're here! {Emotion("Outer", "red")}

#char:--
You jump out of bed, reaching the bridge and finding a startled Barto looking at Jackie, her eyes wide checking the ship's monitors.

    + [ANGRY>>]

        #char:--
        You shout at the crew, trying to find out what the hell is happening. Jackie doesn't look at you, absorbed in the monitors.

        #char:Barto_angry_neutral|L
        Why, I'm as flabbergasted as you! An explosion and then Kleber screams. 
        
        #char:Barto_angry_angry|L
        He should be in the cockpit!

        #char:Jackie_neutral_sad|R
        There's absolutely nothing in the monitors, captain. I'll check the engines, this is so weird.

    -> check_engines

    + [QUESTION>>]

        #char:--
        You ask for the status report. Something clicks in their heads amidst the chaos and both crew members turn to face you.

        #char:Jackie_angry_angry|R
        Captain, we heard an explosion and Kleber screaming.
        
        #char:Jackie_angry_happy|R
        Then I ran here to check the monitors ready to punch someone — or something — but there's nothing in the monitors and there's no one to punch!
        
        #char:Barto_neutral_sad|L
        Thank god there's no one to punch, if I may say... I mean, that's correct, captain! And Kleber is not in his bloody cockpit!

        #char:Jackie_sad_sad|R
        I'll check the engines! This is so weird....

    -> check_engines



= check_engines 

#char:--
You can see Jackie's mechanical arm curling to attack position. She exits through the stairs and suddenly the door to the kitchen opens.

#char:Kleber_neutral_sad|R
W-what is going on?

#char:Barto_angry_angry|L
Where the hell were you, maniac?! Did anyone attack the ship? {Emotion("Outer", "red")}

#char:Kleber_happy_sad|R
What? Attack? What y'all talking about? I think I sleepwalked...

#char:--
You look at Kleber sternly.

#char:Barto_neutral_angry|L
So no one boarded us?

#char:Kleber_happy_sad|R
No, It's clear as crystal now... I was just remembering bad stuff. Sorry crew. But yeah, an explosion happened, I guess. {Emotion("Inner", "blue")}

+ [ANGRY>>]

    #char:--
    You tell Kleber he screwed up. Your pilot looks down, visibly distraught.
    
    #char:--
    Barto, as always, is not approving either.

    ~ g_affinity_Kleber -= 20
    ~ g_affinity_Barto += 20

-> investigate_the_engine

+ [RELAX>>]

    #char:--
    You tell them to focus on the problem at hand.
    
    #char:--
    Kleber looks at you relieved, acknowledging the lack of chastisement. Barto rolls his eyes.

    ~ g_affinity_Kleber += 20
    ~ g_affinity_Barto -= 20

-> investigate_the_engine



= investigate_the_engine

#char:Jackie_neutral_neutral|R
Hey crew, here's the fix: apparently there's no damage in the engine, just some weird viscous fluid on the floor and some broken cables.

#char:Jackie_neutral_angry|R
I <i>could</i> just clean up and do a quick run through...

#char:Jackie_neutral_angry|R
Or we could stop for the night to <wave>really</wave> investigate this.

{
    - g_fixedSomething == true:
    #char:Kleber_happy_sad|R
    Well, we already lost some time with fixes. I think we should just move on and I'll be tip-top sharp.

    - else:
    #char:Kleber_happy_sad|R
    Well, we don't really have time to spare. Maybe we should just keep going and I'll be extra careful with the ship.
}

#char:Barto_angry_sad|L
I'm not fond of a strange fluid leaking and us not doing anything about it.

#char:Kleber_angry_neutral|R
Well, we <i>are</i> constantly eating the strange fluids you cook, my anteater friend. So I guess this is just another day for us.

#char:Jackie_angry_sad|R
Before you two start with the usuals, I'll ask again: should we stop and investigate?

    + [YES>T_S_M>]

        #log: Investigated the noise in the engine, finding a Chamaleonic Vulture.

        #char:--
        You absolutely should. Kleber gives a long sigh. He's not in the position to argue, anyway.
        
        #char:--
        Barto is visibly relieved. He looks at Kleber menacingly.

        #char:Barto_angry_angry|L
        You'll be well served next meal, <i>my friend</i>.

        #char:--
        Repairs will take the whole night. Up in the clouds, "better safe than sorry" is a powerful mantra.

        ~ g_supplies -= 10
        ~ g_affinity_Jackie += 20
        ~ g_fixedSomething = true

        ~ g_timeChange = 2
        ~ DayChange()
        
        #char:--
        You stay up all night helping Jackie and monitoring Kleber. 
        
        #char:--
        He's definitely up now. Barto fixes everyone some soup and caipirinhas. 
        
        #char:--
        Booze is a great help for crisis. Makes you sleepy. That heavyness again...

        ~ FadeTo("black", 1, 1)

        #char:Jackie_happy_sad|L
        Captain! Look at this! {Shake("Big Face", 0.5, 1)}

        #char:--
        You curse the whole world waking up. Waiting for another explosion, you look up and find Jackie holding a bird half her size with her third arm.

        #char:Barto_angry_neutral|R
        ... are you going to tell me <i>a bird exploded</i> in our engine room? {Shake("Big Face", 0.5, 1)}

        #char:Jackie_neutral_sad|L
        Not just any bird and not exactly exploding! This is a Chamaleonic Vulture! 
        
        #char:Jackie_neutral_neutral|L
        It nests in caravan ships because of the warmth and it produces a weird oil that mirrors its surroundings.
        
        #char:Jackie_neutral_angry|L
        When it lays eggs, it makes a hell of a noise, a low grumble that sounds like an explosion. 
        
        #char:Jackie_neutral_neutral|L
        I found it this morning and unfortunately had to kill it! Its camouflage had finally wore off.

        #char:Jackie_happy_sad|L
        I'm kinda pissed it broke some parts, but it's really cool, isn't it?

        #char:--
        All you can think is that this is an absolutely ridiculous job.
        
        #char:--
        You order the crew to sleep, not before Barto takes the bird carcass and the egg, storing it into the ship's freezer.

        #char:--
        At dinner, you eat the weirdest wings of your life, with a translucent omelette. 

        ~ g_supplies += 30
        ~ g_morale += 10       

        -> EVENT_END

    + [NO>F_M>]

        #log: Let the strange noise be and later found a hole in the engine.

        #char:--
        You don't have the time to investigate further, especially not in the dead of the night, so you tell Jackie to just go ahead and repair the damages quickly.

        #char:--
        The "quick fix" takes half an hour, and then you're ready to leave.
        
        #char:--
        In the Caravan business, "better dead than late" is a powerful mantra.

        #char:--
        Jackie rises from the stairs with a worried look. Kleber takes the cockpit, while you go back to your pod to rest. 
        
        #char:--
        You finally give in to your heavy eyes.

        ~ FadeTo("black", 1, 1)

        #char:--
        Not even 20 minutes later, you feel someone poking you.

        #char:Kleber_happy_sad|L
        <wave>Excuuuuuse me</wave>, boss. Something was caught in our externals and sprayed blood all over the side of the ship.

        #char:--
        Well, when it rains, it pours, right? You notice Jackie checking the monitors, scratching her head.

        #char:Jackie_sad_neutral|R
        I don't know exactly what happened. We lost a lot of fuel overnight and I found an egg inside the engine this morning. {Emotion("Inner", "blue")}

            ++ [ANGRY>>]

                #char:--
                What happened? Jackie said she could fix the problem quickly.

                ~ g_affinity_Jackie -= 10

                #char:Jackie_angry_sad|R
                I <i>said</i> I could give a quick look or a thorough search. You chose a quick look. {Shake("Big Face", 0.5, 1)}

                    +++ [ANGRY>>]

                        #char:--
                        You scold Jackie. That's not an excuse to justify a broken tank of all things.
            
                        ~ g_affinity_Jackie -= 10

                        #char:Jackie_angry_sad|R
                        I did my best with the time I had, Captain.
                        
                        #char:Jackie_sad_sad|R
                        Let's just agree be more attentive next time. {Emotion("Inner", "blue")}

                    -> chamaleonic_leak_fixed

                    +++ [RELAX>>]

                        #char:--
                        Mistakes happen. We'll do better next time.

                        ~ g_affinity_Jackie += 5

                        #char:Jackie_neutral_neutral|R
                        I sure count on it, captain.

                    -> chamaleonic_leak_fixed

            ++ [FACEPALM>>]

                #char:--
                You ask Jackie if she can still fix the situation.

            -> chamaleonic_leak_fixed



= chamaleonic_leak_fixed

#char:Jackie_neutral_neutral|R
I already fixed the leak. That's all we can do at this point. Barto seems happy about the egg though!

#char:Barto_happy_sad|L
Nothing better than an omelette to lighten all this dourness over fuel. {Emotion("Outer", "yellow")}

#char:Kleber_neutral_neutral|R
Well, fuel is a bit important... but I guess we'll make it, fellas.

#char:--
At breakfast, you eat some bread and a transparent omelette. No one questions it.

~ g_fuel -= 20
~ g_morale -= 10

-> EVENT_END
