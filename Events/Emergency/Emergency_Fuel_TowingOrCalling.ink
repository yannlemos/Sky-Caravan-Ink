=== E_Emergency_Fuel_TowingOrCalling ===

#emergency:fuel

{Blink("Stat Panel", 1, -1, "White")} {Shake("Stat Panel", 3, -1)} 

#char:Kleber_angry_angry|L
<shake>CRAP!</shake> {Emotion("Outer", "red")}

{Blink("Stat Panel", 1, -1, "White")}

#char:Kleber_angry_angry|L
CAP, WE'RE OUT OF FUEL!

#char:Barto_angry_neutral|R
...

#char:Barto_angry_angry|R
I'm disappointed, to say the least. That's a sign of poor management.

#char:Jackie_sad_sad|L
Well, at least we have the sails, right? That will buy us some time.

#char:Jackie_sad_sad|L
If not, we would be... 

#char:Jackie_sad_angry|L
Well, <i>dead</i>. {Emotion("Inner", "blue")}

#char:Barto_angry_neutral|R
We'll be adrift from now on, though.

#char:Barto_angry_neutral|R
We could try calling a ship towing company. They could get us to the nearest Capy-bar.

#char:Jackie_neutral_neutral|L
Hmm... Kleber, why don't you send a signal through the Caravan Network? 

#char:Jackie_neutral_neutral|L
Maybe there's someone who could help.

#char:Kleber_neutral_neutral|L
Fair enough. We're not that isolated, there's probably someone around.

#char:Kleber_neutral_sad|L
But in the end, it's up to you, Cap. What do you think?

+ [BARTO>>]

    #char:--
    A towing company seems like the safest option. 

    #char:--
    Sending a distress call might waste too much time before someone answers.

    #char:--
    <i>If</i> they do.

    #char:--
    You search for their number, and shortly after, the tow ship arrives.

    #char:--
    You get to the Capy-Bar, safely. 

    #char:Kleber_happy_happy|L
    All right, time to refill our stu-

    #char:Tow Pilot|R
    Hey, forgetting about something? Our payment, perhaps?

    #char:--
    Right, of course. How could you forget it.

    #char:Tow Pilot|R
    That would be 30.000 Grana for our premium service.

    #char:--
    ...Which of course you don't have.

    #char:--
    You try to argue, but they threaten to denounce you to the C.C.A. 

    #char:--
    Getting on their blacklist means no clients anymore. <i>Ever</i>.

    #char:--
    There's only one way out. 

    #char:--
    Taking 41-Biz as the payment.

    ~ g_outcome = "Lost 41-Biz to a greedy towing company"

-> ODYSSEY_END

+ [JACKIE>>]
 
    #char:--
    You send a transmission through the Network.

    #char:--
    An Expert Caravan answers shortly.

    #char:--
    It takes a couple of hours until they arrive, though.

    #char:Expert Caravaneer|L
    How are you? I apologize for taking so long, we were finishing a delivery nearby. 

    #char:Jackie_happy_neutral|R
    No worries! We appreciate it, really. {Emotion("Outer", "white")}

    #char:Expert Caravaneer|L
    Here are the gallons, as promised.

    ~ g_fuel += 50

    #char:Expert Caravaneer|L
    You had to wait quite a bit for us - why don't we treat you to a meal? 

    #char:Expert Caravaneer|L
    There is an amazing BBQ restaurant not too far from here. 

    #char:Barto_happy_happy|R
    Oh, Star Brasa? Their picanhas are divine. {Emotion("Outer", "white")}

    #char:--
    You part ways after a delicious dinner - with some leftover food to go.

    ~ g_supplies += 20
    ~ g_morale += 20

-> EVENT_END
