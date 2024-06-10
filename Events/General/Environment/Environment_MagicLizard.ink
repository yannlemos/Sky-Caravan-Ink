===E_Environment_MagicLizard===

#scope: General
#category: M2_General3
#tier: Rookie, Intermediate, Expert
#intensity: Medium
#location:Spore Heights

VAR gave_fuel = false
VAR gave_supplies = false
VAR would_sacrifice_crew = false

#char:--
Kleber calls everyone to the cockpit early in the morning.

#char:Kleber_sad_neutral|L
Ok, gang. Here we are.

#char:Kleber_sad_sad|L 
Welcome to <color=sporePurple><b>Spore Heights</b></color>. {Shake("Big Face", 0.5, 0.3)} {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")}

#char:--
You barely register Kleber's words. 

#char:--
The view of the colossal mushroom caps is mesmerizing.

#char:--
You had seen the stalks before down at Surface, but seeing their full height gives you pause.

{
    - g_family == "Miner":

        #char:--
        This reminds you of that year where one of the mushrooms collapsed.

        #char:--
        Completely wrecked miles and miles of Surface. The earthquakes were horrifying.

        #char:--
        You and your family spent months and months rescuing fellow miners and clearing debris.

    - g_family == "Scavenger":

        #char:--
        One of the biggest cities of Old Surface is underneath all these mushrooms.

        #char:--
        Some scavenging guilds have gone there. Few returned.

        #char:--
        You wonder how these mushrooms came to life, and what happened to the people of that city.

    - g_family == "Mercenary":

        #char:--
        You remember that bounty hunter who worked with your family for some time.

        #char:--
        They were thrown into a mycelium pit while very young. 
        
        #char:--
        Instead of dying, they came back chock-full of fungus in his body.

        #char:--
        Smelled like hell. 
        
        #char:--
        Great in a skirmish.
}

#char:Barto_angry_angry|R
A <b><shake>shame</shake></b> these mushrooms are not edible.

#char:Jackie_neutral_neutral|R
Quite the opposite, right? I think most of them are venomous or hallucinogenous.

#char:Kleber_surprised_sad|L
Yeah, about that— {Shake("Big Face", 1, 0.5)} {PlaySFX("LightWoosh")}

#char:Kleber_surprised_angry|L
There's a spore cloud incoming. We won't be able to go around it. It happens around here.

#char:Kleber_neutral_happy|L
Good thing all Caravan Class ships have spore filters. Even our old piece of junk.

#char:Kleber_surprised_angry|L 
...Right, Jackie? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}

#char:Jackie_happy_happy|R
Yup! {Emotion("Explosion", "ffe13b")} {PlaySFX("Hit1")}

#char:Jackie_neutral_neutral|R
...

#char:Jackie_sad_sad|R
Let's buckle up, just in case. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")}

#char:--
Everyone braces as the green cloud rushes towards the ship. {StopMusic()} 

#char:--
A few seconds after, the spores envelop the 41-Bis— {Shake("All", 1, 4)} {PlaySFX("Turbulence")}

#char:--
But nothing happens. {ScreenFlash("31BB78", 0.3)}

#char:--
The turbulence just... stops.

#char:--
Weird.

#char:--
It's not like you're complaining if things aren't hard for once.

#char:--
You turn to Kleber—

~ UniqueEffectActivate("MagicLizard")
~ PostProcess("Drunk",1)

#char:MagicLizard
Oh. {PlayMusic("MagicLizard")} {PlaySFX("LightWoosh")}

#char:MagicLizard
Hello there. I believe you are the Captain of this vessel.

#char:MagicLizard
Am I correct?

-> lizard_intro

= lizard_intro

#char:--
The lizard stares.

    + [SHOOT¬You're not chatting with a rainbow lizard. You shoot.>M_T_S>]
        
        -> lizard_shoot

    + [TALK¬Start a conversation.>>]

        -> lizard_conversation

    * (looked_for_crew) [CREW¬See what the crew thinks.>M_S_F>]

        #char:--
        You look around the cockpit—

        #char:--
        But everyone's gone! It's only you and the lizard.
         
        #char:MagicLizard
        Pay attention to me. {Shake("Stat Panel", 1, 3)} {PlaySFX("SmallDamage")} {Blink("Stat Panel", 1, -1, "white")}
        
        ~ g_morale -= g_statChangeLow
        ~ g_supplies -= g_statChangeLow
        ~ g_fuel -= g_statChangeLow

        #char:MagicLizard
        I much prefer quality conversations.

        -> lizard_intro

= lizard_conversation

    #char:--
    You confirm that you are the Captain and ask what is the lizard's name.

    #char:MagicLizard
    Unimportant. I'm a traveler, just like you.

    {
        - !looked_for_crew:

            #char:--
            You look around the cockpit to see why no one is commenting on the lizard—

            #char:--
            But everyone's gone! It's only you and the lizard.
    }

    #char:MagicLizard
    I was drawn to this ship. You seem to have dark tidings ahead of you... a <color=mafaRed><b>confrontation.</b></color><wiggle>

        + [FEAR¬Pace around the cockpit.>>]

            #char:--
            You start walking around, chills running down your spine. This could be about Silva... or worse, Marimbondo.

            #char:MagicLizard
            Fear is necessary.

        + [RELAX¬Take a deep breath and keep listening.>>]

            #char:--
            You take a deep breath and accept the lizard's words. 

            #char:MagicLizard
            What is calm,<waitfor=0.5> if not the perfect disguise.

        + [CONFUSED¬Ask what does it mean by that.>>]

            #char:--
            You ask the lizard what is this about, and what confrontation is he speaking of.

            #char:MagicLizard
            This is about you.

            #char:MagicLizard
            And whomever is in control of you.

        - #char:MagicLizard
        Answer me this, {g_name}: when the moment of confrontation comes...

        #char:MagicLizard
        ...Will you be willing to sacrifice your crew for your own goals?

        + [YES¬Yes.>G>]

            #char:--
            You nod your head. 

            ~ would_sacrifice_crew = true

            #char:MagicLizard
            I see. 

            #char:MagicLizard
            Take this on your journey. Fulfill <wiggle>your</wiggle> objectives.

            #char:MagicLizard
            Whatever the cost.

            ~ g_grana += g_granaChangeHigh

        + [NO¬No.>M_F_S>]

            #char:MagicLizard
            I see.

            ~ would_sacrifice_crew = false

            #char:MagicLizard
            Take this on your journey. Cherish your companions.

            ~ g_morale += g_statChangeHigh
            ~ g_supplies += g_statChangeHigh
            ~ g_fuel += g_statChangeHigh

    - #char:MagicLizard
    I must warn you, though.

    {
        - threwAwayTheBottle:

            #char:MagicLizard
            There is a problem that you consider solved.
            
            ~ UniqueEffectDeactivate("MagicLizard")

            #char:MagicLizard
            <color=mafaRed><b>It isn't.</b></color><wiggle>

        - else:

            #char:MagicLizard
            There is a presence in this ship older than me. <color=mafaRed><b>Stronger.</b></color><wiggle>
            
            ~ UniqueEffectDeactivate("MagicLizard")

            #char:MagicLizard
            Beware.
    }

    #char:MagicLizard
    Travel safe, caravaneer. {StopMusic()}

    -> lizard_conclusion

= lizard_conclusion

    #char:--
    You feel light-headed.

    ~ FadeTo("black", 1, 1)
    ~ PostProcess("Normal",0.5)

    #char:--
    It takes a few seconds to realize that Kleber is waving and clapping his hands in your face.

    #char:Kleber_fear_angry|L
    Captain, what the heck. You were completely out, but your eyes were fully open! {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

    #char:Barto_sad_neutral|R
    Very disquieting.

    #char:Jackie_surprised_sad|R
    We were afraid you weren't coming back. 
    
    #char:Jackie_sad_neutral|R
    Everyone was out of sorts. I was the first to wake up.

    #char:Kleber_surprised_angry|L
    Yeah, we've been tripping for like an hour. I was in a racing course! It was so vivid.

    #char:Jackie_sad_angry|R
    I was showing grandma around the 41-Bis. I could swear she was here.

    #char:Barto_neutral_angry|R
    I was...

    #char:Barto_sad_sad|R
    ...

    #char:Jackie_sad_angry|R
    Anyways, the spores really did a number on us. I guess I should have double-checked the spore filter.

        * [STERN¬Reinforce that the problem shouldn't have happened.>>]

            #char:--
            You're disappointed by Jackie for letting that slip by. It's an old ship, some equipment needs extra attention.

            //AFFINITY PASS:

            {   
                - g_affinity_Jackie <= -5:
                    #char:Jackie_sad_sad|R
                    ...Yeah. Can't say you're wrong this time. {Emotion("WaveIn", "61B2F5")} {PlaySFX("Bad1")}
            
            
                - else:
                    #char:Jackie_sad_angry|R
                    You're absolutely right, Captain... It won't happen again. {Emotion("WaveIn", "61B2F5")} {PlaySFX("Bad1")}

                    #char:Jackie_neutral_angry|R
                    Thanks for the honesty, though. I appreciate it.                
                    ~ g_affinity_Jackie += g_affinityChangeMid

            }



        * [EASYGOING¬Let it go, it was just bad luck.>>]

            #char:--
            You wave away the filter trouble. It's an old ship, things are bound to malfunction.

            #char:Jackie_sad_sad|R
            W-well, in any case, I take responsibility. Sorry everyone. {Emotion("WaveIn", "61B2F5")} {PlaySFX("Bad1")}
            
            #char:Jackie_sad_neutral|R
            I could use feedback sometimes, Captain.

            //AFFINITY PASS:

            {   
                - g_affinity_Jackie <= -5:
                    #char:Jackie_sad_neutral|R
                    Even if we're not close. That's part of being a leader too, you know?

                    #char:Jackie_sad_neutral|R
                    We expect that from you.
                
                ~ g_affinity_Jackie -= g_affinityChangeMid
            }


    - #char:Kleber_sad_angry|L
    I've been high on spore clouds before. Not voluntarily. Didn't miss it...

    #char:Kleber_happy_angry|L
    Still, at least we seem to have had light trips.
    
    #char:Kleber_neutral_angry|L
    What about you, Captain? Did you see anything?  {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}
    
    + [TALK¬Tell them about the rainbow lizard.>>]

        #char:--
        You tell them about the creature and its question.

        #char:Kleber_surprised_angry|L
        Nope. Not a light trip. Jeez.

        #char:Barto_neutral_angry|R
        Beg your pardon Captain, but... If you don't mind me asking—

        #char:Barto_sad_angry|R
        What did you answer to the lizard?

        #char:Barto_fear_neutral|R
        Did you say you were willing to sacrifice us?

        //AFFINITY PASS:
        { 
            - g_affinity_Barto <= -5:
            #char:Barto_attack_anime|R
            ...You wouldn't even <i>dare</i> say it, would you? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}
        }

            ++ [YES¬Yes.>>]

                #char:Kleber_surprised_angry|L
                ...

                #char:Jackie_surprised_angry|L
                ...

                #char:Barto_surprised_angry|R
                ...

                //AFFINITY PASS:
                { 
                    - g_affinity_Jackie <= -5:
                        #char:Jackie_sad_neutral|L
                        ...Seriously, how could you be so heartless?

                        #char:Jackie_sad_neutral|L
                        Why are you even a Captain, then? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    - else:
                        #char:Jackie_sad_angry|L
                        That's... kinda harsh, Captain. 
                        
                        #char:Jackie_sad_sad|L
                        I really didn't expect this from you. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                }

                ~ g_affinity_Jackie -= g_affinityChangeHigh 

                //AFFINITY PASS:
                { 
                    - g_affinity_Barto <= -5:
                        #char:Barto_angry_neutral|R
                        ...You are responsible for <i>our</i> lives as Captain. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                        #char:Barto_angry_neutral|R
                        Did you forget about it?

                    - else:
                        #char:Barto_sad_angry|R
                        I understand personal goals being paramount... but you are responsible for our lives as Captain.

                }

                ~ g_affinity_Barto -= g_affinityChangeHigh

                //AFFINITY PASS:
                { 
                    - g_affinity_Kleber <= -5:
                        #char:Kleber_angry_neutral|L
                        ...Ouch. Even <i>I</i> am surprised. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                        ~ g_affinity_Kleber -= g_affinityChangeHigh 

                    - else:
                        #char:Kleber_sad_sad|L
                        Eh... At least you were honest. I can respect that. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                }

                #char:--
                Silence fills the cockpit.

                ~ g_morale -= g_statChangeHigh

                #char:Kleber_sad_sad|L
                Well, now that the storm has passed and the ship is good to go... We'll need another day to reach the Champignons.

                -> pre_silva

            ++ [NO¬No.>>]

                //AFFINITY PASS:
                { 
                    - g_affinity_Jackie <= -5:
                        #char:Jackie_neutral_sad|L
                        ...At least you did that. Being Captain means being responsible for your crew, you know.


                    - else:
                        #char:Jackie_happy_angry|L
                        G-good! That's good to hear. Being Captain means being responsible for your crew, you know.

                }

                //AFFINITY PASS:
                { 
                    - g_affinity_Barto <= -5:
                        #char:Barto_angry_neutral|R
                        ...Yes, that's the least you can do.

                    - else:
                        #char:Barto_neutral_angry|R
                        It comes with the job. You've been doing your best. Count on us.
                }

                {
                    - would_sacrifice_crew:

                        #char:Kleber_surprised_neutral|L
                        Hm.

                        #char:Kleber_sad_sad|L
                        Well, now that the storm has passed... tomorrow we'll reach the Champignons.
                    
                    - else:

                        {

                            - g_affinity_Kleber <= -5:

                                #char:Kleber_angry_neutral|L
                                ...We'll see.
                        
                            - else:
                                                    
                                #char:Kleber_surprised_neutral|L
                                //It's great to hear that anyways, Cap. Beats every other superior I had. 
                                ...It's great to hear that, anyways. Beats every other superior I had.

                                #char:Kleber_angry_angry|L
                                //Including our client. Which reminds me... tomorrow we reach the Champignons, folks.
                                Including our client.
                        
                        }
                    
                        #char:Kleber_angry_angry|L
                        Which reminds me... Tomorrow we reach the Champignons, folks.

                }

                -> pre_silva

    + [LIE¬Make up something about your family.>>]

        #char:--
        You make up a story about feeling like you were back at the Crumbling Plains with your sisters.

        #char:Jackie_sad_neutral|R
        ...Oh.

        #char:Barto_sad_angry|L
        I see.

        #char:Kleber_sad_angry|R
        Hm.

        #char:Kleber_sad_sad|R
        Well, now that the storm has passed... Tomorrow we'll reach the Champignons.

        -> pre_silva

= lizard_shoot

    #char:--
    You draw your pistol and shoot in the direction of the lizard. {Blink("All", 2, -1, "White")} {Shake("All", 3, 1)} {PlaySFX("Gunshot")} {PlaySFX("SmallDamage")} {UniqueEffectActivate("41BisDamage")}
    
    ~ UniqueEffectDeactivate("MagicLizard")

    #char:--
    It flies away from the cockpit. {StopMusic()}

    #char:--
    You feel light headed.

    ~ FadeTo("black", 1, 1)

    ~ PostProcess("Normal", 0.5)

    #char:Jackie_angry_happy|R
    Cap!? <shake>What do you think you're DOING</shake>!? {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

    ~ g_affinity_Jackie -= g_affinityChangeMid

    {
        - shot_at_crew:
            
            #char:Barto_angry_angry|L
            Is there something wrong with our ship? Why do you keep shooting at it!? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}
    }
    
    #char:--
    The cabin's pressure starts to go down.

    #char:Jackie_fear_neutral|R
    Oh my...!!! {Emotion("Explosion", "FFFFFF")} {PlaySFX("StrongWoosh")}

    #char:Kleber_angry_angry|L
    <shake>Y'ALL, BUCKLE UP FOR THE EMERGENCY LANDING!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")} {PlaySFX("Turbulence")}

    ~ ScreenFlash("white", -1)

    #char:--
    Kleber steers towards a mushroom cap nearby, all of you holding on for dear life. {Blink("All", 2, -1, "White")} {Shake("All", 2, 4)} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")}

    ~ FadeTo("black", 1, 1)

    #char:Kleber_happy_sad|L
    <wave>Hooooooooooooo</wave>. Okay. We survived that, I guess. 

    #char:Barto_angry_angry|R
    <i>Barely</i>. I was already dizzy before our Captain started shooting... {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

    ~ g_affinity_Barto -= g_affinityChangeMid

    #char:Jackie_fear_neutral|R
    Yeah, I'm really confused.

    #char:Kleber_angry_happy|L
    Me too, but at least <i>we</i> didn't shoot the <wiggle>freakin'</wiggle> window of the <shake>cockpit</shake>! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

    ~ g_affinity_Kleber -= g_affinityChangeMid

    {
        - threwAwayTheBottle:
 
            #char:Jackie_sad_happy|R
            Captain, did you really throw away the bottle? Are you <b><wiggle>possessed</wiggle></b>? {Emotion("WaveOut", "ea2929")} {PlaySFX("Mistery1")}

        - else:

            #char:Barto_angry_happy|R
            I knew it: we should have thrown away the bottle. The Captain is <color=mafaRed><b><shake>possessed!</shake></b></color>{shot_at_crew: <color=mafaRed><b><wiggle>Again!!</wiggle></b></color>} {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny1")}
    }

    ~ g_morale -= g_statChangeLow

    + [ANGRY¬You're frustrated your crew is turning against you.>>]

        #char:--
        You tell them you saw a creature in the window and was trying to protect the ship.

        #char:--
        You also ask — in a rather high volume — where the heck everybody was.

        #char:Jackie_angry_sad|R
        <shake>What!?</shake> We were right here in the cockpit!

        #char:Jackie_angry_happy|R
        I was showing my grandma around the—

        #char:Jackie_surprised_angry|R
        Oh.

        #char:Kleber_surprised_sad|L
        Whoa whoa whoa, wait a second: grandma? Thing outside the window? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

        #char:Kleber_angry_angry|L
        Hey, our pupils are dilated as heck!

    + [CONFUSED¬Ask how on Skies did they not see that thing.>>]

        #char:--
        Couldn't they see that thing outside the window!? You start shooting questions at them.

        #char:Kleber_neutral_sad|L
        Whoa whoa whoa, wait a second, thing outside the window?

        #char:Kleber_angry_angry|L
        Hey, your pupils are dilated as heck!

    - #char:Kleber_sad_neutral|L
    Man, I can't belive it. This wasn't the bottle, folks.

    #char:Kleber_angry_angry|L
    Spore clouds do this. We were high as kites. Our filter didn't work. {Emotion("Spiral", "53e66b")} {PlaySFX("Funny1")}

    #char:Barto_neutral_angry|R
    And now we have a hole in the window.

    #char:Kleber_angry_angry|L
    We'll need to stop for the day. This is going to need some heavy repairing.

    #char:Jackie_sad_neutral|R
    I'll check the spore filter right away!

    #char:Barto_angry_angry|R
    Let's hope my kitchen isn't a moldy nightmare. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

    #char:--
    Everyone starts organizing for the repairs.

    #char:--
    A whole day of work passes to make sure the ship is ready to fly again.

    ~ g_moraleChange += g_statChangeLow
    ~ g_suppliesChange += g_statChangeLow

    ~ DayChange()

    ~ g_moraleChange -= g_statChangeLow
    ~ g_suppliesChange -= g_statChangeLow

    #char:Jackie_neutral_angry|L
    Well, the window is even better than before!

    #char:Jackie_angry_happy|L
    It's also much cleaner, Kleber. You're a lousy windshield wiper!

    #char:Kleber_sad_angry|R
    I know, know. Thanks, Jackie. {Emotion("Spiral", "53e66b")} {PlaySFX("Funny1")}

    #char:Barto_neutral_angry|L
    Do you see any lizards, Captain? Are you alright?

        + [FACEPALM¬Surrender to your embarassment.>>]

            #char:--
            You can't hide your embarassment. The crew at least lets out a small laugh.

        + [SAD¬Apologize profusely to the crew.>>]

            #char:--
            You tell your crew you are sorry for the mess, apologizing several times.

        + [HAPPY¬Say you are absolutely ok!>>]

            #char:--
            You tell everyone that you are good to go! Not a lizard in sight.

    - #char:--
    The lizard really didn't feel like a hallucination, though...

    #char:--
    Was it a real being? Were the spores part of it?

    #char:--
    Before you can keep theorizing, Kleber interjects.

    #char:Kleber_sad_sad|R
    Well, now that the storm has passed and the ship is good to go... We need another day to reach the Champignons.

    -> pre_silva

= pre_silva

    #char:--
    Everyone stiffens at Kleber's comment.

    #char:Barto_neutral_angry|L
    Go rest. I'll go make some strogonoff for everyone.

    #char:Barto_neutral_happy|L
    ...Without mushrooms, of course.

    -> EVENT_END
