===E_Crew_KlebersNumberGame===

#scope: General
#category: Crew
#tier: Rookie, Intermediate, Expert
#intensity: Medium
#location: Skyways

//julinho apostando no jogo do bicho (numbers game) online, ajuda ele, aposta com ele ou fala pra ele ir trabalhar

VAR NumbersHit = 0

#char:--
Next morning, you go to the cockpit to check on Kleber. 

#char:--
Always good to see if there are any updates on the journey.

#char:--
You find him hunched over the ship's terminal, thinking about something.

{ 
    - g_affinity_Kleber >= 0:

        #char:Kleber_happy_neutral|L
        Oh, hey, Cap! Everything's fine with our route. {Emotion("Outer", "White")}

        #char:Kleber_happy_sad|L
        So fine, actually...

        #char:Kleber_happy_sad|L
        That I'm thinking about trying to get some money for us with the Caravan Network.

        #char:Kleber_happy_happy|L
        Want to join me? Two heads think better than one! {Emotion("Outer", "White")}

    - else:

        #char:Kleber_angry_neutral|L
        Oh hey, {g_name}. Didn't see you there.
        
        #char:Kleber_angry_neutral|L
        Did you come to disturb me or what? Everything's fine with our route.

        #char:Kleber_neutral_neutral|L
        So fine, actually...

        #char:Kleber_neutral_neutral|L
        That I'm thinking about trying to get some money for us with the Caravan Network.

        #char:Kleber_neutral_neutral|L
        Maybe if you join me, we can finally get along. Who knows.

}

+ [YES>G>]

    { 
        - g_affinity_Kleber >= 0:

            #char:Kleber_happy_happy|L
            Glad to see you're up for it! {Emotion("Outer", "White")}
            
            #char:Kleber_happy_happy|L
            Let's get this game started, then! We can work afterwards! 

            ~ g_affinity_Kleber += 10

        - else:

            #char:Kleber_neutral_neutral|L
            So you <i>can</i> be fun sometimes, huh?
            
            ~ g_affinity_Kleber += 10

            #char:Kleber_neutral_neutral|L
            Well, then. Just one round and we go back to work. 
        
    }


-> numbers_game

+ [QUESTION>>]

    #char:--
    The Caravan Network? What does that have to do with money?

    { 
        - g_affinity_Kleber >= 0:

            #char:Kleber_neutral_sad|L
            Well, y'know how Caravan ships have an internal communications system, right?

            #char:Kleber_neutral_sad|L
            They have a lot of channels where caravaneers can ask for help... or just talk to each other!

            #char:Kleber_happy_happy|L
            And in some, they come up with all these games and wager Grana on them.

        - else:

            #char:Kleber_neutral_neutral|L
            Well, a Caravan Ship has access to a bunch of channels through the internal communications system.

            #char:Kleber_neutral_neutral|L
            People can ask for help, or make small talk with other caravaneers...

            #char:Kleber_neutral_happy|L
            And in some, they come up with all these games and wager Grana on them.
    }

    #char:--
    So it's gambling... <waitfor=0.5>Never underestimate a bunch of bored caravaneers linked by a communication network.

    #char:Kleber_neutral_neutral|L
    Well, let's get down to business. Want to give it a shot?

    ++ [YES>G>]

        { 

            - g_affinity_Kleber >= 0:

                #char:Kleber_happy_happy|L
                Glad to see you're up for it! {Emotion("Outer", "White")}
                
                #char:Kleber_happy_happy|L
                Let's get this game started, then! We can work afterwards! 

                ~ g_affinity_Kleber += 10

            - else:

                #char:Kleber_neutral_neutral|L
                So you <i>can</i> be fun sometimes, huh?
                
                ~ g_affinity_Kleber += 10

                #char:Kleber_neutral_neutral|L
                Well, then. Just one round and we go back to work. 

        }

    -> numbers_game

    ++ [NO>>]

        #char:--
        You don't think Kleber should be doing that instead of properly piloting the ship.


        { 

            - g_affinity_Kleber >= 0:

                #char:Kleber_sad_sad|L
                C'mon, cap. If all these people can do it, there's no problem! {Emotion("Inner", "blue")}

                ~ g_affinity_Kleber -= 10

            - else:

                #char:Kleber_angry_neutral|L
                Guess we'll never really get along, huh?
                
                ~ g_affinity_Kleber -= 10

        }


        #char:--
        You exit the cockpit, with Kleber going back to his work - though he looks none too pleased.

        #log: Asked Kleber to go back to work instead of playing games.

    -> EVENT_END

+ [ANGRY>>]

    #char:--
    Kleber should be helping steer the ship and planning routes, not playing with the terminals for his own amusement.

    ~ g_affinity_Kleber -= 10

    #char:Kleber_angry_neutral|L
    <shake>Gee</shake>, cap. I thought you'd be able to put some trust in me. Everything's fine! {Emotion("Outer", "red")}

    #char:Kleber_angry_neutral|L
    It's just a little game. 
    
    #char:Kleber_neutral_neutral|L
    Pilots have been doing it for ages through the communication systems!

    #char:Kleber_neutral_neutral|L
    It's no harm. We just have to bet a lil Grana.

    #char:Kleber_angry_neutral|L
    C'mon, why not give it a shot?

        ++ [YES>G>]

            { 

                - g_affinity_Kleber >= 0:

                    #char:Kleber_happy_happy|L
                    Glad to see you're up for it! {Emotion("Outer", "White")}
                    
                    #char:Kleber_happy_happy|L
                    Let's get this game started, then! We can work afterwards! 

                    ~ g_affinity_Kleber += 10

                - else:

                    #char:Kleber_neutral_neutral|L
                    So you <i>can</i> be fun sometimes, huh?
                    
                    ~ g_affinity_Kleber += 10

                    #char:Kleber_neutral_neutral|L
                    Well, then. Just one round and we go back to work. 

            }

        -> numbers_game

        ++ [NO>>]

            { 

                - g_affinity_Kleber >= 0:

                    #char:Kleber_angry_neutral|L
                    You're way too much of a stick in the mud sometimes, y'know that? {Emotion("Outer", "red")}

                    ~ g_affinity_Kleber -= 10

                - else:

                    #char:Kleber_angry_neutral|L
                    Guess we'll never really get along, huh?
                    
                    ~ g_affinity_Kleber -= 10

            }

            #char:--
            You walk towards the exit of the cockpit. Kleber focuses on the controls, angry at you for ending his fun.

            #log: Asked Kleber to go back to work instead of playing games.

        -> EVENT_END


= numbers_game

#char:Kleber_neutral_sad|L
Well, uh, for starters we're gonna need 100 Grana to bet. 

#char:Kleber_neutral_sad|L
Could you...?

#char:--
You roll your eyes. Of course the money would come from the crew's funds. 

#char:--
The others better not learn about this.

~ g_grana -= 100

    { 

        - g_affinity_Kleber >= 0:

            #char:Kleber_happy_happy|L
            Good! {Emotion("Outer", "White")}

        - else:

            #char:Kleber_neutral_neutral|L
            Good. At least you trust me with something.

    }


#char:Kleber_neutral_neutral|L
Here's the thing: it's a numbers game.

#char:Kleber_neutral_neutral|L
We gotta select two numbers between 1 and 6.

#char:Kleber_happy_happy|L
Then the lottery draws two and if we match at least one, we win stuff!

#char:Kleber_neutral_happy|L
Wanna know a lucky thing I do? I always pick one number out of every three. {Emotion("Outer", "White")}

#char:Kleber_happy_sad|L
Sounds like superstition, but it doesn't hurt to try.

+ (ng_one) [1-BALL>>] -> second_choice

+ (ng_two) [2-BALL>>] -> second_choice

+ (ng_three) [3-BALL>>] -> second_choice



= second_choice

#char:Kleber_happy_happy|L
Nice! Now pick another one!

+ (ng_four) [4-BALL>>] -> numbers_results

+ (ng_five) [5-BALL>>] -> numbers_results

+ (ng_six) [6-BALL>>] -> numbers_results



= numbers_results

#char:Kleber_happy_happy|L
Now we hope the system picks the same numbers we did!

~ ScreenFlash("White", -1)


~ temp first_roll = RANDOM(1,3)

{
    - first_roll == 1 && ng_one:
    ~ NumbersHit += 1
    
    - first_roll == 2 && ng_two:
    ~ NumbersHit += 1
    
    - first_roll == 3 && ng_three:
    ~ NumbersHit += 1
}

~ temp second_roll = RANDOM(4,6)

{
    - second_roll == 4 && ng_four:
    ~ NumbersHit += 1
    
    - second_roll == 5 && ng_five:
    ~ NumbersHit += 1
    
    - second_roll == 6 && ng_six:
    ~ NumbersHit += 1
}

#char:Kleber_neutral_neutral|L
It rolled... {first_roll} and {second_roll}.

{
    - NumbersHit == 0:

        #char:Kleber_sad_sad|L
        Oh, uh, looks like we missed both numbers. Pity. {Emotion("Inner", "blue")}

        #log: Bet and lost grana on Kleber's numbers game.

        #char:Kleber_neutral_sad|L
        Maybe if we tried aga- {Emotion("Outer", "White")}

        #char:--
        You just lost a hundred Grana by gambling. 
        
        #char:--
        Your silent glare tells Kleber everything he needs to know.

        { 

            - g_affinity_Kleber >= 0:

                #char:Kleber_sad_sad|L
                ...Got it, cap. Back to work it is. {Emotion("Inner", "blue")}

            - else:

                #char:Kleber_neutral_neutral|L
                I know you're the Captain and all, but you should relax a little, y'know?

        }

    - NumbersHit == 1:

        #char:Kleber_happy_neutral|L
        Oh, hey, we got one! That means we get some grana back! {Emotion("Outer", "White")}

        #log: Bet grana on Kleber's numbers game.

        ~ g_grana += 50

        #char:Kleber_neutral_neutral|L
        It's not that much, but maybe we can play again some other time and win more.

        #char:--
        I doesn't really seem worth it if you'll lose Grana most of the time.

        #char:--
        Especially when you need to save it. Your debt will not pay itself off.

        #char:--
        Maybe Kleber should play with his own money from now on.

    - NumbersHit == 2:

        #char:Kleber_neutral_neutral|L
        One number matches, two numbers match, we- 

        #char:Kleber_happy_happy|L
        We won, captain! That's a bunch of Grana! {Emotion("Outer", "White")}

        #log: Bet grana on Kleber's numbers game and won.

        ~ g_grana += 500

        #char:Kleber_neutral_neutral|L
        Pleasure to play alongside you, {g_name}.
        

        { 

            - g_affinity_Kleber >= 0:

                #char:Kleber_happy_happy|L
                I might invite you more often. For luck, y'know?
                
            - else:

                #char:Kleber_neutral_neutral|L
                Didn't know you had that side. Maybe we'll really start to get along, huh?

        }

        ~ g_affinity_Kleber += 10

        #char:--
        Maybe Kleber has a point. Maybe you should pay attention to the Caravan Network more often...
        
}

-> EVENT_END