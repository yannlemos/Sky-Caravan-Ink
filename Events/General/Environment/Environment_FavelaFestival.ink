===E_Environment_FavelaFestival===

//Mabel check: Ready to be localized!

#scope: General
#category: DemoGeneral3
#tier: Rookie, Intermediate, Expert
#intensity:High
#location: Aquarela

VAR yourScore = 0
VAR theirScore = 0
VAR win = false

VAR bet_win = false
VAR low_grana = false

#char:--
You finally arrive at <color=aquarelaYellow><b>Aquarela</b></color>. 

#char:--
The sea of vibrantly-colored house clusters is definitely a fascinating sight.

#char:Jackie_surprised_happy|L
<wiggle>OH MY!</wiggle> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

#char:Jackie_surprised_happy|L
<wiggle>LOOK OVER THERE!</wiggle>

#char:--
Jackie points at one of the windows, from where you can see a huge banner being towed by a tiny ship.

#char:Jackie_happy_happy|L
Aquarela's Summer Festival has already begun! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

#char:Barto_happy_happy|R
Oh right, it is barbecue season!

#char:Barto_happy_happy|R
The festival's chuck roast skewers are really well known. Definitely worth taking a bite. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

#char:Kleber_happy_angry|R
And you know what else happens during barbecues? 

#char:Kleber_happy_angry|R
<wave>SOCCER BETTING!</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

#char:Kleber_happy_neutral|R
There's always someone willing to bet on a match. I've got some good Grana before.

#char:Jackie_happy_angry|L
Speaking of games, there's always a charity tournament happening. 

#char:Jackie_happy_happy|L
I've heard that the game chosen for the event this year was pool! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:--
The crew sure seems excited. 

#char:--
A short stop might be a good opportunity to start getting along with them.

#char:--
Still, it's your first delivery, and you have a deadline to meet. 

#char:--
Shouldn't you be more focused? {PlaySFX("Funny1")}

//TODO: Flavor choice here?

#char:Kleber_neutral_neutral|R
You look kinda tense, Captain.

#char:Kleber_neutral_happy|R
Let me guess: you're worried about the delivery?

#char:Kleber_neutral_sad|R
Don't worry. The Festival is a public holiday here.

#char:Jackie_happy_angry|L
And when there is a holiday in Aquarela, most of the city stops! 

#char:Kleber_happy_sad|R
Even our air routes are blocked during the day, so everyone can take part in the festival.

#char:--
...Sounds like you'll <i>have</i> to take the day off.

#char:Kleber_neutral_happy|R
Well, I'll look for a platform to land the 41-Bis.

#char:Jackie_sad_neutral|L
We probably won't have enough time to explore the whole event, though... 

#char:Jackie_neutral_neutral|L
I think it's best if we split so everyone can enjoy the evening.

#char:Barto_neutral_neutral|R
Fair enough. I will be next to the skewers if you need me.

#char:Jackie_happy_neutral|L
I'll take a look at the pool tournament. Maybe I can find a partner to play with!

#char:Kleber_neutral_neutral|R
There is a soccer screening today. If anyone wants to bet some grana, I'll be there.

#char:--
It's your first time in Aquarela, but your crewmates seem quite familiar with the festival. 

#char:--
Maybe you should tag along with someone.

    ++ (festival_follow_barto) [BARTO¬Follow Barto to the stalls.>S_G>]

        -> festival_barto

    ++ (festival_follow_kleber) [KLEBER¬Go soccer betting with Kleber.>G_M>]

        -> festival_kleber

    ++ (festival_follow_jackie) [JACKIE¬Play pool with Jackie.>F_M>]

        -> festival_jackie


= festival_barto

            #char:--
            You follow Barto to the food sellers.

            ~ FadeTo("black", 1, 1)

            //AFFINITY PASS
            { 
                
                - g_affinity_Barto >= -1:

                    #char:Barto_neutral_neutral|L
                    You've made a smart choice by accompanying me.

                    #char:Barto_happy_neutral|L
                    The skewers are the best part of the festival. {Emotion("Explosion", "FFFFFF")} {PlaySFX("Love1")}

                    ~ g_affinity_Barto += g_affinityChangeMid

                - else:

                    #char:Barto_neutral_neutral|L
                    I have to say I am quite surprised you decided to accompany me, {g_name}.

                    ~ g_affinity_Barto += g_affinityChangeMid
            
            }

            #char:--
            As you approach the seller, she pipes up. {PlaySFX("Frying")}
            
            #char:--
            "<bounce>Welcome</bounce>, <bounce>welcome</bounce>! Come taste the best skewers from Aquarela!"

            #char:Barto_neutral_sad|L
            I would like two, please. For now.

            #char:--
            "Sure thing! Anything on the side?"

            #char:--
            You tell her to get only the skewers. Soon after, you have one each. 

            #char:Barto_neutral_angry|L
            Here you go, Captain. It's on me. 
            
            #char:Barto_neutral_angry|L
            Let me see what you think.

            ~ UniqueEffectActivate("Espetinho") 

            #char:--
            You grab one and take a bite. {PlaySFX("LightWoosh")}

            ~ ScreenFlash("White", -1)
            
            //TODO: Flavor choice? Talvez escolher o que falar especificamente sobre os espetinhos

            #char:--
            They undoubtely taste good, but it's amusing to see him interested in such a simple dish. {StopSFX("Frying")}

            #char:Barto_happy_sad|L
            Skewers were one of my favorite dishes as a cub. 
            
            #char:Barto_neutral_happy|L
            No matter where I ate in the Skies, as long as the place served it, it was my go-to choice. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

            #char:Barto_happy_sad|L
            In fact, it ended up being the first dish I learned how to make. 

            #char:Barto_neutral_neutral|L
            A couple of years ago, I got to visit Aquarela for the first time during an expedition with the Chefs Guild.

            #char:Barto_neutral_neutral|L
            They were holding the summer festival at the time then, so I had the chance to try their skewers.

            #char:Barto_happy_neutral|L
            <wiggle>Truly delicious</wiggle>. I never forgot that taste... <waitfor=0.5>or that day. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            #char:--
            "Hey, you two! While you're enjoying the food, why don't you take a look at our premium meat?"
            
            #char:--
            "I see the badge on your watch, we have a special price for Mandioca Guild Chefs!"
            
            #char:--
            "10 kilos for {g_granaChangeLow} Grana. How about it?"

            #char:Barto_neutral_angry|L
            Hmm... <waitfor=0.5>The steaks are of superb quality indeed. 
            
            #char:Barto_neutral_angry|L
            Should we get a few for the ship?

            + (bought_meat_festival)[YES¬Buy the meat.>S_G>]

            #char:--
            Sounds good for you.

            ~ g_grana -= g_granaChangeLow

            #char:--
            "Here you go. Have a good day and safe travels!"

            ~ g_supplies += g_statChangeHigh
            
            + [NO¬Decline the offer.>>]

                //AFFINITY PASS
                {
                    - g_affinity_Barto >= -1:
                        #char:--
                        Better to save money.

                        #char:Barto_sad_neutral|L
                        That was a decent offer, Captain. You will not find these for a lower price. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    - else:
                        #char:--
                        Doesn't seem worth it.

                        #char:Barto_angry_neutral|L
                        ...I suppose expecting you to know the value of good ingredients would be too much. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

                        #char:--
                        He angrily stomps off ahead of you.
                }

                ~ g_affinity_Barto -= g_affinityChangeLow
            
            - #char:--
            You spend the evening strolling through the place with Barto, wondering what other stories you could find in Aquarela. {StopMusic()}

                -> festival_end

    ///////////////////////////////////////////////////

    = festival_kleber

                    #char:--
                    You search for bettors with Kleber.

                    ~ FadeTo("black", 1, 1)

                    //AFFINITY PASS
                    { 
                        
                        - g_affinity_Kleber >= -1:

                            #char:Kleber_happy_happy|L
                            I'm happy you've decided to tag along, Captain! {Emotion("Explosion", "FFFFFF")} 

                            ~ g_affinity_Kleber += g_affinityChangeMid

                        - else:

                            #char:Kleber_sad_sad|L
                            <wave>Oooh</wave>, look who's trying to be friendly.

                            #char:Kleber_neutral_sad|L
                            Well, if you're into soccer, you <i>might</i> win some points with me.

                            ~ g_affinity_Kleber += g_affinityChangeMid 

                    }


                    #char:--
                    You see a group passionately discussing, eyes glued to a tiny screen on top of a plastic table. {StopMusic()}

                    #char:Kleber_happy_happy|L
                    That was easy to find! Where there's screaming, there's money involved! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

                    #char:Kleber_happy_happy|L
                    Hey y'all, has the game started yet?

                    #char:--
                    One of them pipes up. "Nah. Starts in 10 minutes. Got money to bet?"

                    #char:--
                    "If not, stop interrupting us."

                    #char:Kleber_angry_neutral|L
                    <i>Of course</i> We're here to bet. To win! {Emotion("WaveOut", "ea2929")}

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                    #char:--
                    "Tsk. Fine, then.", they grunt.

                    #char:Kleber_neutral_happy|L
                    Alright {g_name}, time to bet. {PlayMusic("Decision")}

                    #char:Kleber_neutral_neutral|L
                    There are two tiers. We could either bet 'Small' for <b>{g_granaChangeLow}</b> Grana or 'Big' for <b>{g_granaChangeMid}</b> Grana.

                    #char:Kleber_neutral_neutral|L
                    If we bet {g_granaChangeMid}, the reward will be higher if we win. But it's a riskier move, of course.

                    #char:Kleber_neutral_neutral|L
                    On the other hand, it could be safer if we bet {g_granaChangeLow}, but the reward will be lower.

                    {
                        - g_grana < g_granaChangeMid:

                            #char:Kleber_surprised_sad|L
                            Oh, wait. 
                            
                            #char:Kleber_surprised_sad|L
                            Seems like we don't have enough Grana for the Big tier.

                            #char:Kleber_neutral_happy|L
                            Smaller one it is, then! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                            ~ low_grana = true

                            -> soccer_match

                        - else:

                            #char:Kleber_neutral_happy|L
                            //
                            It's up to you, Cap. Which one should we choose?
                            
                            + (favela_bet_small)[SMALL¬Bet 200 Grana.>G_M>]

                                -> soccer_match
            
                            + (favela_bet_big)[BIG¬Bet 500 Grana.>G_M>]

                                -> soccer_match

                    }

    = soccer_match
                    
            #char:--
            Kleber gets a seat for both of you and starts filling the prediction sheet. {StopMusic()}

            {
                - favela_bet_small:
                    ~ g_grana -= g_granaChangeLow
                - favela_bet_big:
                    ~ g_grana -= g_granaChangeMid

            }

            {
                - low_grana == true:
                    ~ g_grana -= g_granaChangeLow
            }

            #char:Kleber_neutral_neutral|L
            Let's go with the Lone Star team.

            #char:Kleber_happy_happy|L
            I've been keeping an eye on this tournament. They've been pretty solid so far.

            #char:--
            "<shake>OK Y'ALL, SHUT UP</shake>! The match is starting!" {PlaySFX("Hit1")} 

            //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

            ~ FadeTo("black", 1, -1)

            #char:--
            The first half of the game is tough for Lone Star, with zero goals against one from Red Vulture. {PlayMusic("Tension")}

            ~ UniqueEffectActivate("SoccerBall")

            #char:Kleber_neutral_happy|L
            No need to worry! I've been studying the team for a while. They'll pick up quickly. {PlaySFX("SoccerBall")} {PlaySFX("LightWoosh")}

            #char:--
            The next few minutes get more and more tense.

            #char:--
            A shot hits Lone Star's goalpost! The sitation seems dire. 

            ~ ScreenFlash("White", -1)

            #char:--
            Wait—

            {shuffle:

                -
                
                    #char:--
                    The ball is quickly recovered! What a counter-attack!

                    #char:--
                    In a few seconds they're already in Red Vulture's side! {StopMusic()}

                    #char:--
                    The team's star Allejo shoots—

                    #char:--
                    <shake>IT'S A GOAL!!!</shake> {PlaySFX("SoccerGoal")}

                    #char:--
                    Kleber turns out to be right — Lone Star manages to score two other goals and turn the game around! 

                    #char:Kleber_happy_angry|L
                    <shake>TOLD YA!</shake> Let's get that cash! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

                    ~ FadeTo("black", 1, -1)

                    ~ bet_win = true

                    #char:Kleber_happy_neutral|L
                    I guess someone else bet on the same score too, so we'll have to split the prize.
                    
                    #char:Kleber_happy_happy|L
                    Still worth it, though!

                    {
                        - favela_bet_small:
                            ~ g_grana += g_granaChangeMid

                            ~ g_morale += g_statChangeMid

                        - favela_bet_big:
                            ~ g_grana += g_granaChangeHigh

                            ~ g_morale += g_statChangeHigh
                    }

                    {

                        - low_grana == true:
                        ~ g_grana += g_granaChangeMid

                        ~ g_morale += g_statChangeMid
                    }

                -
                    
                    #char:--
                    It's picked up in the rebound by Red Vulture's attacker, Paco! {StopMusic()}

                    #char:--
                    He kicks it while the ball is still in the air—

                    #char:--
                    What a painting. Sheesh.

                    #char:--
                    <shake>It's a goal...</shake> {PlaySFX("SoccerBoo")}

                    #char:--
                    Few minutes later, Red Vulture scores another goal...<waitfor=0.5> and then another one.

                    #char:Kleber_surprised_angry|L
                    <shake>WHAT?</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny2")}

                    //TODO SFX: Efeito de fear/surprise. Exemplo do Animal Crossing: (https://youtu.be/Z0DZPwFciX4?t=56)

                    ~ FadeTo("black", 1, -1)

                    #char:Kleber_sad_sad|L
                    Sorry to drag you into this, Captain. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    #char:Kleber_sad_sad|L
                    I swear they've won almost all the previous matches...

                    #char:Kleber_sad_sad|L
                    Man, I used to be better at betting.

                    ~ g_morale -= g_statChangeLow
            }

            - #char:Kleber_neutral_sad|L
                To be honest... before I started piloting, my dream as a kid was to be a soccer star. {PlayMusic("AquarelaTheme")}

                #char:Kleber_neutral_sad|L
                I used to play with some kids from my neighborhood every Sunday afternoon.

                #char:Kleber_happy_neutral|L
                My life may have changed its course, but my love for soccer it's still here! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:--
                You spend the evening strolling through the place with Kleber, wondering what other stories you can find in Aquarela.

                -> festival_end

///////////////////////////////////////////////////

            = festival_jackie

            #char:--
            You decide to join Jackie in the tournament.

            ~ FadeTo("black", 1, 1)

            //AFFINITY PASS
            { 

                - g_affinity_Jackie >= -1:

                    #char:Jackie_happy_happy|L
                    I'm glad you're tagging along, {g_name}! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Love1")}

                    ~ g_affinity_Jackie += g_affinityChangeMid

                    #char:Jackie_happy_angry|L
                    So, pool partners, then? Don't worry, I can always carry us through! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                - else:

                    #char:Jackie_neutral_neutral|L
                    Oh! Didn't really think you would be tagging along, Captain. {Emotion("Explosion", "39f2d6")}) {PlaySFX("Mistery3")}

                    ~ g_affinity_Jackie += g_affinityChangeMid

                    #char:Jackie_neutral_neutral|L
                    So, pool partners, then?  Don't worry, I can always carry us through.
            }

            #char:--
            Jackie grabs your hand and leads you to the registration site, inside a warehouse.

            #char:--
            "Welcome, caravaneers!", one of the organizers says through a microphone.

            #char:--
            "This is a charity tournament. To apply, you must donate a gallon of fuel."

            #char:--
            "Some of the fuel raised will be distributed to travelers in need."

            #char:--
            "The rest will be distributed among the winners of each match!"

            #char:--
            This better be worth it.

            #char:--
            You quickly return to the ship to grab a small gallon.

            ~ FadeTo("black", 1, 1)

            #char:--
            "Perfect, thank you.", the organizer says, taking your fuel. {StopMusic()}

            ~ g_fuel -= g_statChangeLow

            #char:--
            You're directed to a table were a two players are waiting.

            #char:Jackie_happy_neutral|L
            Alright, {g_name}. Let's go! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

            #char:--
            You briefly talk to the adversaries: Leia Ramos, a tall woman with a scar on her left eye, and her partner Flávio, a giant mantis.

            #char:Jackie_happy_angry|L
            We'll have to alternate shots. 

            #char:Jackie_happy_angry|L
            If you're not confident in pocketing, you can try disrupting their plays or setting me up!

            #char:--
            And with that, Jackie goes to play the break shot, freeing the balls from their triangle formation. {PlayMusic("Decision")}

            ~ UniqueEffectActivate("SinucaBalls") 

            //TODO SFX: Bolas de bilhar batendo

            #char:--
            They scatter, and the game is on. {PlaySFX("PoolHit")}

            ~ ScreenFlash("White", -1)

            #char:--
            Since no balls were pocketed, it's the other team's turn.

            #char:--
            Ramos manages to use one of your balls to hit ball 13, sinking it right off the bat.

            //TODO SFX: Bolas de bilhar batendo

            #char:--
            Not a good start for you.

            #char:--
            The mantis then goes up, but fumbles a bit, and ball 9 ends up in an awkward spot.

            //TODO SFX: Bolas de bilhar batendo

            #char:--
            It's your team's turn again, so you get in position. 

            #char:--
            Jackie gives you a thumbs up.

            #char:--
            Ball 6 is in a good spot, you might pocket it. You could set up 3 for Jackie, or try to disrupt the other team by making your 7 hit their 10.

            //SCORE: 0 - 1 (13)
            ~ theirScore += 1

            + (6_Ball) [SIX¬Try to pocket Ball 6.>>]

                #char:--
                You go for broke and strike the Solid as hard as you can. {Shake("Textbox", 1, -1)} {PlaySFX("PoolHit")}

                //TODO SFX: Bolas de bilhar batendo

                #char:--
                Ball 4 is knocked to the side, but you manage to pocket 6 in one of the corners.

                #char:Jackie_happy_sad|L
                <bounce>Nice</bounce>, Captain! I won't waste that chance.

                #char:--
                Using her turn, Jackie leans a bit over the table and manages to find a good angle to hit 4 from where you left it. {PlaySFX("PoolHit")}

                #char:--
                It ricochets against the rail, then surprisingly bounces back against the cue and sinks into the opposite corner.

                //TODO SFX: Bolas de bilhar batendo

                #char:Jackie_happy_happy|L
                We're on the right track! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                //SCORE: 2 (6, 4) - 1 (13)
                //NEXT: YOU
                ~ yourScore += 2

            + (3_Ball) [THREE¬Set Ball 3 up for Jackie.>>]

                #char:--
                You try to play it safe, like Jackie said.

                #char:--
                The cue hits 3, getting it closer to a corner. {Shake("Textbox", 1, -1)} {PlaySFX("PoolHit")}

                //TODO SFX: Bolas de bilhar batendo

                #char:--
                Jackie nods, glad you're following through.

                #char:--
                Now it's the opposing team's turn. 

                #char:--
                Ramos looks carefully at the table, before getting into position to hit 9.

                #char:--
                She manages to curve the Stripe <i>just</i> right so it bounces off his 12 and gets pocketed. {PlaySFX("PoolHit")}

                #char:--
                That's not all, though. 

                #char:--
                Ball 12 smacks against your 3, pushing it away from the corner, towards the center of the table. {PlaySFX("PoolHit")}


                //SCORE: 0 - 2 (13, 9)
                //NEXT: MANTIS
                ~ theirScore += 1

            + (7_Ball) [SEVEN¬Try to make Ball 7 hit Ball 10.>>]

                #char:--
                This is the opportunity to hinder your opponents.

                #char:--
                You hit Solid number 7, making it bump into Stripe number 10, pushing it against the rail. {Shake("Textbox", 1, -1)} {PlaySFX("PoolHit")}

                //TODO SFX: Bolas de bilhar batendo

                #char:--
                Your satisfaction doesn't last long, though, as Ramos finds a good position and pockets it anyway.

                #char:Jackie_surprised_neutral|L
                <wave>Ooooh</wave>, seems like we're up for a challenge! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

                //SCORE: 0 - 2 (13, 10)
                //NEXT: MANTIS
                ~ theirScore += 1

            - #char:--
            It's your turn again. What do you do?

            {
            - 6_Ball:
            + (7_Ball_2) [SEVEN¬Try to pocket Ball 7.>>]

                #char:--
                Maybe you can go for a pocket, even if it's far. 
                
                #char:--
                It's a risky move, but Jackie is counting on you to extend your advantage.

                #char:--
                You use a lot of force. The ball ricochets on one corner, then another... {Shake("Textbox", 2, -1)} {PlaySFX("PoolHit")}

                //TODO SFX: Bolas de bilhar batendo
                
                #char:--
                ...And surprisingly, it lands on one of the center pockets! 

                #char:--
                Jackie celebrates, Ramos looks at the table with a glint in her eye and Flávio...<waitfor=0.5> just snorts.

                #char:--
                "<bounce>Hmph</bounce>. Beginner's luck.", he says. {PlaySFX("Bad1")}

                //SCORE: 3 (6, 4, 7) - 1 (13)
                //NEXT: JACKIE
                ~ yourScore += 1

            -> third_play

            - 3_Ball:
            + (4_Ball) [FOUR¬Set Ball 4 up for Jackie.>>]

                #char:--
                Jackie might have to carry you, but it's the best you can do.
                
                #char:--
                With a weaker strike, you place number 4 right next to one of the borders, an easy score for Jackie next turn. {Shake("Textbox", -1, -1)}  {PlaySFX("PoolHit")}

                //TODO SFX: Bolas de bilhar batendo

                #char:--
                She looks at you and nods. You know the engineer is not one to leave anyone hanging.

                //SCORE: 0 - 2 (13, 9)
                //NEXT: RAMOS

            -> third_play

            -7_Ball:
            + (7_Ball_3) [SEVEN¬Try to pocket Ball 7.>>]

                #char:--
                You try to Pocket Number 7 while you can. It's your best bet right now, and catching up to your foes seems like a priority. 

                #char:--
                You hit 7 with <>
                
                {shuffle:
                    - too much force and it bouces off a corner and back. {Shake("Textbox", 2, -1)} {PlaySFX("PoolHit")}

                        //TODO SFX: Bolas de bilhar batendo
                    
                        #char:--
                        Ramos pockets 14 and Flávio gets 15. Things are starting to look grim.

                        ~theirScore += 2

                    -> third_play
                    
                    - just the right amount of force. {Shake("Textbox", 1, -1)} {PlaySFX("PoolHit")}

                        //TODO SFX: Bolas de bilhar batendo
                    
                        #char:--
                        Ball 7 bounces at the entrance to a corner pocket once, twice... <waitfor=0.5>and it falls in.
                    
                        ~yourScore += 1
                        
                    -> third_play
                }

                //SCORE: 0 - 4 (13, 10, 14, 15)
                //NEXT: JACKIE

            }

            + (2_Ball) [TWO¬Set Ball 2 up for Jackie.>>]

                #char:--
                Maybe you can give Jackie more options to follow through.
                
                #char:--
                You hit 2 from where you are and send it to a more open space. {Shake("Textbox", 1, -1)} {PlaySFX("PoolHit")}

                #char:Jackie_happy_neutral|L
                Good call, {g_name}. Don't worry, we can do this! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

                -> third_play

                /*SCORE: VARIED
                    3 (6, 4, 7) - 1 (13)
                    3 (6, 4, 7) - 2 (13, 11)
                    0 - 2 (13, 9)
                    0 - 2 (13, 9)
                    0 - 4 (13, 10, 14, 15)
                    0 - 4 (13, 10)
                */
                //NEXT: RAMOS


            + (5_Ball) [FIVE¬Try to pocket Ball 5.>>]

                #char:--
                If you can't outskill or outsmart, try to <i>outcrazy</i>. 
                
                #char:--
                You try to measure your strength to bounce Solid 5 across the table.
                
                #char:--
                It bounces across about 4 different balls, some yours, some theirs. {Shake("Textbox", 2, -1)} {PlaySFX("PoolHit")}

                //TODO SFX: Bolas de bilhar batendo

                #char:--
                Somehow, it ends up right next to a pocket and stops there. 
                
                #char:--
                Ramos and the mantis can't dislodge it without pushing it in. 
                
            -> 5_Nothing



            = 5_Nothing

            #char:--
            Ramos goes for Stripe 12 next. {PlaySFX("PoolHit")}

            //TODO SFX: Bolas de bilhar batendo

            #char:--
            She places it near the center, needing all but a nudge to fall in - something her mantis partner seems eager to do.

            -> third_play

            /*SCORE: VARIED
            3 (6, 4, 7) - 1 (13)
            3 (6, 4, 7) - 2 (13, 11)
            0 - 2 (13, 9)
            0 - 2 (13, 9)
            0 - 4 (13, 10, 14, 15)
            0 - 4 (13, 10)
            */
            //NEXT: JACKIE



            = third_play

            #char:--
            It's Jackie's turn next. 

            #char:--
            She's very direct, actually striking ball 5 with such force that it goes straight into the hole. {PlaySFX("PoolHit")}

            //AFFINITY PASS
            {
                - g_affinity_Jackie >= -1:
                    #char:Jackie_happy_neutral|L
                    Good plays come with experience!

                    #char:Jackie_happy_neutral|L
                    I'm sure you'll be a good pool partner if we keep at it. {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer2")}
            }

            /*SCORE: VARIED
            4 (6, 4, 7, 5) - 3 (13, 12, 9)
            4 (6, 4, 7, 5) - 4 (13, 11, 12, 9)
            1 (5) - 4 (13, 9, 12, 10)
            1 (5) - 4 (13, 9, 12, 10)
            1 (5) - 6 (13, 10, 14, 15, 12, 11)
            1 (5) - 4 (13, 10, 12, 11)
            */
            //NEXT: YOU

            #char:--
            Well, time for one more shot. What do you go for?

            + (1_Ball) [ONE¬Try to pocket Ball 1.>>]
                #char:--
                Ball 1 has sat there untouched thus far. Time to change that!

                #char:--
                The angle is sharp, but maybe...

                ~ ScreenFlash("white", -1)

                #char:--
                You shoot. {Shake("Textbox", 2, -1)} {PlaySFX("PoolHit")}

                #char:--
                It's a strong, straight shot that pockets Ball 1 in one go. 

                #char:--
                The best shot of the few minutes of your pool 'career'.

                #char:--
                It's so impressive that all four of you just stand still for a second, unable to fully register the fact. 

                #char:--
                Jackie's the first to recover.

                #char:Jackie_happy_happy|L
                Now <shake>THAT'S</shake> what I'm talking about, {g_name}! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Love1")}

                ~ yourScore += 1

                /*SCORE: VARIED
                    5 (6, 4, 7, 5, 1) - 3 (13, 12, 9)
                    5 (6, 4, 7, 5, 1) - 4 (13, 11, 12, 9)
                    2 (5, 1) - 4 (13, 9, 12, 10)
                    2 (5, 1) - 4 (13, 9, 12, 10)
                    2 (5, 1) - 6 (13, 10, 14, 15, 12, 11)
                    2 (5, 1) - 4 (13, 10, 12, 11)
                */
                //NEXT: JACKIE

            + (2_Ball_2) [TWO¬Try to pocket Ball 2.>>]
                {
                    - 2_Ball:
                        #char:--
                        You've set it up, might as well finish the job.

                    - else:
                        #char:--
                        With less balls on the table, you probably have a little more space to use.
                }

                #char:--
                You aim for one of the center holes... 

                #char:--
                ...And you manage to hit it! {Shake("Textbox", 1, -1)} {PlaySFX("PoolHit")}

                #char:--
                Jackie cheers again and goes to make her shot.

                #char:--
                Just then, you briefly look at Ramos. 

                #char:--
                For a second, you swear you can see her lips curving upwards.

                ~ yourScore += 1

                /*SCORE: VARIED
                    5 (6, 4, 7, 5, 2) - 3 (13, 12, 9)
                    5 (6, 4, 7, 5, 2) - 4 (13, 11, 12, 9)
                    2 (5, 2) - 4 (13, 9, 12, 10)
                    2 (5, 2) - 4 (13, 9, 12, 10)
                    2 (5, 2) - 6 (13, 10, 14, 15, 12, 11)
                    2 (5, 2) - 4 (13, 10, 12, 11)
                */
                //NEXT: JACKIE

            + (3_Ball_4) [THREE¬Try to pocket Ball 3.>>]
                #char:--
                You're at least getting this one if it's the last thing you do.

                #char:--
                Carefully, you hit Solid 3... {Shake("Textbox", -1, -1)} {PlaySFX("PoolHit")}

                #char:--
                ...<waitfor=0.5>And it slowly goes towards the pocket, falling in what you think was a <wiggle>really</wiggle> graceful motion.

                #char:--
                Maybe you're being overly dramatic, but you can always blame it on the fact that you're playing against experienced players.

                #char:--
                Jackie pats you on the back, chuckling.

                ~ yourScore += 1

                /*SCORE: VARIED
                    5 (6, 4, 7, 5, 3) - 3 (13, 12, 9)
                    5 (6, 4, 7, 5, 3) - 4 (13, 11, 12, 9)
                    2 (5, 3) - 4 (13, 9, 12, 10)
                    2 (5, 3) - 4 (13, 9, 12, 10)
                    2 (5, 3) - 6 (13, 10, 14, 15, 12, 11)
                    2 (5, 3) - 4 (13, 10, 12, 11)
                */
                //NEXT: JACKIE

            -   #char:--
                Jackie then takes aim at <>
                {
                    - 1_Ball || 2_Ball_2: ball 3. 

                        #char:--
                        She somehow manages to make it ride along the cushion until it falls into a corner. {PlaySFX("PoolHit")}

                        /*SCORE: VARIED
                            6 (6, 4, 7, 5, 1/2, 3) - 3 (13, 12, 9)
                            6 (6, 4, 7, 5, 1/2, 3) - 4 (13, 11, 12, 9)
                            3 (5, 1/2, 3) - 4 (13, 9, 12, 10)
                            3 (5, 1/2, 3) - 4 (13, 9, 12, 10)
                            3 (5, 1/2, 3) - 6 (13, 10, 14, 15, 12, 11)
                            3 (5, 1/2, 3) - 4 (13, 10, 12, 11)
                        */
                        //NEXT: YOU

                    - 1_Ball && 2_Ball || 3_Ball_4 && 2_Ball: ball 2. 
                    
                        #char:--
                        Jackie hits the cushion on her right, but it bounces back and lands on the top left corner. {PlaySFX("PoolHit")}

                        /*SCORE: VARIED
                            6 (6, 4, 7, 5, 1/3, 2) - 3 (13, 12, 9)
                            6 (6, 4, 7, 5, 1/3, 2) - 4 (13, 11, 12, 9)
                            3 (5, 1/3, 2) - 4 (13, 9, 12, 10)
                            3 (5, 1/3, 2) - 4 (13, 9, 12, 10)
                            3 (5, 1/3, 2) - 6 (13, 10, 14, 15, 12, 11)
                            3 (5, 1/3, 2) - 4 (13, 10, 12, 11)
                        */
                        //NEXT: YOU

                    - 3_Ball_4: ball 1. 
                    
                        #char:--
                        It's a straightforward play, and once again Jackie delivers.  {PlaySFX("PoolHit")}
                        
                        #char:--
                        The first Solid goes straight into the hole.

                        /*SCORE: VARIED
                            6 (6, 4, 7, 5, 3, 1) - 3 (13, 12, 9)
                            6 (6, 4, 7, 5, 3, 1) - 4 (13, 11, 12, 9)
                            3 (5, 3, 1) - 4 (13, 9, 12, 10)
                            3 (5, 3, 1) - 4 (13, 9, 12, 10)
                            3 (5, 3, 1) - 6 (13, 10, 14, 15, 12, 11)
                            3 (5, 3, 1) - 4 (13, 10, 12, 11)
                        */
                        //NEXT: YOU
                }

                --  #char:Jackie_happy_sad|L
                    Your turn, Captain! We might even end this in a few shots, if we do it right.

                    ~ yourScore += 1

                    #char:--
                    Time to make this count. <>

                    {
                        - 1_Ball && !2_Ball || 3_Ball_4 && !2_Ball:
                            
                            #char:--
                            You take aim at Ball 2. With one ball left and everything on the line...

                            ~ ScreenFlash("white", -1)

                            #char:--
                            You screw up. {Shake("Textbox", -1, -1)} {PlaySFX("PoolHit")}
                            
                            #char:--
                            The cue stick hits at a downward angle, making the ball jump a little and not go very far.

                        -> pool_game_results

                        - 2_Ball_2 || 1_Ball && 2_Ball:
                            
                            #char:--
                            You take aim at Ball 3.
                            
                            #char:--
                            It should have been easy, but your strike is way too soft and the ball stops a bit far from the hole. {Shake("Textbox", -1, -1)} {PlaySFX("PoolHit")}
                            
                        -> pool_game_results


                        - else:
                            
                            #char:--
                            You take aim at Ball 1.
                            
                            #char:--
                            It bounces against the cushions a grand total of <i>four</i> times before falling into the pocket, to your and Jackie's elation. {Shake("Textbox", 2, -1)} {PlaySFX("PoolHit")}

                            ~ yourScore += 1

                        -> pool_game_results
                    }



            = pool_game_results

            {
                - yourScore == 5:

                    #char:--
                    There's only one ball left for you and Jackie to get - number 8.

                    #char:--
                    It's Jackie's turn, and you can't help but think it's only fair that she gets to finish this.

                    #char:--
                    The engineer gets into position, taking a moment to compose herself.

                    #char:--
                    After a moment of tense silence between the four of you, Jackie shoots.  {PlaySFX("PoolHit")}
                    
                    #char:--
                    It's another one of her fast and precise shots.

                    #char:--
                    Following the loud crack of the cue stick, the 8-ball passes by the opposing team's remaining Stripes and goes in. {StopMusic()}

                    ~ win = true
                    
                -> pool_game_ending

                - theirScore == 5:

                    #char:--
                    It's the mantis's turn now, and it's hard to miss how smug he looks.

                    #char:--
                    There's only one ball left, and he seems confident that he'll make the play he needs to - even if Ramos did most of the work.

                    #char:--
                    With an overly exaggerated flourish, the black ball is pocketed and the game is over. {StopMusic()} {PlaySFX("PoolHit")}

                    ~ g_morale -= g_statChangeMid

                    ~ win = false


                -> pool_game_ending

                - yourScore <= 5 && yourScore > theirScore:

                    #char:--
                    It's been a tough match, but you're confident in Jackie helping you through.

                    #char:--
                    Your trust is not misplaced. 
                    
                    #char:--
                    Jackie nails every shot from then on, and you're able to get the remaining ones down.

                    #char:--
                    Finally, your engineer stands face to face with the 8-ball. 
                    
                    #char:--
                    One more push... {PlaySFX("PoolHit")}
                    
                    ~ ScreenFlash("white", -1)

                    #char:--
                    ...<waitfor=0.5>And the game's over. {StopMusic()} 

                    ~ win = true


                -> pool_game_ending

                - else:

                    #char:--
                    Right now, you're not feeling too hot. You've lost a lot of good shots, while Ramos remained consistent.

                    #char:--
                    The difference between someone who plays a lot, like Jackie or Ramos, and someone like you appears to be gigantic.

                    #char:--
                    And Ramos' consistency is exactly what helps her pocket the remaining Stripes, with the mantis helping a bit.

                    #char:--
                    When the 8-ball is down, you and Jackie have fallen silent. {StopMusic()} {PlaySFX("PoolHit")}
                    
                    ~ g_morale -= g_statChangeMid

                    ~ win = false


                -> pool_game_ending
            }


            = pool_game_ending

            #char:--
            "That was a good game, folks." {StopMusic()}

            ~ ScreenFlash("white", -1)

            #char:--
            You and Jackie are momentarily taken by surprise, both at the friendly tone and at the fact that Ramos has spoken for the first time.

            {
                - win == true:

                    #char:Jackie_happy_happy|L
                    <shake>Heck yeah</shake> it was! We won, {g_name}! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")} 

                    ~ g_affinity_Jackie += g_affinityChangeHigh

                    ~ g_morale += g_statChangeMid

                    #char:--
                    You receive the prize fuel from the organizer. {PlayMusic("AquarelaTheme")}

                    ~ g_fuel += g_statChangeHigh
                    
                    #char:--
                    Flávio just rolls his eyes and leaves, not without bumping into you.

                    #char:--
                    "Don't mind him. Flávio has good techniques, but being a great player is more than that."
                    
                    #char:--
                    "You're on the right track, I'd say."

                - win == false:

                    #char:--
                    "<bounce>Well</bounce>, <bounce>well</bounce>. Looks like we win." Flávio gloats, going to retrieve the prize.

                    #char:--
                    Ramos approaches you next, with a shake of her head.

                    #char:--
                    "Don't lose hope just because you lost. You did well for a first timer, you know?"
            }

            -   #char:--
                "And you...<waitfor=0.5> Jackie, right? ""

                #char:--
                You were great! I have no idea how I've never seen you at a tournament before!

                #char:Jackie_happy_neutral|L
                Well, I'm <i>always</i> up for a challenge! 

                #char:Jackie_happy_neutral|L
                If we ever meet again, you bet we're playing! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:--
                Ramos smiles at that. You chat a bit more with her before going back to the ship.

                #char:--
                As you stroll alongside Jackie, you wonder what other stories you can find in Aquarela. 

                -> festival_end

///////////////////////////////////////////////////

= festival_end

~ FadeTo("black", 1, 1)

#char:--
When you finally get back, you notice how the crew looks more relaxed, each telling stories of their days.

{
    - g_affinity_Barto > 1 && g_affinity_Jackie > 1 && g_affinity_Kleber > 1:
        #char:--
        You feel good about your crewmates.

    - (g_affinity_Barto > 1 || g_affinity_Jackie > 1 || g_affinity_Kleber > 1) && (g_affinity_Barto < - 10 || g_affinity_Jackie < - 10 ||  g_affinity_Kleber < - 10):

        #char:--
        You're not sure what to think about <>

        {
            - g_affinity_Barto < -10:
                {
                    - g_affinity_Jackie < -10 && g_affinity_Kleber < -10:
                        Barto, <>

                    - g_affinity_Jackie < -10 || g_affinity_Kleber < -10:
                        Barto and <>

                    - else:
                        Barto yet. It feels like you're distant.
                }
        }

        {
            - g_affinity_Jackie < -10:
            {
                - g_affinity_Kleber < -10:
                    Jackie and <>

                - else:
                    Jackie yet. It feels like you're distant.
            }
        }

        {
            - g_affinity_Kleber < -10:
                Kleber yet. It feels like you're distant.
        }
    
    - else:
        #char:--
        After spending time with your crew, you're... still filled with doubt.
}

#char:--
Aquarela is mesmerizing, though.

~ g_morale += g_statChangeLow

#char:--
This city feels so alive. So different from the Crumbling Plains. {StopMusic()}

#char:--
It could be a place to start over. One day. 

-> EVENT_END

