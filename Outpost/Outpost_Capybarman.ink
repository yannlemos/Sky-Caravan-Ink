=== outpost_capybarman ===

VAR firstDialogueIsOver = false

~ temp storyDirection = -> meet_capybarman

{
    - g_lastMissionCleared == "Mafagafo" && !after_the_mafagafo_passenger:
        ~ storyDirection = -> after_the_mafagafo_passenger

    - g_lastMissionCleared == "Cachaça" && !after_the_cursed_cachaca:
        ~ storyDirection = -> after_the_cursed_cachaca

    - g_lastMissionCleared == "Octornado" && !after_grasp_of_the_octornado:
        ~ storyDirection = -> after_grasp_of_the_octornado

    - g_lastMissionCleared == "Crystals" && !after_crystals_of_bygone_times:
        ~ storyDirection = -> after_crystals_of_bygone_times

    - g_lastMissionCleared == "Mafagafo" && demo_link_to_full_game:
        ~ storyDirection = -> has_met_capybarman

    - demo_start > 0 && !demo_link_to_full_game:
        ~ storyDirection = -> demo_link_to_full_game

    - meet_capybarman > 0 && (Outpost_Jackie.meet_jackie == 0 || Outpost_Barto.meet_barto == 0 || Outpost_Kleber.meet_kleber == 0):
        ~ storyDirection = -> has_met_capybarman_hasnt_met_crew

    - meet_capybarman > 0:
        ~ storyDirection = -> has_met_capybarman
}

~ SetCurrentStitch(storyDirection)

-> storyDirection 

= meet_capybarman

#char:--
The smell of cheap beer and questionable food invades your senses.

#char:--
You walk around, disoriented.

#char:--
This is supposed to be the place...

#char:--
But why, after everything that happened, would the answer be a <i>bar</i>?

#char:Capybarman_neutral|L
Hey. {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

#char:Capybarman_neutral|L
Yeah, you.

#char:Capybarman_neutral|L
Kindly tell me your name. {EnterDialogueComponent("Input Box")}

#char:Capybarman_eyesleft|L
Hm. 

#char:Capybarman_neutral|L
What are your pronouns? 

* [HE¬He.>>]
    ~ g_pronoun = "He"

* [SHE¬She.>>]
    ~ g_pronoun = "She"

* [THEY¬They.>>]
    ~ g_pronoun = "They"

-   #char:Capybarman_neutral|L
    Seems like you're the one I'm looking for, {g_name}. 

    #char:--
    You brace yourself. Is this is an ambush?

    #char:Capybarman_neutral|L
    Chill. 

    #char:Capybarman_eyesleft|L
    I'm just a capybara. {Shake("Big Face", 0.5, 0.3)}

    #char:Capybarman_neutral|L
    And a barman, of course.

    #char:Capybarman_neutral|L
    I run this <color=green1><b>Capy-Bar</b></color>.

    #char:Capybarman_eyesleft|L
    .<waitfor=0.5>.<waitfor=0.5>.Alright. That's all you need to know for now.

    #char:Capybarman_neutral|L
    Word is you need some work. 

    #char:Capybarman_neutral|L
    I can provide that. But I'll need you to answer some questions.

    #char:Capybarman_eyesdown|L
    Reads here that you're a <color=green1><b>Surfacer</b></color>.

    #char:Capybarman_neutral|L 
    Rough start, <i>huh?</i> 

    #char:Capybarman_eyesdown|L
    Where do you come from? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

    #char:Capybarman_eyesdown|L
    Your family, you know.

    * (intro_miner_family) [MINERS¬Deep miners of red oil shards.>>]
        
        ~ g_family = "Miner"

        #char:--
        You tell him you grew up in a community of deep miners from the Crumbling Plains.
        
        #char:--
        Years of searching the depths of Surface for reserves of red oil. 
        
        #char:--
        You and your family spent weeks underground so that everywhere else kept functioning. 
        
        #char:--
        It was a hard life. Frequent casualties.

    * (intro_scavenger_family) [SCAVENGERS¬Scavengers of the Old Surface.>>]
        
        ~ g_family = "Scavenger"

        #char:--
        You tell him you grew up in a community of scavengers from the Crumbling Plains.
        
        #char:-- 
        Old Surface has colossal ruins, rich with valuables. 
        
        #char:--
        You and your family spent most of your days scavenging.
        
        #char:--
        Red oil, working machines, anything useful - sometimes quality food, with luck.

    * (intro_mercenary_family) [MERCENARIES¬Bounty Hunter mercenaries.>>]
        
        ~ g_family = "Mercenary"
    
        #char:--
        You tell him you grew up in a community of mercenaries from the Crumbling Plains.
        
        #char:--
        Years working all kinds of jobs for the communities of Surface.
        
        #char:--
        Sometimes you protected them, sometimes you had to attack. It depended on who was paying.


    -   #char:--
        Living with the constant earthquakes of Surface was miserable.

        #char:--
        Still, you loved your family and friends. 

        #char:--
        "Happiness in hardship".

        #char:--
        Your mother's words echo in your head. 

        #char:--
        You feel a chill in your stomach.

        #char:Capybarman_neutral|L
        Cute backstory. <wave>Very dramatic.</wave>

        #char:Capybarman_eyesdown|L
        Any skills acquired down there I should take note of?

        *   [ENGINEERING¬You know the basics of engineering.>>]
            
            ~ g_interest = "Engineering"

            #char:--
            Tinkering with machines can make a day go by in the blink of an eye for you. 
            
            #char:--
            You recall that day when you made a toy <>
            
            {
                - g_family == "Miner":
                    drill.

                - g_family == "Scavenger":
                    hover bike.

                - g_family == "Mercenary":
                    electric spear.
            }

            #char:--
            Your father found you playing with it and came running to you. 
            
            #char:--
            You got ready for a scolding — after all, you should have been working.

            #char:--
            "You made this?", he asked. 
            
            #char:--
            Fear couldn't hold how proud you were of the little contraption, so you said yes.

            #char:--
            "Hm. <waitfor=0.8>Pretty cool! Keep at it", he said, walking away while admiring the toy.
            
        * [PILOTING¬You've tried piloting for a bit.>>]
            
            ~ g_interest = "Piloting"

            #char:--
            The first hover bike you drove was a revelation. 
            
            #char:--
            You found it one day while hunting with your older sisters, hidden in an Old Surface ruin. 

            #char:--
            "If you die riding this thing, I'm going to kill you!", one of them screamed in the distance.

            #char:--
            You ended up so far away, you couldn't find them any more.
            
            #char:--
            It took a whole day to go back to camp. But you did, a bruised, dirty mess.

            #char:--
            Your parents hugged and pinched you at the same time. "Never do this again!", your father said.
            
            #char:--
            "Well, maybe not never, it might be useful. But you get the idea!", your mother added.

        * [FORAGING¬You've got quite the eye for foraging.>>]
            
            ~ g_interest = "Foraging"
            
            #char:--
            Surface can be barren most of the time, but there are treasures hidden all around if you can identify them.

            #char:--
            Fruits, spices, shrooms... one day you got so carried away, you found yourself in an Old Surface ruin, no sight of your camp.

            #char:--
            You survived a whole week foraging, making your own food and filtering your own water.
            
            #char:--
            Some nights were scary, but it felt like an adventure.

            #char:--
            When your family found you in your makeshift camp, they were torn between scolding and congratulating you. 
            
            #char:--
            "That was stupid! But impressive, I guess", your mother said.
            
            #char:--
            "Next time, look for weird stuff closer to camp!", your father added.

        -   #char:--
            It's one of your favorite memories.

            #char:Capybarman_neutral|L
            Quite the troublemaker, huh. 

            #char:Capybarman_eyesright|L
            I used to be a difficult cub myself.

            #char:Capybarman_neutral|L
            How did you make it to the Skies? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

            * [SMUGGLER¬You had to rely on smugglers.>>]

                #char:--
                You wish there was another choice... but smugglers are the only way upwards for poor Surfacers.

                #char:--
                Your parents got severely injured a few years back. The earthquakes got worse. 

                #char:--
                You had always known that the only way out was up.

                #char:--
                You paid a man named <color=green1><b>Marimbondo</b></color> for transport. 

                #char:--
                You wonder if you should tell the whole story.

                #char:Capybarman_neutral|L
                Don't lie to me, friend. This is a job interview. {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 1, 1)}

                #char:--
                You tell him that your arrival in the Skies was a dream come true. There's no denying it.
                
                #char:--
                But all the Grana you had still wasn't enough to pay for the trip. 
                
                #char:--
                So you owe Marimbondo.

                #char:--
                "I'll see you in a few months, Surfacer", he warned. 
                
                #char:--
                "Just a reminder: your family is your collateral", he said, before vanishing.

            -   #char:Capybarman_neutral|L
                What a <i>nice guy</i>, this Marimbondo. 

                #char:Capybarman_eyesup|L
                <wave>Doesn't have a menacing name at all.</wave> {Emotion("Spiral", "53e66b")} {PlaySFX("Funny1")}

                #char:Capybarman_eyesright|L
                Well, {g_name}, your story checks out. You're as screwed as I was told you were.

                #char:Capybarman_neutral|L
                But there's something I still don't get.

                #char:Capybarman_neutral|L
                How did an indebted Surfacer become the owner of a Caravan Class Skyship? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

                * [GAMBLER¬You had to resort to gambling.>>]

                    ~ g_ownership = "Gambler"

                    #char:--
                    You explain how hard it was to find a job in the Skies as a Surfacer. 
                    
                    #char:--
                    You acquired a bit of a gambling habit.

                    #char:--
                    One day, you played craps against a captain on leave. 

                    #char:--
                    He got cocky and bet his own ship, <color=green1><b>41-Bis</b></color>. You threw the best dice of your life.

                    #char:--
                    After a fistfight, a shootout and a daring escape, you ended up in this Skyport, his keys in hand.

                * [SURVIVOR¬You were the sole survivor of a Caravan expedition.>>]

                    ~ g_ownership = "Survivor"

                    #char:--
                    You explain how hard it was to find a job in the Skies as a Surfacer. 
                    
                    #char:--
                    You ended up a deckhand at an ill-fated expedition to uncharted clouds.

                    #char:--
                    As the crew went out to explore a floating island, you heard a bone-chilling roar and screams. 
                    
                    #char:--
                    You waited for a few hours. Then a full day.

                    #char:--
                    It became clear that you were the only one left.
                    
                    #char:--
                    You piloted the <color=green1><b>41-Bis</b></color> to the nearest Skyport. Here.

                * [APPRENTICE¬You started an apprenticeship with a veteran captain.>>]

                    ~ g_ownership = "Apprentice"

                    #char:--
                    You explain how hard it was to find a job in the Skies as a Surfacer. 
                    
                    #char:--
                    You resorted to beg on the corridors of Skyports.

                    #char:--
                    Until a ragged looking old woman asked your story and fed you a meal. 
                    
                    #char:--
                    You ended up becoming her assistant. 
                    
                    #char:--
                    Learned a lot. A true friend. 
                    
                    #char:--
                    She eventually opened up about her past - a disgraced captain. Whole crew killed, sole survivor.

                    #char:--
                    One day, you went to her place to find it completely emptied - except for the ship's key on the table. 
                    
                    #char:--
                    A gift.

                    #char:--
                    She went away, leaving a note to you.

                    #char:-- 
                    <i>"Never leave your crew behind."</i> 
                    
                    #char:--
                    That's how you got the <color=green1><b>41-Bis</b></color>.

                -   #char:--
                    It was the perfect opportunity to go to Surface and pick up your family.
                
                    #char:Capybarman_neutral|L
                    And <i>why</i> are you still here, then? {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")} {Shake("Big Face", 1, 0.7)}

                    * [SMUGGLER¬You got threatened by Marimbondo.>>]

                        #char:--
                        You explain how one day you woke up to Marimbondo at your cabin, two goons by his side.

                        #char:--
                        "Hello, <>

                        {
                            - g_family == "Miner":
                                little cave rat."

                            - g_family == "Scavenger":
                                little ruin rat."

                            - g_family == "Mercenary":
                                little fighting rat."
                        }
                    
                        #char:--
                        "Now that your living situation has... <wave>upgraded</wave>, your debt needs to be adjusted", he said.

                        #char:--
                        "I want <color=green1><b>{g_debt} G$</b></color>. You have <color=green1><b>4 months</b></color>."
                        
                        #char:--
                        "Fail, and I'll pay your folks a visit."
                        
                        #char:--
                        "If you dare try going to Surface, I'll know."

                        #char:--
                        The next thing you remember is getting up from the floor with the strongest headache you've ever had.

                        #char:--
                        That was a week ago. 
                        
                        #char:--    
                        Since then, you asked around and found out that there was good pay working for <color=orange2><b>the capybaras</b></color>.

                        -   #char:Capybarman_neutral|L
                            Rough twist there, friend. {Emotion("Spiral", "0a4de8")} {PlaySFX("Bad1")}

                            #char:Capybarman_neutral|L
                            Still, you've come to the right place. We serve the best coxinhas in the Skyways. 

                            #char:Capybarman_neutral|L
                            But that's not all. {Shake("Big Face", 0.5, 0.3)}

                            #char:Capybarman_neutral|L
                            This is a shell company for the <color=green1><b>C.C.A., the Capybara Caravaneer's Association</b></color>.

                            #char:Capybarman_eyesright|L
                            Most trusted deliveries in all Skies.

                            #char:Capybarman_neutral|L
                            Only 45% death rate for deliverers. <wave>An industry record.</wave> {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                            * [ANGRY¬You can't believe he didn't say that earlier.>>]

                                #char:--
                                You were kind of on board, until the last few sentences.

                                #char:--
                                <shake>45% death rate?</shake> Capybara deliveries?
                                
                                #char:--
                                You throw some expletives around, bang your hand on the counter.

                                #char:Capybarman_neutral|L
                                <shake>Don't berate service workers</shake>, friend. Not good for <i>your</i> health. {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Hit1")}

                                #char:Capybarman_neutral|L
                                I'll say it again: just <i>chill</i>.

                                #char:Capybarman_eyesup|L
                                Anyways. You are one of us now. Congratulations. Come sign some papers.

                            * [CONFUSED¬That's way too much information for you to process.>>]

                                #char:--
                                <shake>45% death rate?!</shake> Capybara deliveries? And <i>what the hell</i> is a coxinha? Your mind races. 

                                #char:Capybarman_neutral|L
                                Friend? You've been staring directly at me. <waitfor=1.0> For some time.

                                #char:Capybarman_neutral|L
                                I'm uncomfortable.

                                #char:Capybarman_eyesup|L
                                Anyways. You are one of us now. Congratulations. Come sign some papers.

                            * [FEAR¬That doesn't sound safe. At all.>>]

                                #char:--
                                Your stomach freezes. <shake>45% death rate?</shake>

                                #char:--
                                You ask for the bathroom. You need to gather yourself for a bit. Maybe puke.

                                #char:Capybarman_neutral|L
                                Can't let you go the bathroom. You might run away.

                                #char:Capybarman_eyesup|L
                                Anyways. You are one of us now. Congratulations. Come sign some papers.

                            -   #char:Capybarman_neutral|L
                                I'm one of the C.C.A.'s representatives. We need captains. And ships.

                                #char:Capybarman_neutral|L
                                It's getting harder to hire people these days.

                                #char:--
                                You wonder why.

                                #char:Capybarman_neutral|L
                                You'll be a Sky Caravaneer. 

                                #char:Capybarman_eyesleft|L
                                You make deliveries, we pay you. One delivery a month.

                                #char:Capybarman_neutral|L
                                Make enough deliveries and you can pay your scary friend.

                                #char:--
                                The death rate is still ringing in your head, but this might actually be the best way to pay off your debt. 

                                #char:Capybarman_neutral|L
                                For rookies like you, a delivery can go from <color=green1><b>{g_reward_M1} G$</b></color> to <color=green1><b>{g_reward_M4} G$</b></color>.

                                #char:Capybarman_neutral|L
                                That is the gross pay, though. You still have to take some caravan expenses into account.

                                #char:Capybarman_eyesdown|L
                                And if you damage the cargo or mess up too bad... your ship is collateral from the moment you sign with us.

                                #char:Capybarman_neutral|L
                                Anyways. Just try to make the deliveries on time.

                                #char:Capybarman_eyesright|L 
                                There are consequences if you don't.

                                #char:--
                                <i>Like what?</i> Are you gonna get beaten up by a bunch of capybaras or something?

                                #char:Capybarman_eyesup|L
                                Friend, what is wrong with you. We're peaceful. {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

                                #char:Capybarman_neutral|L
                                If you're late, you get a deduction from your pay. <color=green1><b>15%</b></color>.

                                #char:--
                                Seems reasonable. You have four months, if you could make four successful deliveries...

                                #char:Capybarman_eyesdown|L
                                You may have a ship, but I wouldn't call you a captain. Not <i>yet</i>.

                                #char:Capybarman_neutral|L
                                You could use training. Do you want a <color=green1><b>tutorial</b></color> on how caravaneering works? 

                                    * [YES¬Start tutorial.>>]
                                    -> tutorial

                                    * [NO¬Skip tutorial.>>]

                                    #char:Capybarman_eyesdown|L
                                    Hm. If you say so. 

                                    -> meet_capybarman_end



= meet_capybarman_end

{
    - tutorial == 0:

        #char:Capybarman_neutral|L
        Your ship is ready to fly. {EnterDialogueComponent("Grana Counter")} {EnterDialogueComponent("Stat Panel")}

        {
            - g_morale == 0:
                ~ g_morale = 80
        }

        {
            - g_supplies == 0:
                ~ g_supplies = 80
        }

        {
            - g_fuel == 0:
                ~ g_fuel = 80
        }

        {
            - g_grana == 0:
                ~ g_grana = 500
        }

        #char:Capybarman_neutral|L
        You'll start with everything at <color=green1><b>80% capacity</b></color>.

        #char:Capybarman_eyesleft|L
        A courtesy.
        
        #char:Capybarman_neutral|L
        Don't get too used to it. {ExitDialogueComponent("Grana Counter")} {ExitDialogueComponent("Stat Panel")}
}

#char:Capybarman_neutral|L
You won't be able to fly your caravan on long trips alone. A crew has been assigned to you.

#char:Capybarman_eyesright|L
An engineer, a pilot and a cook. They're waiting for you here at the bar.

{ 
    - g_interest == "Piloting":
        #char:--
        Some help could be good, yes. Although you know a thing or two about piloting, you can barely manage to do it alone.
       
        #char:--
        Still... You'll be responsible for other people's <i>lives</i>?

    - else:
        #char:--
        You can barely pilot the ship alone, but still...

        #char:--
        You'll be responsible for other people's <i>lives</i>?
}

#char:Capybarman_eyesleft|L
Go talk to them. Their lives depend on you now.

#char:--
That's just great to hear.

#char:Capybarman_eyesright|L
I'd advise checking the <color=green1><b>Caravan Manager</b></color> too. It's the computer at my side.

#char:Capybarman_neutral|L
You can manage your ship's resources there.

#char:Capybarman_neutral|L
Doesn't hurt to be cautious. Just don't overspend.

#char:Capybarman_eyesdown|L
When you're done, come talk to me, Captain {g_name}. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} {UnlockAchievement("LICENSED_CARAVANEER")}

#char:Capybarman_neutral|L
I have a delivery ready for you. 

~ firstDialogueIsOver = true

-> END



= tutorial
#char:Capybarman_neutral|L

{EnterDialogueComponent("Day Counter")}

#char:Capybarman_neutral|L
You monitor your ship through panels.

#char:Capybarman_neutral|L
You'll have to complete the delivery within a certain number of <color=green1><b>Days</b></color>.

#char:Capybarman_eyesdown|L
Be late and we'll take 15% off your pay, like I said before.

{EnterDialogueComponent("Grana Counter")}

#char:Capybarman_eyesup|L
You can see your account balance of <color=green1><b>Grana</b></color> up there.

{
    - g_grana == 0:
        ~ g_grana = g_initialGrana
}

#char:Capybarman_neutral|L
It's updated constantly with every transaction. 

#char:Capybarman_eyesleft|L
The C.C.A. is a dilligent company.

#char:Capybarman_neutral|L
Finish a delivery, get the Grana. Simple enough.

#char:Capybarman_eyesright|L
Any money you come across during the delivery is yours to keep. <waitfor=0.8>It's yours to lose, too.

{EnterDialogueComponent("Stat Panel")}

#char:Capybarman_eyesup|L
As the Captain, what you need to pay the most attention to is your <color=green1><b>Status Panel</b></color>.

#char:Capybarman_neutral|L
It displays the current amount of <color=green1><b>Morale</b></color>, <color=green1><b>Supplies</b></color> and <color=green1><b>Fuel</b></color> in your Skyship.

// TODO caso o player ja tiver feito o primeiro diálogo, evitar que o tutorial se torne um exploit que reseta seus resources

{
    - g_morale == 0:
        ~ g_morale = 80
}

{
    - g_supplies == 0:
        ~ g_supplies = 80
}

{
    - g_fuel == 0:
        ~ g_fuel = 80
}

#char:Capybarman_neutral|L
You'll start with everything at <color=green1><b>80% capacity</b></color>.

#char:Capybarman_eyesleft|L
A courtesy. <waitfor=0.5>Don't get too used to it.

#char:Capybarman_neutral|L
Every day, your stats will <color=green1><b>deplete slightly</b></color>. Traveling the Skyways puts pressure in the ship and the crew.

#char:Capybarman_eyesup|L
Your choices as the Captain can also affect these resources. <waitfor=0.5>For better or worse.

#char:Capybarman_neutral|L
Reach 0 in any of them and the ship goes down. 

#char:Capybarman_neutral|L
You must be wondering how we measure the crew's Morale with a computer. 

#char:Capybarman_eyesright|L
That's proprietary information. Stop wondering that.

#char:Capybarman_eyesup|L
If a choice directly affects your ship, a warning will be displayed. {WarnAllStats()}

#char:Capybarman_neutral|L
The effect may be positive or negative. Take chances, but be mindful of your resources.

#char:Capybarman_eyesdown|L
Mutiny, hunger and freefall are common deaths for caravaneers. Don't be a statistic.  {UnwarnAllStats()}

#char:Capybarman_neutral|L
Last thing: the <color="orange"><b>orange button</b></color> skips to the next choice. In case you're in a hurry. {ExitDialogueComponent("Day Counter")} {ExitDialogueComponent("Stat Panel")} {ExitDialogueComponent("Grana Counter")}

#char:Capybarman_neutral|L
That's about it. Want me to repeat the tutorial?

+[YES¬Repeat the tutorial.>>]
-> tutorial

+[NO¬Finish the tutorial.>>]

{
    - outpost_capybarman == 1 :
        -> meet_capybarman_end
    - outpost_capybarman > 1 :
    #char:Capybarman_neutral|L
    Hmpf.
        -> END
}



= has_met_capybarman_hasnt_met_crew

#char:Capybarman_neutral|L
You haven't met your whole crew yet. 

#char:Capybarman_eyesright|L
They're around the bar. Don't be rude.

-> END



= demo_link_to_full_game

#char:Capybarman_neutral|L
Hey.

#char:Capybarman_eyesdown|L
Sorry to bother you, but I just realized your caravan license is incomplete.

#char:Capybarman_eyesup|L
You were given a provisory one. A... demo, if you will.

#char:Capybarman_neutral|L
But it's not that big of a problem. I'll just ask you a few questions.

#char:Capybarman_neutral|L
First things first: I know you're from the Surface, but can you tell me more?

#char:Capybarman_neutral|L
Where exactly you're from, your family, you know.

    * (intro_miner_demo) [MINERS¬Mineradores de jazidas de petróleo vermelho.>>]
        
        ~ g_family = "Miner"

        #char:--
        You tell him you grew up in a community of deep miners from the Crumbling Plains.
        //Você conta que cresceu em uma comunidade de mineradores das Planícies Quebradas.
        
        #char:--
        Years of searching the depths of Surface for reserves of red oil. 
        //Passou muitos anos nos buracos mais profundos da Superfície à procura de reservas de petróleo vermelho.
        
        #char:--
        You and your family spent weeks underground so that everywhere else kept functioning. 
        //Você e sua família passavam semanas embaixo da terra para que tudo acima dela funcionasse propriamente.
        
        #char:--
        It was a hard life. Frequent casualties.
        //Uma vida difícil. Inúmeras baixas.

    * (intro_scavenger_demo) [SCAVENGERS¬Catadores da Antiga Superfície.>>]
        
        ~ g_family = "Scavenger"

        #char:--
        You tell him you grew up in a community of scavengers from the Crumbling Plains.
        //Você conta que cresceu em uma comunidade de catadores das Planícies Quebradas.
        
        #char:-- 
        Old Surface has colossal ruins, rich with valuables. 
        //A Antiga Superfície possui imensas ruínas, ricas em preciosidades.
        
        #char:--
        You and your family spent most of your days scavenging.
        //Você e sua família passavam grande parte dos dias catando.
        
        #char:--
        Red oil, working machines, anything useful - sometimes quality food, with luck.
        //Petróleo vermelho, máquinas não destruídas, qualquer coisa de útil - com sorte, comida de qualidade. 

    * (intro_mercenary_demo) [MERCENARIES¬Caçadores de recompensas.>>]
        
        ~ g_family = "Mercenary"
    
        #char:--
        You tell him you grew up in a community of mercenaries from the Crumbling Plains.
        //Você conta que cresceu em uma comunidade de mercenários das Planícies Quebradas.
        
        #char:--
        Years working all kinds of jobs for the communities of Surface.
        //Anos prestando serviço para inúmeras comunidades da Superfície.
        
        #char:--
        Sometimes you protected them, sometimes you had to attack. It depended on who was paying.
        //Algumas vezes defendendo, outras atacando. Tudo dependia de quem pagava mais.

    -   #char:Capybarman_neutral|L
        Cute backstory. <wave>Very dramatic.</wave>
        //Linda história. <wave>Bem dramática.</wave>

        #char:Capybarman_eyesdown|L
        Any skills acquired down there I should take note of?
        //Alguma habilidade útil que você tenha conseguido lá embaixo?

        * [ENGINEERING¬You know the basics of engineering.>>]
            
            ~ g_interest = "Engineering"

            #char:--
            Tinkering with machines can make a day go by in the blink of an eye for you. 
            
            #char:--
            You recall that day when you made a toy <>
            
            {
                - g_family == "Miner":
                    drill.

                - g_family == "Scavenger":
                    hover bike.

                - g_family == "Mercenary":
                    electric spear.
            }

            #char:--
            Your father found you playing with it and came running to you. 
            
            #char:--
            You got ready for a scolding — after all, you should have been working.

            #char:--
            "You made this?", he asked. 
            
            #char:--
            Fear couldn't hold how proud you were of the little contraption, so you said yes.

            #char:--
            "Hm. <waitfor=0.8>Pretty cool! Keep at it", he said, walking away while admiring the toy.
            
        * [PILOTING¬You've tried piloting for a bit.>>]
            
            ~ g_interest = "Piloting"

            #char:--
            The first hover bike you drove was a revelation. 
            
            #char:--
            You found it one day while hunting with your older sisters, hidden in an Old Surface ruin. 

            #char:--
            "If you die riding this thing, I'm going to kill you!", one of them screamed in the distance.

            #char:--
            You ended up so far away, you couldn't find them any more.
            
            #char:--
            It took a whole day to go back to camp. But you did, a bruised, dirty mess.

            #char:--
            Your parents hugged and pinched you at the same time. "Never do this again!", your father said.
            
            #char:--
            "Well, maybe not never, it might be useful. But you get the idea!", your mother added.

        * [FORAGING¬You've got quite the eye for foraging.>>]
            
            ~ g_interest = "Foraging"
            
            #char:--
            Surface can be barren most of the time, but there are treasures hidden all around if you can identify them.

            #char:--
            Fruits, spices, shrooms... one day you got so carried away, you found yourself in an Old Surface ruin, no sight of your camp.

            #char:--
            You survived a whole week foraging, making your own food and filtering your own water.
            
            #char:--
            Some nights were scary, but it felt like an adventure.

            #char:--
            When your family found you in your makeshift camp, they were torn between scolding and congratulating you. 
            
            #char:--
            "That was stupid! But impressive, I guess", your mother said.
            
            #char:--
            "Next time, look for weird stuff closer to camp!", your father added.

            -   #char:Capybarman_neutral|L
                Quite the troublemaker, huh. 

                #char:Capybarman_eyesright|L
                I used to be a difficult cub myself.

                #char:Capybarman_neutral|L
                But there's something I still don't get.

                #char:Capybarman_neutral|L
                How did an indebted Surfacer become the owner of a Caravan Class Skyship? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

                * [GAMBLER¬You had to resort to gambling.>>]

                    ~ g_ownership = "Gambler"

                    #char:--
                    You explain how hard it was to find a job in the Skies as a Surfacer. 
                    
                    #char:--
                    You acquired a bit of a gambling habit.

                    #char:--
                    One day, you played craps against a captain on leave. 

                    #char:--
                    He got cocky and bet his own ship, <color=green1><b>41-Bis</b></color>. You threw the best dice of your life.

                    #char:--
                    After a fistfight, a shootout and a daring escape, you ended up in this Skyport, his keys in hand.

                * [SURVIVOR¬You were the sole survivor of a Caravan expedition.>>]

                    ~ g_ownership = "Survivor"

                    #char:--
                    You explain how hard it was to find a job in the Skies as a Surfacer. 
                    
                    #char:--
                    You ended up a deckhand at an ill-fated expedition to uncharted clouds.

                    #char:--
                    As the crew went out to explore a floating island, you heard a bone-chilling roar and screams. 
                    
                    #char:--
                    You waited for a few hours. Then a full day.

                    #char:--
                    It became clear that you were the only one left.
                    
                    #char:--
                    You piloted the <color=green1><b>41-Bis</b></color> to the nearest Skyport. Here.

                * [APPRENTICE¬You started an apprenticeship with a veteran captain.>>]

                    ~ g_ownership = "Apprentice"

                    #char:--
                    You explain how hard it was to find a job in the Skies as a Surfacer. 
                    
                    #char:--
                    You resorted to beg on the corridors of Skyports.

                    #char:--
                    Until a ragged looking old woman asked your story and fed you a meal. 
                    
                    #char:--
                    You ended up becoming her assistant. 
                    
                    #char:--
                    Learned a lot. A true friend. 
                    
                    #char:--
                    She eventually opened up about her past - a disgraced captain. Whole crew killed, sole survivor.

                    #char:--
                    One day, you went to her place to find it completely emptied - except for the ship's key on the table. 
                    
                    #char:--
                    A gift.

                    #char:--
                    She went away, leaving a note to you.

                    #char:-- 
                    <i>"Never leave your crew behind."</i> 
                    
                    #char:--
                    That's how you got the <color=green1><b>41-Bis</b></color>.

                    -   #char:Capybarman_neutral|L
                        Got it. Well, that just about covers the info I needed from you.

                        #char:Capybarman_neutral|L
                        You're free to live the full caravan experience now. Have <bounce>fun</bounce>!

                        -> END



= has_met_capybarman

#char:Capybarman_neutral|L
Ready to fly?

    + [YES¬Start a delivery.>>]

        {
            - g_morale >= 70 && g_fuel >= 70 && g_supplies >= 70:
                #char:Capybarman_neutral|L
                Here you go.

                {ChangeScreen("OutpostSelect", 1, 1)}

            -> END

            - else:

                #char:Capybarman_neutral|L
                Wait a minute.

                #char:Capybarman_eyesdown|L
                What do you think you're doing, caravaneer? Trying to get yourself killed? {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Hit1")}

                #char:Capybarman_neutral|L
                You can't fly without enough resources.

                #char:Capybarman_neutral|L
                They all need to be at <color=green1><b>70%</b></color> capacity, at least.

                #char:Capybarman_neutral|L
                C.C.A. rules. We want to lower that death rate, you know.

                #char:Capybarman_neutral|L
                Go check the Caravan Manager.

                //{ChangeScreen("CaravanManager", 1, 1)} - change screen n tá funcionando, então deixei comentado. Tá funcionando bem assim, pq ele te prende do mesmo jeito te pedindo pra ir pro manager, só n te joga pra tela em si.

            -> END
        }


    + [NO¬Stay in the bar.>>]
        #char:Capybarman_eyesleft|L
        Hmpf.
        
        -> END

    + [QUESTION¬Talk about something else.>>]
        #char:Capybarman_neutral|L
        Sure, not like there's much else to do. Shoot.

        ++ [CONFUSED¬Repeat the tutorial.>>]
            #char:Capybarman_neutral|L
            Want me to repeat the tutorial?

                +++ [YES¬Repeat the tutorial.>>]
                -> tutorial

                +++ [NO¬Don't repeat the tutorial.>>]
                    #char:Capybarman_eyesright|L
                    Fine, then. Suit yourself.

                -> END
        
        ++ {E_Mission_Rookie_TheMafagafoPassenger} [TALK¬Chat with the Capybarman.>>]
        
            -> capybarman_lines

        ++ (tried_to_pet) [PET¬Pet the Capybarman.>>]
            #char:--
            You extend your hand to pet the capybarman.

            {
                - g_affinity_Capybarman >= 100:
                    #char:Capybarman_eyesleft|L
                    ......

                    #char:Capybarman_shy|L
                    Alright. Fine. Just this once.

                    #char:--
                    You pat the fur on his head. It's a bit greasy, but still soft.

                    #char:Capybarman_shy|L
                    Got it out of your system? Good. Get back to work, then.

                - g_affinity_Capybarman >= 50:
                    #char:Capybarman_eyesleft|L
                    You really don't give up, do you?

                    #char:Capybarman_eyesright|L
                    Go bother someone else. I have a reputation to maintain. {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Hit1")}

                - else:
                    {
                        - tried_to_pet > 1:
                            #char:Capybarman_eyesdown|L
                            I know capybaras have a reputation for always being chill.

                            #char:Capybarman_eyesup|L
                            But keep trying and you'll find out that's far from the truth.

                        - else:
                            #char:Capybarman_eyesup|L
                            <i>Friend</i>. What do you think you're doing?

                            #char:Capybarman_eyesup|L
                            Do I look like someone's pet?

                            #char:Capybarman_shy|L
                            ...Don't try that again.  {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Hit1")}
                    }

            }

        -> END



= capybarman_lines

{
    - after_crystals_of_bygone_times:
        {shuffle:
            -
                #char:Capybarman_neutral|L
                I'm not sure I want to ask what those stains on your ship are.

                #char:Capybarman_eyesleft|L
                It seems like something puked on it.

                #char:Capybarman_eyesdown|L
                But just so you know, mantaining the 41-Bis' condition is on you.

            -
                #char:Capybarman_neutral|L
                Four deliveries, huh. Gotta say, I wasn't expecting you to come this far.

                #char:Capybarman_eyesleft|L
                The other managers were more optimistic than me. I wanted to see what their talk was about.

                #char:Capybarman_eyesdown|L
                And you know what? I'm glad I got to see it.

                #char:Capybarman_neutral|L
                Don't die out there, kid. Consider that an order from your boss.
        }

    - after_grasp_of_the_octornado:
        {shuffle:
            -
                #char:Capybarman_neutral|L
                How was the Refinery? Heard it was Octornado season again.

                #char:Capybarman_neutral|L
                You know, not many caravaneers come back with a story from that place.

                #char:Capybarman_neutral|L
                In fact, most don't come back at all.

                #char:Capybarman_neutral|L
                You're part of a lucky few.

            -
                #char:Capybarman_eyesup|L
                Friend. Is there something wrong with your cook?

                #char:Capybarman_eyesdown|L
                He asked me what I'd recommend for lunch today. I gave him some seafood suggestions.

                #char:Capybarman_eyesright|L
                He denied like I was offering him poison... Then said "just water, please".
        }

    - after_the_cursed_cachaca:
        {shuffle:

            -
                #char:Capybarman_neutral|L
                What's that? Are you asking how I can be in multiple Capy-Bars at once?

                #char:Capybarman_neutral|L
                ...

                #char:Capybarman_eyesup|L
                Did you hit your head? Just because we're all capybaras doesn't mean we're the same person. {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Hit1")}

                #char:Capybarman_eyesdown|L
                It's just that... well, the C.C.A. started as a family business, a few decades ago.

                #char:Capybarman_eyesleft|L
                So I guess you could say most Capybarmen are extended family, in a way. But enough about that.

            -
                #char:Capybarman_eyesup|L
                Can you <b>please</b> tell your engineer to stop trying to give me headpats?

                #char:Capybarman_eyesleft|L
                What does she think I am, some mascot!? {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Hit1")}
        }

    - after_the_mafagafo_passenger:
        {shuffle:
            -
                #char:Capybarman_neutral|L
                Look, friend, I know your pilot likes Sertanejo. I enjoy it from time to time, too.
                
                #char:Capybarman_eyesdown|L
                Now, I don't judge anyone's taste in music.

                #char:Capybarman_eyesup|L
                But does he really need to play <i>the same song</i> 20 times in our jukebox!? {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Hit1")}

            -
                #char:Capybarman_neutral|L
                Hope you enjoyed the Aquarela Festival while you had the chance.

                #char:Capybarman_eyesright|L
                Y'know, eat, drink and be merry.

                #char:Capybarman_eyesdown|L
                You'd be surprised how many locals come here for a meal during the festivities.
        }

    - else:
        {shuffle:
            -
                #char:Capybarman_neutral|L
                Would you like a snack? They're mostly fresh.
            
                #char:Capybarman_eyesup|L
                No? Then how about a new delivery instead?

            -
                #char:Capybarman_eyesdown|L
                If you want to use the bathroom, you'd better go on your ship.

                #char:Capybarman_eyesup|L
                Some idiot clogged the toilet.

                #char:Capybarman_eyesdown|L
                ...<waitfor=0.5>A week ago.
        }
}

-> END



// TO DO: Rewrite os stitches abaixo (diálogos pós cada mission):
= after_the_mafagafo_passenger

#char:Capybarman_neutral|L
Well, well. Look who survived the first delivery.

{
    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_loop:
        #char:Capybarman_eyesleft|L
        Heard you made quite a mess in the Aquarela Marketplace.

        {
            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
                #char:Capybarman_eyesdown|L
                At least you managed to deliver the full cargo.

                #char:Capybarman_neutral|L
                So despite the trouble, Rosana is mostly happy.

                ~ g_affinity_Capybarman += 10

            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_ran_away:
                #char:Capybarman_eyesdown|L
                Don't make a habit out of this. Reflects poorly on our name. {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.7)} {PlaySFX("Hit1")}
        }

    - else:
        #char:Capybarman_neutral|L
        Glad you got to deliver the cargo in full. Seems like we can trust you, I guess.

        ~ g_affinity_Capybarman += 20
}

{
    - g_time > 0:
        {
            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_loop:
                {
                    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
                        #char:Capybarman_neutral|L
                        You did it on time, too. That means you keep the full reward.

                    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_ran_away:
                        #char:Capybarman_eyesleft|L
                        And on top of that, you lost one of the creatures. You better pick up your slack.
                }

            - else:
                #char:Capybarman_neutral|L
                Didn't think you'd do it on time, too. We expect good things from you, kid.
        }
}

#char:Capybarman_neutral|L
...Okay, friend, we <i>really</i> need to do something about that stare of yours. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

#char:Capybarman_neutral|L
Is there something you wanna ask?

+ [ROSANA¬Ask about Rosana's use of the C.C.A. services.>>]
    #char:--
    You ask about Rosana. Does the C.C.A. bring her eggs often?

    #char:Capybarman_eyesleft|L
    Yeah, we do. A lot of merchants in the Aquarela Marketplace use our services.

    #char:Capybarman_eyesup|L
    It's usually where we send inexperienced crews first.

    {
        - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
            #char:Capybarman_eyesright|L
            If not the eggs, you'd have delivered machine parts or clothes instead.

            #char:Capybarman_eyesdown|L
            Who knows, maybe you still can if Rosana recommends you to her friends.

            #char:Capybarman_neutral|L
            Even if you can't do it, someone else can. The C.C.A. makes a profit in the end.

        - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_ran_away:
            #char:Capybarman_eyesdown|L
            It's a good thing, too, since they can't mess things up that much.

            #char:Capybarman_eyesright|L
            But it's a good way to test who's going to be part of that 45% statistic.

            #char:Capybarman_eyesdown|L
            That's why I told you to pick up the slack. It's for your own sake too.
    }

+ {- E_Mission_Rookie_TheMafagafoPassenger.Rosana_explanations && E_Mission_Rookie_TheMafagafoPassenger.mafagafo_relax} [SHIP¬Ask about the heat in the 41-Bis' cargo hold.>>]
    #char:--
    You ask about your ship. Apparently one of the eggs hatched because of the heat in the cargo hold.

    #char:Capybarman_eyesdown|L
    Ah, yes. That makes sense. The 41-Bis is a bit of a... relic. Let's put it that way.

    #char:Capybarman_eyesleft|L
    So much, actually, they don't even make "proper" parts for it anymore.

    #char:Capybarman_eyesleft|L
    Your engineer should tell you as much. All repairs have to be improvised.

    #char:Capybarman_eyesdown|L
    Which is how you ended up in a situation like that in the first place.

    #char:Capybarman_eyesleft|L
    And new ships aren't easy to buy either. Take months to get ready.

    #char:Capybarman_eyesright|L
    Not because of money or technical issues, our suppliers just... really love making us sign documents, I guess.

    #char:Capybarman_eyesup|L
    Trust me, the less you know, the better.

+ [CARGO¬Ask if it's normal to deliver something like animal eggs.>>]
    #char:--
    You ask about the eggs. Seems like an unusual cargo for a first delivery.

    #char:Capybarman_eyesup|L
    If <i>that</i> looks unusual for you, you better get ready for the next ones.

    #char:Capybarman_eyesleft|L
    You know what our old company motto was? "Deliver. Don't die. And don't ask why."

    #char:Capybarman_eyesdown|L
    Turns out not being selective is how this company grew so much.

    #char:Capybarman_neutral|L
    Word of advice, kid: pay attention to that motto.

-   #char:Capybarman_neutral|L
    ...Anyhow, I should have your next job ready soon.

    #char:Capybarman_eyesleft|L
    I'll just get the folder. Maybe talk to your crew in the meantime.

    -> END



= after_the_cursed_cachaca

#char:Capybarman_neutral|L
Lemme guess: you're the cause of the ruckus that happened near Champignons?

#char:Capybarman_eyesleft|L
Fill me in. What happened? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

+ (capybarman_silva) [SILVA¬Tell him about Silva threatening your pilot.>>]
    #char:--
    You tell him about Silva <>

    {
        - E_Mission_Rookie_TheCursedCachaca.kleber_stays_on_the_ship:
            calling Kleber out of the ship <>

        - else:
            threatening your crew <>
    }

    because of a gambling debt.

    {
        - E_Mission_Rookie_TheCursedCachaca.ending_bottle_breaking:
            #char:--
            You also mention how there was a commotion that broke part of the cargo.
    }

    #char:Capybarman_eyesdown|L
    I see. So it was personal, then?

    #char:Capybarman_neutral|L
    That makes things a bit simpler. If it was cargo-related, not so much.

    #char:Capybarman_neutral|L
    If Silva hurt four C.C.A. employees over a petty grudge, that's bad for <i>his business</i>.

    #char:Capybarman_eyesright|L
    After all... the cargo was broken <i>after you delivered it, right</i>?

    #char:Capybarman_neutral|L
    Meaning we're not responsible and he can't demand any compensation from you. Or us.

    {
        - paidTheDebt == true:
            #char:--
            You tell him that the gambling debt was settled by you.

            #char:Capybarman_neutral|L
            Perfect. Then he's got no reason to keep going after said four C.C.A. employees.

        - else:
            #char:Capybarman_eyesdown|L
            Silva might be a local... businessman, but trust me:

            #char:Capybarman_eyesup|L
            <b>We've been around longer.</b>
    }

+ [CARGO¬Tell him about the black cargo Silva gave you.>>]
    #char:--
    You tell him about the cursed cachaça and how <>

    {
        - cursedByTheBottle == "Captain":
            you <>

        - cursedByTheBottle == "Barto":
            your cook <>

        - cursedByTheBottle == "Jackie":
            your engineer <>

        - cursedByTheBottle == "Kleber":
            your pilot <>
    }

    fell victim to it.

    {
        - threwAwayTheBottle == true:
            #char:--
            You conveniently leave out that part when you tried to throw it out of the ship.
    }

    #char:Capybarman_eyesdown|L
    Hmm. Famous case of black cargo, then.

    #char:Capybarman_eyesleft|L
    The job should have been assigned to a more experienced caravan. And for twice as much Grana.

    #char:Capybarman_eyesright|L
    Sadly, there's no going back now.

    #char:Capybarman_eyesleft|L
    C.C.A. rules say that the Grana has to be given to the caravaneers who made the delivery.

    #char:Capybarman_eyesup|L
    And I don't think you'd want to go near Champignons any time soon.

    #char:--
    That's it!? How did the bottle even get to C.C.A.'s warehouse without people going mad?

    #char:Capybarman_eyesdown|L
    Beats me, kid. Guess we've developed a resistence to cursed cachaça. You know, because we're barmen and all.

    #char:Capybarman_eyesup|L
    ...That was a joke.

-   #char:Capybarman_neutral|L
    Don't worry, though, Silva knows better than to come in here guns blazing.

    #char:Capybarman_eyesdown|L
    Let's just say the C.C.A. and him are... occasional trading partners.

    #char:Capybarman_eyesdown|L
    That said, better not tempt fate if you can, yes?

    #char:Capybarman_eyesdown|L
    There's nothing we can do out there to prevent him from turning y'all into holed cheese.

    #char:Capybarman_eyesdown|L
    And try not to make a fuss about black cargo if it happens again.

    #char:Capybarman_eyesright|L
    Remember: "Deliver. Don't die. And don't ask why."

-> END



= after_grasp_of_the_octornado

{
    - E_Ship_DistressCall.distress_investigate:
        #char:Capybarman_neutral|L
        Thanks for answering that caravan's distress call.

        #char:Capybarman_eyesdown|L
        I haven't seen an engine that busted in almost twenty years.

    - else:
        #char:Capybarman_neutral|L
        Oh, hey. We had another caravan breaking down nearby recently. They sent out a distress call.

        #char:Capybarman_eyesdown|L
        Some problem with their engine. Got tricked by a fuel merchant.
}

#char:Capybarman_eyesdown|L
It's a good thing you came back from the Venom Refinery in one piece.

#char:Capybarman_eyesup|L
Actually, <i>did</i> you? Do you remember anything that happened inside Abyss Metalworks? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

{
    - E_Mission_Rookie_GraspOfTheOctornado.left_refinery:
        + [NO¬You don't.>>]
            #char:Capybarman_eyesdown|L
            I see. Probably for the best.

            #char:Capybarman_eyesleft|L
            On the bright side, I think you'll find it easier to deal with <i>our</i> documents now.

        -> capybarman_venom_refinery
}

{
    - E_Mission_Rookie_GraspOfTheOctornado.stayed_at_refinery:
        + [YES¬You do.>>]
            #char:Capybarman_neutral|L
            Huh. So you do. You're lucky we bailed you out.

            #char:Capybarman_eyesup|L
            No, seriously. You got any idea how hard it is to negotiate with Abyss Metalworks?

            #char:Capybarman_eyesdown|L
            Thankfully we had enough people available to help you.

            #char:Capybarman_eyesdown|L
            Keep whatever you saw in there — and that little pocket book you stashed away — between yourselves.

        -> capybarman_venom_refinery
}

+ [LIE¬Maybe?>>]
    {
        - E_Mission_Rookie_GraspOfTheOctornado.left_refinery:
            #char:Capybarman_eyesup|L
            So you do, huh?

            #char:Capybarman_neutral|L
            Well, keep your mouth shut about anything you saw in there. We can't keep you safe otherwise.

        - E_Mission_Rookie_GraspOfTheOctornado.stayed_at_refinery:
            #char:Capybarman_eyesdown|L
            Well, that's to be expected.

            #char:Capybarman_eyesleft|L
            Can't tell you how many caravaneers went missing in there during deliveries.

            #char:Capybarman_neutral|L
            It's a miracle we have deals in place with the Elder Bosses.
    }

-> capybarman_venom_refinery



= capybarman_venom_refinery

#char:Capybarman_eyesdown|L
Truth be told, even we don't know much about the inner workings of the refinery.

#char:Capybarman_eyesright|L
Let's just say that the Elder Bosses play their cards close to their chest.

#char:Capybarman_eyesright|L
Not to mention they've been here far longer than any of us.

#char:Capybarman_eyesleft|L
Enough about business for today. Are you and your crew going to eat something?

#char:Capybarman_eyesleft|L
I just <>

{
    - E_Mission_Rookie_GraspOfTheOctornado.survey_coxinha_pastel:
        {
            - E_Mission_Rookie_GraspOfTheOctornado.survey_coxinha:
                fried some coxinhas.

            - E_Mission_Rookie_GraspOfTheOctornado.survey_pastel:
                fried some pastel.

            - E_Mission_Rookie_GraspOfTheOctornado.survey_human_souls:
                fried some <wave>s o u l s.</wave>
        }

    - else:
        made some pão de queijo.
}

#char:--
You look at the food in the glass. <>

{
    - E_Mission_Rookie_GraspOfTheOctornado.survey_coxinha_pastel:
        {
            - E_Mission_Rookie_GraspOfTheOctornado.survey_coxinha:
                The coxinha winks at you.

            - E_Mission_Rookie_GraspOfTheOctornado.survey_pastel:
                A tentacle waves at you.

            - E_Mission_Rookie_GraspOfTheOctornado.survey_human_souls:
                The souls smile at you, still sizzling.
        }

    - else:
        The pão de queijo all melt into an amorphous mass.
}

#char:Capybarman_eyesup|L
Friend. Are you alright?

#char:Capybarman_eyesup|L
All I said was that today's special is fried venomfish with rice and fries.

#char:Capybarman_neutral|L
It's common in these parts. They swim directly out of Venom Refinery, hence the name.

#char:Capybarman_neutral|L
Don't mind the three eyes and six fins. I promise they're edible.

#char:--
You gulp. You'd rather eat your emergency rations.

#char:Capybarman_eyesdown|L
Suit yourself.

-> END



= after_crystals_of_bygone_times

#char:Capybarman_neutral|L
I know that face.

#char:Capybarman_eyesdown|L
It's the same face of everyone who has to deal with the Azurian Army.

#char:Capybarman_eyesup|L
Yeah, you're definitely not alone there, friend.

#char:Capybarman_neutral|L
I heard one of their lead scientists <>

{
    - E_Mission_Rookie_CrystalsOfBygoneTimes.helped_horacio && E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_outrun:
        suddenly disappeared, along with some unspecified documents.

    - else:
        was secretly conspiring to betray them.
}

#char:Capybarman_eyesleft|L
Am I right to assume you have something to do with that? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

+ [HORACIO¬Explain Horacio's situation.>>]
    #char:--
    You explain that Horacio made the request for Angra Crystals without permission.

    {
        - E_Mission_Rookie_CrystalsOfBygoneTimes.helped_horacio && E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_outrun:
            #char:--
            You leave out the details about his "disappearance".

            #char:Capybarman_eyesleft|L
            I see. So, in other words, you didn't know anything.

            #char:Capybarman_eyesdown|L
            I assume you weren't able to complete the delivery, then?

            #char:--
            You're about to tell the truth, but pause.

            #char:Capybarman_eyesup|L
            You know, because the client disappeared before you even went into Azure?

            {
                - capybarman_silva:
                    #char:--
                    You're being given another out, for some reason.

                - else:
                    #char:--
                    ...Is he giving you an out? Why?
            }

            #char:--
            What about your Angra Crystals cargo?

            #char:Capybarman_eyesup|L
            <i>What</i> cargo, kid? You didn't deliver anything, remember?

            #char:Capybarman_eyesright|L
            C'mon, work with me here.

            #char:--
            You're starting to like your capybara bosses.

            #char:Capybarman_shy|L
            Ahem. Don't get the wrong idea.

            #char:Capybarman_shy|L
            I just don't want the headache of being interrogated by Azurians.

        - E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_outrun:
            #char:--
            You also tell the Capybarman about the bribe the Azurian Government offered you.

            #char:Capybarman_eyesdown|L
            Tsk. They can't really chase you out of their jurisdiction.

            #char:Capybarman_eyesleft|L
            You better make good on whatever you promised them, though.

            #char:Capybarman_eyesdown|L
            Otherwise, no caravan license will shield you from them.

        - else:
            #char:--
            You also tell him about your jail time and the fine you had to pay.

            #char:Capybarman_eyesdown|L
            Hmm. Unfortunately, not much we can do about that.

            #char:Capybarman_eyesright|L
            Even if you didn't know, the job was commissioned against their law.

            #char:Capybarman_eyesup|L
            And believe me, you got off easy, even.

            #char:Capybarman_eyesdown|L
            The independent caravaneers living in Azure all fled for a reason.

            #char:Capybarman_eyesright|L
            I sometimes wonder about <i>that</i> one...
    }

+ [CARGO¬You just did the job as requested, that's all.>>]
    #char:--
    You only made a delivery of Angra Crystals, as instructed.

    #char:Capybarman_eyesleft|L
    I see. Now I get why they're paranoid.

    {
        - E_Mission_Rookie_CrystalsOfBygoneTimes.helped_horacio && E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_outrun:
            #char:Capybarman_eyesright|L
            Kid. For both our sakes, let's pretend this delivery never happened.

            #char:Capybarman_neutral|L
            I don't care what you do with the money or whatever reward you got.

            #char:Capybarman_neutral|L
            Just make sure it stays between you and your crew. Understood?

        - E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_chase_outrun:
            #char:Capybarman_neutral|L
            Lemme guess: they offered you Grana too?

            #char:--
            How did he—

            #char:Capybarman_eyesdown|L
            Listen, whatever money you make outside the job isn't really my business.

            #char:Capybarman_eyesright|L
            But if you get bribed by the Azurian Army? You take it, and you keep your mouth shut.

            #char:Capybarman_neutral|L
            Of course, I can't stop you from doing anything. But then you won't be part of our death ratio.

            #char:Capybarman_neutral|L
            In fact, you might not even show up in the statistics at all, if it's up to the Azurians.

            #char:Capybarman_eyesdown|L
            Just a word of advice.

        - else:
            #char:Capybarman_neutral|L
            And that's how you went to the slammer?

            #char:Capybarman_neutral|L
            Listen. You don't want to go back there. Trust me.

            #char:Capybarman_eyesdown|L
            I had... good friends... that did and never left.

            #char:Capybarman_eyesdown|L
            If you take one lesson from the Floating Ocean, take this:

            #char:Capybarman_eyesup|L
            "There's always a bigger fish."
    }

-   #char:Capybarman_neutral|L
    Oh, and don't go badmouthing the Army out there. Don't need them knocking on my door.

-> END
