===E_Ship_DistressCall===

#scope: General
#category: M3_General2
#tier: Rookie, Intermediate, Expert
#intensity: Medium
#location: Skyways

/*Um distress call bate no radar da nave e vocês tem que decidir se vão ver ou não. 
Parece ser de outra caravana mas o Kleber tem um mau pressentimento.

/*Outcomes:
Jogador se recusa a ver o que é. (- Morale, + Affinity_Kleber)
Jogador investiga o chamado ( - Fuel, - Affinity_Kleber)
Bartô sugere uma coisa (+ Affinity_Barto)
Jackie sugere outra coisa (+ Affinity_Jackie)

Dependendo da escolha, o player acha os caravaneiros em perigo ou é atacado por um monstro.
Monstro: Lutar (+ Morale, - Supplies)
Monstro: Fugir (- Morale)
Caravana: Ajudar com Fuel (+ Morale, - Fuel)
Caravana: Ajudar com Supplies (+ Morale, - Supplies)
*/

VAR sent_signal = false

#char:--
The next day, Jackie manages to fix the autopilot and you continue on your way.

#char:--
...Or you <i>would</i> have, until a ping hits your radar. {PlaySFX("Hologram")}

#char:--
The crew gathers at the cockpit.

#char:Kleber_surprised_neutral|L
{g_name}, a notification just got through the Caravan Network! {PlaySFX("Mistery3")}

#char:Barto_neutral_angry|R
Is it Gabriela? We are getting close to the Refinery, after all...

#char:Kleber_fear_sad|L
...It's a distress signal! About a day from here! {Emotion("Explosion", "39f2d6")} {PlayMusic("Tension")} {PlaySFX("Hologram")}

#char:Jackie_surprised_happy|R
Captain, we should check it out! {Emotion("Explosion", "39f2d6")} {PlaySFX("Woosh")}

#char:Barto_surprised_angry|R
A-are you sure? 

#char:Barto_surprised_angry|R
We are so close to the Refinery... This better not be a trap. 

#char:--
Should you check the distress signal?

+ (distress_investigate) [YES¬Follow the distress call.>T>]
    #log: Followed a distress call.

    #char:Kleber_neutral_neutral|L
    Got it! Changing route to the signal's source, Cap.

    #char:Jackie_sad_sad|R
    I just hope we get there on time to save someone...

    #char:Barto_fear_angry|R
    What worries me is what we will find there... {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")}
    
    #char:--
    And with that, the crew proceeds to a new destination. {StopMusic()}

    ~ FadeTo("black", 1, 1)

-> investigating_signal

+ [NO¬Ignore it.>M>]
    #log: Ignored a distress call.

    #char:--
    You don't have the time or the resources to investigate or solve whatever trouble they're in. {StopMusic()}

    #char:--
    Plus, it could be a false alarm.

    #char:Jackie_sad_sad|R
    But {g_name}, caravaneers have an unspoken rule to help each other out in the Skyways! {PlaySFX("Woosh")}

    #char:Jackie_sad_happy|R
    There might not be someone else who can help for miles, and they could've been sending it for days! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

    ~ g_affinity_Jackie -= 10

    #char:Kleber_sad_sad|L
    Captain has a point, though. We're not really well-equipped to do this.

    {
        - g_time <= 1:
            #char:Kleber_fear_sad|L
            Plus, we're too close to our deadline for comfort!
    }

    #char:Jackie_sad_sad|R
    ...Guess I thought better of you two. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

    ~ g_morale -= g_statChangeMid

    #char:--
    Jackie shakes her head and leave the room.

    ~ FadeTo("black", 1, 1)

-> chamaleonic_vulture



= investigating_signal

#char:Kleber_neutral_neutral|L
Alright, so the signal is coming from around here.

#char:--
You keep looking for the crew who sent the signal, but to no avail.

#char:Barto_fear_neutral|R
Maybe it <i>really</i> is a trap... {PlayMusic("Decision")} {PlaySFX("StrongWoosh")}

#char:Jackie_surprised_happy|R
Look! There's smoke coming from between those clouds! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:--
And where there is smoke...

#char:Kleber_surprised_neutral|L
I see it! There's a ship drifting with its sail! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:--
The vehicle is small, probably a two-seat model.

#char:Jackie_surprised_sad|R
I know that model! It's meant for short trips... Doesn't even have a kitchen or toilet.

#char:--
You get close and contact the other ship through the Network.

#char:--
"<shake>Oh, thank goodness!</shake> We've been stranded here for hours!" {PlaySFX("Hologram")}

#char:--
Well, there's contact.

#char:--
You can ask for details about the accident or see if their crew is fine. 

+ [CRASH¬Ask for details about the accident.>>]
    #char:--
    You ask the two occupants what the problem is. 

    #char:--
    "We got tricked by someone selling adulterated Batizada fuel!" {PlaySFX("StrongWoosh")}

    #char:--
    "It's really hard to know by eyeballing it, so some bastards take advantage of it."

    #char:--
    "Some merchants are selling real Batizada, others are not..."

    #char:--
    "Which one you get is like drawing a lottery."

    {
        - bought_booster_x:
            #char:--
            You, Jackie and Barto turn to look at Kleber.

            #char:Kleber_surprise_angry|L
            H-huh. Guess we lucked out, at least! {PlaySFX("Funny2")}

        - else:
            #char:--
            You'll keep that in mind, but what can you do for them right now?
    }

+ [CREW¬Ask about their crew.>>]
    #char:--
    You ask whether they are alright or hurt.

    #char:--
    "We're okay! We had food for a few days too."

    #char:--
    "As for our ship... Not so much. We're lucky it had enough energy to keep floating until now."

    #char:--
    "And to keep sending out the emergency signal, of course. Otherwise, we'd be toast."

-   #char:--
    "We were on our way to that one Capy-Bar right near the border of the Venom Refinery."

    #char:Kleber_surprised_sad|R
    Right. We'll probably pass by that spot too.

    #char:Barto_neutral_angry|L
    Well, it is the safest access to the Refinery. The capybaras know how to earn Grana.

    #char:--
    "Huh? That voice...?" {PlaySFX("Mistery3")}

    #char:Barto_surprised_neutral|L
    Something wrong?

    #char:--
    "Uh—no, no, sorry. So, um, you think you guys can tow us?" {PlaySFX("LightWoosh")}

    #char:Jackie_neutral_angry|R
    I think so, most caravan ships have magnet tows! {PlaySFX("Shimmer1")}

    #char:--
    Kleber makes some preparations and the two caravaneers follow Jackie's instructions.

    #char:--
    Soon enough, they're locked to the bottom of the 41-Bis. {StopMusic()}

    ~ DayChange()

    -> distress_kleber_offer



= distress_kleber_offer
    #char:--
    In a few hours, you reach the Capy-Bar bordering the Refinery.

    {
        - distress_investigate:
            #char:Kleber_happy_neutral|L
            So, since we're stopping to drop these guys off anyway, we can buy some food or fuel! {PlaySFX("Shimmer1")}

        - else:
            #char:Kleber_happy_neutral|L
            So, since we have to stop for a checkup anyway, we can buy some food or fuel! {PlaySFX("Shimmer1")}
    }

    #char:Kleber_neutral_neutral|L
    What do you say, Cap?

    + (distress_buy_fuel) [FUEL¬Buy a galon of fuel.>G_F>]
        #char:--
        Shouldn't hurt to refuel a bit.

        ~ g_grana -= 250

        #char:Kleber_happy_happy|L
        Got it! I'll be right back. {PlaySFX("Shimmer2")}

    + (distress_buy_supplies) [SUPPLIES¬Buy some extra food supplies.>G_S>]
        #char:--
        You tell him to buy food. You'll need it.

        ~ g_grana -= 250

        #char:Kleber_happy_happy|L
        Got it! I'll be right back. {PlaySFX("Shimmer2")}

    + (distress_no_buy) [NO¬You don't want to spend money.>>]
        #char:--
        You tell him you'd rather not buy anything at the moment.

        #char:Kleber_neutral_sad|L
        Alright, Cap. I'll stay right here then.
        
    -   #char:Kleber_neutral_happy|L
        Call me when you're done, so we can go!

        #char:--
        You nod and exit the 41-Bis.

    -> distress_capy_bar



= chamaleonic_vulture

#char:--
Sleep does not come easy this night.

#char:--
Just as your eyelids start feeling heavy, you hear a loud noise. {PlaySFX("Turbulence")}

{Shake("All", 1, 1)}

//TO DO SFX: Camaleao noise.

#char:--
You jump out of bed and reach the cockpit to find Barto and Jackie checking the panels. {PlayMusic("Tension")}

    + [ANGRY¬Blame them for whatever that was.>>]

        #char:--
        You shout at the crew, trying to find out what the hell is happening. {PlaySFX("Hit1")}

        #char:Barto_fear_neutral|L
        Why, I am as flabbergasted as you! We did not crash, and the cargo hold door is locked. {PlaySFX("StrongWoosh")}

        #char:Jackie_surprised_neutral|R
        There's absolutely nothing in the monitors, Captain. {PlaySFX("Mistery3")}
        
        #char:Jackie_surprised_neutral|R
        I'll check the engines... This is so weird.
        
        #char:Barto_angry_angry|L
        And where the hell is Kleber? He should be in the cockpit! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

    + [QUESTION¬Ask for the status report.>>]
        #char:--
        You ask for the status report. Both crew members turn to face you.

        #char:Jackie_surprised_angry|R
        Captain, we heard a loud noise! Almost like an explosion! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}
        
        #char:Jackie_surprised_angry|R
        Then I ran here to check the monitors thinking we were under attack, but there's nothing here!
        
        #char:Barto_angry_sad|L
        And for some reason, Kleber is not in his bloody cockpit! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

        #char:Jackie_sad_sad|R
        I'll check the engines... This is so weird.

    -   #char:--
        Jackie leaves to see if she can figure out what's wrong. Just then, Kleber comes in.

        #char:Kleber_surprised_sad|R
        W-what is going on? Did the autopilot break for real this time? {Emotion("Explosion", "FFFFFF")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Hit2")}

        #char:Barto_angry_angry|L
        Well, someone took his sweet time. <i>Where</i> were you, Kleber? {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

        #char:Kleber_surprised_sad|R
        Sleeping. I woke up to your screams.

        #char:Barto_surprised_angry|L
        So you didn't even hear that loud noise?

        #char:Kleber_confused_sad|R
        Noise? What are you even talking about? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

        #char:Barto_surprised_angry|L
        Are you kidding me, Kleber? {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny2")}

        + [STERN¬Reprimand Kleber for sleeping.>>]
            #char:--
            You tell Kleber he would have heard if he was been paying attention. Your pilot looks visibly insulted.

            ~ g_affinity_Kleber -= 10

            #char:--
            Barto, as always, is not approving either.

            ~ g_affinity_Barto += 10

        + [RELAX¬Take a deep breath and ask them to focus on the problem.>>]
            #char:--
            You tell them to focus on the problem at hand.

            ~ g_affinity_Kleber += 10

            #char:--
            Kleber looks at you relieved, acknowledging the lack of chastisement. Barto rolls his eyes.

            ~ g_affinity_Barto -= 10

        -   #char:--
            Jackie comes back, carrying... what in the world is <i>that</i>!?
        
            #char:Jackie_surprised_happy|L
            Captain! Look at this! {Emotion("Explosion", "39f2d6")} {StopMusic()} {PlaySFX("Shimmer1")}

            ~ ScreenFlash("white", -1)

            #char:--
            Your engineer is holding a bird half her size.

            #char:Barto_surprised_neutral|R
            A Chamaleonic Vulture! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer2")}
            
            #char:Jackie_happy_neutral|L
            Yup! It nests in warm places, including caravan engines!

            #char:Barto_surprised_angry|R
            But why is it here? This thing is native to Spore Heights! {PlaySFX("StrongWoosh")}

            #char:Kleber_happy_sad|R
            Maybe it got in while we were with Silva? And...never left, somehow? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}
            
            #char:Jackie_neutral_sad|L
            They are known for a weird oil they produce and use as camouflage. Guess we just never noticed it.
            
            #char:Jackie_neutral_sad|L
            Anyway, we'd better check to see if the vulture didn't do any damage to the 41-Bis.

            #char:Kleber_surprised_sad|R
            Well, we're passing a Capy-Bar on the border of the Venom Refinery.

            #char:Jackie_neutral_angry|L
            Yeah, that's what I was thinking! {PlaySFX("Shimmer1")}

            #char:Barto_neutral_angry|R
            Captain, it is better to check throughly.
            
            #char:Barto_fear_angry|R
            Any problems in the middle of the Refinery's strong winds can be deadly! {Emotion("WaveIn", "0a4de8")}

            #char:--
            All you can think is that this is an absolutely bizarre job.

            ~ FadeTo("black", 1, 1)

-> distress_kleber_offer



= distress_capy_bar

#location: Hangar

{
    - distress_investigate:
        #char:--
        The other ship's crew — or rather, the two occupants — await outside.

        #char:--
        One is tall and has fins. The other is small and gerbil-like.

        #char:--
        "Thanks again. We'd be dead without you and your crew." {PlaySFX("Shimmer1")}

        #char:--
        "Really saved our bacon. Now we can have a proper meal and fix our ship."

        #char:Jackie_sad_sad|R
        Judging by the fire marks, you'll have to replace a lot of parts.

        #char:Barto_neutral_angry|L
        Still, an engine can be replaced, but not your liv—

    - else:
        #char:--
        Jackie takes some time to look at the 41-Bis inside and out.

        #char:Jackie_neutral_neutral|L
        No eggs, thankfully! I've released the vulture already, too. {PlaySFX("Shimmer1")}

        #char:--
        Eventually, Barto comes out.

        #char:Barto_neutral_angry|L
        Everyone, dinner will be served in a few minutes.

        #char:Jackie_surprised_neutral|R
        You made dinner? Even though we're in a <i>Capy-Bar</i>?

        #char:Barto_angry_happy|L
        Hmph. My food is better than theirs, thank you very much! {PlaySFX("Funny2")}

        #char:Barto_neutral_happy|L
        Besides, I cannot let our supplies go to was—
}

#char:--
"HOLY— it <i>is</i> him! Told you I knew that voice!" {PlaySFX("Mistery3")}

{
    - !distress_investigate:
        #char:--
        Two people come in your direction. Probably caravaneers.

        #char:--
        One is tall and has fins. The other is small and gerbil-like.
}

#char:--
"No <i>way</i>! Tempero! It's been years!" {PlaySFX("Shimmer1")}

+ [CONFUSED¬They must be mistaking Barto for someone else.>>]
    #char:--
    <i>Tempero</i>? Did they mistake Barto for someone else?

    #char:Barto_surprised_sad|L
    You knew my old food ship? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

+ [JOKE¬Tease Barto for his "nickname".>>]
    #char:--
    'Tempero'? What kind of nickname is that?

    #char:Barto_angry_sad|L
    I will have you know I chose the name myself, Captain! {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny2")}

-   #char:--
    "Don't know if you remember, but we were occasional customers of 'To's Tempero'!"

    #char:--
    "So you're a caravan cook these days?"

    #char:Barto_surprised_happy|L
    I am, indeed. It is nice to know someone who appreciated my recipes from back then!  {Emotion("Explosion", "39f2d6")} {PlaySFX("Love2")}

    #char:--
    "What happened, man? You were gone for almost a decade!" {PlaySFX("Mistery3")}

    #char:--
    "Some people thought you died!"

    #char:Barto_neutral_neutral|L
    Come, now. Surely it has not been that long.

    #char:--
    "No, no, I'm pretty sure it's been ten years or so!"

    #char:Barto_neutral_angry|L
    Believe me, I did not work in odd jobs for that long. 5 years, at most.

    #char:--
    "Really? Huh, if you say so. Guess I was mistaken, then."

    #char:--
    "Oh, well, doesn't matter. Either way, glad to know you're doing well!"

    {
        - distress_investigate:
            #char:--
            "And you, the Captain, right? Here's a thank-you gift for the help."

            ~ g_grana += 100

            #char:--
            "Least we could do, really."

        - else:
            #char:--
            "Well, we gotta go. Our ship broke and we need to fix it."

            #char:--
            "If you ever go through the Bota Food Market again, try to make a food stand!"

            #char:--
            "I'm sure your food will sell like crazy, especially the feijoada!"
    }

    #char:--
    The two leave.

    #char:Barto_neutral_neutral|L
    Hmm... that was strange. It <i>really</i> has not been that long.

    #char:Barto_happy_happy|L
    Still, if my food ship made this much of an impression on someone, all the more reason to try again. {Emotion("Heart", "ea2929")} {PlaySFX("Love2")}

    #char:--
    It's nice to see your cook talking so passionately.

    {
        - distress_buy_fuel || distress_buy_supplies:
            #char:Kleber_happy_angry|R
            Hey, Cap, I'm back! And I brought <>
            
            {
                - distress_buy_fuel:
                    the fuel for the trip!

                    ~ g_fuel += g_statChangeMid

                - distress_buy_supplies:
                    some food for the trip!

                    ~ g_supplies += g_statChangeMid
            }

        - else:

            #char:--
            Still, you have a delivery to complete. You all go back inside the 41-Bis.
    }

-> EVENT_END