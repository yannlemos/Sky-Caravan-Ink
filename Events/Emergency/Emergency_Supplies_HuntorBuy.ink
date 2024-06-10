=== E_Emergency_Supplies_HuntorBuy ===

#emergency:supplies

{Blink("Stat Panel", 1, -1, "White")} 

#char:Barto_neutral_sad|L
Excuse me, Captain. I'm afraid we are dangerously low on supplies.

{Blink("Stat Panel", 1, -1, "White")}

#char:Barto_angry_sad|L
I don't even have enough to prepare dinner tonight.

#char:Barto_angry_angry|L
How come you let that happen? {Emotion("Outer", "red")}

#char:Kleber_neutral_neutral|R
Hey, you two.

#char:Kleber_happy_sad|R
Sorry for eavesdropping, but I think I know how to help! {Emotion("Outer", "white")}

#char:Barto_angry_angry|L
Spit it out, Kleber. What is your <i>marvellous plan</i> that will for sure put us in danger? {Emotion("Outer", "red")}

#char:Kleber_angry_angry|R
<shake> HEY! </shake> Trust your pilot, will you? {Emotion("Outer", "red")}

#char:Kleber_neutral_neutral|R
But let's go straight to the point. We are near Golden Peak. 

#char:Kleber_neutral_neutral|R
There are tons of exotic birds here.

#char:Kleber_neutral_happy|R
Why don't we hunt them for dinner?

#char:Barto_angry_angry|L
You know I like some exotic meat, but we're in the middle of the night, so let's be more responsible.

#char:Barto_neutral_angry|L
I propose something fairly simpler (and safer): let's find a convenience store. 

#char:Barto_neutral_angry|L
It's not hard to stumble across one these days. 

+ [KLEBER>>]
    
    #char:--
    You go with Kleber's suggestion. 

    #char:Barto_angry_angry|L
    I hope you know what you're doing. {Emotion("Outer", "red")}

    #char:Kleber_neutral_neutral|R 
    Don't worry, buddy. You can start thinking about the menu already.

    #char:Jackie_neutral_neutral|L
    Let me guess: you want me to handle the turret, right? 

    #char:Kleber_neutral_happy|R 
    Of course! You have the best aim of the crew! {Emotion("Outer", "white")}

    #char:Jackie_happy_neutral|L
    All right. Just don't complain if anything happens, okay?

    #char:Kleber_neutral_angry|R
    Everyone, buckle up!
    
    #char:Kleber_neutral_angry|R
    I'm going to go a bit higher. There are a lot of nests near the actual peak.

    #char:--
    Soon after, you're close to a giant Bem-te-Vi bird nest.

    #char:Jackie_happy_happy|L
    TAKE THAT! 

    #char:--
    Jackie manages to hit the sleeping bird. Jackpot! {Blink("All", 1, -1, "White")} {Shake("All", 3, -1)}

    ~ g_morale += 20

    #char:--
    As you lower the clamshell to snatch the meat, you notice a pile of supplies laying nearby.

    #char:--
    Left behind by another caravan, perhaps? 

    #char:Kleber_sad_neutral|SoloR
    Uh, y'all? I see a ship on the left.

    #char:Kleber_sad_neutral|R
    What's <i> left of it</i>, actually. {Emotion("Inner", "blue")}
    
    #char:Jackie_sad_sad|L
    Maybe they were exploring and didn't have the same luck as we did... {Emotion("Inner", "blue")}

    #char:--
    You examine the wreckage site and snatch some supplies and fuel gallons. 

    #char:--
    You quickly leave, before anything else happens.

    ~ g_supplies += 50
    ~ g_fuel += 20

-> EVENT_END


+ [BARTO>>]

    #char:--
    You go with Barto's suggestion.

    #char:--
    You search for a convenience store nearby, and not ten minutes later you are parking.

    #char:--
    These things are <i>really</i> everywhere.

    #char:Cashier|L
    Welcome! Is there anything I could help you with?

    #char:Barto_neutral_neutral|R
    Excuse me, where is the food section? Canned goods? Frozen food? 

    #char:Cashier|L
    Oh... I'm afraid we're out of stock, Sir.

    #char:Barto_neutral_neutral|R
    I see. Well, let's go back to the ship. 
    
    #char:Barto_neutral_neutral|R
    I'm sure there's another store in the surroundings.

    #char:Cashier|L
    Sir, I'm afraid you'll have some trouble finding food around here.

    #char:Cashier|L
    You see, we have been suffering from massive shortages across the Golden Peak region.

    #char:Cashier|L
    Food is being ratioed by the citizens.
    
    #char:Cashier|L
    In fact, a lot of people fled from the city already.

    #char:Jackie_sad_sad|R
    T-That's not good. At all... {Emotion("Inner", "blue")}

    #char:--
    You stop by the nearest Capy-Bar to see if there's anything to restock, but there's also nothing there.

    #char:--
    With no food in sight, you are forced to do a huge detour to look for supplies.

    #char:--
    You're left with no choice.

    #char:--
    You call your client to apologize and leave the cargo at the outpost to be taken by another caravan.

    //TO DO: eventualmente personalizar essa linha, colocar o cargo e nome do cliente dependendo da missão.

    ~ g_outcome = "Without food in sight, you call of the mission"

-> ODYSSEY_END

