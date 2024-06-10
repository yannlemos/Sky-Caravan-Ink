=== backgrounds ===

/* TEXTO PARA APARECER NO CÉU:

Welcome to Sky Caravan, Captain. This is a game about adventure, mishaps and the unexpected. 

It's a hostile world out there, where cities are isolated up in the skies. To transport goods between them, the Cargo Caravans were born.

The faith of your ship is in your hands. Beware - your choices matter. 

You might sacrifice valuable things along the way. Supplies? Fuel? Your friendship with the crew?

It's up to you, Captain. Failure may find you - but fear not, there's always a chance to start over again.

Perhaps you will find your answers along the way.

*/

#char:--
Let's start with a choice, shall we? 

#char:--
What brings you here, Captain? -> choice

= choice 

#char:--
What is your story?

    + [SURFACE_DWELLER>>]

        ~ g_background = "Surface Dweller"

        #char:--
        You've lived quite a tough life in the Surface, haven't you?
        
        #char:--
        But then you managed to get a ticket to the skies. 

        #char:--
        <i>A ticket to freedom</i>, huh? 

        #char:--
        Well, not exactly.

        #char:--
        Now you are owing money. <i>Quite a lot of it</i>.

        #char:--
        Seems like the caravan life is the only choice to pay it back... 

        #char:--
        At least you ended up snatching a ship, <b>41-Biz</b>, after some shady bet.

        -> confirm

    + [TREASURE_HUNTER>>]

        ~ g_background = "Treasure Hunter"

        #char:--
        <i>Oh</i>... so you're quite experienced already.

        #char:--
        You used to be a lone explorer, looking for mystical artifacts hidden in all kinds of risky locations. 

        #char:--
        And then you found it. <i>The ultimate treasure</i>.

        #char:--
        Well, <i>sort of</i>. More like its coordinates.

        #char:--
        In order to get to the mysterious object, you have to enter the Forbidden City.

        #char:--
        The problem is that it can only be accessed by licensed Expert Caravaneers.

        #char:--
        That's how you ended up here.

        #char:--
        You bought an old caravan ship, <b>41-Biz</b>, in order to start your journey.

        #char:--
        You have the guts.
        
        #char:--
        All that's left is a crew. 

        -> confirm

    + [DISGRACED_CAPTAIN>>]

        ~ g_background = "Disgraced Captain"

        #char:--
        I can see you've gone through a lot.

        #char:--
        You were once a veteran caravaneer, after all.

        #char:--
        You had everything - money, faithfull allies, plenty of stories to tell...

        #char:--
        <i>But in a blink, everything was taken from you.</i>

        #char:--
        You were the sole survivor of a terrible accident.

        #char:--
        You saw yourself with a wrecked ship and no crew to tell the story.

        #char:--
        With barely any money left, you bought <b>41-Biz</b>.
        
        #char:--
        All you have for now is the promise you made that day - to start things again, the right way this time.

        -> confirm
        
= confirm

    #char:--
    Is that your story?

    + [YES>>]

        #char:--
        Interesting. Now, let's get started.

         { ChangeScreen("OutpostBar", 3.5, 1) }

        -> END

    + [NO>>]

        Having some trouble trying to remember? Don't worry. Let's go back.

        -> choice

-> END