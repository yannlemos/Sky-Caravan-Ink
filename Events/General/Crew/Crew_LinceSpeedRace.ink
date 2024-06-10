===E_Crew_LinceSpeedRace===

#scope: General
#category: Crew
#tier: Rookie, Intermediate, Expert
#intensity: High

/*Synopsis: Kleber inscreve o 41-Biz numa corrida sem pedir autorização. É o sonho dele, mas fazer o detour pode atrasar a missão.
Em compensação, o prêmio pode render mantimentos valiosos. Vocês participam?*/

#char:--
Next morning at breakfast, Kleber comes running with something in his hand.

#char:--
He puts a flyer on the table. 

#char:Kleber_happy_neutral|R
Y'all, <bounce>I've got some news</bounce>! The Lince Speed Race will take place in Fractured Peak! {Shake("Big Face", 0.5, 1)}

+ [THINK>>]

    #char:--
    You might have heard about it before, once upon a time in a Capy-Bar...

    #char:--
    Kleber pats you on the back.

    #char:Kleber_happy_neutral|R
    Of course Cap knows what I'm talking about! It's the biggest racing event of the year!

    #char:Kleber_happy_angry|R
    And it will be <shake>SO</shake> worth it! {Emotion("Outer", "orange")}

    #char:Jackie_neutral_sad|L
    ...Worth it? What are you up to, Kleber?

+ [QUESTION>>]

    #char:--
    You have no idea what he's talking about.

    #char:Kleber_happy_angry|R
    C'mon, Cap. How come you don't know Lince Speed Race? It's every pilot's dream! {Shake("Big Face", 0.5, 1)}

    #char:Jackie_happy_neutral|L
    Hey, I've heard about that before! What's up?

+ [FACEPALM>>]

    #char:--
    You don't have time for that.

    #char:Kleber_happy_neutral|R
    Cap, please hear me out. I <shake>swear</shake> it's worth it! {Emotion("Outer", "orange")}

    #char:Jackie_neutral_sad|L
    ...Worth it?

-   #char:Kleber_happy_sad|R
    Well... I registered 41-Biz yesterday.

    #char:--
    Jackie grabs the flyer. 

    #char:--
    She furrows her brow.

    #char:Jackie_angry_sad|L
    But Kleber, the event is happening <i>tomorrow</i>! {Shake("Big Face", 0.5, 1)}

    #char:Jackie_neutral_sad|L
    I mean, I'd love to gear up 41-Biz for the race, but what about our current mission?

    #char:Kleber_happy_neutral|R
    We could use some fast cash. I'm sure Cap wouldn't mind, right?

    + [NO>>]

        #char:--
        There's no time to waste. Going on a race might be fun, but you shouldn't spend a whole day for it.

        #char:--
        Kleber sinks into the sofa and shrugs.

        ~ g_affinity_Kleber -= 20

        #char:Kleber_sad_neutral|R
        A missed opportunity to get some fast cash... {Emotion("Inner", "blue")}

        #char:Kleber_sad_sad|R
        The loss is yours, I guess.

    -> EVENT_END

    + [YES>T_F_S>]

        #char:--
        You know what? Kleber's right, maybe you should give it a try.
    
        #char:Kleber_happy_happy|R
        <shake>HECK YEAH</shake>! Thanks cap! I'm not going to disappoint you! {Emotion("Outer", "yellow")}

        ~ g_affinity_Kleber +=10

        #char:--
        Kleber runs back the cockpit <> -> race_without_jackie
        
    + [JACKIE>>]

        #char:--
        You turn to Jackie and ask what her opinion is.

        #char:Jackie_happy_neutral|L
        Well, If I can spice things up a little, I'm down.

        {
            - E_Crew_DeuRuim.drink_deu_ruim:
                #char:--
                After that <i>incident</i> with Deu Ruim, you're afraid of what she means by "<wave>spicing things up</wave>."
        }

        #char:Jackie_happy_angry|L
        Here's the fix: I will install an overdrive in the ship's engine to get a speed boost.

        #char:Jackie_happy_happy|L
        Our 41-Biz is going to drink a bit more fuel, but we'll definitely win! {Emotion("Outer", "orange")}

        ++ [YES>T_F_S_G_M>]

            #char:--
            You decide to let Jackie boost the ship.

            ~ g_affinity_Jackie += 10

            #char:Jackie_happy_happy|L
            NICE! You're the best, Cap! {Emotion("Outer", "yellow")}

            #char:--
            While Jackie runs excitedly to her cabin, <> -> race_with_jackie

        ++ [NO>T_F_S>]

            #char:--
            You should play safe. The race is tomorrow. Better not do any last minute tweaks.

            ~ g_affinity_Jackie -= 10

            #char:Jackie_sad_sad|L
            C'mon Cap, don't be such a downer. {Emotion("Inner", "blue")}

            #char:--
            Jackie rolls her eyes and goes to her cabin, while Kleber runs back to the cockpit <> -> race_without_jackie



= race_without_jackie

#log: Got second place on Lince Speed Race.

#char:--
and takes the detour towards the cloud road to the arena.

~ FadeTo("black", 1, 1)

#char:--
The race caller's voice echoes through the whole stadium. 

#char:--
You, Jackie and Barto sit on the bleachers. 

#char:Announcer|SoloL
<b>41-Biz is approaching the finish line!</b> {Shake("Big Face", 0.5, 1)}

#char:--
Your heart is racing. Jackie is barely blinking.

#char:--
Barto's eyes are glued to the huge sponsor billboard. Jabuticaba Foods will give a basket of goods to the winner.

#char:Announcer|SoloL
<b><wave>...aaaand</wave> Acceleratron quickly takes the lead!</b> {Emotion("Outer", "orange")}

#char:Announcer|SoloL
<b>Here's our winner, everyone!</b> {Shake("Big Face", 0.5, 1)}

#char:Jackie_sad_neutral|L
Better trust me next time, Cap. I definitely could've made some tweaks to improve the odds.

~ g_fuel -= 50
~ g_supplies += 50

#char:Barto_happy_neutral|R
Well, at least we're getting some consolation supplies for the second place. I'm fine with that.

~ g_timeChange = 2
~ DayChange()

-> EVENT_END



= race_with_jackie

#char:--
Kleber takes the detour towards the cloud road to the arena.

#char:--
The announcer's voice echoes through the whole stadium. 

#char:--
You, Jackie and Barto sit on the bleachers, barely blinking. 

#char:--
Jackie's feet can't stop from excitement. She knows her little fix puts the ship in great advantage. 

#char:--
Barto's eyes are glued to the huge sponsor billboard. Jabuticaba Foods will give a basket of goods to the winner.

#char:Announcer|SoloL
<b><wave>...aaand</wave> {~ 41-Biz makes an impressive sprint on the last lap!</b> {Emotion("Outer", "orange")} -> win_race | something seems to have gone wrong</b> <> -> last_place} //sorteando o outcome



= win_race

#Log: Won Lince Speed Race.

#char:Announcer|SoloL
<b>Seems like we have a winner!</b>

#char:Jackie_happy_happy|L
<shake>HECK YEAH</shake>! {Shake("Big Face", 0.5, 1)}

#char:Jackie_happy_sad|L
Guess you owe me now, Kleber! {Emotion("Outer", "yellow")}

#char:Barto_happy_sad|R
All these stupendous ingredients are now MINE! We are having a feast tonight! {Emotion("Outer", "yellow")}

~ g_fuel -= 50
~ g_supplies += 50
~ g_grana += 500

#char:--
You and your crew go back to the ship. Kleber takes his helmet off. His eyes seem a bit wet, although he quickly wipes them, thinking no one noticed. 

~ g_timeChange = 2
~ DayChange()

-> EVENT_END



= last_place

#log: 41 Biz's engine exploded on Lince Speed Race.

#char:--
with 41-Biz! {Emotion("Outer", "orange")}

#char:--
Jackie quickly stands up.

#char:Jackie_sad_happy|L
...Gone wrong? {Emotion("Inner", "black")}

#char:Announcer|SoloL
<b>It seems like 41-Biz pilot is having some trouble to restart the ship. Other vehicles are coming through!</b>

#char:Announcer|SoloL
<b>Seems like the new favorite got some back luck! 41-Biz finishes in last place!</b>

#char:--
Kleber comes over furiously.

#char:Kleber_angry_angry|R
<shake>WHAT THE HECK HAPPENED?</shake> {Emotion("Outer", "red")}

#char:Kleber_angry_neutral|R
The engine started overheating in the middle of the race!

#char:Jackie_sad_sad|L
How come? I swore my calculations were right...

#char:Jackie_sad_sad|L
Don't worry y'all, I will fix it... {Emotion("Inner", "blue")}

~ g_fuel -= 50
~ g_morale -= 20

#char: --
You're going to lose an extra day fixing the ship.

~ g_timeChange = 2
~ DayChange()

-> EVENT_END