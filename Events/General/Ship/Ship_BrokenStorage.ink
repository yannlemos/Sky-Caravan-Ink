===E_Ship_BrokenStorage===

#scope: General
#category: Ship
#tier: Rookie, Intermediate, Expert
#intensity: Medium

/*Synopsis: De repente, o pequeno refrigerador da nave para de funcionar.
Consertar gasta tempo, mas deixar o problema existir vai custar Suprimentos.*/

#char:--
Barto approaches you with a worried look in his eyes. Jackie is right behind him.

~ ScreenFlash("white", -1)

#char:Barto_neutral_sad|L
Captain, I'm afraid we have a problem that requires immediate attention. It's about our supply storage unit.

+ [QUESTION>>]

    #char:--
    That doesn't sound too good. You ask what happened.

    #char:Jackie_neutral_sad|R
    We were doing some routine inspections and found out that there's a problem in the storage's battery.

    #char:Jackie_neutral_sad|R
    Well, it's not converting the ship's energy properly. It triggers a failsafe so the thing can't short-circuit-

    #char:Barto_neutral_neutral|L
    It turns off on its own, Captain. It has happened several times last night, from what Jackie could tell.

    #char:Jackie_sad_neutral|R
    ...Yeah, I guess that's the simple way to put it.

+ [FACEPALM>>]

    {
        - g_fixedSomething == true:
            #char:--
            It's not the first time there's a mechanical issue under the crew's nose. What's going on?

        - else:
            #char:--
            Shouldn't they have kept up with maintenance?
    }

    #char:Jackie_sad_sad|R
    That's just what we were doing, Captain. No need to point fingers. {Emotion("Inner", "purple")}

    #char:Barto_neutral_neutral|L
    Jackie's right. The problem is, we noticed that the battery isn't working. It occasionally stops giving energy to the storage.

+ [FIX>>]

-   #char:--
    If it's broken, it should be fixed, no questions asked.

    #char:Jackie_neutral_angry|R
    Well, here's the fix: I can use a few spare parts to temporarily give the unit a hand in converting energy.

    #char:Jackie_neutral_angry|R
    It won't be perfect, but I guess it can hold on until we get to a city and buy the parts we need to do it the optimal way.

    + [YES>T>]

        #log: Fixed your broken storage supply unit.

        #char:--
        Well, better safe than sorry. Keeping a good supply of food along the ride is an important part of being a good caravan. 

        #char:--
        And, well, bad caravans don't stay operating for long, do they?

        #char:Jackie_happy_sad|R
        On it, captain! It will take some time, but we'll do it! {Emotion("Outer", "orange")}

        #char:--        
        You tell Kleber to stop the ship for the day, while Jackie gathers her tools and Barto slowly empties the storage.

        ~ g_timeChange = 2
        ~ DayChange()
        ~ g_fixedSomething = true

    -> EVENT_END

    + [THINK>>]

        #char:--
        If it was that easy, why would they bring it to you? You ask her if there's a 'but'.

        #char:Jackie_neutral_sad|R
        Well... yeah, it will take some time. And we gotta stop the 41-Biz, unless you want me and Barto to be electrocuted in the repairs.

        #char:Barto_neutral_sad|L
        Captain, <i>please</i> consider it. With the storage turning off on its own, especially at night, our supplies might spoil faster.
        
        #char:Barto_sad_sad|L
        We might get sick, or even run out of food. {Emotion("Inner", "black")}

        ++ [YES>T>]

            #log: Fixed your broken storage supply unit.

            #char:--
            You agree with them. It's better to fix this now than get stranded with no food.

            #char:--        
            You tell Kleber to stop the ship for the day, while Jackie gathers her tools and Barto slowly empties the storage.

            ~ g_timeChange = 2
            ~ DayChange()

        -> EVENT_END

        ++ [NO>S>]

            #log: Refused to fix the storage unit and let some supplies spoil.

            #char:--
            You don't have time to spare - maybe you can handle a few more days as it is. It's a risk, sure, but it's one you're willing to take.

            #char:--
            Instead, you tell Barto to prioritize cooking fresh ingredients and leave the non-perishables for later.

            #char:--
            The chef looks disappointed, but complies.

            #char:Jackie_sad_neutral|R
            Well, I hope the storage lasts until our next stop. For all our sakes...

            ~ g_suppliesChange += 10

        -> EVENT_END
