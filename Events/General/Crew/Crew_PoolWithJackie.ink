===E_PoolWithJackie===

#scope: General
#category: Crew
#tier: Rookie, Intermediate, Expert
#intensity: High

VAR yourScore = 0
VAR theirScore = 0
VAR win = false

//Durante uma parada numa cidade, Jackie pede que você seja parceiro(a) dela numa rodada de sinuca contra dois jogadores mais experientes.
//Você pode recusar (-Afinidade Jackie) ou aceitar, perdendo ou ganhando.

    #char:--
    You arrive at a resting spot for caravaneers. There are a few trading spots and refueling stations, all protected by travelers so no one tries anything funny.

    #char:--
    While Kleber and Barto go take a short rest, Jackie calls you to the side.

    #char:Jackie_happy_neutral|L
    Hey, Captain, I heard they have a pool table here!

    #char:Jackie_happy_sad|L
    So, want to be my partner? Don't worry, I can always carry us through! {Emotion("Outer", "orange")}

    + [YES>G>]

        #char:--
        You could use a little distraction.

        #char:Jackie_happy_happy|L
        <bounce>Nice</bounce>! I knew I could count on you! {Emotion("Outer", "yellow")}
        
        #char:Jackie_happy_angry|L
        Let's go, they have a table set in that warehouse over there.
   
        ~ g_affinity_Jackie += 10

        #char:--
        You're nervous about playing for money without a lot of experience. But Jackie is a pro, so at least you think there's a chance.

        #char:--
        Jackie takes you to the warehouse-turned-lounge.

        ~ FadeTo("black", 1, 1)

    -> the_pool_game

    + [NO>>]

        #char:--
        You don't really care for these games.

        #char:Jackie_sad_neutral|L
        Suit yourself, then. I'll go off on my own.

        ~ g_affinity_Jackie -= 10

        #char:--
        Jackie goes towards the warehouse, disappointment lacing her tone.

        #log: Refused to play pool with Jackie.

    -> EVENT_END

    + [QUESTION>>]

    #char:--
    You ask what's in it for you.

    #char:Jackie_happy_angry|L
    Well, people bet money on matches, so if you're interested we can win something!

        ++ [YES>G>]

            #char:--
            Now she's talking your language! You have no idea how to play, but if there's Grana involved, you can always learn.

            #char:Jackie_happy_sad|L
            I <bounce>knew</bounce> that would get your attention! You can be almost as bad as Kleber sometimes, you know? {Emotion("Outer", "orange")}
            
            ~ g_affinity_Jackie += 10

            #char:--
            You roll your eyes, but motion towards the warehouse. Jackie eagerly follows your pace.

            ~ FadeTo("black", 1, 1)

        -> the_pool_game

        ++ [NO>>]

            #char:--
            You're not confident in winning...

            #char:Jackie_neutral_neutral|L
            I get it. I won't rope you into something you don't want to do.

            #char:Jackie_sad_neutral|L
            I could help you, but I guess it's a lot of pressure to put a newbie in... {Emotion("Inner", "blue")}

            ~ g_affinity_Jackie -= 10

            #char:--
            Jackie goes towards the warehouse, disappointment lacing her tone.

            #log: Refused to play pool with Jackie.

        -> EVENT_END



= the_pool_game

    #char:--
    After entering the improvised space, it doesn't take long for Jackie to find another duo willing to play some high-stakes billiards with you.
    
    #char:--
    You give them a glance.

    + [POINT_LEFT>>]

        #char:--
        There's a river dolphin. Looks a bit intimidating. He has a lot of mechanical implants, probably to survive on land.

    + [POINT_RIGHT>>]

        #char:--
        The guy on the right looks... <i>plain</i>. His attire consists of a suspiciously normal sleeveless shirt and a backwards cap.

    -   #char:--
        Jackie briefly regards your opponents before turning to you.

        #char:Jackie_happy_neutral|L
        We'll have to alternate shots. If you're not confident in pocketing, you can try disrupting their plays or setting me up!

        #char:--
        And with that, Jackie goes to play the break shot, freeing the balls from their triangle formation. They scatter, and the game is on.

        #char:--
        Since no balls were pocketed, it's the other team's turn now.
        
        #char:--
        The man with a cap manages to use one of your balls to hit ball 13, sinking it right off the bat. Not a good start for you.

        #char:--
        His partner then goes up, but fumbles a bit, and ball 9 ends up in an awkward spot.

        #char:--
        It's your team's turn again, so you get in position. Jackie gives you a thumbs up.

        #char:--
        Ball 6 is in a good spot, you might pocket it. You could set up 3 for Jackie, or try to disrupt the other team by making your 7 hit their 10.

        //SCORE: 0 - 1 (13)
        ~ theirScore += 1

        + (6_Ball) [6-BALL>>]

            #char:--
            You go for broke and strike the Solid as hard as you can.
            
            #char:--
            Ball 4 is knocked to the side, but you manage to pocket 6 in one of the corners.

            #char:Jackie_happy_sad|L
            Nice, Captain! I won't waste that chance. {Shake("Big Face", 0.5, 1)}

            #char:--
            Using her turn, Jackie leans a bit over the table and manages to find a good angle to hit 4 from where you left it.

            ~ ScreenFlash("white", -1)

            #char:--
            It ricochets against the rail, then surprisingly bounces back against the cue and sinks into the opposite corner.

            #char:Jackie_happy_happy|L
            Nice! We're on the right track! {Emotion("Outer", "yellow")}

            #char:--
            The river dolphin is frowning, but the white shirt man is still calm.

            //SCORE: 2 (6, 4) - 1 (13)
            //NEXT: YOU
            ~ yourScore += 2

        + (3_Ball) [3-BALL>>]

            #char:--
            You try to play it safe, like Jackie said.
            
            #char:--
            The cue hits 3, getting it closer to a corner. Jackie nods, glad you're following through.

            #char:--
            But now it's the opposing team's turn. The man on the white shirt looks carefully at the table, before getting into position to hit 9.

            #char:--
            He manages to curve the Stripe <i>just</i> right so it bounces off his 12 and gets pocketed.

            ~ ScreenFlash("white", -1)

            #char:--
            That's not all, though. Ball 12 smacks against your 3, pushing it away from the corner, toward the center.

            #char:--
            You can't help but grimace, and you think Jackie is doing the same. Whoever this guy is, he's good.

            //SCORE: 0 - 2 (13, 9)
            //NEXT: DOLPHIN
            ~ theirScore += 1

        + (7_Ball) [7-BALL>>]

            #char:--
            You can't help Jackie, but you can hinder your opponents.
            
            #char:--
            You hit Solid number 7, making it bump into Stripe number 10, pushing it against the rail.

            #char:--
            Your satisfaction doesn't last long, though, as the white shirt guy finds a good position and pockets it anyway.

            #char:Jackie_neutral_happy|L
            I knew he was good, but this is just crazy. <bounce>Finally</bounce>, a good challenge!

            //SCORE: 0 - 2 (13, 10)
            //NEXT: DOLPHIN
            ~ theirScore += 1

        -   #char:--
            You ask Jackie if she knows the man in the white shirt. She nods.

            #char:Jackie_neutral_happy|L
            Well, I know his name. Ramos, the pool wizard.
            
            #char:Jackie_neutral_happy|L
            He's famous among pool players. They say he used to be part of a caravan, but became a professional player. Makes good money from tournaments, too.

            + (nervous_1) [FEAR>>]

                #char:--
                <shake>You're up against a pro</shake>!? Why did Jackie not tell you about this!? And she still picked a beginner as a partner?

                #char:Jackie_happy_sad|L
                Relax, captain, we'll be fine! Just focus on the game!

            + [THINK>>]

                #char:--
                You ask Jackie if she has a plan to beat Ramos.

                #char:Jackie_neutral_sad|L
                We probably can't beat him the usual way. Ramos has likely seen most plays thousands of times.

                #char:Jackie_neutral_sad|L
                Our best bet is to just rely on our instincts.

                ++ (nervous_2) [FACEPALM>>]

                    #char:--
                    That doesn't sound comforting.

                    #char:Jackie_happy_sad|L
                    Oh, it'll work! Remember, "winging it" is our Caravan's specialty! {Emotion("Outer", "orange")}

                ++ (calm) [RELAX>>]

                    #char:--
                    Okay, just fake it until you make it. You don't have a better plan, either way.

            
            -   #char:--
                Hopefully you can do well enough to win this.

                
                {
                    - 3_Ball || 7_Ball:
                    #char:--
                    While you were talking, the dolphin has tried to fix his previous mistake at setting up ball 9.

                    #char:--
                    He doesn't sink it, but manages to get it right in front of the hole. Next turn, it's getting pocketed for sure.

                }
                    
                #char:--
                ...Alright. It's your turn again. What do you do?

                {
                    - 6_Ball && calm:
                    + (7_Ball_2) [7-BALL>>]

                        #char:--
                        Maybe you can go for a pocket, even if it's far. It's a risky move, but Jackie is counting on you to extend your advantage.

                        #char:--
                        You use a lot of force. The ball ricochets on one corner, then another... and surprisingly, it lands on one of the center pockets!

                        #char:--
                        Jackie celebrates, Ramos looks at the table with a glint in his eye and the dolphin... just snorts.

                        #char:Dolphin|R
                        Hmph. Beginner's luck. {Emotion("Inner", "red")}

                        //SCORE: 3 (6, 4, 7) - 1 (13)
                        //NEXT: JACKIE
                        ~ yourScore += 1

                    -> third_play

                    - 6_Ball && nervous_1 || nervous_2:
                    + (3_Ball_2) [3-BALL>>]

                        #char:--
                        Keep trying to pocket. It will work. <i>Maybe</i>. Persistence got you into the Caravan life. It can get you this win.

                        #char:--
                        It doesn't. You mess up your shot by hitting the wrong spot, and Number 3 veers off to the left, setting up their 11.

                        #char:--
                        Ramos, of course, doesn't waste the chance. And with that, your advantage is gone.

                        //SCORE: 2 (6, 4) - 2 (13, 11)
                        //NEXT: DOLPHIN
                        ~ theirScore += 1

                    -> third_play

                    - 3_Ball && calm:
                    + (4_Ball) [4-BALL>>]

                        #char:--
                        Jackie will have to carry you, but it's the best you can do.
                        
                        #char:--
                        With a weaker strike, you place number 4 right next to one of the borders, an easy score for Jackie next turn.

                        #char:--
                        She looks at you and nods. You know the mechanic is not one to leave anyone hanging.

                        //SCORE: 0 - 2 (13, 9)
                        //NEXT: RAMOS

                    -> third_play

                    - 3_Ball && nervous_1 || nervous_2:
                    + (3_Ball_3) [3-BALL>>]

                        #char:--
                        You try hitting 3 again. Maybe you can set up better. It's predictable, but you don't have the skills to do much else.

                        #char:--
                        You mess up badly because of your nerves. The cue goes sailing straight to one of the corners and is pocketed.

                        #char:--
                        Jackie can't prevent herself from swearing and you can practically hear the dolphin grinning.
                        
                        #char:--
                        Ramos wordlessly picks the cue back from the hole and places it in a good position for him.

                        //SCORE: 0 - 2 (13, 9)
                        //NEXT: RAMOS

                    -> third_play

                    -7_Ball && calm:
                    + (7_Ball_3) [7-BALL>>]

                        #char:--
                        You try to Pocket Number 7 while you can. It's your best bet right now, and catching up to your foes seems like a priority.

                        #char:--
                        You hit 7 with <>

                        ~ ScreenFlash("white", -1)
                        
                        {shuffle:
                            - too much force and it bouces off a corner and back. Ramos pockets 14 and the Dolphin gets 15. Things look grim...

                                ~theirScore += 2

                            -> third_play
                            
                            - just the right amount of force. Ball 7 bounces at the entrance to a corner pocket once, twice... and it falls in.
                            
                                ~yourScore += 1
                                
                            -> third_play
                        }

                        //SCORE: 0 - 4 (13, 10, 14, 15)
                        //NEXT: JACKIE

                    -7_Ball && nervous_1 || nervous_2:
                    + (4_Ball_2) [4-BALL>>]

                        #char:--
                        No way you can beat someone at snooker, what were you <shake>thinking</shake>!? Better play safe and pray that Jackie can do the rest.

                        #char:--
                        You just bump whatever ball you can hit, hoping that Jackie can play for the both of you.

                        //SCORE: 0 - 4 (13, 10)
                        //NEXT: DOLPHIN

                    -> third_play

                }
                
                    + (2_Ball) [2-BALL>>]

                        #char:--
                        There's hope. Don't lose your cool. At least you can still give Jackie more options to follow through.
                        
                        #char:--
                        You hit 2 from where you are and send it to a more open space.

                        #char:Jackie_happy_neutral|L
                        Good call, cap. Don't worry, we can do this!

                        #char:--
                        You <i>really</i> want to believe her words.

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


                    + (5_Ball) [5-BALL>>]

                        #char:--
                        If you can't outskill or outsmart, try to out<i>crazy</i>. You try to measure your strength to bounce Solid 5 across the table.
                        
                        #char:--
                        It bounces across about 4 different balls, some yours, some theirs.

                        ~ ScreenFlash("white", -1)

                        #char:--
                        {~Somehow, it ends up right next to a pocket and stops there. Ramos and the dolphin can't dislodge it without pushing it in<>-> 5_Nothing | Despite all of that, nothing too significant happens<>-> 5_Nothing | Bad idea. Thanks to you, their ball 12 gets a bit too close to the bottom left corner<>-> 5_BadPlay}



= 5_Nothing
#char:--
.

#char:--
Ramos goes for Stripe 12 next. He places it near the center, needing all but a nudge to fall in - something his partner seems eager to do.

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



= 5_BadPlay

#char:--
Ramos immediately gets 12, and his partner then proceeds to pocket<>
{
    - 6_Ball: 9. They've caught up with you.
    - 3_Ball: 10. You'll lose if you don't do something.
    - 7_Ball: 11. The Stripes are almost gone.
}

#char:--
Ramos plays again, and goes for<>
{
    - 6_Ball: 10. However, he's off by just a little bit, which is a relief.
    - 3_Ball: 15. He misses, which is just the opportunity you needed to catch up.
    - 7_Ball: 9. There's not many left before they go for the 8-Ball.
}  

#char:--
As it turns out, a newbie player can't just shoot by heart.

~ theirScore += 2

-> third_play

/*SCORE: VARIED
    3 (6, 4, 7) - 3 (13, 12, 9)
    3 (6, 4, 7) - 4 (13, 11, 12, 9)
    0 - 4 (13, 9, 12, 10)
    0 - 4 (13, 9, 12, 10)
    0 - 6 (13, 10, 14, 15, 12, 11)
    0 - 4 (13, 10, 12, 11)
*/
//NEXT: JACKIE



= third_play
#char:--
It's Jackie's turn next. She's very direct, actually striking ball 5 with such force that it goes straight into the hole.

#char:Jackie_happy_neutral|L
Good plays come with experience, Cap! I'm sure you'll be a good pool partner if we keep at it.

{
    - 7_Ball_2 || 4_Ball || 2_Ball:
        #char:--
        Maybe you could see yourself having some fun with that. As long as it was a more casual experience.

    - 3_Ball_2 || 3_Ball_3 || 7_Ball_3 || 4_Ball_2 || 5_Ball:
        #char:--
        You'd rather not do this again, really. This one 8-Ball game is all you need for the rest of your life.

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

+ (1_Ball) [1-BALL>>]

    #char:--
    Ball 1 has sat there untouched thus far. Time to change that! The angle is sharp, but just maybe...

    #char:--
    No time for 'confidence'. The game's at stake and you have money to gain from it.

    #char:--
    You shoot. It's a strong, straight shot that pockets Ball 1 in one go. The best shot of the few minutes of your pool 'career'.

    #char:--
    It's so impressive that all four of you just stand still for a second, unable to fully register the fact. Jackie's the first to recover.

    #char:Jackie_happy_happy|L
    Now <bounce>THAT'S</bounce> what I'm talking about, Cap! {Emotion("Outer", "yellow")}

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

+ (2_Ball_2) [2-BALL>>]

    {
        - 2_Ball:
            #char:--
            You've set it up, might as well finish the job.

        - else:
            #char:--
            With less balls on the table, you probably have a little more space to use.
    }

    #char:--
    You aim for one of the center holes and... <i>you manage to hit it</i>! Jackie cheers again and goes to make her shot.

    ~ ScreenFlash("white", -1)

    #char:--
    Just then, you briefly look at Ramos. For a second, you swear you can see his lips curving upwards.

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

+ (3_Ball_4) [3-BALL>>]
    
    #char:--
    You're at least getting this one if it's the last thing you do.

    #char:--
    Carefully, you hit Solid 3... and it slowly goes towards the pocket, falling in what you think was a really graceful motion.

    #char:--
    Maybe you're being overly dramatic, but you can always blame it on the fact that you're playing against an experienced player.

    #char:--
    Jackie pats you in the back, chuckling.

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
    She then takes aim at <>
    {
        - 1_Ball || 2_Ball_2: ball 3. 

            #char:--
            Jackie somehow manages to make it ride along the cushion until it falls into a corner.

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
            Jackie hits the cushion on her right, but it bounces back and lands on the top left corner.

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
            It's a straightforward play, and once again Jackie delivers. The first Solid goes straight into the hole.

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
        Your turn, Cap! We might even end this in a few shots, if we do it right.

        ~ yourScore += 1

        #char:--
        Alright then. Time to make this count. <>

        {
            - 1_Ball && !2_Ball || 3_Ball_4 && !2_Ball:
                
                #char:--
                You take aim at Ball 2. With one ball left and everything on the line...

                #char:--
                You screw up. The cue stick hits at a downward angle, making the ball jump a little and not go very far.

            -> pool_game_results

            - 2_Ball_2 || 1_Ball && 2_Ball:
                
                #char:--
                You take aim at Ball 3. 
                
                #char:--
                {shuffle:
                    - It should have been easy, but your strike is way too soft and the ball stops a bit far from the hole. 
                        -> pool_game_results
                        
                    - You manage to hit the ball with just enough force that it tips a bit over the hole and falls in. 
                        ~ yourScore += 1
                        
                        -> pool_game_results
                }

            - else:
                
                #char:--
                You take aim at Ball 1. 
                
                #char:--
                It bounces against the cushions a grand total of <i>four</i> times before falling into the pocket, to your and Jackie's elation.

                ~ yourScore += 1

            -> pool_game_results
        }



= pool_game_results

{
    - yourScore == 7:

        #char:--
        There's only one ball left for you and Jackie to get - number 8.

        #char:--
        It's Jackie's turn, and you can't help but think it's only fair that she gets to finish this.

        #char:--
        Your crew's mechanic gets into position, taking a moment to compose herself.

        #char:--
        After a moment of tense silence between. the four of you, Jackie shoots. It's another one of her fast and precise shots.

        #char:--
        Following the loud crack of the cue stick, the 8-ball passes by the opposing team's remaining Stripes and goes in.
        
        + [HAPPY>>]

            #char:--
            You can't help but celebrate loudly, and if the sound of clapping is any indication, neither can some patrons near you.

            ~ win = true

            #log: Won a match against Ramos, the Pool Wizard.

        -> pool_game_ending

        + [RELAX>>]

            #char:--
            You let out a sigh of relief. Somehow, you and Jackie pulled through.

            ~ win = true

            #log: Won a match against Ramos, the Pool Wizard.

        -> pool_game_ending

    - theirScore == 7:

        #char:--
        It's the dolphin's turn now, and you it's hard to miss how smug he looks.

        #char:--
        There's only one ball left, and he seems confident that he'll make the play he needs to - even if Ramos did most of the work.

        #char:--
        With an overly exaggerated flourish, the black ball is pocketed and the game is over.

        ~ win = false

        #log: Barely lost in snooker against Ramos and his partner.

    -> pool_game_ending

    - yourScore <= 7 && yourScore > theirScore:

        #char:--
        It's been a tough match, but you're confident in Jackie helping you through.

        #char:--
        Your trust is not misplaced. Jackie nails every shot from then on, and you're able to get the remaining ones down.

        #char:--
        Finally, your crew's mechanic stands face to face with the 8-ball. One more push... and the game's over.

        ~ win = true

        #log: Won at pool thanks to Jackie's help.

    -> pool_game_ending

    - theirScore <= 7 && yourScore < theirScore:

        #char:--
        Right now, you're not feeling too hot. You've lost a lot of good shots, while Ramos remained consistent.

        #char:--
        The difference between someone who plays a lot, like Jackie or Ramos, and someone like you appears to be gigantic.

        #char:--
        And Ramos' consistency is exactly what helps him pocket the remaining Stripes, with the dolphin helping a bit.

        #char:--
        When the 8-ball is down, you and Jackie have fallen silent.

        ~ win = false

        #log: Lost a money match of snooker, miserably.

    -> pool_game_ending
}



= pool_game_ending

#char:Ramos|R
That was a good game.

~ ScreenFlash("white", -1)
    
#char:--
You and Jackie are momentarily taken by surprise. Both at the friendly tone and at the fact that Ramos has spoken for the first time.

{
    - win == true:
    
        #char:Jackie_happy_happy|L
        <wave>Heck yeah it was! We won, Cap!</wave> {Emotion("Outer", "yellow")}

        ~ g_affinity_Jackie += 10

        #char:--
        Ramos then gives you his part of the cash prize. The dolphin grumpily does the same, then leaves.

        ~ g_grana += 500

        #char:Ramos|R
        Don't mind him. Flávio has good techniques, but being a great player is more than that. You're on the right track, I'd say.

    - win == false:

        #char:--
        The dolphin approaches you then.

        #char:Dolphin|R
        Well, well. Looks like we win. Now, our prize money, if you please. {Emotion("Outer", "yellow")}

        #char:--
        You give some money to the dolphin. He takes a part and leaves the rest near Ramos before leaving.

        ~ g_grana -= 500

        #char:Ramos|R
        Don't lose hope just because you lost. You did well for a first timer, you know?
}

-   #char:Ramos|R
    And you, Jackie, right? You were great! I have no idea how I've never seen you at a tournament before!

    #char:Jackie_neutral_neutral|L
    Er, thanks. But playing pool is more of a hobby to me. I'm a Caravan mechanic, you know.

    #char:Ramos|R
    Ah, shame. We could always have some fresh blood competing to make things harder.

    + [YES>>]

        #char:--
        Maybe not with money on the line next time, but hey, pool is pretty fun.

    + [NO>>]

        #char:--
        You think it's a bit too much for you. You're not that competitive.

        #char:Jackie_happy_neutral|L
        Well, <i>I'm</i> always up for a challenge! If we ever meet again, you bet we're playing, Ramos! {Shake("Big Face", 0.5, 1)}

    -   #char:--
        Ramos smiles at that. You chat a bit more with him before going back to the ship. Duty calls, after all.

-> EVENT_END
