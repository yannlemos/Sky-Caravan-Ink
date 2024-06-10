===E_Ship_PotatoFuel===

#scope: General
#category: Ship
#tier: Rookie, Intermediate, Expert
#intensity: Low

/*Synopsis: Nave bate em algum lugar e vaza combustível. 
Jackie diz saber consertar usando umas batatas, mas Barto fica ofendido porque ia usar elas pra fazer escondidinho de carne seca (jerked beef escondidinho) pra janta.

Outcomes:
    Concordar com a Jackie (- supplies, + affinity jackie, - affinity barto)
    Concordar com o Barto ( -- combustível vazando até chegar num outpost? + affinity barto, - affinity jackie)*/

#char:--
You're flying through an awfully narrow path between two parallel mountain ranges.

#char:--
Everything seems to be doing well, until you hear a loud bang. 

~ ScreenFlash("white", -1)

#char:Kleber_angry_angry|L
<shake>CRAP!</shake> {Emotion("Outer", "red")} {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

#char:Kleber_angry_angry|L
Captain, can you come here for a sec?

#char:Jackie_sad_sad|R
Geez, how's everything there? Tell me nothing broke this time! {Emotion("Inner", "blue")}

#char:--
Kleber points at the blinking fuel meter.

#char:Kleber_sad_neutral|L
A boulder fell on the ship and caused some damage to the tank... 

#char:Kleber_sad_sad|L
It doesn't seem <i>that</i> bad, but if we don't do anything, it might start leaking soon. {Emotion("Inner", "blue")}

#char:Jackie_neutral_angry|R
Hmmm... Kleber, could you see if there are any outposts nearby? 

#char:Jackie_neutral_angry|R
We will need to park so I can take a proper look. 

#char:Kleber_neutral_neutral|L
Ok, lemme check.

#char:Kleber_sad_neutral|L
There's one about... a day from here. 

#char:Kleber_sad_neutral|L
It's the closest one, apparently. {Emotion("Inner", "blue")}

#char:Jackie_sad_sad|R
That's not good... {Emotion("Inner", "blue")}

#char:Kleber_sad_sad|L
Yeah, I don't think we can afford letting fuel leak for that long...

#char:Jackie_neutral_neutral|R
Maybe instead of filling up the tank with gallons and seeing most of them go to waste, we could use a temporary substitute...?

#char:Jackie_neutral_neutral|R
...

#char:Jackie_happy_angry|R
Yeah, yeah, that will do! {Emotion("Outer", "white")} 

#char:Jackie_happy_angry|R
Here's the fix: we have some potatoes here, right? 

#char:Jackie_happy_angry|R
They're a good source to produce ethanol.

#char:Jackie_happy_angry|R
They could be used as emergency fuel until we get to the outpost, so we don't waste our own with all the leaking! 

#char:Barto_angry_angry|L
Wait, you're talking about using <shake>MY INGREDIENTS</shake> over there? {Emotion("Outer", "red")}

#char:Barto_angry_angry|L
Don't think I didn't hear a thing!

#char:Barto_angry_angry|L
I've already decided our dinner and it will be Jerked Beef Escondidinho. 

#char:Barto_neutral_sad|L
Therefore, I need the potatoes.

#char:Jackie_angry_happy|R
And make us lose <i>a bunch of fuel</i> because of that? <shake>Oh, please!</shake> {Emotion("Outer", "red")}

#char:Jackie_angry_neutral|R
I'm sure you can come up with a different recipe.

+ [JACKIE>S>]

    #log: Filled the tank with makeshift potato fuel.

    #char:--
    You agree with Jackie. Quick fixes are necessary sometimes.

    #char:--
    After all, that's why you have a mechanic on board.

    ~ g_affinity_Jackie += 10

    #char:Jackie_happy_happy|R
    <wave>GREAT!</wave> {Emotion("Outer", "white")}

    #char:Jackie_happy_happy|R
    Don't worry, it won't take too long.

    #char:-- 
    Jackie runs to her cabin's workbench, excitement in her eyes.

    ~ g_supplies -= 20

    #char:Barto_neutral_neutral|L
    Tsk. Tonight's dinner will be vulture Dobradinha, then. 
    
    #char:Barto_angry_angry|L
    I don't want to see any of you complaining. {Emotion("Outer", "red")}

    ~ g_affinity_Barto -= 10

    #char:--
    The mechanic comes back a couple hours later, a gallon in hand.

    #char:Jackie_happy_neutral|L
    All right, that should be enough. Time to replace the gallon! {Emotion("Outer", "white")}

    #char:Kleber_happy_sad|R
    Whoa, that was quick indeed! {Emotion("Outer", "white")}
    
    #char:Kleber_neutral_sad|R
    We barely lost fuel while you were dealing with your potato thingy.
    
    #char:Jackie_happy_neutral|L
    I owe it all to grandma's caravan secrets! {Emotion("Outer", "white")}

    #char:--
    You resume the trip to the outpost, where Jackie manages to actually fix the tank. 

-> EVENT_END
    
+ [BARTO>F]

    #log:Had Escondidinho for dinner.

    #char:--
    You agree with Barto. The damage to the tank doesn't seem that serious. 

    #char:--
    Might be better to wait until you reach the outpost to properly fix the issue instead of last minute quick fixes. 

    ~ g_affinity_Barto += 10

    #char:Barto_neutral_sad|L
    I appreciate that, Captain. 
    
    #char:Barto_neutral_angry|L
    I'll make sure to prepare the best Escondidinho of your life tonight! {Emotion("Outer", "white")}

    #char:Jackie_sad_neutral|R
    ...Really, Cap? 

    ~ g_affinity_Jackie -= 10
    
    #char:Jackie_sad_neutral|R
    Why hire a mechanic to fix the stuff if you won't listen to one? {Emotion("Inner", "blue")}

    #char:--
    You resume the trip to the outpost, having to bear with the leakage.

    #char:--
    The Escondidinho was worth it, though. That tasted amazing.

    ~ g_fuel -= 20

-> EVENT_END