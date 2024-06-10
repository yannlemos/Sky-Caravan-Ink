===E_Backstory_Part2===

#scope: Backstory
#location: Skyways
#intensity: Medium


#char:--
You're still a few hours away from the Capy-Bar. The trip back has been monotonous.

{
    - E_Mission_Rookie_GraspOfTheOctornado.left_refinery:
        #char:--
        With your headache from yesterday not having subsided, you think it's a blessing.

    - else:
        #char:--
        ...Not that you'd prefer otherwise. Not after what happened at the Refinery.
}

#char:--
You are sitting in the common room, eating dinner with your crew.

#char:Kleber_happy_sad|L
...<wave>Gee</wave>, I wish we had kept some cachaça bottles from last trip, they would go well now. 

#char:Kleber_surprised_sad|L
Just not the cursed one, of course. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

#char:Barto_angry_angry|R
You should really be more responsible, Kleber. 

#char:Barto_angry_angry|R
What if we have an emergency? You need to be sober, you know. You cannot rely on using the autopilot all the time. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

#char:Jackie_surprised_sad|R
<wave>Oooof</wave>, don't remind me. I've seen so many people destroy their ships because of drunk piloting... {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

#char:--
Kleber then turns towards you.

#char:Kleber_surprised_sad|L
That reminds me, Cap. We know how you came to the Skies, but not how you got the 41-Bis.

#char:Kleber_surprised_sad|L
I gotta admit I've been kinda curious. How did you end up in this caravan life? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

{
    - g_ownership == "Gambler":
        + [GAMBLER¬Tell how you gambled for the ship.>>]
            #char:--
            You tell them about the day you played craps against that captain.

            #char:--
            Maybe you're a bit dramatic about the match, but you think it's warranted.

            #char:--
            Between your luck in the dice and your previous lack of it in finding a job, it's definitely an underdog's tale.

            //AFFINITY PASS

            {
                - g_affinity_Kleber >= 25:
                    #char:Kleber_happy_happy|L
                    Wow! Didn't think we'd have so much in common, Cap! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                - g_affinity_Kleber < 25 && g_affinity_Kleber > -25:
                    #char:Kleber_happy_sad|L
                    Ha! Been there, done that! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                - else:
                    #char:Kleber_surprised_sad|L
                    Huh, for all the callouts you gave me, you sure don't make the best of decisions either, huh?

                    #char:Kleber_neutral_sad|L
                    Y'know, for better or worse, gambling is an old friend. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
            }

            ~ g_affinity_Kleber += g_affinityChangeHigh

            ~ g_affinity_Jackie += g_affinityChangeMid
            ~ g_affinity_Barto += g_affinityChangeMid

            #char:Kleber_surprised_sad|L
            Seriously, you wouldn't believe what people bet when they get cocky!

            #char:Barto_happy_angry|R
            Did that ever include you, I wonder?

            #char:Kleber_neutral_sad|L
            Oh, shut it! I-I was drunk that day. Yeah. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

            #char:Jackie_happy_neutral|R
            That's a yes, then!

            //AFFINITY PASS

            {
                - g_affinity_Kleber >= 0:
                    #char:Kleber_neutral_neutral|L
                    Jokes aside, I've won and lost my fair share on bets. Owed a lot of Grana because of maintenance costs, too.
                    
                    #char:Kleber_neutral_neutral|L
                    I've mostly grown out of gambling by now, but back when I was a taxi caravan driver, I used to bet a lot more.

                    #char:Barto_surprised_happy|R
                    <i>More</i>? Now I legitimately sympathize with your wallet, Kleber. {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}
            }

        -> after_prank

        + [LIE¬Keep things to yourself.>>]
            #char:--
            People do say that every lie has a little bit of truth.

            ~ lied_about_ownership = true

            #char:--
            Maybe it's best if you keep things simple. No need to tell them everything.

            #char:--
            You only tell them you got the ship in a bet, downplaying the rest of your journey.

            #char:--
            Kleber looks at you for a moment. He seems to know you aren't telling everything.

            // AFFINITY PASS:

            { 
                - g_affinity_Kleber >= 5:


                #char:Kleber_happy_happy|L
                Well, I gotta make you teach me some good way to roll dice, then! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

                
            }

            #char:--
            He knows there's more to the story, but doesn't press you.

        -> after_prank

    - g_ownership == "Survivor":
        + [SURVIVOR¬Tell about the expedition you survived.>>]
            #char:--
            You tell your crew about that fateful expedition. Being the only remaining survivor with no help in sight.

            //AFFINITY PASS

            {
                - g_affinity_Barto >= 25:
                    #char:Barto_sad_angry|R
                    That must have been hard on you. I had no idea. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    #char:Barto_neutral_sad|R
                    You faced such danger to go back to your family... that is admirable.

                - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                    #char:Barto_fear_angry|R
                    That sounds horrifying! And yet you remained a caravaneer? {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad1")}

                - else:
                    #char:Barto_neutral_sad|R
                    So you were risking your own life even before you met us, huh?
            }

            #char:--
            Well, you still needed a way to pay your debt, no matter the danger.

            #char:Barto_neutral_sad|R
            I see... Well, I respect that. Honor and commitment like that are hard to find.

            ~ g_affinity_Barto += g_affinityChangeHigh

            #char:Jackie_surprised_happy|R
            That's really admirable, {g_name}! Delivery caravans have it hard enough, but exploration ones have it even harder.

            ~ g_affinity_Jackie += g_affinityChangeMid

            #char:Kleber_sad_sad|L
            Guess you really knew you had to risk your life to pay that debt, huh.

            ~ g_affinity_Kleber += g_affinityChangeMid

            //AFFINITY PASS

            {
                - g_affinity_Barto >= 5:
                    #char:Barto_neutral_sad|R
                    Captain. Allow me to tell you something. You see, the truth is...

                    #char:Barto_sad_angry|R
                    I have only recently become a member of the Mandioca Cooks Guild. A year ago, to be precise.

                    #char:Barto_neutral_sad|R
                    It took me several attempts for almost a full decade. That is what made me go after odd jobs in the meantime. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

                    #char:Barto_neutral_neutral|R
                    My drive is what kept me going.

                    #char:Barto_neutral_angry|R
                    What I am trying to say is... If your drive is that strong, I believe you can pay your debt.
            }

        -> after_prank

        + [LIE¬Keep things to yourself.>>]
            #char:--
            People do say that every lie has a little bit of truth.

            ~ lied_about_ownership = true

            #char:--
            Maybe it's best if you keep things simple. No need to tell them everything.

            #char:--
            You tell them you got the ship after joining an expedition caravan.

            #char:--
            You don't feel like telling them about the dangers or being the sole survivor.

            // AFFINITY PASS:

            { 
                - g_affinity_Barto >= 5:
                
                #char:Barto_surprised_happy|R
                An expedition caravan? I thought you weren't the type to risk your life like that. {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

                #char:Barto_neutral_angry|R
                Looks like I was wrong. Still, you did well in changing jobs to a delivery caravan.
                
            
            }


        -> after_prank

    - g_ownership == "Apprentice":
        + [APPRENTICE¬Explain how you inherited the ship.>>]
            #char:--
            You talk about the old woman you met. How you learned from her and became her friend.

            #char:--
            You'll never forget the lessons she gave you — and the 41 Bis' key.

            #char:--
            She was the one who gave you the drive to work to reunite with your family.

            //AFFINITY PASS

            {
                - g_affinity_Jackie >= 25:
                    #char:Jackie_surprised_angry|R
                    So someone else taught you how to be a good caravaneer, too? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                    #char:Jackie_happy_happy|R
                    And now, you've taught it all to me... I'm honored, {g_name}.

                - g_affinity_Jackie < 25 && g_affinity_Jackie > -25:
                    #char:Jackie_neutral_angry|R
                    I think she'd be happy with how far you've come, {g_name}. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                - else:
                    #char:Jackie_surprised_angry|R
                    So you sort of 'inherited' the role. Explains a lot, actually. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
            }

            ~ g_affinity_Jackie += g_affinityChangeHigh

            #char:Kleber_surprised_sad|L
            Her road as a caravaneer might be over, but that old lady is probably part of why we're still alive! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer2")}

            ~ g_affinity_Kleber += g_affinityChangeMid

            #char:Barto_neutral_sad|R
            Indeed. And by going this far for your family, I would dare say that you fulfilled her wish.

            ~ g_affinity_Barto += g_affinityChangeMid

            //AFFINITY PASS

            {
                - g_affinity_Jackie >= 5:
                    #char:Jackie_neutral_neutral|R
                    You know, joining a caravan was a way to leave my comfort zone... Write my own story.

                    #char:Jackie_neutral_neutral|R
                    But no matter what, the people close to you should alway come first...

                    #char:Jackie_happy_happy|R
                    So yeah. No one left behind. Whether we're talking about each other or our loved ones outside the crew. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}
            }

        -> after_prank

        + [LIE¬Keep things to yourself.>>]
            #char:--
            People do say that every lie has a little bit of truth.

            #char:--
            Maybe it's best if you keep things simple. No need to tell them everything.

            #char:--
            You tell them you got the key from a former caravaneer.

            #char:--
            No need to tell them about your apprenticeship with her — or her status as a disgraced captain.

            //AFFINITY PASS

            {
                - g_affinity_Jackie >= 5:

                
                #char:Jackie_surprised_happy|R
                <bounce>Wow</bounce>, so someone passed the torch to you? That's so cool! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:Jackie_happy_neutral|R
                Glad you went through with it, {g_name}! Adventure is at the core of the caravan life!
            
            }


        -> after_prank

}

= after_prank

#char:--
Just then, you hear the sound of a transmission request coming from the communications terminal.

#char:Kleber_surprised_sad|L
Alright, time to go back.

#char:--
All of you rush to the cockpit.

~ FadeTo("black", 1, 0.5)

#char:--
The terminal is flashing. There's an incoming call.

#char:Kleber_surprised_sad|L
No idea whether we should take this or not. No telling who it is...

#char:--
<color=green1><i>The caller's location is unknown.</i></color> {PlaySFX("Mistery3")} {PlayMusic("Marimbondo")}

#char:--
Before you can say anything, you receive a video message.

#char:Marimbondo_neutral_hooded_hologram|L
Hey there, brat. Missed me? {PlaySFX("Hologram")} {Blink("Big Face", 1, 0.5, "white")}

#char:Marimbondo_neutral_hooded_hologram|L
I did say you were going to hear from me again soon, didn't I?

#char:Marimbondo_neutral_hooded_hologram|L
Shame you're leaving the door closed on an old friend from the Surface like this.

#char:--
The crewmembers exchange confused glances, but remain silent.

{
    - E_Backstory_Part1.barto_eavesdrops:
        #char:--
        Barto, in particular, looks at you <>

        {
            - E_Backstory_Part1.talk_about_marimbondo:
                worriedly.

            - else:
                with a serious expression.
        }

    - E_Backstory_Part1.jackie_eavesdrops:
        #char:--
        Jackie, in particular, <>

        {
            - E_Backstory_Part1.talk_about_marimbondo:
                shares a knowing look with you.

            - else:
                looks at you, surprised.
        }

    - E_Backstory_Part1.kleber_eavesdrops:
        #char:--
        Kleber's <>

        {
            - E_Backstory_Part1.talk_about_marimbondo:
                distant look, in particular, is telling.

            - else:
                disappointed expression, in particular, is telling.
        }
}

#char:Marimbondo_neutral_hooded_hologram|L
You're only up in the Sky because of me, you know. Least you could do is answer my damn calls.

#char:Marimbondo_neutral_hooded_hologram|L
Bah, enough of that. Let me get to the point.

#char:Marimbondo_neutral_hooded_hologram|L
You've got one month left. 

#char:Marimbondo_neutral_hooded_hologram|L
Use it well. Because after that, I'm coming to collect my Grana.

#char:Marimbondo_neutral_hooded_hologram|L
And if you don't have it by then, well...

#char:Marimbondo_neutral_hooded_hologram|L
Do I need to remind you that your <i>precious family</i> is still down here? 

{Blink("Big Face", 1, 0.5, "white")}

#char:--
With that, the video ends. {StopMusic()} 

#char:--
You all stare at the terminal screen.

{
    - E_Backstory_Part1.barto_eavesdrops.lie_about_marimbondo:
        #char:--
        Kleber is tense. Jackie has an uneasy look.

        #char:--
        Barto approaches you concernedly.

        #char:Barto_fear_sad|L
        I believe that has something to do with your... <i>personal matter</i> from a few weeks ago, am I right?

        ~ g_morale -= g_statChangeMid

        #char:Barto_fear_angry|L
        Whatever is going on, it sounds like you're in danger. {Emotion("WaveIn", "0a4de8")}

        #char:Jackie_sad_neutral|R
        ...And when a Captain is in danger, this puts us all at risk. {Emotion("WaveIn", "0a4de8")}

        #char:--
        Kleber has his eyes fixed on you. He's definitely quieter than usual.

        #char:Barto_angry_angry|L
        I believe we deserve an explanation for what's happening, Captain.

    - E_Backstory_Part1.barto_eavesdrops.talk_about_marimbondo:
        #char:--
        Kleber is tense. Jackie has an uneasy look.

        #char:--
        Barto immediately understands what's going on.
        
        #char:--
        He puts his hand on your shoulder.

        #char:Barto_sad_angry|L
        There's no use hiding it, Captain.

        #char:--
        Kleber has his eyes fixed on you. He's definitely quieter than usual.

        #char:Jackie_sad_neutral|R
        That does sound like it's something we all should know.

    - E_Backstory_Part1.jackie_eavesdrops.lie_about_marimbondo:
        #char:--
        Kleber looks tense. Barto is worried stiff.

        #char:--
        Jackie comes closer to you.

        #char:Jackie_sad_neutral|L
        If this has anything to do with what happened a few weeks ago, it seems like it's time to open up, {g_name}.

        ~ g_morale -= g_statChangeMid

        #char:Barto_fear_angry|R
        Whatever that was, it sounds like you're in danger. {Emotion("WaveIn", "0a4de8")}

        #char:Kleber_surprised_sad|L
        That definitely isn't a good sign for you. 
        
        #char:Kleber_surprised_neutral|L
        And for us.

        #char:Kleber_surprised_neutral|L
        I have a feeling about what's going on...
        
        #char:Kleber_neutral_neutral|L
        But I want to hear it from you.

    - E_Backstory_Part1.jackie_eavesdrops.talk_about_marimbondo:
        #char:--
        Kleber looks tense. Barto is worried stiff.

        #char:--
        Jackie immediately understands what's going on.

        #char:Jackie_sad_neutral|L
        I think it's time to open up, {g_name}.

        #char:Barto_fear_angry|R
        Good heavens, what have I gotten myself into? {Emotion("WaveIn", "0a4de8")}
        
        #char:Kleber_surprised_neutral|L
        I have a feeling about what's going on...
        
        #char:Kleber_neutral_neutral|L
        But I want to hear it from you.

    - E_Backstory_Part1.kleber_eavesdrops.lie_about_marimbondo || E_Backstory_Part1.kleber_eavesdrops.talk_about_marimbondo:
        #char:--
        Jackie has an uneasy look. Barto is worried stiff.

        #char:--
        Kleber just crosses his arms.

        #char:Kleber_surprised_neutral|L
        Well, I believe you know what you're supposed to do now, Cap.

        ~ g_morale -= g_statChangeLow

        #char:Barto_fear_angry|R
        Good heavens, what have I gotten myself into? {Emotion("WaveIn", "0a4de8")}

        #char:Jackie_surprised_sad|L
        Well, it does sound serious enough for us to know.

        #char:Jackie_neutral_sad|L
        Besides... If you open up, we might be able to help with whatever that is.

}

+ [LIE¬Insist it's nothing serious.>M>]
    #char:--
    You insist that it's just a personal issue and there would be no reason to get them all involved.

    {
        - E_Backstory_Part1.barto_eavesdrops.lie_about_marimbondo:
            #char:Barto_angry_sad|L
            Except we <i>already are involved</i> to some extent. {Emotion("WaveOut", "ea2929")}

            #char:Barto_angry_angry|L
            That person went as far as to mention your family!
            
            #char:Barto_fear_sad|L
            How are we supposed to feel safe? {Emotion("WaveIn", "0a4de8")}

            #char:Barto_angry_angry|L
            I may have let it go that night, but things have escalated.

            ~ g_morale -= g_statChangeMid

            #char:Jackie_sad_neutral|R
            Barto's right. We deserve to know! {Emotion("WaveIn", "0a4de8")}

            #char:--
            Looks like you're cornered. 
            
            #char:--
            You gather yourself and try to summarize everything.

            ~ FadeTo("Black", 1, 1)

            #char:Barto_fear_neutral|L
            <i>Oh my</i>... That explains a few things.

            #char:Barto_angry_angry|L
            I have to say I'm quite disappointed, {g_name}. You should have been honest from the start. {Emotion("WaveOut", "ea2929")}

            ~ g_affinity_Barto -= g_affinityChangeHigh

            #char:Kleber_sad_sad|R
            ...To be fair, I went through similar stuff myself. You know, with Silva.

            #char:Kleber_sad_sad|R
            This call alone was enough to remind me of that... ghost from the past. {Emotion("WaveIn", "0a4de8")}

            ~ g_affinity_Kleber -= g_affinityChangeLow

            #char:Jackie_sad_neutral|L
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|L
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_angry|L
            But I have to agree with Barto - things would've been easier if you've talked to us earlier.

            ~ g_affinity_Jackie -= g_affinityChangeLow

            #char:Jackie_sad_neutral|L
            We'll have to go through this together, one way or another.

        - E_Backstory_Part1.barto_eavesdrops.talk_about_marimbondo:
            #char:--
            Barto shakes his head.
            
            #char:Barto_angry_angry|L
            You can't keep lying to them if I'm aware of the truth, Captain. {Emotion("WaveOut", "ea2929")}

            ~ g_affinity_Barto -= g_affinityChangeMid
            
            #char:Barto_sad_sad|L
            It's not only about you anymore, we're all involved in a way.

            ~ g_morale -= g_statChangeMid

            #char:Jackie_sad_neutral|R
            That doesn't look like a simple issue...

            #char:Jackie_sad_neutral|R
            And that's exactly <i>why</i> we should know, Captain. {Emotion("WaveIn", "0a4de8")}

            #char:Kleber_surprised_sad|L
            Can't say they're wrong, Cap.

            #char:--
            Looks like you're cornered. 
            
            #char:--
            You gather yourself and try to summarize everything as you did with Barto.

            ~ FadeTo("Black", 1, 1)

            #char:Kleber_sad_sad|R
            ...To be fair, I went through similar stuff myself. You know, with Silva.

            #char:Kleber_sad_sad|R
            This call alone was enough to remind me of that... ghost from the past. {Emotion("WaveIn", "0a4de8")}

            ~ g_affinity_Kleber -= g_affinityChangeLow

            #char:Jackie_sad_sad|R
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|R
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|R
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_angry|R
            But I have to agree with Barto - things would've been easier if you've talked to us earlier.

            ~ g_affinity_Jackie -= g_affinityChangeLow

            #char:Jackie_sad_neutral|R
            We'll have to go through this together, one way or another.

        - E_Backstory_Part1.jackie_eavesdrops.lie_about_marimbondo:
            #char:Jackie_sad_neutral|L
            Captain, the call sounded alarming enough.

            #char:Kleber_fear_neutral|R
            They were threatening your family! {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_fear_neutral|L
            It's impossible not to think that if someone is threatening you, we are in danger too! {Emotion("WaveIn", "0a4de8")}

            ~ g_morale -= g_statChangeMid

            #char:Kleber_fear_neutral|R
            Exactly. This is clearly <i>our</i> problem now.

            #char:Barto_fear_angry|L
            I have to admit they are right. {Emotion("WaveIn", "0a4de8")}

            #char:Barto_fear_angry|L
            Coming up with excuses will not help.

            #char:--
            Looks like you're cornered. 
            
            #char:--
            You gather yourself and try to summarize everything.

            ~ FadeTo("Black", 1, 1)

            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>A... A smuggler!?</shake> {Emotion("WaveIn", "2c2b30")}

            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell us from the start?!

             ~ g_affinity_Barto -= g_affinityChangeLow

            #char:Jackie_sad_sad|L
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|L
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|L
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_neutral|L
            But you should have told us. I can't help but feel frustrated.

            ~ g_affinity_Jackie -= g_affinityChangeHigh

            #char:Jackie_sad_neutral|L
            We'll have to go through this together, one way or another.

            #char:Kleber_sad_sad|R
            ...To be fair, I went through similar stuff myself. You know, with Silva.

            #char:Kleber_sad_sad|R
            This call alone was enough to remind me of that... ghost from the past. {Emotion("WaveIn", "0a4de8")}

            ~ g_affinity_Kleber -= g_affinityChangeLow

            #char:Barto_fear_angry|L
            Still, there is no turning back. We will <i>have</i> to make it work.

            #char:Barto_sad_neutral|L
            But for that, we need to trust each other more. {Emotion("WaveIn", "0a4de8")}

        - E_Backstory_Part1.jackie_eavesdrops.talk_about_marimbondo:
            #char:Jackie_sad_sad|L
            {g_name}, you were honest with me that night. Why lie now?

            ~ g_affinity_Jackie -= g_affinityChangeMid
            
            #char:Jackie_sad_sad|L
            The others deserve the truth, too. {Emotion("WaveIn", "0a4de8")}

            ~ g_morale -= g_statChangeMid

            #char:Kleber_angry_neutral|R
            Yeah, especially when there's <i>clearly</i> some danger involved.

            ~ g_affinity_Kleber -= g_affinityChangeLow
            
            #char:Kleber_fear_neutral|R
            They were threatening your family! {Emotion("WaveIn", "0a4de8")}

            #char:Barto_angry_angry|L
            Coming up with excuses won't make us feel any safer. {Emotion("WaveOut", "ea2929")}

            ~ g_affinity_Barto -= g_affinityChangeLow

            #char:--
            Looks like you're cornered. 
            
            #char:--
            You gather yourself and try to explain everything as you did with Jackie.

            ~ FadeTo("Black", 1, 1)

            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>A... A smuggler!?</shake> {Emotion("WaveIn", "2c2b30")}


            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell us from the start?!
            
            #char:Kleber_sad_sad|R
            ...To be fair, I went through similar stuff myself. You know, with Silva.

            #char:Kleber_sad_sad|R
            This call alone was enough to remind me of that... ghost from the past. {Emotion("WaveIn", "0a4de8")}

            #char:Barto_fear_angry|L
            Still, there is no turning back. We will <i>have</i> to make it work.

            #char:Barto_sad_neutral|L
            But for that, we need to trust each other more. {Emotion("WaveIn", "0a4de8")}

        - E_Backstory_Part1.kleber_eavesdrops.lie_about_marimbondo:
            #char:Kleber_angry_neutral|L
            C'mon, just own up to it.

            ~ g_affinity_Kleber -= g_affinityChangeHigh

            #char:Kleber_angry_neutral|L
            I didn't buy your excuse that night!

            #char:Kleber_angry_neutral|L
            Why lie to my face again? {Emotion("WaveOut", "ea2929")}

            ~ g_morale -= g_statChangeMid

            #char:Jackie_sad_neutral|R
            Work relationships need to be built on trust, {g_name}. {Emotion("WaveIn", "0a4de8")}

            ~ g_affinity_Jackie -= g_affinityChangeLow

            #chat:Barto_fear_angry|L
            Especially when <i>our</i> safety is involved. {Emotion("WaveIn", "0a4de8")}

            ~ g_affinity_Barto -= g_affinityChangeLow

            #char:--
            Looks like you're cornered.
            
            #char:--
            You gather yourself and try to summarize everything as you did with Kleber.

            ~ FadeTo("Black", 1, 1)

            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>A... A smuggler!?</shake> {Emotion("WaveIn", "2c2b30")}

            ~ g_affinity_Barto -= g_affinityChangeMid

            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell us from the start?!

            #char:Jackie_sad_sad|R
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|R
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|R
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_happy|R
            Still, why didn't you tell us? Especially if our lives are at risk! {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|R
            We'll have to go through this together, one way or another.

        - E_Backstory_Part1.kleber_eavesdrops.talk_about_marimbondo:
            #char:Kleber_surprised_neutral|L
            You know there's no need to lie, {g_name}.

            ~ g_affinity_Kleber -= g_affinityChangeMid

            #char:Kleber_surprised_neutral|L
            If I know the truth, they should, too.

            ~ g_morale -= g_statChangeMid

            #char:Jackie_fear_neutral|R
            It's impossible not to think that if someone is threatening you, we are in danger too! {Emotion("WaveIn", "0a4de8")}

            ~ g_affinity_Jackie -= g_affinityChangeLow

            #char:Barto_angry_angry|L
            Coming up with excuses won't make us feel any safer. {Emotion("WaveOut", "ea2929")}

            ~ g_affinity_Barto -= g_affinityChangeLow

            #char:--
            Looks like you're cornered.
            
            #char:--
            You gather yourself and try to summarize everything as you did with Kleber.

            ~ FadeTo("Black", 1, 1)
            
            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>...A smuggler!?</shake> {Emotion("WaveIn", "2c2b30")}

            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell us from the start?!

            #char:Jackie_sad_sad|R
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|R
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|R
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_angry|R
            But I have to agree with Kleber - you shouldn't have tried to hide it from us.

            #char:Jackie_sad_neutral|R
            We'll have to go through this together, one way or another.

    }


+ [TALK¬Open up with the crew.>>]
    #char:--
    There's no use in hiding the truth.

    #char:--
    You take a deep breath before opening up.
            
    #char:--
    You briefly talk about your childhood in Surface, the opportunity to escape to the Skies and your deal with Marimbondo.

    ~ FadeTo("Black", 1, 1)

    {

        - E_Backstory_Part1.barto_eavesdrops.lie_about_marimbondo:
            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>...A smuggler!?</shake> {Emotion("WaveIn", "2c2b30")}

            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell me from the start?!

            ~ g_affinity_Barto -= g_affinityChangeMid

            #char:Kleber_sad_sad|R
            ...To be fair, I went through similar stuff myself. You know, with Silva.

            #char:Kleber_sad_sad|R
            This call alone was enough to remind me of that... ghost from the past. {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_sad|L
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|L
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|L
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_neutral|L
            We'll have to go through this together, one way or another.

        - E_Backstory_Part1.barto_eavesdrops.talk_about_marimbondo:
            #char:Kleber_sad_sad|R
            ...To be fair, I went through similar stuff myself. You know, with Silva.

            #char:Kleber_sad_sad|R
            This call alone was enough to remind me of that... ghost from the past. {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_sad|L
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|L
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|L
            You were very brave to face it like this. It's admirable.

            #char:Kleber_sad_sad|R
            You could've talked to us sooner, though. That would save some headache.

            #char:Barto_neutral_angry|L
            Still, I can understand why you took that long to open up with the rest of the crew, given the threats.

            ~ g_affinity_Barto += g_affinityChangeMid
            
            #char:Barto_fear_angry|L
            Your situation is quite challenging, to say the least. 

            #char:Barto_fear_angry|L
            There is no turning back. We will <i>have</i> to make it work.

            #char:Barto_sad_neutral|L
            But for that, we need to trust each other more. {Emotion("WaveIn", "0a4de8")}

        - E_Backstory_Part1.jackie_eavesdrops.lie_about_marimbondo:
            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>...A smuggler!?</shake> {Emotion("WaveIn", "2c2b30")}

            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell us from the start?!

            #char:Kleber_sad_sad|R
            ...To be fair, I went through similar stuff myself. You know, with Silva.

            #char:Kleber_sad_sad|R
            This call alone was enough to remind me of that... ghost from the past. {Emotion("WaveIn", "0a4de8")}
            
            #char:Jackie_sad_sad|L
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|L
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|L
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_neutral|L
            Still, you could've been honest with me that night.
            ~ g_affinity_Jackie -= g_affinityChangeMid

            #char:Jackie_neutral_sad|L
            I hope you feel more comfortable opening up from now on.

            #char:Jackie_neutral_neutral|L
            As caravaneers, we're a team.

            #char:Barto_fear_angry|L
            There is no turning back. We will <i>have</i> to make it work.

            #char:Barto_sad_neutral|L
            But for that, we need to trust each other more. {Emotion("WaveIn", "0a4de8")}

        - E_Backstory_Part1.jackie_eavesdrops.talk_about_marimbondo:
            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>...A smuggler!?</shake> {Emotion("WaveIn", "2c2b30")}

            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell us from the start?!

            #char:Kleber_sad_sad|R
            ...To be fair, I went through similar stuff myself. You know, with Silva.

            #char:Kleber_sad_sad|R
            This call alone was enough to remind me of that... ghost from the past. {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|L
            It's not going to be easy, that's true.
            
            #char:Jackie_sad_neutral|L
            When a Captain is in danger, the crewmembers can't help but become involved, too. {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_neutral_neutral|L
            Still, I'm glad you finally opened up with Bartô and Kleber too, {g_name}.

            ~ g_affinity_Jackie += g_affinityChangeMid

            #char:Jackie_neutral_neutral|L
            We'll find a way to make this work.

        - E_Backstory_Part1.kleber_eavesdrops.lie_about_marimbondo:
            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>...A smuggler!?</shake> {Emotion("WaveIn", "2c2b30")}

            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell us from the start?!

            #char:Kleber_angry_neutral|R
            At least you didn't lie to their faces this time, huh?

            ~ g_affinity_Kleber -= g_affinityChangeMid

            #char:Jackie_sad_sad|L
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|L
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|L
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_neutral|L
            We'll have to go through this together, one way or another.

            #char:Barto_fear_angry|L
            We will <i>have</i> to make it work.

            #char:Barto_sad_neutral|L
            But for that, we need to trust each other more. {Emotion("WaveIn", "0a4de8")}

        - E_Backstory_Part1.kleber_eavesdrops.talk_about_marimbondo:
            #char:--
            Barto seems to lose his balance for a moment, leaning his arm against the wall. 

            #char:Barto_fear_neutral|L
            <shake>...A smuggler!? </shake>

            #char:Barto_fear_neutral|L
            For Skies' sake, why did you not tell us from the start?!
            
            #char:Jackie_sad_sad|R
            I've heard some stuff about Surface, even if they were mostly tales.

            #char:Jackie_sad_neutral|R
            It makes sense for you to have a harsh past like that, {g_name}... {Emotion("WaveIn", "0a4de8")}

            #char:Jackie_sad_neutral|R
            You were very brave to face it like this. It's admirable.

            #char:Jackie_sad_neutral|R
            We'll have to go through this together, one way or another.

            #char:Kleber_sad_sad|L
            I know exactly what it's like to be in debt and in the hands of unscrupulous people.

            ~ g_affinity_Kleber += g_affinityChangeMid

            #char:Kleber_sad_sad|L
            I won't be able to forget Silva anytime soon.

    }

-   #char:--
    The atmosphere is tense.             

    #char:--
    Yet in a way, you are relieved that you don't have to hide anymore.

    #char:Jackie_sad_neutral|L
    Well, there goes the idea of giving everyone a laugh.

    //AFFINITY PASS:

    { 
        - g_affinity_Jackie >= 0:

        #char:Jackie_neutral_neutral|L
        But don't worry, {g_name}. We're your crew. We'll help our Captain whenever we can!
        
    
    }

    //AFFINITY PASS:

    { 
        - g_affinity_Kleber >= 0:

        #char:Kleber_neutral_happy|L
        And in case I can't help you pay, at least I'm a good getaway pilot!
            
    }



    #char:Barto_fear_sad|L
    ...Well, this has been stressful. {Emotion("WaveIn", "0a4de8")}

    #char:Barto_neutral_sad|L
    How about we eat? I made beef strogonoff.
    
    #char:Kleber_surprised_sad|L
    Well, we're still a few hours away from the Capy-Bar. I'm in.

    #char:--
    It's at moments like this where you're glad to not be alone in this job.

    #char:--
    One month to make things right.

-> MISSION_END

        