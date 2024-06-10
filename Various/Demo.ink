-> demo_start

=== demo_start ===

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
    Ok, {g_name}.

    #char:Capybarman_neutral|L
    Welcome to Sky Caravan's Demo.

    #char:Capybarman_eyesleft|L
    I'm a capybara. <waitfor=0.5>And a barman.

    #char:Capybarman_eyesdown|L
    I run this <color=green1><b>Capy-Bar</b></color>.

    #char:Capybarman_eyesleft|L
    .<waitfor=0.5>.<waitfor=0.5>.Alright. That's all you need to know about me.

    #char:Capybarman_eyesdown|L
    Now, let's get down to business.

    #char:Capybarman_neutral|L
    Is this your first time playing this demo? Or maybe you just need a reminder? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

    + [YES¬Yes.>>]
        #char:Capybarman_neutral|L
        Sky Caravan is a game of choices and consequences.

        #char:Capybarman_neutral|L
        It's a story that is all about how you <color=green1><b>react</b></color>.

            ++ [HAPPY¬You feel excited.>>]
                #char:Capybarman_neutral|L
                You just reacted - and made a decision. 

                #char:Capybarman_eyesleft|L
                Good to see you understand. Smart human.

            ++ [RELAX¬You feel confident.>>]
                #char:Capybarman_neutral|L
                You just reacted - and made a decision. 
                
                #char:Capybarman_eyesdown|L
                You seem chill. <waitfor=0.5>Like me, if I was more naive.

            ++ [CONFUSED¬You don't really get it.>>]
                #char:Capybarman_neutral|L
                You just reacted - and made a decision. 

                #char:Capybarman_eyesup|L
                Silly humans. Get confused so easily...

            --  #char:Capybarman_neutral|L
                You can also choose reactions by pressing 1, 2 and 3 on your keyboard. In case drag and drop isn't your thing.
            
                #char:Capybarman_neutral|L
                Let's move on. 

                #char:Capybarman_neutral|L
                You play as the Captain of a delivery skyship, or a <i>Sky Caravan</i>.

                #char:Capybarman_neutral|L
                Your ship is named <color=green1><b>41-Bis</b></color>. 

                #char:Capybarman_eyesdown|L
                Don't ask me why. I only name drinks, not ships.
                
                #char:Capybarman_neutral|L
                You're an outlander - born in the <color=green1><b>Surface</b></color>.  

                #char:Capybarman_neutral|L
                You are also indebted to a terrible loan shark. <wave>Exciting</wave>. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                ++ [FACEPALM¬That capybara must be kidding.>>]
                    #char:Capybarman_eyesleft|L
                    Hey, it's a setup for fun adventure. Nothing to facepalm about.

                ++ [ANGRY¬You feel your blood boil.>>]
                    #char:Capybarman_eyesup|L
                    <shake>Don't</shake> berate service workers, friend. Not good for <i>your</i> health. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                ++ [FEAR¬That's scary, to say the least.>>]
                    #char:Capybarman_eyesright|L
                    <wave>Yes, yes</wave>. Tough situation. Anyway.
                    
                --  #char:Capybarman_neutral|L
                    That loan shark's name is <color=green1><b>Marimbondo</b></color>. Ever heard a creepier name? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

                    #char:Capybarman_neutral|L
                    You now deliver stuff to get money and pay your debt. Fun times ensue, you know the rest.

                    #char:Capybarman_neutral|L
                    In this demo, you'll play through one of the first <color=green1><b>adventures</b></color> of the game.

                    #char:Capybarman_neutral|L
                    You and your three crewmates are starting your first delivery together.

                    #char:Capybarman_neutral|L
                    They don't know about your little debt situation. 

                    #char:Capybarman_neutral|L
                    In fact, you barely know each other at all.

                    #char:Capybarman_neutral|L
                    But you'll get to soon enough. And <color=green1><b>your decisions can shape your relationships</b></color>, too.

                    -> crew_question

    + [NO¬No.>>]->crew_question



= crew_question

{  
    
    - capybarman_kleber && capybarman_jackie && capybarman_barto:
//TODO: Tirar a big face da direita aqui
        #char:Capybarman_neutral|L
        Ok. Onboarding almost over. Your <bounce>fun</bounce> starts soon.

    -> tutorial_question.


    - else:
        #char:Capybarman_neutral|L
        Want to hear more about your crew?

        + [YES¬Yes.>>]
        -> crew_descriptions

        + [NO¬No.>>]
//TODO: Tirar a big face da direita aqui
            #char:Capybarman_neutral|L
            Ok. Onboarding almost over. Your <bounce>fun</bounce> starts soon.
        -> tutorial_question
}



= tutorial_question

#char:Capybarman_neutral|L
There's just a few more things you should learn about the job.

#char:Capybarman_neutral|L 
Want a <color=green1><b>tutorial</b></color> on how the game works?

    + [YES¬Yes.>>]
    -> tutorial

    + [NO¬No.>>]
        #char:Capybarman_eyesdown|L
        Suit yourself. I'm not getting paid by the hour, so fine with me. 
    
    -> demo_intro_end



= demo_intro_end

#char:Capybarman_neutral|L
That's it. You're ready to go.

#char:Capybarman_neutral|L
Hope you enjoy the game.

#char:Capybarman_neutral|L
It would make me <bounce>happy</bounce>. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

#char:Capybarman_neutral|L
Oh, and don't forget to give us some feedback, too.

#char:Capybarman_neutral|L
Just press <color=green1><b>F8</b></color>, fill the input box and select a category and a reaction to go with it.

#char:Capybarman_shy|L
It would make me <bounce>even happier</bounce>. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

#char:Capybarman_neutral|L
Farewell, caravaneer.

#char:Capybarman_neutral|L
And welcome to the <color=green1><b>Skyways</b></color>.

#char:--
{StartDemo()}

-> END



= crew_descriptions

#char:Capybarman_neutral|L
Who do you wanna know about?

* (capybarman_kleber) [KLEBER¬Kleber.>>]
    #char:Kleber_neutral_neutral|L
    Hey, Cap! Where are we going today? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

    #char:Capybarman_neutral|L
    Your streetwise pilot. Reckless and a bit shady.

    #char:Capybarman_neutral|L
    Always down for some money and adventure. Maybe more than he should.
    
    #char:Capybarman_neutral|L
    He's a good person underneath that tacky shirt. <i>Maybe</i>.

-> crew_question

* (capybarman_jackie) [JACKIE¬Jackie.>>]
    #char:Jackie_neutral_neutral|L
    If you need a fix, I can give a hand... or three! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

    #char:Capybarman_neutral|L
    Your engineer. The brains of the crew.
    
    #char:Capybarman_neutral|L
    Bubbly person. Tries to pet me <shake>constantly</shake>. 
    
    #char:Capybarman_neutral|L
    She knows how to get serious when needed, nonetheless. I respect that.

-> crew_question

* (capybarman_barto) [BARTO¬Barto.>>]
    #char:Barto_neutral_neutral|L
    Captain, would you care to try a new recipe of mine? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

    #char:Capybarman_neutral|L
    An animal friend. Anteater. We get along well enough.

    #char:Capybarman_neutral|L
    He's your crew's cook. Bit of a pacifist, except when you criticize his food.
    
    #char:Capybarman_neutral|L
    Very talented, though. Makes a mean feijoada.

-> crew_question


= tutorial
#char:Capybarman_neutral|L

{EnterDialogueComponent("Day Counter")}

#char:Capybarman_neutral|L
You monitor your ship through panels. 

#char:Capybarman_neutral|L
You'll have to complete the delivery within a certain number of <color=green1><b>Days</b></color>.

#char:Capybarman_neutral|L
Be late and we'll deduct <color=green1><b>15%</b></color> of your pay.

#char:Capybarman_eyesdown|L
Yes, being a Capybarman means I'm technically your employer. Forgot to mention that.

{EnterDialogueComponent("Grana Counter")}

#char:Capybarman_neutral|L
You can see your account balance of <color=green1><b>Grana</b></color> up there.

{
    - g_grana == 0:
        ~ g_grana = 500
}

#char:Capybarman_neutral|L
It's updated constantly with every transaction. 

#char:Capybarman_neutral|L
The Capybara Caravan Association – <color=green1><b>C.C.A.</b></color> for short — is a dilligent company.

#char:Capybarman_neutral|L
Finish a delivery, get the Grana. Simple enough.

#char:Capybarman_neutral|L
Any money you come accross during the delivery is yours to keep. <waitfor=0.5>It's yours to lose, too.

{EnterDialogueComponent("Stat Panel")}

#char:Capybarman_neutral|L
As the captain, what you need to pay the most attention to is your <color=green1><b>Status Panel</b></color>.

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

#char:Capybarman_neutral|L
A courtesy. <waitfor=0.5>Don't get too used to it.

#char:Capybarman_neutral|L
Every day, your stats will <color=green1><b>deplete slightly</b></color>. Traveling the Skyways puts pressure in the ship and the crew.

#char:Capybarman_neutral|L
Your choices as the captain can also affect these resources. <waitfor=0.5>For better or worse.

#char:Capybarman_neutral|L
Reach 0 in any of them and the ship goes down. 

#char:Capybarman_neutral|L
Oh, you must be wondering how we measure the crew's Morale with a computer. 

#char:Capybarman_eyesleft|L
That's proprietary information. Stop wondering that.

#char:Capybarman_neutral|L
If a choice directly affects your ship, a warning will be displayed. {WarnAllStats()}

#char:Capybarman_neutral|L
The effect may be positive or negative. Take chances, but be mindful of your resources.

#char:Capybarman_eyesdown|L
Mutiny, hunger and freefall are common deaths for caravaneers. Don't be a statistic.  {UnwarnAllStats()}

#char:Capybarman_neutral|L
Last thing: the <color="orange"><b>orange button</b></color> skips to the next choice. Good for replayability. {ExitDialogueComponent("Day Counter")} {ExitDialogueComponent("Stat Panel")} {ExitDialogueComponent("Grana Counter")}

#char:Capybarman_neutral|L
That's about it. Want me to repeat the tutorial?

+[YES¬Yes.>>]
-> tutorial

+[NO¬No.>>]
-> demo_intro_end