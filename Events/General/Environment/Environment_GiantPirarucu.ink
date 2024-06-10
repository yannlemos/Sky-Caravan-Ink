===E_Environment_GiantPirarucu===

#scope: General
#category: M4_General3
#tier: Rookie, Intermediate, Expert
#intensity: Low
#location: Floating Ocean

// Mabel check: Ready to be localized!

#char:--
It's taken you two more days of travel, but you've finally arrived at the <color=blue3><b>Floating Ocean</b></color>.

#char:--
The deep blue waters look incredibly beautiful.

#char:--
Colorful lifeforms swim around the ship... Including some that are several times bigger than the 41-Bis.

#char:Kleber_fear_angry|L
<shake>Yeesh!</shake> I'm glad those things are far away!

//AFFINITY PASS
{
    - g_affinity_Kleber >= 0:
        #char:Kleber_neutral_neutral|L
        Anyway, {g_name}, you can rest easy!
}

#char:Kleber_neutral_happy|L
See those orange lights in the distance?

//AFFINITY PASS
{
    - g_affinity_Kleber >= 0:
        #char:Kleber_neutral_neutral|L
        Anyway, {g_name}, you can rest easy!
}

#char:Kleber_happy_happy|L
That's the outpost right next to Azure, everyone. We should be there by tomorrow! {ShipOut()}

// #char:Kleber_neutral_sad|L
// It's just a straight path. I think we can all relax a little bit today.

// #char:--
// By 'relax', he probably means 'gamble in the Caravan Network'.

// #char:--
// But it's fine. Just a little longer and you'll have your delivery reward.

#char:--
You retire to your cabin to rest. 

~ FadeTo("black", 0.5, 3)

~ UniqueEffectActivate("FishInterior")
~ PlaySFX("FishInterior")

#char:--
You open your eyes. It's... night? {StopMusic()} {StopAmbience()} 

#char:--
The Ocean is weird in the early hours, huh? Creepy noises too.

#char:--
Well, you might have a couple hours left of sleep.

//AFFINITY PASS:

{ 
    - g_affinity_Kleber >= 0:
    #char:Kleber_surprised_sad|L
    Uh, Cap? Are you awake? You might want to take a look at this...  {PlaySFX("Hit1")}

    - else:
    #char:Kleber_surprised_sad|L
    Captain, you might want to take a look at this.  {PlaySFX("Hit1")}
}


// #char:--
// You open the door and see your pilot, sweating quite excessively. 

// #char:--
// He gestures you to follow him to the cockpit.

#char:Kleber_sad_neutral|L
So... uh... I woke up and noticed it was way darker than usual, right?

#char:Kleber_sad_neutral|L
Then I turned on the headlights to check the currents. 

#char:Kleber_sad_sad|L
And that's what I saw...

#char:--
You look at the windows calmly, finally realizing you're surrounded by... 

#char:--
It's <shake>pulsating</shake> red. <shake a=2>It's flesh!</shake> {PlaySFX("Mistery1")}

#char:Kleber_sad_sad|L
So y-yeah, a beast swallowed the ship...

#char:Kleber_fear_angry|L
<shake a= 2>A. BEAST. SWALLOWED. THE. SHIP.</shake> {Shake("Big Face", 0.7, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit1")}

#char:Kleber_fear_angry|L
<shake>S-Stay calm Kleber, stay calm...</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

+ [EASYGOING¬Take a deep breath.>>]
    #char:--
    As bizarre as this situation is, it's not your pilot's fault. 
    
    #char:--
    You assure him you'll find a way to get out of this thing.

    ~ g_affinity_Kleber += g_affinityChangeMid

    //AFFINITY PASS
    {
        - g_affinity_Kleber >= 0:
            #char:Kleber_sad_neutral|L
            <shake>...Thanks, Cap.</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Shimmer2")}

        - else:
            #char:Kleber_fear_neutral|L
            ...I think you're being too optimistic here, but I sure hope we will! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}
    }
    
    #char:Kleber_fear_neutral|L
    Now... What the hell should we do?
   
+ [STERN¬Blame Kleber for the situation.>>]
    #char:--
    A pilot's role is to be aware of the surroundings all times.
    
    #char:--
    You scold him for not being attentive.

    ~ g_affinity_Kleber -= g_affinityChangeMid

    //AFFINITY PASS
    {
        - g_affinity_Kleber >= 0:
            #char:Kleber_fear_sad|L
            B-but Cap, I was literally sleeping. I need to rest too, you know? {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad2")}

        - else:
            #char:Kleber_angry_sad|L
            Yeah, you try driving around while running on no sleep! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
    }


+ [CONFUSED¬Ask Kleber if he knows anything about the creature.>>]
    #char:--
    Did you get swallowed by one of those creatures you had seen far away?

    #char:Kleber_fear_sad|L
    P-probably. I dunno, I was sleeping! {Emotion("Explosion", "39f2d6")} {PlaySFX("Woosh")}
    
    #char:Kleber_fear_sad|L
    I thought the ship's systems would have warned me if anything that size was close by!

-   #char:Jackie_neutral_sad|R
    Hey, what's with the commotion over there?

    #char:Jackie_surprised_sad|R
    Wait. <shake>WHAT?</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

    #char:Jackie_fear_happy|R
    KLEBER, <shake>WHERE IN THE WORLD</shake> ARE WE? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

    ~ g_morale -= g_statChangeLow

    #char:Barto_angry_angry|L
    Can you all please stop screaming? {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

    #char:Barto_angry_angry|L
    I need a good night of sleep in order to cook properly tomorr—

    #char:Barto_surprised_sad|L
    <wiggle><size=22>Oh.</size></wiggle>

    #char:Barto_angry_angry|L
    ...Kleber, how did you manage to take us <i>inside</i> a <shake>GIANT PIRARUCU FISH</shake>? {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")} {PlaySFX("Hit1")}

    //~ g_affinity_Barto_Kleber -= g_affinityChangeLow
    //~ g_affinity_Kleber_Barto -= g_affinityChangeLow

    // #char:Kleber_angry_angry|R
    // I. WAS. SLEEPING. Is that too hard to understand? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

    #char:--
    ... {PlaySFX("Knock")}

    #char:Jackie_fear_angry|R
    Am I the only one hearing something <shake>knock</shake>?

    #char:--
    Something is definitely out there, knocking on the 41-Bis' entrance.
    
    #char:--
    From the <i>outside</i>. Which is also a giant fish's belly. {PlaySFX("Knock")}

    #char:--
    Should you open the door?

    + (pirarucu_you_open) [YES¬See what's going on.>>]
        #char:--
        Well, if whatever is out there wanted to kill you, they wouldn't have knocked... <shake>right</shake>?

        #char:--
        You can feel the stare of your crewmates on your back as you open the door...

    + (pirarucu_jackie_opens) [NO¬Definitely not.>>]

        #char:--
        You're definitely not messing with whatever is outside that door.

        #char:Jackie_fear_angry|R
        Captain, what if it's someone stranded in here with us? I'm sorry, but we have to open.

        #char:--
        Before you can react, the door is opened. {PlaySFX("Door")}

    -   #char:--
        "Well now. I guess I have some company, after all this time." {PlaySFX("Mistery2")}

        #char:--
        Judging by the scales, it's definitely an Azurian.

        #char:--
        It's hard to tell, but something in her posture and attitude showcases age and experience.

        #char:--
        "Your ship doesn't look broken. How did old Matusalem swallow you, I wonder?"

        // #char:--
        // What in Surface is even a Matusalem?

        #char:--
        "Oh. Right. You must be confused. We're inside the oldest Titan Pirarucu in the entire Ocean."

        #char:Barto_surprised_angry|R
        ...And you've been here for <shake>how long</shake>, exactly? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

        #char:--
        "It's hard to tell the time, but it must have been several years already."

        #char:--
        "I used to be an independent caravaneer. Until the provisional government declared us criminals."

        #char:--
        "Something about us being a risk to public safety, because we weren't under their supervision."

        // #char:Kleber_sad_sad|R
        // Figures. Even C.C.A. caravans have to go through their inspections.

        #char:--
        "I tried to escape, but my ship wasn't exactly top-of-the-line."

        #char:--
        "The engine broke and I got stranded. Afterwards, old Matusalem found me. I mean, swallowed me."

        #char:Jackie_sad_neutral|R
        That's just— Maybe we can help you somehow!

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 0:
                #char:--
                Jackie looks to you, as if waiting for your input.
        }
/*
        #char:--
        It's caravaneer code to help stranded skyfarers. But then what? They'd be stuck in Azure, an outlaw.
*/
        #char:--
        Perhaps you can recommend her to the C.C.A? Or maybe help her flee the Floating Ocean?

            + [CAPYBARMAN¬Talk about the C.C.A.>>]
                #char:--
                What about working for the C.C.A.?

                #char:--
                "Oh, I did that once, before I went independent."

                #char:--
                "I don't regret my time there, but I left for a reason."

            + [FLEE¬Offer her help to flee.>>]
                #char:--
                Maybe she could flee and be an independent caravaneer somewhere else?

                #char:--
                "I appreciate your kindness, but I can't see myself living outside of the Floating Ocean." 
                
                #char:--
                "The Ocean is my home."

                #char:--
                "Here, I can at least live in my ship's remains, eating the small fish Matusalem swallows."

            -   #char:--
                "Of course, as much as I got used to Matusalem, I would appreciate if I could go back to living in Azure."
            
                #char:--
                "If you can help repair my engine, I'll do the rest. No matter what I face outside."

                #char:Jackie_sad_neutral|R
                Do you have somewhere to go after that?

                #char:--
                "No need to worry, dear."

                #char:--
                "This is just a setback. I'm not giving up!"

                #char:--
                "The unpredictable is part of the job, but there's always a fix!"

                #char:Jackie_surprised_neutral|R
                ...! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer1")}

                #char:Jackie_happy_happy|R
                Yes, yes! I'll see what I can do! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

                #char:Barto_neutral_neutral|L
                Allow me to fix dinner for five.

                #char:Kleber_fear_angry|R
                Uh, aren't you all forgetting something? Like the giant fish that swallowed us? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

                #char:Kleber_fear_happy|R
                How do we get out of here!?

                // #char:Barto_neutral_neutral|L
                // Well. After the initial scare, I started to reason it out.

                #char:Barto_neutral_neutral|L
                The pirarucu will have to open its mouth to feed again sometime.

                // #char:Barto_neutral_angry|L
                // We must only wait until then.

                #char:Jackie_happy_angry|R
                I think there's a faster way, Barto!

                #char:Jackie_happy_happy|R
                We can make some firebombs with fuel and throw them down this thing's throat!

                #char:--
                "That could work, young lady! And to be fair, I have no idea how long it would take for Matusalem to feed again."

                #char:--
                "Don't know about you, but I'm starving. Literally."

                #char:Kleber_surprised_sad|R
                C'mon, we have a gun turret. It's seen some action. Why don't we just shoot its insides?

                #char:Barto_neutral_neutral|L
                With how thick the walls of flesh around us look, I am unsure it would be enough.

                #char:--
                "Well then, we have an impasse."    

                #char:--
                "You. You're the captain, aren't you? Show me what kind of decisions you make!"

                + [BARTO¬Wait until the beast's mouth opens.>T>]

                    #char:--
                    It's probably safer to wait and see what happens.

                    ~ g_affinity_Barto += g_affinityChangeMid

                    #char:--
                    "Ah, the cautious type. Don't let it turn into indecision."


                    //AFFINITY PASS
                    {
                        - g_affinity_Barto >= 25:
                            #char:Barto_happy_happy|L
                            Well, caution <i>does</i> suit you well, {g_name}. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                            #char:Barto_happy_angry|L
                            I will organize our supplies properly so we can wait until the right time.

                        - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                            #char:Barto_neutral_neutral|L
                            Do not worry, Captain, I will do my best use our supplies well until then.

                        - else:
                            #char:Barto_angry_neutral|L
                            Hmph, better be alive and indecisive than decided and dead, I would say. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                            #char:Barto_angry_angry|L
                            I will take a look at our supplies and see what I can do for the time.
                    }

                    #char:--
                    Jackie starts fixing the Azurian's ship.

                    ~ g_timeChange = 3
                    ~ DayChange()

                    #char:--
                    Now all you have to do is wait in your respective ships until Matusalem opens his mouth.

                + [JACKIE¬Use fuel to make firebombs.>F>]
                    #char:--
                    The sooner you're out of here, the better. If you all work together in the firebombs...

                    ~ g_affinity_Jackie += g_affinityChangeMid

                    #char:--
                    "Good, you have faith in yourself and your crew. Just don't be naive."


                    //AFFINITY PASS
                    {
                        - g_affinity_Jackie >= 25:
                            #char:Jackie_happy_happy|R
                            Well, I have faith in my Captain too! I'll get started on the repairs right away! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

                        - g_affinity_Jackie < 25 && g_affinity_Jackie > -25:
                            #char:Jackie_neutral_happy|R
                            I'll get started on your ship's repairs right away! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

                            #char:Jackie_neutral_angry|R
                            Afterwards, we can prepare everything, {g_name}!

                        - else:
                            #char:Jackie_neutral_neutral|R
                            Naive, huh? Guess that makes a lot of sense.

                            #char:Jackie_neutral_neutral|R
                            ...I'll start the repairs.
                    }

                    #char:--
                    Jackie begins examining the Azurian's ship.

                    ~ FadeTo("black", 1, 1)

                    ~ g_fuel -= g_statChangeLow


                    #char:--
                    The whole thing takes a few hours. It's hard to tell inside a fish.
                    
                    #char:--
                    But eventually the Azurian is back in her ship and you get ready to drop about twenty firebombs.

                    #char:Jackie_neutral_neutral|R
                    I hope this is enough...

                    #char:--
                    You throw them all down the fish's gullet! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Explosion")} {Blink("All", 1, -1, "white")}

                    ~ ScreenFlash("yellow", 0.5)

                + [KLEBER¬Attack the beast with the ship's turret.>S>]
                    #char:--
                    You have weapons exactly for this kind of situation.

                    ~ g_affinity_Kleber += g_affinityChangeMid

                    #char:--
                    "Quite reckless, aren't you? You better not forget how to be patient."

                    //AFFINITY PASS
                    {
                        - g_affinity_Kleber >= 25:
                            #char:Kleber_happy_happy|R
                            Heh, being reckless can save lives, ma'am! Our Cap here is proof! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

                            #char:Kleber_neutral_happy|R
                            Just leave it to me! I'll ready the turret!

                        - g_affinity_Kleber < 25 && g_affinity_Kleber > -25:
                            #char:Kleber_neutral_happy|R
                            I can take the turret, {g_name}! Leave it to me! {Emotion("Shine", "ffb71b")} {PlaySFX("Woosh")}

                        - else:
                            #char:Kleber_sad_sad|R
                            Patient? Tch, you and our Cap think alike, it seems. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                            #char:Kleber_sad_angry|R
                            I'll prepare the turret.
                    }

                    #char:--
                    True to his word, Kleber wastes no time in taking the controls and shooting the walls of flesh. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")}

                    ~ g_supplies -= g_statChangeShot

                    #char:Kleber_angry_angry|R
                    Come on! Let us go, you oversized fish! 

                    /*
                    #char:--
                    He fires again! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")}
                    
                    ~ g_supplies -= g_statChangeLow
                    */

                -   #char:Barto_surprised_sad|L
                    Water! There's water coming in! {Emotion("Explosion", "39f2d6")} {PlaySFX("Waterfall")}

                    #char:--
                    There's a loud noise and sure enough, the thing's mouth opens. {StopSFX("FishInterior")} {ShipIn()}

                    #char:Kleber_happy_angry|R
                    Here we go, people! I'm going full speed! {Emotion("Shine", "ffb71b")} {PlaySFX("41Exit")} {StopSFX("Waterfall")} {PlayAmbience("Floating OceanAmbience")}  {FadeTo("black", 2, 2)} {PlaySFX("FishEscape")} {UniqueEffectDeactivate("FishInterior")}

                    #char:--
                    You're out of the Titan Pirarucu and in open water again! {ScreenFlash("white", -1)} {PlayMusic("Floating OceanTheme")}

                    ~ g_morale += g_statChangeHigh
                    
                    #char:Barto_surprised_angry|L
                    What about the Azurian? 

                    #char:Jackie_happy_happy|R
                    I think she's right behind us! Look, we got a call on the Network! {Emotion("Shine", "ffb71b")} {StopSFX("Shimmer1")}

                    #char:--
                    "That was a daring escape! Brings back memories... Ah, the caravan life." {PlaySFX("Transmission")}

                    //AFFINITY PASS
                    {
                        - g_affinity_Barto >= 25:
                            #char:Barto_happy_happy|L
                            Captain, maybe we can take some of that Titan Pirarucu meat for the trip? {Emotion("Heart", "ea2929")} {PlaySFX("Love2")}

                        - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                            #char:Barto_neutral_happy|L
                            Hmm, now that the Titan Pirarucu is down, perhaps we could take some meat... {Emotion("Heart", "ea2929")} {PlaySFX("Love2")}

                        - else:
                            #char:Barto_neutral_angry|L
                            ...Speaking frankly, we could use some of the Titan Pirarucu's meat.
                            
                            #char:Barto_neutral_angry|L
                            Eating that creature definitely sounds better than getting eaten by it.
                    }

                    #char:--
                    "...Oh, I don't think that's a good idea, dearies."

                    #char:Barto_surprised_angry|L
                    Hm? Why not?

                    #char:--
                    "I see a school of Nail Sharks approaching. The biggest I've ever seen."
                    
                    #char:--
                    "Looks like old Matusalem's days are coming to an end."

                    #char:--
                    "He'll be feasted on for weeks. It's his time, but it seems it is not mine yet..."

                    #char:--
                    "Now then, I suppose this is goodbye. You better leave before they get here."

                    #char:--
                    As you leave the premises, you can see the Titan Pirarucu fighting a group of smaller figures.

                    #char:--
                    In the end, the giant fish gives in, while the smaller ones start dragging it to the dephts.

                    #char:--
                    The whole thing takes a minute, at best. {StopMusic()}

                    #char:Kleber_fear_angry|R
                    ... 

                    #char:Barto_fear_sad|L
                    ...

                    #char:Jackie_happy_sad|R
                    That was an adventure worthy of grandma! Hehe! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

-> EVENT_END