===E_Ship_StruckByRock===

#scope: General
#category: Ship
#tier: Rookie, Intermediate, Expert
#intensity: Medium

/*Uma rocha imensa rasga o 41-Biz de lado. Jackie quer parar e quebrar a pedra aos poucos, pra evitar danificar mais a nave.
Kleber acha que consegue manobrar o Biz pra fora.*/

#char:--
In some locations, the Skyways are riddled with floating meteoroids. 

#char:--
Depending on their size, scratching the paintjob is the least of your problems.

#char:--
It takes a skilled pilot to navigate through them. 

#char:--
Unfortunately, even experienced pilots can have bad days.

~ ScreenFlash("white", -1)

{Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

#char:Jackie_angry_happy|L
Wh-what was that!? {Emotion("Outer", "red")}

#char:Kleber_angry_angry|R
Ugh, I can't believe this! We hit a rock! {Emotion("Outer", "red")}

#char:Kleber_sad_angry|R
Or... <i>got hit</i> by one, I guess. {Emotion("Inner", "blue")}


#char:--
41-Biz has stopped completely. It's stuck on the rock you hit, slightly tilted.

+ [QUESTION>>]

    #char:--
    You ask Kleber what happened. Seems weird that a rock <i>hit you</i> all of a sudden.

    #char:Kleber_sad_sad|R
    I-I'm sorry, Cap. This one's on me. The rock got me in a blind spot close to the rear. {Emotion("Inner", "blue")}

+ [ANGRY>>]

    #char:--
    Kleber should have steered the ship properly - this is unbecoming of an "experienced pilot".

    #char:Kleber_angry_sad|R
    Look, I'm doing my best here, okay!? {Emotion("Outer", "red")}

    ~ g_affinity_Kleber -=10

-   #char:Jackie_sad_angry|L
    I just had a quick look and it looks like it hit one of the thrusters. {Emotion("Inner", "blue")}
    
    #char:Jackie_sad_angry|L
    It could be worse. At least we don't have to deal with a hole in our quarters...

    #char:Jackie_sad_neutral|L
    The bad news is that the best way to fix this is to go outside and break the rock, then remove the rest whenever we get a chance to stop.

    #char:Kleber_angry_neutral|R
    No way! That's gonna take too much time! {Emotion("Outer", "red")}

    #char:Barto_angry_neutral|L
    Do you have a better suggestion? Because I don't feel like being stuck in this rock, Kleber. {Emotion("Outer", "red")}

    #char:Kleber_angry_neutral|R
    You bet I do! I can try to maneuver the ship out of the rock! {Emotion("Outer", "red")}

    #char:Jackie_angry_neutral|L
    Absolutely not! The stone's tip is lodged in the thruster! {Emotion("Outer", "red")}
    
    #char:Jackie_angry_neutral|L
    If you try to move, you'll damage it more!

    #char:Kleber_angry_neutral|R
    Look, I'm not happy with it either. 
    
    #char:Kleber_neutral_neutral|R
    But we still have two good thrusters. In my hands, that's enough to reach an outpost.

    #char:Barto_angry_angry|L
    You mean the same hands that steered us into this rock in the first place? {Emotion("Outer", "red")}

    #char:Kleber_neutral_neutral|R
    Whatever. What's your order, Cap? Waste time breaking the rock or trust your pilot?

+ (stuck_break_rock) [JACKIE>T>]

    #log: Got stuck and had to break a meteoroid.

    #char:Jackie_neutral_neutral|L
    Alright. I'll get some tools to help. Some hammers, maybe a blowtorch. 
    
    #char:Jackie_neutral_neutral|L
    Barto, can you lend me a hand?

    ~ g_affinity_Jackie += 10

    #char:Barto_neutral_angry|R
    Can do. We'll probably have to secure ourselves to the ship with some rope, to.

    #char:Kleber_angry_neutral|L
    Guess I'll try to keep the ship steady while you do it. {Emotion("Outer", "red")}

    ~ g_affinity_Kleber -= 10

    #char:--
    Kleber goes to the cockpit again, while you, Jackie and Barto prepare to break the rocks.

    #char:--
    You take turns, tying ropes to your waist and trying to break the rocks with hammers. 
    
    #char:--
    It takes you a few hours, but eventually you're able to separate the ship from the meteoroid. {Shake("All", 3, -1)}

    ~ g_time -= 1

-> EVENT_END

+ (stuck_move_out) [KLEBER>F>]

    #log: Got stuck in a meteoroid and tried to move out.

    #char:Kleber_happy_happy|R
    Good to know you trust me, Cap! Lemme try, we'll be out of here in no time. {Emotion("Outer", "white")}

    ~ g_affinity_Kleber += 10
    ~ g_affinity_Jackie -= 10

    #char:--
    Kleber turns on the thrusters and starts to maneuver the ship.
    
    #char:--
    This comes with a loud scraping noise caused by the rocks.

    #char:--
    After a few minutes of Kleber struggling with the controls, 41-Biz breaks free.

    #char:Kleber_happy_neutral|R
    See? I knew I could get us out! {Emotion("Outer", "red")}

    #char:Jackie_sad_angry|L
    Yeah, but our right thruster is pretty banged. I wouldn't be surprised if we were losing fuel. {Emotion("Inner", "blue")}

    #char:Kleber_neutral_neutral|R
    Here's the thing: I can just get us to a safe post nearby where you can repair it! 
    
    #char:Kleber_neutral_neutral|R
    It's no big deal! {Emotion("Outer", "white")}

    #char:Jackie_angry_neutral|L
    Oh, I hope so. Otherwise, our ship stability will be gone soon and so will we! {Emotion("Outer", "red")}

    #char:--
    ...Hopefully you can get this fixed soon. But for now you're going around with a hole in your thrusters.

    ~ g_fuel -= 20

-> EVENT_END