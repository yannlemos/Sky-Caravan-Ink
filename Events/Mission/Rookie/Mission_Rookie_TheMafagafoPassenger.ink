===E_Mission_Rookie_TheMafagafoPassenger===

//Mabel check: Ready to be localized!

#tier: Rookie
#scope: Mission

VAR mafagafoSkin = ""
VAR mafagafoAggro = 1
VAR mafagafoBody = ""
VAR whoComplained = ""
VAR mafagafoChaseState = ""
VAR bought_mafagafo = false


~ temp storyDirection = -> part1

{
    - part3 > 0:
        ~ storyDirection = -> part4
    - part2 > 0:
        ~ storyDirection = -> part3
    - part1 > 0:
        ~ storyDirection = -> part2
}

-> storyDirection

= part1

#location: Skyways

~ g_time = g_deadline_M1
~ g_timeLimit = g_deadline_M1

#char:--
After getting the cargo from the Capy-Bar's warehouse, you call your client through the 41-Bis' terminal.

#char:--
You look at the crew. They seem nervous, just like you.

#char:--
Animal eggs are a big responsibility.

#char:--
Before you all can keep musing about your cargo's fragility, the screen cracks to life. {PlayMusic("ClientCall")}

//SFX Holograma ligando (para todos os clientes e Marimbondo)

#char:Rosana_neutral_hologram|L
Hey there! Guess you're the ones who took my request! {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")} 

#char:Rosana_happy_hologram|L
Oh? It's been a while since I've seen a specimen like you. {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

+ [WAVE¬Greet her.>>]
    #char:--
    You briefly introduce yourself. The crew follows out of courtesy.

    #char:--
    After Barto says his name, Rosana interrupts.

    #char:Rosana_happy_hologram|L
    Yeah, <i>you</i>. Don't know the last time I saw an anteater that big. {PlaySFX("LightWoosh")}

+ [QUESTION¬Ask about which specimen she's referring to.>>]
    #char:--
    You ask if this is about you being a Surfacer.

    #char:Rosana_serious_hologram|L
    Huh? Oh no, not you!
    
    #char:Rosana_happy_hologram|L
    I mean the anteater! {PlaySFX("LightWoosh")}

-   #char:Barto_surprised_sad|R
    E-excuse me? {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

    #char:Rosana_thinking_hologram|L
    Yeah, I'm used to seeing way smaller members of your species.

    #char:Rosana_happy_hologram|L
    With claws like his around, I bet no one would mess with you guys, huh? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    + [CONFUSED¬You had no idea Barto was that unique.>>]

        #char:--
        Honestly, you thought all anteaters were this size.

        #char:--
        But again, you're just a Surfacer. There's a lot to catch up on.
        
        #char:Barto_fear_happy|R
        I—I'm just the cook, ma'am...

        #char:Rosana_happy_hologram|L
        Sure you are, big guy. Anyway!

    + [JOKE¬Joke about Barto's charms.>>]

        #char:--
        Yeah, Barto is one dangerous element, you tell her with your best straight face.

        #char:--
        Jackie is failing to supress a laugh. Kleber lets out a snort.

        #char:Barto_fear_happy|R
        Captain, please don't joke like that...

        #char:Rosana_neutral_hologram|L
        Anyway. I'm not here to talk about any adult animals in your ship, though.

    -   #char:Rosana_happy_hologram|L
        The beautiful exotic eggs I bought are in your ship now, ready to come home! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

        #char:Rosana_happy_hologram|L
        I see it's your first time delivering them to me, but don't fret. It's not that hard.

        #char:--
        You hope she's right. Either way, it is your first delivery, so it's better to ask any questions you have.

        #char:--
        You can request more information about the cargo, or ask her a bit more about herself.

        + [ROSANA¬Ask Rosana about herself.>>]
            #char:--
            You ask Rosana about herself. Maybe you can learn more about the assignment by learning about her.

            #char:Rosana_happy_hologram|L
            I'm a trainer for exotic pets, and the proud owner of the biggest pet shop in Aquarela - the Critter Corner! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

            #char:Rosana_thinking_hologram|L
            I also do some hunting and gathering myself, but I can't be everywhere.
            
            #char:Rosana_neutral_hologram|L
            So I have a few deals going with other exotic animal lovers.

            #char:Rosana_happy_hologram|L
            Just bring the eggs to me and I'll see that they hatch into pretty little pets!

        + [CARGO¬Request more information about the cargo.>>]
            #char:Rosana_neutral_hologram|L
            The eggs are all of different species, from all sorts of places in the Skies.
            
            #char:Rosana_neutral_hologram|L
            They're <i>very</i> fragile, so keep them safe in their incubators until you get to Aquarela!

            #char:Rosana_neutral_hologram|L
            Once you bring them to me, I'll take care of them until they hatch into pretty little pets. {PlaySFX("Shimmer2")}

        -   #char:Rosana_neutral_hologram|L
            The incubators will keep them in the right temperature for now.

            #char:Rosana_neutral_hologram|L
            I know for a fact there's no risk of them hatching.
            
            #char:Rosana_serious_hologram|L
            Not unless you <i>really</i> mess up.

            #char:Rosana_happy_hologram|L
            Anyways! I'm sure that won't be the case.

            #char:Rosana_neutral_hologram|L
            Well, I'll see you in Aquarela! Don't be late! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} {StopMusic()}

            {Blink("Big Face", 1, 0.5, "white")}

            #char:--
            Around you, your crew members glance at each other nervously. {PlaySFX("Hologram")} {StopMusic()}

            #char:--
            Exotic pets, huh. The Aquarela Marketplace sounds interesting.
            
            #char:--
            Maybe someone else can tell you what it's like there. {StopMusic()}

            + [BARTO¬Ask for Barto's opinion about Aquarela.>>]

                #char:Barto_neutral_neutral|L
                Well, Captain, Aquarela is certainly a vibrant place.

                {shuffle:
                    -
                        #char:Barto_happy_angry|L
                        Of course, since I am a cook, I have to say it shines the brightest in its food. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                        #char:Barto_happy_happy|L
                        You can find many different types of food being sold there.

                        #char:Barto_happy_angry|L
                        If we have time, I recommend we stop and try some Churrasco skewers or one Acarajé.

                    -
                        #char:Barto_neutral_sad|L
                        Quite big too. The whole city is split across several floating islands. The Aquarela Marketplace is in the center.

                        #char:Barto_neutral_angry|L
                        It's the oldest building in the city and is always being renovated, with more sectors added to it.

                        #char:Barto_neutral_neutral|L
                        It seems to be common practice in Aquarela, really.

                    -
                        #char:Barto_neutral_sad|L
                        The houses are painted in many different colors, patterns and styles.

                        #char:Barto_neutral_angry|L
                        Some locals make art contests out of it, even.

                        #char:Barto_neutral_sad|L
                        On special occasions, they will also put up flags in the windows.

                        #char:Barto_happy_happy|L
                        You could say the mixture makes for a visual spectacle of its own. Just like Feijoada. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
                }

                ~ g_affinity_Barto += g_affinityChangeLow

                #char:Barto_neutral_angry|L
                With all that aside, we should take our leave as soon as possible.

            + [JACKIE¬Ask for Jackie's opinion about Aquarela.>>]

                #char:Jackie_happy_happy|R
                I went there a few times when I was a kid, Captain! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                {shuffle:
                    -
                        #char:Jackie_happy_neutral|R
                        Grandma took me there to get some repair parts.

                        #char:Jackie_happy_neutral|R
                        The merchants of Aquarela sell anything under the sun, really.

                        #char:Jackie_neutral_angry|R
                        You can find food, clothes, furniture... and, well, exotic pets.

                    -
                        #char:Jackie_neutral_neutral|R
                        It can be tough to get around on foot, but there are bridges and cable cars between city blocks.

                        #char:Jackie_neutral_neutral|R
                        Almost all of them have docking points for ships, though. Including the Aquarela Marketplace!

                        #char:Jackie_happy_angry|R
                        In fact, I heard that's how it came to be. Just a communication tower with merchant ships landing nearby.

                        #char:Jackie_happy_neutral|R
                        It grew and grew until it became the structure it is today!

                    -
                        #char:Jackie_happy_angry|R
                        Both the houses and the floating systems of Aquarela are wind-powered!

                        #char:Jackie_happy_angry|R
                        The residents put together really complex systems with scavenged materials.

                        #char:Jackie_happy_happy|R
                        As a engineer, I <i>really</i> admire their work! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
                }

                ~ g_affinity_Jackie += g_affinityChangeLow

                #char:Jackie_neutral_happy|R
                Anyway! Let's make sure the eggs are secured and start our trip!

            + [KLEBER¬Ask for Kleber's opinion about Aquarela.>>]

                #char:Kleber_neutral_happy|L
                It's been a while since I've been there, but I'm excited to go back.

                {shuffle:
                    -
                        #char:Kleber_neutral_neutral|L
                        When there's a soccer game or a race, some bars have dedicated sports pools.

                        #char:Kleber_neutral_neutral|L
                        You should come with me! I think I'm a pretty good predictor.

                        #char:Kleber_happy_neutral|L
                        Oh, and speaking of bars, I know one where they play Sertanejo music every Friday! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                        #char:Kleber_neutral_neutral|L
                        If our arrival matches up, we could all go there to celebrate the delivery!

                    -
                        #char:Kleber_neutral_neutral|L
                        So, funny story. Aquarela Marketplace has a flagline hanging from the top.

                        #char:Kleber_neutral_neutral|L
                        It's been that way since I was a kid, and it's only got longer.

                        #char:Kleber_neutral_happy|L
                        I once thought it was a good idea to see if I could tag it with a passenger ship.

                        #char:Kleber_happy_neutral|L
                        ...Don't judge me. I didn't know any better.

                        #char:Kleber_happy_sad|L
                        Since then, they, uh, fine anyone who flies close to it. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                        #char:Kleber_happy_happy|L
                        You could say I'm part of that city's history! {Emotion("Explosion", "ffffff")} {PlaySFX("Funny1")}

                    -
                        #char:Kleber_neutral_neutral|L
                        Well, Aquarela is a city made up of many small floating islands.

                        #char:Kleber_neutral_happy|L
                        There's this big soccer field in one of them.

                        #char:Kleber_neutral_neutral|L
                        During the week, it's mainly used by kids. But in the weekends, it's the adults who get together to play!

                        #char:Kleber_happy_angry|L
                        I remember joining a few times during my visits. Man, this brings back memories. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
                }

                ~ g_affinity_Kleber += g_affinityChangeLow

                #char:Kleber_neutral_neutral|L
                Either way, no time to lose! Let's plot the course and set out!

            -   #char:--
                You're still worried about the condition of the eggs. 

                #char:--
                Despite Rosana's reassuring words, you'd rather not take any chances. {PlayMusic("Decision")}

                #char:--
                It's probably a good idea to have someone checking the cargo every once in a while.

                #char:--
                But <i>who should you choose</i>?
                
                #char:--
                You can't help but be unsure. You barely know them.

                #char:--
                Looks like you'll have to go with your gut.

                + (barto_watches_eggs) [BARTO¬Assign the watch to Barto.>>]

                    ~ g_affinity_Barto += g_affinityChangeMid

                    #char:Barto_neutral_sad|L
                    I will admit I do not know much about eggs outside of cooking, Captain.
                    
                    #char:Barto_neutral_sad|L
                    But I will not betray the trust you are placing in me.

                    #char:Kleber_happy_sad|L
                    Isn't it weird, though? An animal taking care of exotic pets?

                    ~ g_affinity_Barto_Kleber -= g_affinityChangeLow

                    #char:Barto_angry_angry|L
                    You keep this up, I'll cook you an exotic <i>dinner</i>. {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

                    #char:Jackie_happy_angry|R
                    As long as you dont use the eggs for that, I think we'll be fine!

                    ~ g_affinity_Barto_Jackie -= g_affinityChangeLow

                    #char:Barto_angry_sad|L
                    Why, I never! What do you take me for!? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                + (jackie_watches_eggs) [JACKIE¬Assign the watch to Jackie.>>]

                    ~ g_affinity_Jackie += g_affinityChangeMid

                    #char:Jackie_happy_happy|R
                    Sounds good! I won't let you down, Captain!

                    #char:Jackie_happy_angry|R
                    Time to put what I know to the test! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                    #char:Kleber_neutral_sad|L
                    Careful, Jackie. Can't exactly fix broken eggs with a wrench, y'know?

                    ~ g_affinity_Jackie_Kleber -= g_affinityChangeLow

                    #char:Jackie_happy_sad|R
                    Tsk! At least I can fix incubators if they break. Can <i>you</i>?

                    #char:Barto_neutral_angry|L
                    Don't mind him. You seem responsible enough for the job.

                    ~ g_affinity_Jackie_Barto += g_affinityChangeLow

                    #char:Jackie_happy_happy|R
                    Awww. Thanks for the vote of confidence, Barto! {Emotion("Explosion", "ffffff")} {PlaySFX("Love1")}

                + (kleber_watches_eggs) [KLEBER¬Assign the watch to Kleber.>>]

                    ~ g_affinity_Kleber += g_affinityChangeMid

                    #char:Kleber_happy_happy|L
                    <wave>Whooo</wave>! Good to see you trust me with the important stuff, Cap! {Emotion("Explosion", "ffffff")} {PlaySFX("Shimmer2")}

                    #char:Jackie_surprised_angry|R
                    Um, are you sure about that, Captain? He is the <i>pilot</i>, after all.

                    #char:Kleber_neutral_happy|L
                    Well, this kind of thing is exactly why autopilot was invented!

                    #char:Jackie_fear_sad|R
                    In this case, I'd say that's what worries me. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Woosh")}

                    #char:Barto_fear_sad|L
                    Indeed. {Emotion("WaveIn", "2c2b30")} {PlaySFX("StrongWoosh")}

                    ~ g_affinity_Kleber_Barto -= g_affinityChangeLow
                    ~ g_affinity_Kleber_Jackie -= g_affinityChangeLow

                    #char:Kleber_sad_sad|L
                    H-hey, c'mon, we're a team, you should have some faith in me! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                -   #char:--
                    Jokes aside, everyone seems a bit on edge.

                    #char:--
                    You hope you made the right decision. {StopMusic()}

                    #char:--
                    With the cargo watch decided, you plot the course to Aquarela.

                    #char:--
                    And so begins the crew's first delivery.

        -> EVENT_END



= part2

#location: Aquarela

#char:--
Aquarela is a colossal city.

#char:--
In order to control the intense traffic flow, there are strict speed limits in place.

#char:--
It will take a couple of days before you finally get to the Marketplace.

#char:--
While you're planning your route across the city, you hear someone approaching you. 

{
    - barto_watches_eggs:

        #char:Barto_fear_sad|L
        Captain, I'm afraid we have an issue. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Mistery2")}

        #char:Barto_fear_angry|L
        I was inspecting the cargo, as you asked me to.

        #char:Barto_fear_sad|L
        Most of the eggs are fine... <waitfor=0.5>save for one.

        ~ ScreenFlash("white", -1)

        //SFX Phoenix Wright

        #char:Barto_fear_angry|L
        I'm afraid that one of the eggs has hatched, Captain. {PlayMusic("Tension")}

    - jackie_watches_eggs:
        #char:Jackie_surprised_angry|L
        Captain, something happened with the eggs! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Mistery2")}

        ~ ScreenFlash("white", -1)

        //SFX Phoenix Wright

        #char:Jackie_fear_sad|L
        Looks like one of them hatched during the night! {PlayMusic("Tension")}

    - kleber_watches_eggs:
        #char:Kleber_fear_sad|L
        <shake>C-cap</shake>! We have a problem! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Mistery2")}

        #char:Kleber_fear_angry|L
        I swear I didn't do anything, though!

        ~ ScreenFlash("white", -1)

        // SFX Phoenix Wright

        #char:Kleber_fear_angry|L
        When I got to the cargo hold this morning, one of the eggs was already hatched! {PlayMusic("Tension")}
}

+ [ANGRY¬You are baffled by their irresponsibility.>>]
    #char:--
    Hatched!? You put <>

    {
        - barto_watches_eggs:
            Barto <>

        - jackie_watches_eggs:
            Jackie <>

        - kleber_watches_eggs:
            Kleber <>
    }

    in charge of the eggs <i>exactly</i> so that wouldn't happen!

    ~ g_morale -= g_statChangeLow

    {
        - barto_watches_eggs:
            #char:Barto_angry_sad|L
            To be fair, I <i>did</i> tell you I didn't know much about pet eggs. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

            ~ g_affinity_Barto -= g_affinityChangeMid

            #char:Barto_fear_sad|L
            And I also remember Rosana telling us they wouldn't hatch! Don't pin this on me!

        - jackie_watches_eggs:
            #char:Jackie_surprised_angry|L
            But it wasn't my fault! Rosana told us the eggs wouldn't hatch! {Emotion("WaveIn", "2c2b30")} {PlaySFX("StrongWoosh")}

            ~ g_affinity_Jackie -= g_affinityChangeMid

            #char:Jackie_angry_angry|L
            Don't blame me for trusting her word!

        - kleber_watches_eggs:
            #char:Kleber_angry_angry|L
            How am <i>I</i> the one at fault, {g_name}!? {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

            ~ g_affinity_Kleber -= g_affinityChangeMid

            #char:Kleber_angry_sad|L
            I can't look at the cargo all the time! Someone needs to steer this ship!
    }

+ [RELAX¬Take a deep breath.>>]
    #char:--
    It's manageable. All you gotta do is keep the hatchling in the cargo hold.

    {
        - barto_watches_eggs:
            #char:Barto_angry_angry|L
            {g_name}, this is serious! I wouldn't have reported urgently otherwise! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            ~ g_affinity_Barto -= g_affinityChangeMid

        - jackie_watches_eggs:
            #char:Jackie_fear_happy|L
            That's the problem, {g_name}! It's not in the cargo hold anymore! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        - kleber_watches_eggs:
            #char:Kleber_fear_angry|L
            Normally, yeah! But it's not in there anymore! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
    }

    ~ g_morale -= g_statChangeLow

+ [FEAR¬Start panicking.>>]
    #char:--
    <shake>Hatched!?</shake> So now you have an exotic pet roaming around the 41-Bis!?

    {
        - barto_watches_eggs:
            #char:Barto_fear_sad|L
            I am afraid that is the case, Captain.

            ~ g_morale -= g_statChangeLow

            #char:Barto_fear_sad|L
            Personally, I worry the poor thing will get hurt. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

        - jackie_watches_eggs:
            #char:Jackie_fear_sad|L
            We do. Even if it was by accident.

            ~ g_morale -= g_statChangeLow
            
            #char:Jackie_sad_sad|L
            What now? We can't finish our delivery like that! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        - kleber_watches_eggs:
            #char:Kleber_fear_sad|L
            Oooh, man. I hope our pay doesn't get docked...

            ~ g_morale -= g_statChangeLow

            #char:Kleber_fear_sad|L
            Wait, what am I saying!? This thing could <i>attack us</i>, for all we know! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}
    }

-
    #char:--
    {
        - barto_watches_eggs:
            Barto tries to regain his composure.

        - jackie_watches_eggs:
            Jackie tries to think of something.

        - kleber_watches_eggs:
            Kleber tries to calm down.
    }

    {
        - barto_watches_eggs:
            #char:Barto_surprised_neutral|L
            That's not all, however. I found this among the incubators.

            #char:--
            Barto hands you a <color=mafaRed><b>red feather</b></color>. {PlaySFX("Mistery3")}

            ~ mafagafoSkin = "redFeather"
            ~ UniqueEffectActivate("RedFeather")

            #char:Barto_surprised_angry|L
            Whatever dropped this had long left the cargo hold by the time I arrived. {PlaySFX("LightWoosh")}

        - jackie_watches_eggs:

            #char:Jackie_surprised_angry|L
            Well, I found this too. It was near the hatched egg's incubator.

            #char:--
            Jackie hands you a <color=mafaBlue><b>blue scale</b></color>. {PlaySFX("Mistery3")}

            ~ mafagafoSkin = "blueScale"
            ~ UniqueEffectActivate("BlueScale")

            #char:Jackie_surprised_angry|L
            We have a lead, at least. {PlaySFX("LightWoosh")}

        - kleber_watches_eggs:
            #char:Kleber_surprised_angry|L
            Oh, yeah! Whatever came out of that egg left this behind too.

            #char:--
            Kleber hands you a tuft of <color=mafaGreen><b>green fur</b></color>. {PlaySFX("Mistery3")}

            ~ mafagafoSkin = "greenFur"
            ~ UniqueEffectActivate("GreenFur")

            #char:Kleber_surprised_neutral|L
            There were a few of these scattered along the cargo hold. {PlaySFX("LightWoosh")}

            #char:Kleber_sad_sad|L
            No sign of the thing that dropped them, though.
    }

    #char:--
    At least it's a start.

    #char:--
    Better call the others. You'll need the whole crew for this. {StopMusic()}

    ~ FadeTo("black", 1, 1)

    #char:--
    You all gather in the cargo hold. 

    #char:Barto_neutral_angry|L
    Rosana insisted there was no risk of hatching. {PlayMusic("Decision")}

    #char:Barto_angry_angry|L
    We should call her and demand an explanation. {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

    #char:Kleber_sad_sad|R
    Don't think it's that simple, man.

    #char:Kleber_fear_neutral|R
    It's way more likely we'll just get yelled at if we report this to the client. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

    #char:Jackie_sad_sad|L
    Maybe even have our pay docked too.

    #char:Jackie_sad_angry|L
    After all, we're a caravan on its first delivery. Something like this could be seen as inexperience... or even incompetence. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    #char:--
    Should you call Rosana?

    + [YES¬It's best to be honest.>>]

        #char:--
        Your heart is racing, but you call her anyway.

        #char:Rosana_neutral_hologram|L
        Oh, hey! You're just a few days from here, right? {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

        #char:Rosana_happy_hologram|L
        I take it everything is fine with the eggs? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        ++ (called_rosana_truth)[TALK¬Tell her the truth.>>]

            #char:--
            You tell her about the hatched egg. Rosana's expression hardens.

            #char:Rosana_angry_hologram|L
            Hatched? But that — that's impossible! {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

            #char:--
            You explain what happened as best as you can, with your crewmates filling in the blanks.

            ~ FadeTo("black", 1, 1)

            #char:Rosana_thinking_hologram|L
            ...I see.

            #char:Rosana_serious_hologram|L
            Well then. You just have to find and catch the runaway pet before you get here!

            #char:Barto_fear_sad|R
            And <i>how</i> are we supposed to do that, exactly? {Emotion("WaveIn", "2c2b30")} {PlaySFX("StrongWoosh")}

            #char:Rosana_thinking_hologram|L
            The chances of any of these babies leaving a moving ship is pretty much zero.

            #char:Rosana_happy_hologram|L
            So all you need to do is locate it! Put those instincts to use, big guy! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

            {Blink("Big Face", 1, 0.5, "white")}

            #char:Barto_surprised_sad|R
            Madam, I do not think that is how it wor—

            #char:--
            Too late. Rosana has turned off the call.

            #char:Barto_sad_sad|R
            Guess we're really dealing with this ourselves, huh? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            ~ g_morale -= g_statChangeLow

        ++ [LIE¬Back out and pretend it's all fine.>>]
        
            #char:--
            You freeze. Maybe it's best not to worry your client - especially if you have no reputation yet.

            #char:--
            You make up an excuse. You tell her everything is fine, you are just calling to confirm her shop's coordinates.

            #char:Rosana_neutral_hologram|L
            Are you lost? They were supposed to be on the briefing the C.C.A gave you.

            #char:Rosana_neutral_hologram|L
            Those capybaras need to step up their game. They are too disorganized.
            
            #char:Rosana_neutral_hologram|L
            I'll be sending them again, just in case.

            #char:Rosana_neutral_hologram|L
            Here you go.

            #char:Rosana_happy_hologram|L
            Well then, see you soon!

            {Blink("Big Face", 1, 0.5, "white")}

            #char:--
            Rosana ends the call.

    + [NO¬You don't want to worry her.>>]

        #char:--
        Maybe it's best not to worry your client - especially if you have no reputation yet.

        #char:Kleber_happy_sad|L
        Well, it's safe to say there's no way this thing couldn't have left a moving ship.

    -   #char:Kleber_happy_sad|L
        I'm sure we can come up with a plan... can't we? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")}
 
        #char:--
        It should be no different from hunting your dinner back in the Surface. Probably.

        #char:Jackie_surprised_sad|R
        Hmm... We need a place to start. What kind of animal are we dealing with? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

        {
            - barto_watches_eggs:
                #char:Barto_sad_angry|L
                Well, most incubators were labeled, complete with the pet's size, body type and diet.
                
                #char:Barto_sad_sad|L
                But strangely, this one was the exception.

                #char:Barto_sad_angry|L
                The only information present in the label was its name - "Mafagafo". {PlaySFX("Mistery3")}

            - jackie_watches_eggs:
                #char:Jackie_surprised_sad|R
                Rosana didn't elaborate on the eggs. Neither did the label on the incubator.

                #char:Jackie_neutral_angry|R
                All that was in the label was the name "Mafagafo"... That's probably its species. {PlaySFX("Mistery3")}

            - kleber_watches_eggs:
                #char:Kleber_sad_sad|L
                No idea. Though...

                #char:Kleber_sad_sad|L
                There was something written on the incubator... "Mafle"... "Mafago"...

                #char:Kleber_happy_angry|L
                <bounce>"Mafagafo"</bounce>! Yeah, that's it! {PlaySFX("Mistery3")}
        }

        #char:--
        Mafagafos? You recall hearing that name from some stories back in Surface.

        #char:--
        You had no idea they were actually real.

        #char:--
        Judging by the looks your crewmembers are sporting, neither have they.

        #char:Barto_neutral_sad|L
        If we're tracking an exotic pet down ourselves, we'll need to lure it out of hiding. 

        #char:Barto_neutral_angry|L
        I propose leaving some sort of bait. A snack, if you may.

        #char:Kleber_neutral_sad|R
        I like how you think, chef! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}
        
        #char:Kleber_neutral_happy|R
        Leaving some food on a good old trap should do the trick.

        #char:Barto_angry_angry|L
        I didn't mean it <i>that way</i>, you brute! {PlaySFX("StrongWoosh")}

        #char:Barto_neutral_angry|L
        The animal is more likely to be pacified if it becomes content.

        #char:Barto_neutral_angry|L
        We can leave the food somewhere visible to attract the pet. No traps needed.

        #char:Jackie_neutral_angry|L
        It may be more productive if we could track it down somehow.

        #char:Jackie_neutral_angry|L
        I still have some spare grease. Maybe we could put some along the ship.

        #char:Jackie_happy_angry|L
        That way, it might leave a trail for us to follow!

        #char:Kleber_neutral_neutral|R
        At the end, it's up to you, Cap. Whose plan do you want to put into action?

        + (barto_bait) [BARTO¬Attract the creature with food.>S>]

            #char:--
            Barto has a point. You could spread portions of food in a strategic spot of the ship. {StopMusic()}

            ~ g_affinity_Barto += g_affinityChangeMid
            ~ mafagafoBody = "winged"

            #char:Barto_happy_happy|L
            I'm glad you agree, Captain. The situation calls for something other than force. {Emotion("Explosion", "ffffff")} {PlaySFX("Love1")}
            
            ~ g_affinity_Jackie -= g_affinityChangeMid

            {
                - barto_watches_eggs:
                    #char:Jackie_sad_sad|L
                    Normally, I'd agree, but I'm not sure Barto's idea is the best. {PlaySFX("LightWoosh")}

                    ~ g_affinity_Barto_Jackie -= g_affinityChangeMid
                    ~ g_affinity_Jackie_Barto -= g_affinityChangeMid

                - else:
                    #char:Jackie_surprised_angry|L
                    How will you do it, though? We don't know anything about this Mafagafo or its diet. {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}

                    #char:Barto_neutral_angry|L
                    Simple. I'll try coming up with a few different variants of the bait.
            }

            ~ g_affinity_Kleber -= g_affinityChangeMid

            {
                - barto_watches_eggs:
                    #char:Kleber_sad_sad|R
                    Yeah, you should've let me or Jackie try, Cap.

                    ~ g_affinity_Kleber_Barto -= g_affinityChangeMid
                    
                    #char:Kleber_angry_neutral|R
                    Barto was supposed to be responsible for the eggs to begin with. {PlaySFX("Woosh")}

                    #char:Barto_angry_angry|L
                    If you have something to say to me, wait until my plan brings the Mafagafo back. {PlaySFX("StrongWoosh")}

                    ~ g_affinity_Barto_Kleber -= g_affinityChangeMid

                - else:
                    #char:Kleber_fear_sad|R
                    Who knows how long it might take, though... {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}
            }

            #char:Barto_neutral_angry|L
            I'll try out your suggestion, Captain. Though there remains the matter of <i>where</i>.

        -> where_to_execute

        + (jackie_bait) [JACKIE¬Spread grease to track the creature.>F>]

            #char:--
            Getting the Mafagafo to leave tracks for you to follow is a smart idea. {StopMusic()}

            ~ mafagafoBody = "biped"

            #char:Jackie_happy_angry|L
            Good choice, Captain! I can get started right away! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Love1")}

            ~ g_affinity_Jackie += g_affinityChangeMid
            
            #char:Jackie_neutral_angry|L
            We're after a newborn creature, so it's probably small enough to scurry off to a corner or inside the vents.

            ~ g_affinity_Kleber -= g_affinityChangeMid

            {
                - jackie_watches_eggs:
                    #char:Kleber_sad_sad|R
                    I still think it isn't fair to favor only one person's ideas, Cap. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

                    ~ g_affinity_Kleber_Jackie -= g_affinityChangeMid
                    ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid

                - else:
                    #char:Kleber_neutral_sad|R
                    We'll need to hope it's not smart enough to notice the grease.
            }

            ~ g_affinity_Barto -= g_affinityChangeMid

            {
                - jackie_watches_eggs:
                    #char:Barto_angry_angry|L
                    Especially if they didn't work the first time. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                    ~ g_affinity_Barto_Jackie -= g_affinityChangeMid

                    #char:Jackie_angry_happy|L
                    The heck!? Where's that vote of confidence from earlier? {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

                    ~ g_affinity_Jackie_Barto -= g_affinityChangeMid

                - else:
                    #char:Barto_sad_angry|L
                    Or worse, notice and become more agitated.
            }
            
            #char:Jackie_neutral_angry|L
            ...Well, either way, we'll have to try to find out. We can start with spots near the vents.
            
            #char:Jackie_neutral_angry|L
            Which ones, though? I don't think I have enough grease for all of them... {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}

        -> where_to_execute

        + (kleber_bait) [KLEBER¬Set a trap for the creature.>S>]

            #char:--
            A trap would be best. You don't even have to look for the Mafagafo, just wait until it comes to you.  {StopMusic()}

            #char:--
            You advise Kleber to make some kind of trapdoor. The animal goes in for some food, but can't get out.

            ~ g_affinity_Kleber += g_affinityChangeMid
            ~ mafagafoBody = "quadruped"

            #char:Kleber_happy_happy|R
            <wiggle>Right</wiggle>? I knew you'd agree, Cap! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

            ~ g_affinity_Jackie -= g_affinityChangeMid

            {
                - kleber_watches_eggs:
                    #char:Jackie_sad_sad|L
                    With all due respect, Captain, isn't <i>he</i> the one who got us into this mess?

                    ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid

                    #char:Kleber_angry_angry|R
                    Come on, what could go wrong? {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

                    ~ g_affinity_Kleber_Jackie -= g_affinityChangeMid

                - else:
                    #char:Jackie_sad_angry|L
                    What if the trap fails or breaks, though?

                    #char:Kleber_neutral_happy|R
                    No worries, I could make another one easily.

                    #char:Kleber_sad_sad|R
                    I would know. I, uh, had a rodent problem once.
                    
                    #char:Kleber_neutral_happy|R
                    Solved it with a bucket, a plank, some cardboard and a loaf of bread!
            }

            ~ g_affinity_Barto -= g_affinityChangeMid

            {
                - kleber_watches_eggs:

                    #char:Barto_angry_angry|L
                    You are going to hurt the pet with a trap! <i>Our client's</i> pet! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                    ~ g_affinity_Barto_Kleber -= g_affinityChangeMid
                    ~ g_affinity_Kleber_Barto -= g_affinityChangeMid

                    #char:Kleber_angry_sad|R
                    Gee, don't take it out on me just cause my plan is better! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

                - else:
                    #char:Barto_sad_sad|L
                    The poor thing will become stressed after it's trapped, though. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    #char:Kleber_neutral_sad|R
                    I know, Chef, but if we don't trap it, <i>we</i> will be the ones getting stressed.
            }

            #char:Kleber_neutral_happy|R
            Anyway, I'll try your suggestion, Cap! You look like you have experience with this too.

            #char:Kleber_neutral_happy|R
            Where would you place it? I have my own ideas, but I want your input. {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}

        -> where_to_execute



= where_to_execute

#char:--
You can <>

{
    - barto_bait || kleber_bait:
        go <b>left</b> to the kitchen, <>
}

{
    - barto_bait || jackie_bait:
        {
            - jackie_bait:
                stay <b>here</b> in the cargo hold, <>

            - else:
                stay <b>here</b> in the cargo hold, <>
        }
}

{
    - jackie_bait || kleber_bait:
        go <b>straight ahead</b> until the cockpit <>
}

or go to the common room to your <b>right</b>.

{
    - barto_bait || kleber_bait:
        + (kitchenPlan) [POINT_LEFT¬Execute the plan in the kitchen.>>]
            {
                - barto_bait:
                    #char:--
                    If you're trying to feed the Mafagafo, maybe it's best to do it in the kitchen.

                    ~ g_supplies -= g_statChangeLow

                -> mafagafo_search_planned

                - kleber_bait:
                    #char:--
                    The Mafagafo will probably show up where your supplies are. That's the perfect place for a trap.

                    ~ g_supplies -= g_statChangeLow
                    ~ mafagafoAggro += 1

                -> mafagafo_search_planned
            }
}

{
    - barto_bait || jackie_bait:
        + (cargoHoldPlan) [POINT_DOWN¬Execute the plan in the cargo hold.>>]
            {
                - barto_bait:
                    #char:--
                    If the Mafagafo was in the cargo hold, there's a chance it will return.

                    #char:--
                    If you put some food there, that chance is even higher.

                    ~ g_supplies -= g_statChangeLow
                    ~ mafagafoAggro -= 1

                -> mafagafo_search_planned

                - jackie_bait:
                    #char:--
                    If the Mafagafo was in the cargo hold, there's a chance it will return.

                    #char:--
                    If you grease a few corners, you're sure to find its tracks.

                    ~ g_fuel -= g_statChangeLow

                -> mafagafo_search_planned
            }
}

{
    - jackie_bait || kleber_bait:
        + (cockpitPlan) [POINT_UP¬Execute the plan in the cockpit.>>]
            {
                - jackie_bait:
                    #char:--
                    It's a bit unconventional, but there's always a chance it would appear in the cockpit.

                    #char:--
                    If it does, you'll be able to follow its trail.

                    ~ g_fuel -= g_statChangeLow
                    ~ mafagafoAggro += 1

                -> mafagafo_search_planned

                - kleber_bait:
                    #char:--
                    It's a bit unconventional, but there's always a chance it would appear in the cockpit.

                    #char:--
                    If that happens, the food in the trap will get its attention.

                    ~ g_supplies -= g_statChangeLow
                    ~ mafagafoAggro += 1

                -> mafagafo_search_planned
            }
}

+ (commonRoomPlan) [POINT_RIGHT¬Execute the plan in the common room.>>]

    {
        - barto_bait:
            #char:--
            The common room is right in the center of the ship.

            #char:--
            So the chances of attracting the Mafagafo with food is good.

            ~ g_supplies -= g_statChangeLow
            ~ mafagafoAggro -= 1

        -> mafagafo_search_planned

        - jackie_bait:
            #char:--
            The common room is positioned in such a way that the Mafagafo would have to go through here to move around.

            #char:--
            If it passes the room while nobody's there, it's sure to leave a track.

            ~ g_fuel -= g_statChangeLow

        -> mafagafo_search_planned

        - kleber_bait:
            #char:--
            The common room is the heart of the ship.

            #char:--
            If you place the trap here, the chances of snatching up the Mafagafo are high.

            ~ g_supplies -= g_statChangeLow

        -> mafagafo_search_planned
    }



= mafagafo_search_planned

{
    - barto_bait && (cargoHoldPlan || commonRoomPlan):
        #char:Barto_happy_neutral|L
        I agree, that seems best. {PlaySFX("Shimmer1")}

        #char:Barto_neutral_angry|L
        I suggest we put it into practice as soon as we can.

    - barto_bait && kitchenPlan:
        #char:Barto_neutral_angry|L
        Hmm. If we place them in the kitchen, the Mafagafo might just go for our regular supplies instead. {PlaySFX("Mistery3")}

        #char:Barto_neutral_angry|L
        Still, it's better than not trying at all.

    - jackie_bait && (cargoHoldPlan || commonRoomPlan):
        #char:Jackie_neutral_neutral|L
        Great! I was thinking along those lines too. {PlaySFX("Shimmer1")}

        #char:Jackie_happy_happy|L
        Let me get my tools and we'll get started!

    - jackie_bait && cockpitPlan:
        #char:Jackie_sad_sad|L
        Hmm, I don't know. The cockpit seems like a weird place for it to hide, especially since Kleber is almost always there. {PlaySFX("Mistery3")}

        #char:Jackie_neutral_sad|L
        But who knows, it might be worth a shot.

    - kleber_bait && (cockpitPlan || kitchenPlan):
        #char:Kleber_neutral_happy|R
        Sounds good, Cap! {PlaySFX("Shimmer1")}

        #char:Kleber_neutral_sad|R
        It'll take me a bit to complete the trap, but it should be done and in position by the end of the day!

    - kleber_bait && commonRoomPlan:
        #char:Kleber_neutral_sad|R
        Not sure this thing will notice the trap in the common room, Cap... {PlaySFX("Mistery3")}
        
        #char:Kleber_neutral_happy|R
        Won't stop me from giving it a try, though!
}

{
    - barto_bait:
        {shuffle:
            -
                #char:Kleber_neutral_happy|R
                If you change your mind and want to put your treats in a trap, just gimme a call, chef! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

                #char:Barto_neutral_angry|L
                There will be no need. You'll see, you buffoon.

            -
                #char:Jackie_happy_neutral|L
                Well, if you need help, feel free to call, Barto.

                #char:Barto_neutral_sad|L
                Much appreciated. But I think I will manage.
        }

    - jackie_bait:
        {shuffle:
            -
                #char:Barto_neutral_neutral|L
                Jackie, could I bother you to notify us if you see its tracks?

                #char:Jackie_happy_angry|L
                Sure! We'll know as soon as it comes out of hiding, trust me!

            -
                #char:Kleber_neutral_happy|R
                I wonder how much grease we'll have to clean from the 41-Bis later...

                #char:Jackie_happy_neutral|L
                First things first. What matters now is finding the creature, isn't it?
        }

    - kleber_bait:
        {shuffle:
            -
                #char:Barto_angry_angry|L
                I really hope the trap doesn't make it agressive.

                #char:Kleber_neutral_neutral|R
                It'll be <wave>fiiiine</wave>, chef. {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}
                
                #char:Kleber_neutral_happy|R
                I'm confident about the plan.

                #char:Barto_fear_angry|L
                That's <b>exactly</b> what worries me. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            -
                #char:Jackie_sad_angry|L
                You know you'll have to check the trap every once in a while, right?

                #char:Kleber_neutral_sad|R
                Yeah, yeah. I have to pay attention to the skyways all day, what's one more distraction?
        }
}

#char:--
The crew gets ready to execute the plan. 

#char:--
Hopefully it'll work.

#char:--
You don't have a lot of time left, and you'd rather not get on Rosana's bad side.

-> EVENT_END



= part3

#location: Aquarela

#char:--
It's been over a day and you still haven't seen hide or hair of the mysterious Mafagafo. {StopMusic()} 

#char:--
Maybe it can camouflage itself? {PlaySFX("Mistery2")}

#char:--
You haven't even heard whatever noise it probably makes.

#char:--
At this point, you and the crew are starting to panic. You've all taken to searching through the ship. {PlayMusic("Tension")}

#char:--
During one of these searches, you enter the <>

{
    - kitchenPlan:
        kitchen.
        
        #char:--
        Barto isn't there, surprisingly.

    - cargoHoldPlan:
        ship's cargo hold.
        
        #char:--
        Jackie searched here a while ago, but it doesn't hurt to try again.

    - cockpitPlan:
        cockpit.
        
        #char:--
        Kleber isn't there, having left the ship on autopilot.

    - commonRoomPlan:
        common room.
        
        #char:--
        The others are probably searching elsewhere, like their quarters.
}

{
    - barto_bait:

        #char:--
        Just then, you see a bundle of <>

        {
            - mafagafoSkin == "redFeather":
                red feathers <>


            - mafagafoSkin == "blueScale":
                blue scales <>

            - mafagafoSkin == "greenFur":
                green fur <>

        }

        on top of one of Barto's improvised feeders. {PlaySFX("Mistery3")}

        #char:--
        It moves to look at you. The animal has a <>

        {
            - mafagafoSkin == "redFeather":
                couple of tail feathers, <>

            - mafagafoSkin == "blueScale":
                short leathery tail, <>

            - mafagafoSkin == "greenFur":
                long furry tail, <>
        }

        {
            - mafagafoBody == "winged":
                two small feet and a pair of wings. {PlaySFX("Woosh")}

            - mafagafoBody == "biped":
                two small feet and a pair of arms. {PlaySFX("Woosh")}

            - mafagafoBody == "quadruped":
                four paws. {PlaySFX("Woosh")}
        }

        #char:--
        Its short beak and narrow eyes have a curious look. {StopMusic()}

        {
            - mafagafoSkin == "redFeather":
                ~ PlaySFX("MafagafoRedFeatherHappy")

            - mafagafoSkin == "blueScale":
                ~ PlaySFX("MafagafoBlueScaleHappy")

            - mafagafoSkin == "greenFur":
                ~ PlaySFX("MafagafoGreenFurHappy")
        }

    - jackie_bait:

        #char:--
        Just then, you notice a trail of grease leading from one of the vents to a corner. {PlaySFX("Mistery3")}

        #char:--
        Not only that, but there's something <i>moving</i> on said corner.

        #char:--
        You're looking straight at a bundle of <>

        {
            - mafagafoSkin == "redFeather":
                red feathers <>

            - mafagafoSkin == "blueScale":
                blue scales <>


            - mafagafoSkin == "greenFur":
                green fur <>

        }

        {
            - mafagafoBody == "winged":
                with two small feet and a pair of wings.

            - mafagafoBody == "biped":
                with two small feet and a pair of arms.

            - mafagafoBody == "quadruped":
                with four paws.
        }

        Whatever it is, it seems annoyed.
        
        #char:--
        The animal is rubbing its limbs on the wall, leaving traces of inky black behind.

        #char:--
        Just then, it turns to you, beak stained black and narrow eyes <>

        {
            - mafagafoAggro > 1:
                locking onto you angrily. {PlaySFX("Woosh")} {StopMusic()}

                {
                    - mafagafoSkin == "redFeather":
                        ~ PlaySFX("MafagafoRedFeatherAngry")

                    - mafagafoSkin == "blueScale":
                        ~ PlaySFX("MafagafoBlueScaleAngry")

                    - mafagafoSkin == "greenFur":
                        ~ PlaySFX("MafagafoGreenFurAngry")
                }

            - else:
                shining with curiosity. {PlaySFX("Woosh")} {StopMusic()}

                {
                    - mafagafoSkin == "redFeather":
                        ~ PlaySFX("MafagafoRedFeatherHappy")

                    - mafagafoSkin == "blueScale":
                        ~ PlaySFX("MafagafoBlueScaleHappy")

                    - mafagafoSkin == "greenFur":
                        ~ PlaySFX("MafagafoGreenFurHappy")
                }
        }

    - kleber_bait:

        #char:--
        Just then, you notice something is off about the trap Kleber set in a corner. {PlaySFX("Mistery3")}

        #char:--
        It's moving very lightly. There's something inside!

        #char:--
        Carefully, you peek inside. The creature snoozing inside the trap looks like nothing you've ever seen.

        #char:--
        It has <>

        {
            - mafagafoBody == "winged":
                two small feet and a pair of wings on its <>

            - mafagafoBody == "biped":
                two small feet and a pair of arms on its <>

            - mafagafoBody == "quadruped":
                four paws on its <>
        }

        {
            - mafagafoSkin == "redFeather":
                red-feathered body.

            - mafagafoSkin == "blueScale":
                body covered in blue scales.

            - mafagafoSkin == "greenFur":
                furry green body.
        }

        #char:--
        Just then, the creature wakes up. {PlaySFX("Woosh")} {StopMusic()}

        #char:--
        Of course, it immediately turns its beak and narrow eyes to you, <>

        {
            - mafagafoAggro > 1:
                emitting something between a hiss and a growl.

                {
                    - mafagafoSkin == "redFeather":
                        ~ PlaySFX("MafagafoRedFeatherAngry")

                    - mafagafoSkin == "blueScale":
                        ~ PlaySFX("MafagafoBlueScaleAngry")

                    - mafagafoSkin == "greenFur":
                        ~ PlaySFX("MafagafoGreenFurAngry")
                }


            - else:
                making a sound resembling a purr, a squawk and a chitter, all at once.

                {
                    - mafagafoSkin == "redFeather":
                        ~ PlaySFX("MafagafoRedFeatherHappy")

                    - mafagafoSkin == "blueScale":
                        ~ PlaySFX("MafagafoBlueScaleHappy")

                    - mafagafoSkin == "greenFur":
                        ~ PlaySFX("MafagafoGreenFurHappy")
                }
        }
}

#char:--
Even though you didn't recognize the name, something about the creature seems familiar up close...

{
    - mafagafoBody == "winged" && mafagafoAggro > 1:
        #char:--
        Before you can blink, the Mafagafo takes flight. {PlaySFX("StrongWoosh")} {PlayMusic("AquarelaAction")}

        {
            - mafagafoSkin == "redFeather":
                ~ ScreenFlash("red", -1)

            - mafagafoSkin == "blueScale":
                ~ ScreenFlash("blue", -1)

            - mafagafoSkin == "greenFur":
                ~ ScreenFlash("green", -1)
        }

        #char:--
        It hovers above the room, screeching menacingly.

        {
            - mafagafoSkin == "redFeather":
                ~ PlaySFX("MafagafoRedFeatherAngry")

            - mafagafoSkin == "blueScale":
                ~ PlaySFX("MafagafoBlueScaleAngry")

            - mafagafoSkin == "greenFur":
                ~ PlaySFX("MafagafoGreenFurAngry")
        }
        
        #char:--
        Is this <i>really</i> supposed to be a pet!?

    - (mafagafoBody == "biped" || mafagafoBody == "quadruped") && mafagafoAggro > 1:

        #char:--
        Before you can blink, the Mafagafo jumps away from you and starts running through the room. {PlaySFX("StrongWoosh")} {PlayMusic("AquarelaAction")}

        {
            - mafagafoSkin == "redFeather":
                ~ ScreenFlash("red", -1)

            - mafagafoSkin == "blueScale":
                ~ ScreenFlash("blue", -1)

            - mafagafoSkin == "greenFur":
                ~ ScreenFlash("green", -1)
        }

        #char:--
        It screeches loudly, going though the room in a frenzy.

        {
            - mafagafoSkin == "redFeather":
                ~ PlaySFX("MafagafoRedFeatherAngry")

            - mafagafoSkin == "blueScale":
                ~ PlaySFX("MafagafoBlueScaleAngry")

            - mafagafoSkin == "greenFur":
                ~ PlaySFX("MafagafoGreenFurAngry")
        }
        
        #char:--
        Is this <i>really</i> supposed to be a pet!?

    - mafagafoBody == "winged" && mafagafoAggro <= 1:

        #char:--
        The Mafagafo takes flight briefly... then lands a bit closer. {PlaySFX("StrongWoosh")} {PlayMusic("Light")}

        {
            - mafagafoSkin == "redFeather":
                ~ PlaySFX("MafagafoRedFeatherHappy")

            - mafagafoSkin == "blueScale":
                ~ PlaySFX("MafagafoBlueScaleHappy")

            - mafagafoSkin == "greenFur":
                ~ PlaySFX("MafagafoGreenFurHappy")
        }

        #char:--
        Looks like it's inspecting you curiously.


    - (mafagafoBody == "biped" || mafagafoBody == "quadruped") && mafagafoAggro <= 1:

        #char:--
        The Mafagafo takes a step in your direction. Then another. {PlaySFX("StrongWoosh")} {PlayMusic("Light")}

        {
            - mafagafoSkin == "redFeather":
                ~ PlaySFX("MafagafoRedFeatherHappy")

            - mafagafoSkin == "blueScale":
                ~ PlaySFX("MafagafoBlueScaleHappy")

            - mafagafoSkin == "greenFur":
                ~ PlaySFX("MafagafoGreenFurHappy")
        }

        #char:--
        Looks like it's inspecting you curiously.
}

#char:--
Time to think of a way to capture the creature.

{
    - mafagafoAggro > 1:
        + (mafagafo_impose) [FLEX¬Impose yourself.>M>]
            #char:--
            You impose yourself, standing tall, spreading your arms and making random noises. {StopMusic()}

            #char:--
            Worked a few times in the past when confronting small animals.

            #char:--
            This should be no different. The Mafagafo doesn't exactly look like a predator.

            {
                - cargoHoldPlan:

                    #char:--
                    Indeed, it backs down, panicking. {PlaySFX("Shimmer2")}

                    {
                        - mafagafoSkin == "redFeather":
                            ~ PlaySFX("MafagafoRedFeatherAngry")

                        - mafagafoSkin == "blueScale":
                            ~ PlaySFX("MafagafoBlueScaleAngry")

                        - mafagafoSkin == "greenFur":
                            ~ PlaySFX("MafagafoGreenFurAngry")
                    }

                    #char:--
                    You close all vents in the cargo hold and then lock the door.

                - else:

                    #char:--
                    The Mafagafo flees. You pursue it, taking care to lead it in the right direction. {PlaySFX("StrongWoosh")}

                    {
                        - mafagafoSkin == "redFeather":
                            ~ PlaySFX("MafagafoRedFeatherAngry")

                        - mafagafoSkin == "blueScale":
                            ~ PlaySFX("MafagafoBlueScaleAngry")

                        - mafagafoSkin == "greenFur":
                            ~ PlaySFX("MafagafoGreenFurAngry")
                    }

                    #char:--
                    You manage to bait it into a storage box in the cargo hold, closing it at the right time! {PlaySFX("Door")}
            }

        -> mafagafo_caught
}

{
    - mafagafoAggro > 1:
        + (mafagafo_angry) [ANGRY¬Run towards the Mafagafo.>M>]
            #char:--
            You advance in the animal's direction.  {StopMusic()}

            //TODO SFX Footsteps rápidos

            ~ ScreenFlash("white", -1)

            #char:--
            That quickly proves to be a mistake. {PlaySFX("Bad1")}

                {
                    - mafagafoSkin == "redFeather":
                        ~ PlaySFX("MafagafoRedFeatherAngry")

                    - mafagafoSkin == "blueScale":
                        ~ PlaySFX("MafagafoBlueScaleAngry")

                    - mafagafoSkin == "greenFur":
                        ~ PlaySFX("MafagafoGreenFurAngry")
                }

            #char:--
            The Mafagafo emits another loud noise and goes inside a vent before you can even stop it. {PlaySFX("StrongWoosh")}

        -> mafagafo_escaped
}

{
    - mafagafoAggro <= 1:
        + (mafagafo_relax) [PET¬Pet the Mafagafo.>M>]
            #char:--
            You relax your posture and try to approach slowly.

            //TODO SFX Footsteps lentos

            #char:--
            The Mafagafo tilts its head, looking straight at you. But it doesn't move. {StopMusic()}

            #char:--
            You extend your hand and try to pet it.

            #char:--
            It flinches for a second... <waitfor=0.5>but then leans into your hand. {PlaySFX("Shimmer2")}

                {
                    - mafagafoSkin == "redFeather":
                        ~ PlaySFX("MafagafoRedFeatherHappy")

                    - mafagafoSkin == "blueScale":
                        ~ PlaySFX("MafagafoBlueScaleHappy")

                    - mafagafoSkin == "greenFur":
                        ~ PlaySFX("MafagafoGreenFurHappy")
                }

            #char:--
            Once the Mafagafo looks content enough, you attempt to pick it up.

            #char:--
            It flails around for a second, but settles in your arms. {PlaySFX("Woosh")}

        -> mafagafo_caught

        + (mafagafo_throw) [THROW¬Throw something to lure the Mafagafo.>M>]
            #char:--
            Maybe you could toss something to attract its attention?

            #char:--
            You pat your pockets for a moment.

            ~ ScreenFlash("White", -1)
            
            #char:--
            Nothing. {PlaySFX("Mistery3")} {StopMusic()}

            #char:--
            There's a greenish round fruit nearby, though. Thank the Skies Barto isn't here right now.

            #char:--
            You throw it to the ground close to the Mafagafo, though not forcefully or directly towards the creature. {PlaySFX("LightWoosh")}

            #char:--
            Unfortunately, the Mafagafo is a lot more skittish than you anticipated.


                {
                    - mafagafoSkin == "redFeather":
                        ~ PlaySFX("MafagafoRedFeatherAngry")

                    - mafagafoSkin == "blueScale":
                        ~ PlaySFX("MafagafoBlueScaleAngry")

                    - mafagafoSkin == "greenFur":
                        ~ PlaySFX("MafagafoGreenFurAngry")
                }

            #char:--
            Before you can do anything else, it squeaks and bolts for the vents. {PlaySFX("StrongWoosh")}

        -> mafagafo_escaped
}



= mafagafo_caught

{
    - mafagafo_impose && cargoHoldPlan:
        #char:--
        You call for your crewmates. Looks like you're going to finish the delivery, after all.

    - mafagafo_impose && !cargoHoldPlan:
        #char:--
        You release a breath you didn't realize you were holding. Somehow, things worked out fine.

        #char:--
        Better call the crew and plan your next steps.

    - mafagafo_relax && cargoHoldPlan:
        #char:--
        You call for the rest of the crew. Well, that's one problem solved.

    - mafagafo_relax && !cargoHoldPlan:
        #char:--
        Satisfied, you take it to the cargo hold, rounding up the rest of the crew.
}

~ FadeTo("black", 1, 1)

#char:--
The crew assembles following your call. {PlayMusic("AquarelaTheme")}

#char:Kleber_happy_happy|L
So the Mafagafo is in the cargo hold now? Nice work, Cap! {Emotion("Explosion", "ffffff")} {PlaySFX("Love1")}

~ g_morale += g_statChangeLow

{
    - barto_bait:
        #char:Kleber_happy_sad|L
        I'm glad feeding the creature was enough. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

        #char:Barto_neutral_angry|R
        Well, it clearly worked better than a trap would.

    - jackie_bait && mafagafoAggro > 1:
        #char:Barto_sad_sad|L
        I must say, I'm happy we got it in there, but maybe we shouldn't have stressed it so much. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Jackie_sad_sad|R
        Don't worry, Barto. I'm sure he will be fine. 
        
        #char:Jackie_neutral_sad|R
        What matters for now is that the plan worked! I'm relieved.

    - jackie_bait && mafagafoAggro <= 1:
        #char:Barto_happy_angry|L
        I must say, I was wary of this approach at first, but the Mafagafo doesn't seem stressed.

        #char:Jackie_happy_angry|R
        Yeah, I'm glad we dealt with this situation without it getting hurt! {Emotion("Explosion", "ffffff")} {PlaySFX("Love1")}

    - kleber_bait && mafagafoAggro > 1:
        #char:Barto_angry_angry|R
        You know, it probably wasn't a good idea to make it freak out. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

        #char:Kleber_neutral_neutral|L
        Nah. 
        
        #char:Kleber_neutral_happy|L
        We captured it. That's what matters.

    - kleber_bait && mafagafoAggro <= 1:
        #char:Jackie_happy_sad|R
        I actually thought this would end up a lot worse, but I'm glad it worked!

        #char:Kleber_neutral_sad|L
        Heh, you guys give me too little credit sometimes.

        #char:Barto_angry_neutral|R
        Tsk.
}

#char:Kleber_neutral_sad|L
Well, uh, what now?

#char:Jackie_neutral_neutral|R
Guess we just keep an eye on the Mafagafo until we get to the Aquarela Marketplace.

#char:Barto_neutral_angry|L
And feed it <i>regularly</i>, of course.

#char:--
Sounds like a plan. 

#char:--
At least you can sleep well knowing your cargo is safe. {StopMusic()}

~ FadeTo("black", 1, 1)

-> mafagafo_night_shift



= mafagafo_escaped

#char:--
You look inside the ducts, but it's too late. The Mafagafo is out of your sight. {PlaySFX("Bad2")}

#char:--
Well, at least now you know what you're dealing with. Better call the rest of the crew. 

~ FadeTo("black", 1, 1)

#char:Kleber_sad_sad|L
So it went back in the vents? Man, that sucks. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

~ g_morale -= g_statChangeLow

{
    - barto_bait && g_morale >= 50:
        {shuffle:
            -
                #char:Kleber_sad_angry|L
                I really think a trap would have been better. {PlayMusic("Tension")}

                ~ g_affinity_Kleber -= g_affinityChangeMid
                ~ whoComplained = "Kleber"

                #char:Kleber_sad_angry|L
                At least it wouldn't have run away.

                //AFFINITY PASS
                {
                    - g_affinity_Kleber <= -10:
                        #char:Kleber_sad_sad|L
                        ...I know I don't always have the best ideas, but would it kill you to listen?
                }

            -
                #char:Jackie_fear_sad|R
                This isn't good. The vents spread out all through the 41-Bis. {PlaySFX("Woosh")} {Emotion("WaveIn", "2c2b30")} {PlayMusic("Tension")}

                ~ g_affinity_Jackie -= g_affinityChangeMid
                ~ whoComplained = "Jackie"

                #char:Jackie_sad_angry|R
                It could be anywhere right now, and probably won't leave the vents for some time now.

                //AFFINITY PASS
                {
                    - g_affinity_Jackie <= -10:
                        #char:Jackie_sad_neutral|R
                        Come on, I'm the one who knows about Caravans here, listen to me more!
                }
        }

    - barto_bait && g_morale < 50:
        #char:Kleber_angry_angry|L
        I knew feeding that thing wouldn't work! {Emotion("WaveOut", "ea2929")} {PlayMusic("Tension")}

        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

        {
            - barto_watches_eggs:
                #char:Jackie_sad_sad|R
                Yeah, I should've given it a go! At least we'd know where the Mafagafo is! {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                ~ g_affinity_Jackie -= g_affinityChangeMid
                ~ whoComplained = "Jackie"

                //AFFINITY PASS
                {
                    - g_affinity_Jackie <= -10:
                        #char:Jackie_sad_neutral|R
                        Come on, I'm the one who knows more about Caravans here. Can you listen to me?
                }

            - jackie_watches_eggs:
                ~ g_affinity_Kleber -= g_affinityChangeMid

                #char:Barto_angry_angry|R
                It would have, if Jackie had watched the eggs and {g_name} didn't let it escape! {Emotion("WaveOut", "ea2929")}

                //AFFINITY PASS
                {
                    - g_affinity_Barto <= -10:
                        #char:Barto_angry_angry|R
                        Seriously! You both need to be more responsible! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
                }

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                ~ g_affinity_Jackie_Barto -= g_affinityChangeMid
                ~ g_affinity_Barto_Jackie -= g_affinityChangeMid
                ~ whoComplained = "Kleber"

                //AFFINITY PASS
                {
                    - g_affinity_Jackie_Barto >= -10:
                        #char:Jackie_sad_sad|R
                        I... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                        
                        #char:Jackie_sad_sad|R
                        ...Let's focus on how to solve this first.

                        #char:Jackie_sad_angry|R
                        We can talk about what to do better later.

                    - else:
                        #char:Jackie_neutral_sad|R
                        I'm very responsible, thank you very much!

                        #char:Jackie_angry_neutral|R
                        At least I'm trying to think of something instead of pointing fingers!
                }

            - kleber_watches_eggs:
                ~ g_affinity_Kleber -= g_affinityChangeMid

                #char:Barto_angry_angry|R
                Well, <i>who<i> was supposed to watch the eggs in the first place, hmm? And who asked him to? {Emotion("WaveOut", "ea2929")}

                //AFFINITY PASS
                {
                    - g_affinity_Barto <= -10:
                        #char:Barto_angry_angry|R
                        Seriously! You both need to be more responsible!
                }

                //AFFINITY PASS
                {
                    - g_affinity_Kleber_Barto >= 0:
                        #char:Kleber_sad_sad|L
                        ...I know, I know, I messed up. No need to rub it in.

                    - else:
                        #char:Kleber_angry_sad|L
                        Tch, fine, let's see how well you do, trying to tame that thing!
                }

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                ~ whoComplained = "Kleber"
        }

    - jackie_bait && g_morale >= 50:
        {shuffle:
            -
                #char:Kleber_sad_angry|L
                It's good that we at least know how to track it, but it's not that useful now. {PlayMusic("Tension")}

                ~ g_affinity_Kleber -= g_affinityChangeMid
                ~ whoComplained = "Kleber"

                #char:Kleber_fear_angry|L
                If the Mafagafo decides to stay in the vents for much longer, we're done for. {PlaySFX("Bad1")} {Emotion("WaveIn", "2c2b30")}

                //AFFINITY PASS
                {
                    - g_affinity_Kleber <= -10:
                        #char:Kleber_sad_sad|L
                        ...I know I don't always have the best ideas, but would it kill you to listen?
                }

            -
                #char:Barto_sad_sad|R
                I hope the Mafagafo comes out to eat soon. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                ~ g_affinity_Barto -= g_affinityChangeMid
                ~ whoComplained = "Barto"

                #char:Barto_sad_angry|R
                Not just because it's another shot at recovering it, but because I'm concerned about its state in the vents.

                //AFFINITY PASS
                {
                    - g_affinity_Barto <= -10:
                        #char:Barto_sad_sad|R
                        And ours, too... what if we mess up this delivery because of a few bad decisions?
                }
        }

    - jackie_bait && g_morale < 50:
        #char:Kleber_angry_angry|L
        Told you we should have trapped that thing! {Emotion("WaveOut", "ea2929")} {PlayMusic("Tension")}

        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

        {
            - barto_watches_eggs:
                ~ g_affinity_Kleber -= g_affinityChangeMid

                #char:Kleber_fear_angry|L
                Now there's a... a thing going around the ship, doing who knows what!

                ~ whoComplained = "Kleber"

                //AFFINITY PASS
                {
                    - g_affinity_Kleber <= -10:
                        #char:Kleber_angry_angry|L
                        Chef, Jackie... if we get in trouble, I'm blaming you two!

                        ~ g_affinity_Kleber_Barto -= g_affinityChangeMid
                        ~ g_affinity_Kleber_Jackie -= g_affinityChangeMid
                }

            - jackie_watches_eggs:
                ~ g_affinity_Kleber -= g_affinityChangeMid

                #char:Barto_sad_sad|R
                That would not have been necessary if the Mafagafo had not escaped in the first place.

                ~ g_affinity_Barto -= g_affinityChangeMid
                ~ whoComplained = "Barto"

                //AFFINITY PASS
                {
                    - g_affinity_Barto <= -10:
                        #char:Barto_angry_sad|R
                        Seriously, {g_name}, yours and Jackie's calls have been questionable at best. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                        ~ g_affinity_Barto_Jackie -= g_affinityChangeMid
                }

            - kleber_watches_eggs:
                ~ g_affinity_Kleber -= g_affinityChangeMid

                #char:Jackie_angry_happy|R
                You also told us you'd be fine watching the eggs! {Emotion("WaveOut", "ea2929")}

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid
                ~ whoComplained = "Kleber"

                //AFFINITY PASS
                {
                    - g_affinity_Jackie <= -10:
                        #char:Jackie_sad_sad|R
                        Seriously, {g_name}, you should've picked me for the watch too!
                }
        }

    - kleber_bait && g_morale >= 50:
        {shuffle:
            -
                #char:Jackie_sad_sad|R
                That's not good. Especially because it got caught by the trap. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")} {PlayMusic("Tension")}

                ~ g_affinity_Jackie -= g_affinityChangeMid
                ~ whoComplained = "Jackie"

                #char:Jackie_sad_angry|R
                Since it was caught once and escaped, it might not fall for it a second time.

                //AFFINITY PASS
                {
                    - g_affinity_Jackie <= -10:
                        #char:Jackie_sad_neutral|R
                        This is exactly why you should have listened to me, {g_name}.
                }

            -
                #char:Barto_angry_neutral|R
                It's probably been scared by the trap, so it'll take time before it risks coming out again. {PlaySFX("Bad1")} {Emotion("WaveOut", "ea2929")} {PlayMusic("Tension")}

                ~ g_affinity_Barto -= g_affinityChangeMid
                ~ whoComplained = "Barto"

                #char:Barto_sad_sad|R
                I hope it doesn't get too hungry until then.

                //AFFINITY PASS
                {
                    - g_affinity_Barto <= -10:
                        #char:Barto_sad_sad|R
                        I'd rather we not mess up this delivery because of a few bad decisions.
                }
        }

    - kleber_bait && g_morale < 50:
        #char:Barto_angry_sad|R
        Looks like your way of solving the problem didn't pay off, huh? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")} {PlayMusic("Tension")}

        //AFFINITY PASS
        {
            - g_affinity_Barto <= -10:
                #char:Barto_angry_angry|R
                {g_name}. Kleber. If the Mafagafo dies in our vents, the responsibility lies with you.

                ~ g_affinity_Barto_Kleber -= g_affinityChangeMid
        }

        {
            - barto_watches_eggs:
                ~ g_affinity_Barto -= g_affinityChangeMid

                //AFFINITY PASS
                {
                    - g_affinity_Kleber_Barto >= 0:
                        #char:Kleber_sad_sad|L
                        ...I know, I know, I messed up. No need to rub it in. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    - else:
                        #char:Kleber_angry_angry|L
                        Oh, shut it! The Mafagafo escaped under <i>your</i> watch, didn't it!? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                        ~ g_affinity_Kleber_Barto -= g_affinityChangeMid
                }

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                ~ whoComplained = "Barto"

            - jackie_watches_eggs:
                ~ g_affinity_Barto -= g_affinityChangeMid

                //AFFINITY PASS
                {
                    - g_affinity_Kleber_Jackie >= 0:
                        #char:Kleber_sad_sad|L
                        ...I know, I know, I messed up. No need to rub it in. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    - else:
                        #char:Kleber_angry_angry|L
                        Yeah, well, if it hadn't escaped in the first place, there would be nothing to solve! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                        ~ g_affinity_Kleber_Jackie -= g_affinityChangeMid
                }

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                ~ whoComplained = "Jackie"

                //AFFINITY PASS
                {
                    - g_affinity_Jackie_Kleber >= 0:
                        #char:Jackie_sad_sad|R
                        I... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                        
                        #char:Jackie_sad_sad|R
                        ...Let's focus on how to solve this first.

                        #char:Jackie_sad_angry|R
                        We can talk about what to do better later.

                    - else:
                        #char:Jackie_angry_neutral|R
                        Something you want to say to my face, Kleber? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                        ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid
                }

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

            - kleber_watches_eggs:
                ~ g_affinity_Barto -= g_affinityChangeMid

                #char:Jackie_angry_sad|R
                Right? Kleber, I think you should just leave this to us! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid

                //AFFINITY PASS
                {
                    - g_affinity_Jackie <= -10:
                        #char:Jackie_angry_neutral|R
                        //Você também, {g_name}! Afinal, foi você que deixou o Kleber cuidando de tudo!
                        You too, {g_name}! After all, you're the one who left everything to Kleber!

                        ~ g_affinity_Jackie -= g_affinityChangeMid
                }

                ~ whoComplained = "Jackie"
        }
}

{
    - g_morale >= 50:
        #char:--
        You need a new plan. 
        
        #char:--
        Is it better to see what the crew thinks or come up with something yourself?

        + [CREW¬Ask for the crew's input.>>]
            #char:--
            You ask for suggestions. 
            
            #char:--
            Barto pipes up.

            ~ ScreenFlash("white", -1)

            #char:Barto_neutral_sad|R
            I suppose our best — our <b>only</b> option now is to search through the night by taking turns. {PlaySFX("Mistery3")}

            #char:Barto_neutral_angry|R
            At least three of us should be searching at all times, I'd say. 

            #char:Barto_neutral_angry|R
            The remaining one can perform their duties as usual.

            #char:Jackie_neutral_angry|R
            Right... and maybe we can take turns like that for sleeping too.

            #char:Kleber_sad_sad|L
            Fine. I guess we're out of options. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

            #char:--
            With no time to lose, the crew starts preparing. {StopMusic()}
            
            #char:--
            It's going to be a long night.

            ~ FadeTo("black", 1, 1)

        -> mafagafo_night_shift

        + [THINK¬Come up with a plan.>>]
            #char:--
            Thinking quickly, you organize the crew to search around the ship.

            #char:--
            One of you stays on duty in a room and the others will look around.

            #char:Barto_neutral_angry|R
            That makes sense. I was about to propose something similar.

            #char:Jackie_neutral_angry|R
            Right... and during the night, maybe we can take turns like that for sleeping too.

            #char:Kleber_sad_sad|L
            Fine. I guess we're out of options. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

            #char:--
            With no time to lose, the crew starts preparing. {StopMusic()}
            
            #char:--
            It's going to be a long night.

            ~ FadeTo("black", 1, 1)

        -> mafagafo_night_shift

    - g_morale < 50:
        #char:--
        It's your first delivery and the crew is already fighting. This has to stop.

        + [ANGRY¬Yell at them to stop.>>]
            #char:--
            You order them to stop blaming each other and think of a solution.

            #char:--
            You can tell your reaction isn't well received.

            {
                - !barto_watches_eggs && !barto_bait:
                    #char:Barto_angry_happy|R
                    Very well. Maybe it's best if we all split up and search. {Emotion("WaveOut", "ea2929")}

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                - !jackie_watches_eggs && !jackie_bait:
                    #char:Jackie_sad_sad|R
                    Might as well leave and search separately if no one wants advice! {Emotion("WaveOut", "ea2929")}

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                - !kleber_watches_eggs && !kleber_bait:
                    #char:Kleber_angry_angry|L
                    Whatever. If none of you is listening, I'm off to find this thing myself! {Emotion("WaveOut", "ea2929")}

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)
            }

            ~ g_morale -= g_statChangeLow

            #char:--
            On that note, the crew slowly exits the cargo hold, one by one. {StopMusic()}

            #char:--
            Looks like it's gonna be a long night.

            ~ FadeTo("black", 1, 1)

        -> mafagafo_night_shift

        + [FRUSTRATED¬Tell them to focus.>>]
            #char:--
            You tell them it doesn't matter whose fault it is. You should focus on solving the issue.

            #char:Kleber_fear_sad|L
            Well... how? We <shake>have</shake> to think of something new!

            #char:Kleber_fear_angry|L
            We're going to reach the Aquarela Marketplace by tomorrow! {PlaySFX("Bad1")} {Emotion("WaveIn", "2c2b30")}

            #char:Jackie_sad_sad|R
            Nothing to do except search through the night, I guess. {PlaySFX("Woosh")} {Emotion("WaveIn", "0a4de8")}

            #char:Barto_angry_angry|L
            I will fix us some coffee. The night will be long. {PlaySFX("StrongWoosh")} {Emotion("WaveOut", "ea2929")} {StopMusic()}

            ~ FadeTo("black", 1, 1)

        -> mafagafo_night_shift
}



= mafagafo_night_shift

{
    - mafagafo_impose || mafagafo_relax:
        #char:--
        ...Well, it turns out sleep isn't coming so easily.

        #char:--
        Maybe you should check up on the Mafagafo, just in case.

        ~ FadeTo("black", 1, 1)

        #char:--
        As you reach the cargo hold, you notice <>

        {
            - barto_bait:
                Barto is there.
                
                #char:--
                Your cook is watching the exotic pet eat from a shallow bowl.

                #char:Barto_neutral_sad|L
                Hello, Captain. The Mafagafo is doing fine, as you can see.

                #char:Barto_happy_happy|L
                I must say... I'm happy my food helped solve this issue. {PlaySFX("Shimmer1")} {Emotion("Explosion", "ffffff")}

                #char:Barto_happy_happy|L
                Of course, I cannot take all the credit. 
                
                #char:Barto_happy_angry|L
                You found it while you were alone, after all.

                #char:Barto_happy_angry|L
                It is thanks to our combined efforts that the Mafagafo is safe and sound now. {PlaySFX("Shimmer2")} {Emotion("Shine", "ffb71b")}

                //AFFINITY PASS
                {
                    - g_affinity_Barto >= 10:
                        #char:Barto_happy_happy|L
                        I am glad you value my opinions as a caravan member and not just as a cook.
                }

                ~ g_affinity_Barto += g_affinityChangeLow

                #char:Barto_neutral_sad|L
                Good leadership is important both in a caravan and in a kitchen. I am glad to see my Captain make good choices.

                + [EXCITED¬Barto's words make you feel happy.>>]
                    #char:--
                    You tell him you're glad to see the crew being helpful as well.

                    #char:--
                    The two of you chat a bit more before you go back to bed, leaving Barto to his watch.

                -> EVENT_END

                + [QUESTION¬Ask which of the snacks worked as a bait.>>]
                    #char:--
                    Watching the Mafagafo eat, you ask him which bait ended up working.

                    #char:Barto_happy_happy|L
                    Ah, yes! Surprisingly, it was <>

                    {
                        - E_Crew_BartosBananaPastels:
                            the banana pastels!

                            {
                                - E_Crew_BartosBananaPastels.banana_pastels_angry:
                                    #char:--
                                    Barto suddenly becomes quieter, as if remembering something.

                                    #char:Barto_sad_happy|L
                                    ...Not the best option because of the fried dough, but I figured the fruit filling would offset that.

                                - E_Crew_BartosBananaPastels.banana_pastels_lie:
                                    #char:Barto_happy_happy|L
                                    The Mafagafo enjoyed the Pastels as much as you did! {PlaySFX("Love1")} {Emotion("Explosion", "ffffff")}

                                    #char:--
                                    Uh-oh. You hope it wasn't <i>pretending</i> to enjoy, like you did.

                                - E_Crew_BartosBananaPastels.banana_pastels_motivate:
                                    #char:Barto_neutral_angry|L
                                    It might not have been my best creation and I still have much to improve.

                                    #char:Barto_happy_happy|L
                                    Still, I am glad someone got to enjoy it! {PlaySFX("Love1")} {Emotion("Explosion", "ffffff")}
                            }



                        - E_Environment_FavelaFestival.bought_meat_festival:
                            the meat we bought at the Festival!

                            #char:Barto_happy_angry|L
                            I made sure not to add anything too extravagant for the stomach of a pet, of course!
                    }

                    #char:--
                    The two of you chat a bit more before you go back to bed, leaving Barto to his watch.

                -> EVENT_END

            - jackie_bait:
                Jackie is there.

                #char:--
                Your engineer is petting the creature, while it purrs contently.

                #char:Jackie_happy_neutral|L
                Oh! Hi there, Captain! 
                
                #char:Jackie_happy_sad|L
                Decided to check on our temporary fifth crewmember too? {PlaySFX("Shimmer1")} {Emotion("Explosion", "ffffff")}

                #char:--
                You share a laugh. Jackie gets up, leaving the Mafagafo in its incubator.

                #char:Jackie_neutral_neutral|L
                There. I think the cushioned interior and heating could help it sleep.

                #char:Jackie_happy_neutral|L
                You know, Captain, I'm happy you went along with my suggestion.

                #char:Jackie_happy_neutral|L
                Thanks to your quick thinking and my plan, we managed to get the Mafagafo back to our cargo hold! {PlaySFX("Shimmer2")} {Emotion("Shine", "ffb71b")}

                ~ g_affinity_Jackie += g_affinityChangeLow

                #char:Jackie_happy_neutral|L
                I'm really happy I got to contribute to our crew like this in our first delivery.

                //AFFINITY PASS
                {
                    - g_affinity_Jackie >= 10:
                        #char:Jackie_happy_neutral|L
                        Really, Captain... I'm glad I joined this caravan.
                }

                + [EXCITED¬Jackie's words make you feel happy.>>]
                    #char:--
                    You tell her you're glad she's the 41-Bis' engineer too.

                    #char:--
                    The two of you chat a bit more before you go back to bed, leaving Jackie to her watch.

                -> EVENT_END

                + [MOTIVATE¬Praise Jackie for her work.>>]
                    #char:--
                    You tell her you're both starting to really get the hang of the caravaneer life.

                    #char:Jackie_happy_happy|L
                    Haha, yeah, we are! Soon enough I'll be the one telling stories to my grandma! {PlaySFX("Love1")} {Emotion("Shine", "ffb71b")}

                    #char:--
                    The two of you chat a bit more before you go back to bed, leaving Jackie to her watch.

                -> EVENT_END

            - kleber_bait:
                Kleber is there.

                #char:--
                Your pilot is looking at the animal warily as it snores in the cargo hold.

                #char:Kleber_surprised_sad|L
                Oh- uh, hey, Cap. Couldn't sleep? {PlaySFX("Mistery3")} {Emotion("Explosion", "39f2d6")}

                #char:--
                He shifts uncomfortably.

                #char:Kleber_neutral_sad|L
                Look, I... I get it. Maybe a trap wasn't the best possible solution.

                #char:Kleber_happy_happy|L
                But it worked. And thanks to you, too! You made the right choices, and it paid off! {PlaySFX("Shimmer1")} {Emotion("Shine", "ffb71b")}

                ~ g_affinity_Kleber += g_affinityChangeLow
                
                #char:Kleber_happy_neutral|L
                We will be able to complete this delivery. That's what really matters, right?

                //AFFINITY PASS
                {
                    - g_affinity_Kleber >= 10:
                        #char:Kleber_happy_sad|L
                        I know it sounds bad, but I want you to know I'm doing this for the crew, not just me.
                }

                + [EXCITED¬Kleber's words make you feel happy.>>]
                    #char:--
                    You assure Kleber that he did the best he could.

                    #char:Kleber_neutral_sad|L
                    Yeah. Eyes on the prize, right? {PlaySFX("Shimmer2")} {Emotion("Explosion", "FFFFFF")}

                    #char:--
                    The two of you chat a bit more before you go back to bed, leaving Kleber to his watch.

                -> EVENT_END

                + [JOKE¬Joke about his attachment to the Mafagafo.>>]
                    #char:--
                    You'd think there's more to it than that, considering he came to watch the Mafagafo.

                    #char:Kleber_neutral_sad|L
                    Yeah, yeah, tease me all you want, but a Mafagafo in the cargo hold is worth two in the vents, right? {PlaySFX("Shimmer2")} {Emotion("Shine", "ffb71b")}

                    #char:Kleber_surprised_sad|L
                    ...Huh. That sounded funnier in my head. Must be the stress.

                    #char:--
                    The two of you chat a bit more before you go back to bed, leaving Kleber to his watch.

                -> EVENT_END
        }

    - mafagafo_angry || mafagafo_throw:
            #char:--
            Another room, no sign of the Mafagafo.

            ~ FadeTo("black", 1, 1)

            #char:--
            As you get to the <>

            {
                - kitchenPlan:
                    {shuffle:
                        - cargo hold, <>
                        - cockpit, <>
                        - common room, <>
                    }

                - cargoHoldPlan:
                    {shuffle:
                        - kitchen, <>
                        - cockpit, <>
                        - common room, <>
                    }

                - cockpitPlan:
                    {shuffle:
                        - kitchen, <>
                        - cargo hold, <>
                        - common room, <>
                    }

                - commonRoomPlan:
                    {shuffle:
                        - kitchen, <>
                        - cargo hold, <>
                        - cockpit, <>
                    }
            }

            to continue your search, you notice that someone was already there.

            {
                - (barto_bait && whoComplained == "Kleber") || (kleber_bait && whoComplained == "Barto"):
                    #char:Jackie_sad_angry|L
                    Hi, Captain. No luck finding the Mafagafo?

                    #char:Jackie_sad_angry|L
                    You know, a grease trail would <i>really</i> have helped in our situation. But if it doesn't leave the vents anymore, there's not much we can do.

                    #char:Jackie_angry_happy|L
                    Now we're <i>stuck</i> looking for an animal in the middle of the night with no clues! {Emotion("WaveIn", "0a4de8")}

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                    ~ g_affinity_Jackie -= g_affinityChangeLow

                    //AFFINITY PASS
                    {
                        - g_affinity_Jackie >= -10:
                            #char:Jackie_sad_sad|L
                            ...Sorry. I just wish we could complete our first delivery without this kind of stress.

                            #char:Jackie_sad_angry|L
                            I get it. We're inexperienced. But <i>please</i>, think carefully about our course of action in the future. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                        - else:
                            #char:Jackie_sad_neutral|L
                            We're all stressed and we might even get a pay cut... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                    }

                    + [FRUSTRATED¬Open up about your frustration.>>]
                        #char:--
                        You tell her you are frustrated too. There was no real way to know things would turn out like this.

                        #char:Jackie_sad_sad|L
                        It's time we stopped making excuses and learned from our mistakes.

                        #char:Jackie_sad_sad|L
                        Otherwise we'll keep botching jobs like this. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                        #char:--
                        Jackie leaves you to wonder how much dedication the job will need. You just wanted the Grana.
                        
                        #char:--
                        After some time, you go back to your room to sleep.

                    -> EVENT_END

                    + [MOTIVATE¬Try to lift the mood.>>]
                        #char:--
                        You tell her that, at the very least, you're learning from your mistakes.

                        //AFFINITY PASS
                        {
                            - g_affinity_Jackie >= -10:
                                #char:Jackie_neutral_sad|L
                                Yeah. That gives me some hope we can do better.

                            - else:
                                #char:Jackie_sad_sad|L
                                ...I hope so. Otherwise we won't last long in this job.
                        }

                        #char:--
                        Jackie then leaves the room, giving you time to ponder.
                        
                        #char:--
                        After some time, you go back to your room to sleep.

                    -> EVENT_END

                - (barto_bait && whoComplained == "Jackie") || (jackie_bait && whoComplained == "Barto"):
                    #char:Kleber_sad_sad|L
                    Oh, hey, Cap. Our little guest isn't here.

                    #char:Kleber_sad_angry|L
                    ...Having no luck either, huh?

                    #char:Kleber_angry_angry|L
                    You know, I normally don't say this kinda stuff, but I wish you had listened to me.

                    ~ g_affinity_Kleber -= g_affinityChangeLow

                    //AFFINITY PASS
                    {
                        - g_affinity_Kleber >= -10:
                            #char:Kleber_sad_sad|L
                            It's frustrating to feel like you could've solved a problem, but didn't. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                        - else:
                            #char:Kleber_angry_angry|L
                            I mean, if that thing was inside a trap, we wouldn't be looking for it this late at night! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
                    }

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                    + [FRUSTRATED¬Open up about your frustration.>>]
                        #char:--
                        You tell Kleber you're frustrated too. There's no way to say if his idea would have worked.

                        //AFFINITY PASS
                        {
                            - g_affinity_Kleber >= -10:
                                #char:Kleber_angry_sad|L
                                There was one! We could have <shake>tried it</shake>!

                                #char:Kleber_sad_sad|L
                                ...Ah, forget it. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                            - else:
                                #char:Kleber_sad_sad|L
                                It's just... ah, forget it. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                                #char:Kleber_sad_sad|L
                                Let's just keep looking for now.
                        }

                        #char:--
                        Kleber leaves the room, looking stressed out. You search for a while longer, then go back to sleep.

                    -> EVENT_END

                    + [JOKE¬Joke about the 41-Bis being the ultimate trap.>>]
                        #char:--
                        You tell him that at least the Mafagafo is in the ship with all of you... so <i>technically</i>, that counts as a trap!

                        #char:Kleber_fear_sad|L
                        This isn't the time for joking, {g_name}. If we can't find it by tomorrow...! {PlaySFX("Bad1")} {Emotion("WaveIn", "2c2b30")}

                        #char:Kleber_sad_sad|L
                        ...Ah, forget it.

                        #char:--
                        Kleber leaves the room, looking stressed out. You search for a while longer, then go back to sleep.

                    -> EVENT_END

                - (jackie_bait && whoComplained == "Kleber") || (kleber_bait && whoComplained == "Jackie"):
                    #char:Barto_sad_neutral|L
                    Hello, Captain. I take it you haven't had any luck, either?

                    #char:Barto_angry_angry|L
                    Perhaps if we had treated the Mafagafo more calmly, it would have stuck around.

                    ~ g_affinity_Barto -= g_affinityChangeLow

                    #char:Barto_sad_sad|L
                    Alas, it's somewhere we can't see for now. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                    #char:--
                    Barto points to a shallow bowl in a corner. It's filled with what you presume is food.

                    #char:Barto_sad_sad|L
                    I've left a few of these in different rooms of the ship. No luck so far.

                    + [FRUSTRATED¬Open up about your frustration.>>]
                        #char:--
                        You tell Barto that you're frustrated too. You've all done everything you could. 
                        
                        #char:--
                        He sighs.

                        //AFFINITY PASS
                        {
                            - g_affinity_Barto >= -10:
                                #char:Barto_sad_sad|
                                I suppose we did. But it still was not enough.

                            - else:
                                #char:Barto_sad_sad|L
                                Did we? My apologies, but I think otherwise, Captain. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                        }

                        #char:--
                        Barto then bids you goodnight and leaves.

                        #char:--
                        After searching a little more to no avail, you go back to your quarters and sleep.

                    -> EVENT_END

                    + [QUESTION¬Ask why he's mad when you're trying your best.>>]
                        #char:--
                        Why stay mad at you? You did what you could.

                        #char:--
                        For a moment, the chef doesn't respond.

                        #char:Barto_angry_sad|L
                        For all our sakes, I hope the Mafagafo shows up before tomorrow.

                        #char:--
                        Barto then bids you goodnight and leaves.

                        #char:--
                        After searching a little more, you go back to your quarters and sleep.

                    -> EVENT_END
            }
}



= part4

#location: Aquarela

#char:--
You finally reach the <color=aquarelaYellow><b>Aquarela Marketplace</b></color>.

// CHEGAMOS NO DESTINO -  DEI EXIT NO DAY COUNTER AQUI (feedback Nick)

#char:--
Kleber lands the ship in the designated cargo area and start taking out the incubators.

{
    - mafagafo_impose || mafagafo_relax:
        #char:--
        The eggs will be fine to carry, but the Mafagafo could make a fuss. Should you trust someone with it?

        + [YES¬Choose someone to bring the Mafagafo.>>]
            #char:--
            Putting your trust in your crew is what let you recapture the Mafagafo, after all.

            #char:--
            But who should you choose for the task?

            ++ [BARTO¬Pick Barto.>>]
                {
                    - barto_watches_eggs:
                        #char:--
                        You tell Barto to be careful in his watch this time.

                        ~ g_affinity_Barto += g_affinityChangeLow

                        #char:Barto_sad_sad|R
                        ...Very well, Captain. I will.

                    - else:
                        #char:--
                        You tell Barto to take care of the Mafagafo until you reach the shop.

                        #char:Barto_happy_sad|R
                        Consider it done, Captain. Thank you for trusting me. {PlaySFX("Shimmer1")} {Emotion("Explosion", "ffffff")}

                        ~ g_affinity_Barto += g_affinityChangeMid

                        #char:Kleber_happy_sad|L
                        Aww, is our pet anteater glad to make a new friend? {PlaySFX("Funny1")} {Emotion("Heart", "ea2929")}

                        #char:Barto_angry_angry|R
                        ...Tonight's menu is grilled Giant Beetle. Would you like it whole or diced, Kleber?

                        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)
                }

            -> inside_the_marketplace

            ++ [JACKIE¬Pick Jackie.>>]
                {
                    - jackie_watches_eggs:
                        #char:--
                        You tell Jackie you're giving her another go at this.

                        ~ g_affinity_Jackie += g_affinityChangeLow

                        #char:Jackie_happy_neutral|R
                        Thanks, {g_name}. I won't let you down.

                    - else:
                        #char:--
                        You tell Jackie to take care of the Mafagafo until you reach the shop.

                        ~ g_affinity_Jackie += g_affinityChangeMid

                        #char:Jackie_happy_happy|R
                        Will do, Captain! No way it will run from three arms! {PlaySFX("Shimmer1")} {Emotion("Shine", "ffb71b")}
                }

            -> inside_the_marketplace

            ++ [KLEBER¬Pick Kleber.>>]
                {
                    - kleber_watches_eggs:
                        #char:--
                        You tell Kleber it should be easier now that they're on land.

                        ~ g_affinity_Kleber += g_affinityChangeLow

                        #char:Kleber_sad_sad|L
                        Yeah, yeah. 
                        
                        #char:Kleber_sad_sad|L
                        I kinda wish I didn't have to, but— 
                        
                        #char:Kleber_angry_angry|L
                        <shake>OW!</shake>
                        
                        #char:Kleber_angry_angry|L
                        It pecked me! Did you guys not feed it or something!? {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

                        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                        #char:Barto_angry_sad|R
                        Of course I did! Just be careful, you brute! That is a living creature! {Emotion("WaveOut", "ea2929")}

                        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                    - else:
                        #char:--
                        You tell Kleber to take care of the Mafagafo until you reach the shop.

                        #char:Kleber_neutral_happy|L
                        Alright! Should be easy enough if it's calm, right?

                        ~ g_affinity_Kleber += g_affinityChangeMid

                        #char:Kleber_neutral_happy|L
                        Here, come— 
                        
                        #char:Kleber_angry_angry|L
                        <shake>HEY!</shake> Don't peck me! {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")}

                        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                        #char:Jackie_happy_angry|R
                        Pffft! I think it likes you, Kleber! {PlaySFX("Funny1")} {Emotion("Explosion", "ffffff")}
                }

            -> inside_the_marketplace

        + [NO¬Do it yourself.>>]
            #char:--
            You've risked too much. You decide to carry the Mafagafo there yourself.

            #char:--
            It looks scared of the people around you, but at least it's not trying to escape.

        -> inside_the_marketplace

    - mafagafo_angry || mafagafo_throw:
        #char:--
        Still no sign of the Mafagafo. 
        
        #char:--
        The crew looks stressed, and you can't blame them.

        #char:--
        It's going to be hard telling Rosana that you couldn't find part of her cargo.

    -> inside_the_marketplace
}



= inside_the_marketplace

{
    - mafagafo_impose || mafagafo_relax:
        #char:--
        At least you've dealt with the situation the best you could. Though you'll have to explain it to Rosana.

    - mafagafo_angry || mafagafo_throw:
        #char:--
        With your lack of experience as a Captain, you're sure it's going to reflect badly on your crew.
}

#char:--
Well, no time to waste. 

#char:--
You and the crew enter the large structure. {PlaySFX("Marketplace")}

~ ScreenFlash("white", -1)

#char:--
The Marketplace looked huge from the outside, but the inside seems even bigger — if only because of how crowded it is. 

#char:--
It's a mishmash of different shops and services, each with its own distinct flair.

#char:Barto_neutral_neutral|R
We still need to walk a bit, according to the address. 

#char:Barto_neutral_angry|R
The three corridors over there lead to the same place - the main court. Rosana's shop will be there.

//AFFINITY PASS
{
    - g_affinity_Jackie >= -10:
        #char:Jackie_happy_happy|R
        We can show {g_name} around, then! Come on, pick a corridor! {PlaySFX("Shimmer1")} {Emotion("Shine", "ffb71b")}

    - else:
        #char:--
        Well, if they all lead to the same place, better pick one and start walking.
}

+ [POINT_LEFT¬Go down the corridor on the left.>>]
    #char:--
    {shuffle:
        - Kleber shows you the huge line in front of a lottery store.

        - Jackie points to a hardware store her grandma used to visit.

        - Barto gives a lengthy list of every single food stall in sight.
    }


+ [POINT_UP¬Go down the corridor in front of you.>>]
    #char:--
    {shuffle:
        - Kleber guides you to a sports shop that has multicolored soccer balls hanging from the ceiling.

        - Jackie points to a small stall selling toys. Must have been part of her childhood.

        - Barto shows you to a section where merchants sell produce. Some of them are alien to you.
    }

+ [POINT_RIGHT¬Go down the corridor on the right.>>]
    #char:--
    {shuffle:
        - Kleber shows you a stand selling different accessories — mainly pins and necklaces.

        - Jackie points to a ship dealer close to the entrance. How did those even fit there!?

        - Barto takes you through a corner that has a store selling cooking utensils.
    }


-   #char:--
    You also pass <>

    {shuffle:

        - several clothing stores, <>

        - a small playground filled with kids, <>

        - some kind of stationery store, <>
    }

    {shuffle:

        - two bars side-by-side <>

        - at least three drugstores <>

        - an electronic store with a large fan <>
    }

    {shuffle:

        - and a shoe store that even has options for folks with multiple pairs of feet.

        - and a barber shop with several Skyship-shaped chairs for children.

        - and a stand selling glasses, monocles, visors and eyepatches.
    }

    #char:--
    After navigating the crowds for a few minutes, you reach Rosana's shop — "Critter Corner". 

    #char:--
    It's easily distinguishable by the myriad of animals in different enclosures.

    #char:--
    The sheer variety of exotic pets results in a strange combination of colors, sounds and smells.

    #char:Rosana_neutral|L
    Hey there! Glad to see you made it! {PlaySFX("Shimmer2")} {Emotion("Shine", "ffb71b")} {PlayMusic("Decision")}

    {
        - called_rosana_truth:
            #char:Rosana_neutral|L
            I assume you managed to find the missing pet?

            {
                - mafagafo_impose || mafagafo_relax:
                    #char:Barto_neutral_sad|R
                    We did, madam. We have the Mafagafo here with us.

                    #char:Rosana_happy|L
                    Great! I knew those claws of yours weren't just for show! {PlaySFX("Love1")} {Emotion("Shine", "ffb71b")}

                    #char:Barto_surprised_happy|R
                    M-madam...

                - mafagafo_angry || mafagafo_throw:
                    #char:Jackie_sad_sad|R
                    We weren't able to find the Mafagafo again. 
                    
                    #char:Jackie_sad_sad|R
                    We did the best we could. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                    #char:--
                    Rosana just stares at you, but it's clear she's displeased.
            }

        -> Rosana_explanations

        - else:
            #char:Rosana_happy|L
            Enjoying Aquarela so far? The last Summer Festival was really grea-

            {
                - mafagafo_impose || mafagafo_relax:
                    #char:Rosana_serious|L
                    ...

                    #char:Rosana_serious|L
                    Last I checked, all pets were supposed to come here in incubators.

                - mafagafo_angry || mafagafo_throw:
                    #char:--
                    Rosana carefully looks at the incubators you and your crew are hauling.

                    #char:Rosana_neutral|L
                    <i>Funny.</i> Last I checked, the cargo was <i>a dozen</i> pet eggs.

                    #char:Rosana_angry|L
                    ...Why is it that you're bringing me only <b>eleven</b>? {PlaySFX("Mistery3")} {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}
            }

            #char:Rosana_angry|L
            I hope you have a good explanation for this.

            + [TALK¬Tell Rosana the truth.>>]
                #char:--
                You tell Rosana that one of the eggs hatched midway through your travel.

                #char:Rosana_angry|L
                Is this some kind of prank!? Do you even know the hatching conditions for these eggs? {Emotion("WaveOut", "ea2929")}

                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                {
                    - barto_watches_eggs && (mafagafo_impose || mafagafo_relax):
                        #char:Barto_angry_sad|R
                        No, madam, but they're probably not as strict as they should.

                        #char:Barto_angry_angry|R
                        Otherwise, our Captain wouldn't be holding a Mafagafo right now.

                    - barto_watches_eggs && (mafagafo_angry || mafagafo_throw):
                        #char:Barto_angry_angry|R
                        If you need proof, madam, just look at this.

                        #char:--
                        Barto hands the Mafagafo's red feather to Rosana. {PlaySFX("LightWoosh")}

                    - jackie_watches_eggs && (mafagafo_impose || mafagafo_relax):
                        #char:Jackie_sad_sad|R
                        We're sorry, but there might have been something wrong with the Mafagafo's incubator.

                        #char:Jackie_sad_angry|R
                        I mean, uh, I can't see another way for these eggs to hatch.

                    - jackie_watches_eggs && (mafagafo_angry || mafagafo_throw):
                        #char:Jackie_sad_angry|R
                        If you aren't going to believe in us, you should at least believe in this.

                        #char:--
                        Jackie hands the Mafagafo's blue scale to Rosana. {PlaySFX("LightWoosh")}

                    - kleber_watches_eggs && (mafagafo_impose || mafagafo_relax):
                        #char:Kleber_angry_angry|R
                        If this Mafagafo isn't proof enough for you, I dunno what is.

                    - kleber_watches_eggs && (mafagafo_angry || mafagafo_throw):
                        #char:Kleber_angry_angry|R
                        Oh yeah? Is this convincing enough for you, then?

                        #char:--
                        Kleber hands the Mafagafo's green fur tuft to Rosana. {PlaySFX("LightWoosh")}
                }

            -> Rosana_explanations

            + [LIE¬Come up with an excuse.>>]
                {
                    - mafagafo_impose || mafagafo_relax:
                        #char:--
                        You tell her this one had already hatched when you got it from the Capy-Bar.

                        #char:--
                        At least, that way, you can't be fully blamed for it.
                        
                        #char:Rosana_neutral|L
                        ...So it's the C.C.A.'s fault?

                        #char:Rosana_neutral|L
                        Either they got lax with storage... or you're lying to me.

                        {
                            - barto_watches_eggs:
                                #char:Barto_fear_sad|R
                                W-we aren't! The egg hatched in the incubator! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad2")}

                                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                            - jackie_watches_eggs:
                                #char:Jackie_fear_angry|R
                                It's not a lie! The incubator must have been in the wrong setting! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad2")}

                                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                            - kleber_watches_eggs:
                                #char:Kleber_angry_angry|R
                                It's the truth. We have no idea why, but the Mafagafo egg hatched! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                                //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)
                        }

                    - mafagafo_angry || mafagafo_throw:
                        #char:--
                        You tell her eleven eggs was all you got.

                        #char:Rosana_neutral|L
                        <i>Is that so?</i> Should I make a call to the C.C.A. to confirm this, then?

                        #char:--
                        Between you all, it's impossible for her to miss the nervousness that crosses your faces.

                        #char:Rosana_angry|L
                        Do you think I was born yesterday!? Now tell me what really happened!

                        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                        {
                            - barto_watches_eggs:
                                #char:--
                                Barto, the pacifist that he is, caves under the pressure.

                                #char:Barto_fear_sad|R
                                N-not at all, ma'am! 
                                
                                #char:Barto_fear_sad|R
                                It's just that, well, one of the eggs hatched. {PlaySFX("Bad1")} {Emotion("WaveIn", "2c2b30")}

                            - jackie_watches_eggs:
                                #char:--
                                Jackie ends up conceding, probably out of duty.

                                #char:Jackie_fear_sad|R
                                Alright, alright! The Mafagafo egg hatched and it escaped! {PlaySFX("Bad1")} {Emotion("WaveIn", "2c2b30")}

                            - kleber_watches_eggs:
                                #char:--
                                Kleber must have thought there was no way to salvage this, because he gives in.

                                #char:Kleber_happy_sad|R
                                ...<waitfor=0.5>A Mafagafo hatched from one of the eggs. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}
                        }
                }

                {
                    - barto_watches_eggs:
                        #char:Barto_fear_sad|R
                        Here, a Mafagafo feather to prove it! {PlaySFX("LightWoosh")}

                    - jackie_watches_eggs:
                        #char:Jackie_fear_angry|R
                        It even dropped a scale! Is this proof enough? {PlaySFX("LightWoosh")}

                    - kleber_watches_eggs:
                        #char:Kleber_sad_angry|R
                        Left fur all over the cargo hold, too. {PlaySFX("LightWoosh")}
                }

            -> Rosana_explanations
    }



= Rosana_explanations

#char:--
Rosana's expression shifts into a thoughtful one - though she's still frowning. {StopMusic()}

#char:Rosana_thinking|L
It was <i>only</i> the Mafagafo egg that hatched, huh...

{
    - mafagafo_impose:
        #char:--
        Before Rosana can continue her train of thought, the Mafagafo shifts violently.

        //SFX Mafagafo irritado

        ~ ScreenFlash("red", -1)

        #char:--
        It pecks you in the arms multiple times.

        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)
        
        #char:--
        The shock is enough to make you let go. {PlaySFX("Mistery3")} {Shake("Big Face", 1, 1)}

        #char:--
        As soon as it's out of your grasp, the Mafagafo <>

        {
            - mafagafoBody == "winged":
                flaps its wings <>
            
            - mafagafoBody == "biped" || mafagafoBody == "quadruped":
                runs off <>
        }

        and disappears into the sea of people in the market. {PlayMusic("AquarelaAction")}

    -> Rosana_is_angry

    - mafagafo_angry:
        #char:--
        Before Rosana can continue her train of thought, <>

        {
            - barto_bait:
                Barto <>

            - jackie_bait:
                Jackie <>

            - kleber_bait:
                Kleber <>
        }

        calls out to you.

        {
            - barto_bait:
                #char:Barto_neutral_angry|R
                Captain, do you hear that noise? {PlaySFX("Mistery3")} {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

            - jackie_bait:
                #char:Jackie_neutral_angry|R
                Hey, Captain... do you hear something <i>really</i> weird? {PlaySFX("Mistery3")} {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

            - kleber_bait:
                #char:Kleber_neutral_sad|R
                Uh, Cap? Am I the only one hearing this weird noise? {PlaySFX("Mistery3")} {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}
        }

        #char:--
        It's familiar too. Almost like-

        #char:Rosana_happy|L
        I know this noise... there it is! {PlaySFX("StrongWoosh")} {Emotion("Explosion", "39f2d6")}

        #char:--
        On top of one of the stalls lies a familiar animal. Did it follow you from the 41-Bis to here?

        #char:--
        The Mafagafo briefly looks at you before <>

        {
            - mafagafoBody == "winged":
                flapping its wings <>
            
            - mafagafoBody == "biped" || mafagafoBody == "quadruped":
                jumping from the stall <>
        }

        and disappearing among the Aquarela Marketplace crowd. {PlayMusic("AquarelaAction")}

    -> Rosana_is_angry

    - mafagafo_relax:

        #char:Rosana_neutral|L
        Say, the part of your ship where you store cargo. What's it like?

        #char:--
        The question is strange, but you answer the best you can, with Jackie filling in some bits.

        #char:Rosana_neutral|L
        Yeah, there's a good chance it was this. Lemme explain.

        #char:Rosana_neutral|L
        Mafagafos are a weird bunch. I've been in the business since I was a teen and I never saw anything like them. {PlayMusic("AquarelaTheme")}
        
        #char:Rosana_neutral|L
        Turns out they can have a lot of different traits depending on the environment they hatch in.

        #char:Rosana_neutral|L
        Color, hide, even body structure is different.
        
        #char:Rosana_happy|L
        That adaptability's how they survive out there - and also why they sell as pets! {PlaySFX("Love1")} {Emotion("Shine", "ffb71b")}

        #char:Rosana_neutral|L
        But more importantly, the eggs don't hatch unless they're in a certain temperature range.

        #char:Jackie_neutral_sad|R
        Makes sense. With the ship and cargo hold being the way they are, the heat of the room must have added to that of the incubator.

        #char:Rosana_thinking|L
        Yeah. Which explains why only the Mafagafo egg hatched. In those conditions, it reached its perfect temperature.
        
        #char:Barto_fear_sad|R
        So, had the heat been any higher, we would have dealt with a dozen exotic pets roaming around? {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

        #char:Kleber_happy_sad|R
        Damn. All that trouble because the 41-Bis is an old piece of junk, then? {PlaySFX("Funny1")} {Emotion("WaveIn", "0a4de8")}

        #char:Jackie_neutral_angry|R
        Well, yeah. Though I guess we couldn't really do anything about it.

        #char:Rosana_happy|L
        You did, though. I gotta give you some credit. You managed to catch the slippery thing. {PlaySFX("Shimmer1")} {Emotion("Shine", "ffb71b")}

    -> Rosana_is_satisfied

    - mafagafo_throw:
        #char:--
        Before Rosana can continue her train of thought, you feel something rub against your leg. {PlaySFX("StrongWoosh")} {Shake("All", 1, 0.5)}

        #char:--
        It's a bundle of <>

        {
            - mafagafoSkin == "redFeather":
                red feathers <>

            - mafagafoSkin == "blueScale":
                blue scales <>

            - mafagafoSkin == "greenFur":
                green fur <>
        }

        with <>

        {
            - mafagafoBody == "winged":
                a pair of wings and small feet.

            - mafagafoBody == "biped":
                two short arms and small feet.

            - mafagafoBody == "quadruped":
                standing on all fours.
        }

        #char:--
        It stares at you with narrow eyes and beak pointed upwards, as if it had been there from the start.

                {
                    - mafagafoSkin == "redFeather":
                        ~ PlaySFX("MafagafoRedFeatherHappy")

                    - mafagafoSkin == "blueScale":
                        ~ PlaySFX("MafagafoBlueScaleHappy")

                    - mafagafoSkin == "greenFur":
                        ~ PlaySFX("MafagafoGreenFurHappy")
                }

        {
            - mafagafoSkin == "redFeather":
                #char:--
                Barto compares the red feather he has with the Mafagafo.

                #char:Barto_surprised_angry|R
                Well, I'll be... it must have followed us from the ship! {PlaySFX("Mistery1")} {Emotion("Explosion", "39f2d6")} {PlayMusic("AquarelaTheme")}

            - mafagafoSkin == "blueScale":
                #char:Jackie_surprised_happy|R
                Captain, is that... I can't believe this! {PlaySFX("Mistery1")} {Emotion("Explosion", "39f2d6")} {PlayMusic("AquarelaTheme")}

            - mafagafoSkin == "greenFur":
                #char:Kleber_angry_angry|R
                Wh-<shake>REALLY</shake>!? This thing decides to show up now? After hiding for days? {PlaySFX("Mistery1")} {Emotion("WaveOut", "ea2929")} {PlayMusic("AquarelaTheme")}

                #char:Kleber_neutral_sad|R
                ...

                #char:Kleber_happy_sad|R
                <wave>Ahhhhh</wave>, well, guess I can't complain. The delivery is finished in the end. {PlaySFX("Shimmer2")} {Emotion("Explosion", "ffffff")}
        }

    -> Rosana_is_satisfied
}



= Rosana_is_satisfied

#char:Rosana_happy|L
Well, with all twelve pets here, I guess we can wrap this up.

#char:Rosana_neutral|L
Don't worry, your accident won't affect our business. Don't think any of us could have predicted it.

#char:Rosana_happy|L
I'm sure I can find someone out there to buy the little critter, even if they can't change the way it looks.

#char:Barto_neutral_neutral|R
...

#char:Barto_neutral_angry|R
If I may, Rosana, would you allow <i>us</i> to purchase the Mafagafo?

#char:Kleber_surprised_sad|L
Huh!? What's gotten into you, chef? {PlaySFX("Mistery3")} {Emotion("Explosion", "39f2d6")}

#char:Rosana_happy|L
<wave>Aaaah</wave>, I get it. You got attached to it, eh? {PlaySFX("Funny1")} {Emotion("Heart", "ea2929")}

#char:Rosana_thinking|L
Well, I guess for you, I could negotiate a price.

#char:Jackie_surprised_angry|L
Uh, wait a second, Barto. I'm not sure we're equipped to keep a pet around.

#char:Barto_neutral_angry|R
Oh, I'm aware. But I know someone who is.

#char:Barto_neutral_angry|R
They run an animal sanctuary. They can definitely keep it.

#char:Barto_sad_sad|R
Forgive me if I'm overstepping, Captain, but I worry about the Mafagafo's wellbeing.

#char:Barto_sad_sad|R
It's hard to tell what kind of owner will buy it. {PlaySFX("Bad1")} {Emotion("WaveIn", "2c2b30")}

#char:Rosana_neutral|L
Well, you can give me the Mafagafo with the other pets or buy it from me.

#char:Rosana_happy|L
Either way, I end up making a sale, but it's up to you.

#char:Rosana_serious|L
Anyway... that will be 500 Grana for the little critter.

#char:Kleber_surprised_sad|R
<shake>F-FIVE HUNDRED</shake>!? {Emotion("Explosion", "39f2d6")}

//TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

#char:Jackie_happy_angry|R
Well, they aren't called <b>exotic</b> pets for no reason.

#char:--
Well then. Do you finish your delivery or go with Barto's plan for the Mafagafo?

+ [HANDSHAKE¬Finish things up.>M_G>]

    #char:--
    You send an apologetic look to Barto.

    #char:--
    You have a debt to be paid and the caravan life will probably require some cash.

    #char:--
    Right now you can't afford to spend too much money. You hope he'll take it well.

    #char:Barto_sad_sad|R
    I... <i>very well, Captain</i>. I understand. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

    ~ g_affinity_Barto -= g_affinityChangeLow

    {
        - g_fuel < 35 || g_supplies < 35:

            #char:Kleber_sad_sad|L
            Yeah, uh... I don't want to be a downer, but <>

            {
                - g_fuel < 35 && g_supplies < 35:
                    we're also in need fuel and supplies for the trip back. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                - g_fuel < 35 && g_supplies > 35:
                    have any of you seen how low our fuel gauge is? {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                - g_fuel > 35 && g_supplies < 35:
                    I think your pantry also needs more food for the trip back, chef. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}
            }

            #char:Kleber_sad_sad|L
            We're lucky the Marketplace has some good deals, or else we'd have to spend even more.
    }

    #char:--
    You and the crew give the Mafagafo and eggs to Rosana.
    
    #char:--
    She holds the creature with one hand on the scruff of its neck - firmly, but not forcefully. That seems to make it quiet, at least.

    #char:Rosana_happy|L
    Oh, before I forget: take this whistle for Mafagafos! Consider this a little extra.

    #char:Rosana_neutral|L
    I've heard that it works in Surface as well. Their Mafagafos are beautiful! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

    #char:Rosana_thinking|L
    They managed to adapt pretty well there, despite the... <i>unfavorable living conditions.<i>

    #char:--
    So they <i>do</i> live there too, huh. Seems like the stories are true.

    #char:Rosana_happy|L
    Pleasure doing business with you. Now if you'll excuse me, the pets literally can't sell themselves!

    #char:--
    After bidding you and the crew farewell, she gives you the payment and takes the cargo inside her shop. {StopMusic()}

    ~ g_morale += g_statChangeHigh

    ~ g_grana += g_reward_M1

    ~ g_currentReward = g_reward_M1

    ~ CompleteDelivery()

    {
        - g_fuel < 35 || g_supplies < 35:
            #char:Jackie_neutral_angry|L
            Well... what do you think about going shopping for some <>
            //Bom... que acham da gente dar uma olhada por aí e comprar <>

            {
                - g_fuel < 35 && g_supplies < 35:
                    red oil and food, <>

                - g_fuel < 35 && g_supplies > 35:
                    red oil, <>

                - g_fuel > 35 && g_supplies < 35:
                    food, <>
            }

            then?

            #char:--
            You spend the next hour or so looking for the shops you need and buying more <>

            {
                - g_fuel < 35 && g_supplies < 35:
                    fuel and supplies for the trip to the Capy-Bar.

                    ~ g_grana -= g_granaChangeMid
                    ~ g_fuel += g_statChangeMid
                    ~ g_supplies += g_statChangeMid

                - g_fuel < 35 && g_supplies > 35:
                    fuel for the trip to the Capy-Bar.

                    ~ g_grana -= g_granaChangeLow
                    ~ g_fuel += g_statChangeMid

                - g_fuel > 35 && g_supplies < 35:
                    supplies for the trip to the Capy-Bar.

                    ~ g_grana -= g_granaChangeLow
                    ~ g_supplies += g_statChangeMid
            }

            ~ FadeTo("black", 1, 1)
    }

-> mafagafo_passenger_end

+ [BARTO¬Accept Barto's idea.>M_G_F_S>]

    #char:--
    You want to pay your debt, but not at the cost of other people's happiness.

    #char:--
    Especially not if these people are basically helping you pay that debt in the first place.

    #char:--
    Barto sends you a grateful look.

    ~ g_affinity_Barto += g_affinityChangeHigh

    ~ g_morale += g_statChangeHigh

    #char:Barto_happy_sad|R
    Thank you, Captain! It's about a day's travel from here! {PlaySFX("Love1")} {Emotion("Explosion", "ffffff")}

    {
        - g_fuel < 35 || g_supplies < 35:

            #char:Kleber_sad_sad|L
            Uh... I don't want to be a downer, but <>
        
        - else:

            ~ bought_mafagafo = true

            #char:Rosana_neutral|L
            Alright, then! I'll just take the 500 from your reward and we're good to go!

            ~ g_grana += g_reward_M1 - g_granaChangeMid
            
            ~ g_currentReward = g_reward_M1 - g_granaChangeMid

            ~ CompleteDelivery()

            #char:Rosana_happy|L
            Oh, before I forget: take this whistle for Mafagafos! Consider this a little extra.

            #char:Rosana_neutral|L
            I've heard that it works in Surface as well. Their Mafagafos are beautiful! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

            #char:Rosana_thinking|L
            They managed to adapt pretty well there, despite the... <i>unfavorable living conditions.<i>

            #char:--
            So they <i>do</i> live there too, huh. Seems like the stories are true.

            #char:Rosana_happy|L
            Pleasure doing business with you. Now if you'll excuse me, the pets literally can't sell themselves!

        ->mafagafo_passenger_end
    }

    {
        - g_fuel < 35 && g_supplies < 35:
            I don't think we have enough fuel or supplies for that trip. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

        - g_fuel < 35 && g_supplies > 35:
            have any of you seen how low our fuel gauge is? {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

        - g_fuel > 35 && g_supplies < 35:
            I don't think we have enough food for that trip, much less with an extra mouth to feed. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}
    }

    {
        - g_fuel < 35 || g_supplies < 35:

            #char:Jackie_neutral_angry|R
            Well, we can always buy more. I mean, we're in the biggest market this side of the skyways!

            #char:Rosana_neutral|L
            I can just hold the Mafagafo while you do it. For now, just take the full reward and I'll keep the pet.

            ~ g_grana += g_reward_M1

            ~ g_currentReward = g_reward_M1 - g_granaChangeMid

            ~ CompleteDelivery()

            #char:Rosana_neutral|L
            Trust me, it's better than walking around the market with it or leaving it alone inside your ship.

            #char:Rosana_happy|L
            Just be quick, before another buyer appears. The Mafagafo <i>is</i> a pet for sale in my shop, you know?

            #char:Barto_sad_sad|R
            Captain, please. Let's do the right thing.

            //#char:--
            //Should you spend some extra Grana in order to be able to get to the sanctuary?

            //++ [YES¬Restock for the trip.>M_G_F_S>]

                #char:--
                Barto is right. Restocking is a good idea, either way.

                #char:--
                You spend the next hour or so looking for the shops you need and buying more <>

                {
                    - g_fuel < 35 && g_supplies < 35:
                        fuel and supplies for the trip to the sanctuary.

                        ~ g_grana -= g_granaChangeMid
                        ~ g_fuel += g_statChangeMid
                        ~ g_supplies += g_statChangeMid

                    - g_fuel < 35 && g_supplies > 35:
                        fuel for the trip to the sanctuary.

                        ~ g_grana -= g_granaChangeLow
                        ~ g_fuel += g_statChangeMid

                    - g_fuel > 35 && g_supplies < 35:
                        supplies for the trip to the sanctuary.

                        ~ g_grana -= g_granaChangeLow
                        ~ g_supplies += g_statChangeMid
                }

                ~ FadeTo("black", 1, 1)

                #char:Rosana_happy|L
                You're in luck! The Mafagafo is still here, just waiting for you.

                #char:Kleber_surprised_angry|R
                Do your pets actually sell that quickly? We barely took an hour! {PlaySFX("Mistery3")} {Emotion("Explosion", "39f2d6")}

                #char:Rosana_neutral|L
                You'd be surprised. With the amount of people that come here from other cities, even non-essentials sell at the speed of light.

                #char:Rosana_happy|L
                Well, either that, or I'm just a good saleswoman. {PlaySFX("Funny1")} {Emotion("Shine", "ffb71b")} {StopMusic()}

                #char:Rosana_happy|L
                Oh, before I forget: take this whistle for Mafagafos! Consider this a little extra.

                #char:Rosana_neutral|L
                I've heard that it works in Surface as well. Their Mafagafos are beautiful! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

                #char:Rosana_thinking|L
                They managed to adapt pretty well there, despite the... <i>unfavorable living conditions.<i>

                #char:--
                So they <i>do</i> live there too, huh. Seems like the stories are true.

                #char:Rosana_happy|L
                Pleasure doing business with you. Now if you'll excuse me, the pets literally can't sell themselves!

                #char:--
                You give Rosana her payment and take the Mafagafo back to the ship.

                ~ bought_mafagafo = true

                ~ FadeTo("black", 1, 1)

                ~ g_grana -= g_granaChangeMid
                ~ g_morale += g_statChangeHigh

            -> mafagafo_passenger_end

            /*
            ++ [NO¬Maybe you shouldn't buy the Mafagafo.>M_G>]

                #char:--
                Unfortunately, you have to give up on that idea.

                #char:--
                At that point, it might be too much Grana and time invested in a small thing like this.

                #char:--
                You send an apologetic look to Barto. He looks down.

                ~ g_affinity_Barto -= g_statChangeMid

                #char:Barto_sad_sad|R
                I... very well, Captain. I understand. We have a delivery to finish. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

                ~ g_morale += g_statChangeHigh

                ~ g_grana += g_reward_M1
      
                ~ g_currentReward = g_reward_M1

                ~ CompleteDelivery()

                #char:--
                You and the crew give the Mafagafo and eggs to Rosana.

                #char:--
                She holds the creature with one hand on the scruff of its neck - firmly, but not forcefully. That seems to make it quiet, at least. {StopMusic()}

                #char:Rosana_happy|L
                Oh, before I forget: take this whistle for Mafagafos! Consider this a little extra.

                #char:Rosana_neutral|L
                I've heard that it works in Surface as well. Their Mafagafos are beautiful! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

                #char:Rosana_thinking|L
                They managed to adapt pretty well there, despite the... <i>unfavorable living conditions.<i>

                #char:--
                So they <i>do</i> live there too, huh. Seems like the stories are true.

                #char:Rosana_happy|L
                Pleasure doing business with you. Now if you'll excuse me, the pets literally can't sell themselves!

                #char:--
                After bidding you and the crew farewell, she gives you the payment and takes the cargo inside her shop.

                ~ FadeTo("black", 1, 1)

            -> mafagafo_passenger_end
            */
    }


= Rosana_is_angry

#char:--
Rosana is the first to react.

#char:Rosana_angry|L
Well, what are you lot <shake>waiting for</shake>!? {Shake("Big Face", 2, 1)} {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit2")} 

//TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

#char:--
You all scramble off, chasing the exotic pet in the middle of a crowded market.

-> mafagafo_loop



= mafagafo_loop

{
    - mafagafoChaseState == "Captured":
        -> mafagafo_passenger_end

    - mafagafo_round_3 > 0:
        -> mafagafo_passenger_end

    - mafagafo_round_2 > 0 && (mafagafoChaseState == "Close By" || mafagafoChaseState == "Distant" || mafagafoChaseState == "Escaping"):
        -> mafagafo_round_3

    - mafagafo_round_1 > 0 && (mafagafoChaseState == "Close By" || mafagafoChaseState == "Distant" || mafagafoChaseState == "Escaping"):
        -> mafagafo_round_2

    - mafagafo_round_1 == 0:
        -> mafagafo_round_1
}



= mafagafo_shuffle

{
    - mafagafo_round_3 > 0:
        {shuffle:
            - 
                ~ mafagafoChaseState = "Captured"

            - 
                ~ mafagafoChaseState = "Lost"
        }

    - mafagafo_round_3 == 0 && mafagafoBody == "biped":
        {shuffle:
            - 
                ~ mafagafoChaseState = "Captured"

            - 
                ~ mafagafoChaseState = "Close By"
        }

    - mafagafo_round_3 == 0 && mafagafoBody == "quadruped":
        {shuffle:
            - 
                ~ mafagafoChaseState = "Captured"

            - 
                ~ mafagafoChaseState = "Close By"

            - 
                ~ mafagafoChaseState = "Distant"
        }

    - mafagafo_round_3 == 0 && mafagafoBody == "winged":
        {shuffle:
            - 
                ~ mafagafoChaseState = "Captured"

            - 
                ~ mafagafoChaseState = "Close By"

            - 
                ~ mafagafoChaseState = "Distant"

            - 
                ~ mafagafoChaseState = "Escaping"
        }
}

{
    - mafagafoChaseState == "Captured":
        #char:--
        By sheer luck, the Mafagafo <>
        
        {
            - mafagafoBody == "winged":
                lands <>

            - mafagafoBody == "quadruped":
                runs <>

            - mafagafoBody == "biped":
                stumbles <>
        }

        right in front of you.

        #char:--
        You and the crew corner it - the best you can.

        ~ ScreenFlash("white", -1)

        #char:Barto_neutral_angry|R
        Careful - don't try to grab it by force!

        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

        #char:Kleber_surprised_sad|L
        <bounce>Huh</bounce>!? {PlaySFX("Mistery3")}

        #char:Jackie_neutral_happy|R
        No, no, Barto's right! If we scare it away, it might run again!

        #char:--
        You calmly approach the Mafagafo - whose eyes keep shifting between all of you.

        #char:--
        Some people in the market have stopped in their tracks to look at the commotion.

        #char:--
        Luckily, no one else interferes.
        
        #char:--
        You're close enough to the creature now, extending your arms slowly and making sure to grab it gently.

        #char:--
        For a second, it looks as if it will <>

        {
            - mafagafoBody == "winged":
                take flight, <>

            - mafagafoBody == "quadruped" || mafagafoBody == "biped":
                run away, <>
        }

        but it accepts your hold in the end.

        #char:Jackie_happy_happy|R
        Nice, Captain! You got it! {PlaySFX("Shimmer2")} {Emotion("Explosion", "ffffff")}
        
        #char:Kleber_happy_angry|L
        Hoo boy! For a second, I was scared it would rush off again and we'd lose our Grana... {PlaySFX("Shimmer2")} {Emotion("Explosion", "ffffff")}

        #char:Barto_neutral_angry|R
        Be glad our Captain has more sense than you, Kleber.

        ~ g_morale += g_statChangeMid

        #char:--
        Breathing a sigh of relief, you and the rest of the crew go back to Rosana's shop, Mafagafo in hand. {StopMusic()}

        ~ FadeTo("black", 1, 1)

    - mafagafoChaseState == "Close By":

        #char:--
        {shuffle:

            - You hear the sound of <>
                {
                    - mafagafoBody == "winged":
                        wings flapping nearby.

                    - mafagafoBody == "quadruped":
                        something moving on all fours nearby.

                    - mafagafoBody == "biped":
                        something moving nearby.
                }

            - You see a flash of <>
                {
                    - mafagafoSkin == "redFeather":
                        red in the corner of your eye.

                    - mafagafoSkin == "blueScale":
                        blue in the corner of your eye.

                    - mafagafoSkin == "greenFur":
                        green in the corner of your eye.
                }
        }

    - mafagafoChaseState == "Distant":

        #char:--
        You hear a <>

        {shuffle:
            - squawk in the distance.

            - purr in the distance.

            - chitter in the distance.

            - cry in the distance.

            - commotion in the distance.

            - disturbance in the distance.
        }

    - mafagafoChaseState == "Escaping":

        #char:--
        Your surroundings are <>

        {shuffle:
            - mostly quiet.

            - nothing but the noise of people.

            - too chaotic to discern anything.

            - too noisy to search throughly.

            - devoid of anything resembling the Mafagafo.
        }

    - mafagafoChaseState == "Lost":
        #char:--
        ...There's no sign of the Mafagafo anymore.

        #char:--
        Judging by your crew's faces, they don't see or hear anything either.

        #char:Kleber_angry_angry|L
        <shake>Dammit</shake>! I think we lost it! {Emotion("WaveOut", "ea2929")}

        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

        #char:Jackie_sad_sad|R
        Can't we go back and check? {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

        #char:Barto_sad_sad|R
        By now, the Mafagafo has probably escaped.

        #char:Barto_sad_angry|R
        Finding it in a place this big will be impossible... assuming it has not left the market entirely. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

        #char:--
        Despondent, you and the crew take a moment to breathe, before returning to Rosana empty-handed. {StopMusic()}

        ~ FadeTo("black", 1, 1)
}

-> mafagafo_loop



= mafagafo_round_1

#char:--
Alright, the Mafagafo can't be far, but you have to move fast.

#char:--
Pick a direction first, ask questions later.

+ [POINT_LEFT¬Go to the left.>>]->mafagafo_shuffle

+ [POINT_UP¬Go forward.>>]->mafagafo_shuffle

+ [POINT_RIGHT¬Go to the right.>>]->mafagafo_shuffle



= mafagafo_round_2

{
    - mafagafoChaseState == "Close By":
        #char:Jackie_happy_angry|R
        I think it's close by, Captain! {PlaySFX("StrongWoosh")} {Emotion("Explosion", "39f2d6")}

        #char:Kleber_angry_happy|L
        Let's catch this thing, then!

    - mafagafoChaseState == "Distant":
        #char:Kleber_sad_sad|L
        I don't think the Mafagafo is close. {PlaySFX("StrongWoosh")} {Emotion("WaveIn", "0a4de8")}

        #char:Barto_neutral_sad|R
        Let's try another place then.

    - mafagafoChaseState == "Escaping":
        #char:Barto_sad_sad|R
        Nothing so far. Maybe we should change directions? {PlaySFX("StrongWoosh")} {Emotion("WaveIn", "0a4de8")}

        #char:Kleber_fear_sad|L
        Or maybe it's so fast it's far ahead of us! Come on, let's move! {Emotion("Explosion", "FFFFFF")}

        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)
}

+ [POINT_LEFT¬Go to the left.>>]->mafagafo_shuffle

+ [POINT_UP¬Go forward.>>]->mafagafo_shuffle

+ [POINT_RIGHT¬Go to the right.>>]->mafagafo_shuffle



= mafagafo_round_3

{
    - mafagafoChaseState == "Close By":
        #char:Kleber_happy_happy|L
        I think it's around! Can you hear that? {PlaySFX("StrongWoosh")} {Emotion("Explosion", "ffffff")}

        #char:Jackie_happy_happy|R
        Yeah! Let's pick up the pace! {PlaySFX("StrongWoosh")} {Emotion("Explosion", "ffffff")}

    - mafagafoChaseState == "Distant":
        #char:Barto_fear_sad|R
        I can barely hear something... but it's getting farther from us. {PlaySFX("StrongWoosh")} {Emotion("WaveIn", "2c2b30")}

        #char:Jackie_surprised_happy|L
        Let's move, then! We can't let it get away!

    - mafagafoChaseState == "Escaping":
        #char:Jackie_sad_sad|R
        Still nothing... did it get away? {PlaySFX("StrongWoosh")} {Emotion("WaveIn", "0a4de8")}

        #char:Kleber_angry_angry|L
        Sure hope not! Our grana's at stake here! {Emotion("WaveOut", "ea2929")}

        //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)
}

+ [POINT_LEFT¬Go to the left.>>]->mafagafo_shuffle

+ [POINT_UP¬Go forward.>>]->mafagafo_shuffle

+ [POINT_RIGHT¬Go to the right.>>]->mafagafo_shuffle



= mafagafo_passenger_end

{
    - mafagafo_relax && !bought_mafagafo || mafagafo_throw && !bought_mafagafo:
        -> mafagafo_delivered

    - bought_mafagafo:
        #char:--
        The trip to the animal sanctuary goes without much incident, surprisingly.

        #char:--
        The Mafagafo is fed twice a day, and the vents are kept closed.

        #char:--
        The most that happened is Kleber getting pecked. Twice.

    -> mafagafo_animal_sanctuary

    - mafagafoChaseState == "Captured":
        #char:Rosana_neutral|L
        Well, I'm impressed. You actually got it back in the middle of the market. {PlayMusic("AquarelaTheme")}

        #char:Rosana_happy|L
        Ever considered hunting exotic animals? {PlaySFX("Funny1")} {Emotion("Shine", "ffb71b")}

        #char:Kleber_fear_sad|R
        Count me out of that, lady. I prefer the regular stress of the skyways, thank you very much.

        #char:Rosana_neutral|L
        Well, either way, you get your full reward now.

        ~ g_grana += g_reward_M1

        ~ g_currentReward = g_reward_M1

        ~ CompleteDelivery()

        #char:Rosana_happy|L
        Oh, before I forget: take this whistle for Mafagafos! Consider this a little extra.

        #char:Rosana_neutral|L
        I've heard that it works in Surface as well. Their Mafagafos are beautiful! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

        #char:Rosana_thinking|L
        They managed to adapt pretty well there, despite the... <i>unfavorable living conditions.<i>

        #char:--
        So they <i>do</i> live there too, huh. Seems like the stories are true.

        #char:Rosana_happy|L
        Pleasure doing business with you. Now if you'll excuse me, the pets literally can't sell themselves!

        #char:--
        Rosana goes back to the Critter Corner. The rest of you stay outside.
        //Rosana entra no Baratão das Bestas. Vocês ficam do lado de fora.

        {
            - g_fuel < 35 || g_supplies < 35:
                #char:Jackie_neutral_angry|L
                Well... what do you think about going shopping for some <>
                //Bom... que acham da gente dar uma olhada por aí e comprar <>

                {
                    - g_fuel < 35 && g_supplies < 35:
                        red oil and food, <>

                    - g_fuel < 35 && g_supplies > 35:
                        red oil, <>

                    - g_fuel > 35 && g_supplies < 35:
                        food, <>
                }

                then?

                #char:--
                You spend the next hour or so looking for the shops you need and buying more <>

                {
                    - g_fuel < 35 && g_supplies < 35:
                        fuel and supplies for the trip to the Capy-Bar.

                        ~ g_grana -= g_granaChangeMid
                        ~ g_fuel += g_statChangeMid
                        ~ g_supplies += g_statChangeMid

                    - g_fuel < 35 && g_supplies > 35:
                        fuel for the trip to the Capy-Bar.

                        ~ g_grana -= g_granaChangeLow
                        ~ g_fuel += g_statChangeMid

                    - g_fuel > 35 && g_supplies < 35:
                        supplies for the trip to the Capy-Bar.

                        ~ g_grana -= g_granaChangeLow
                        ~ g_supplies += g_statChangeMid
                }

                #char:--
                //
                After that, the crew goes back to the 41-Bis. {StopMusic()}

                ~ FadeTo("black", 1, 1)
        }

    -> mafagafo_delivered

    - mafagafoChaseState == "Lost":

    -> mafagafo_ran_away

    - mafagafoChaseState == "Barto Captured" || mafagafoChaseState == "Jackie Captured" || mafagafoChaseState == "Kleber Captured" || mafagafoChaseState == "You Captured":

    -> mafagafo_delivered

    - mafagafoChaseState == "Barto Escaped" || mafagafoChaseState == "Jackie Escaped" || mafagafoChaseState == "Kleber Escaped":

    -> mafagafo_ran_away
}



= mafagafo_delivered

~ g_mafagafo_was_delivered = true

#char:Jackie_happy_happy|R
Well, I think ending our first delivery calls for a celebration! {PlaySFX("Shimmer1")} {Emotion("Explosion", "ffffff")} {PlayMusic("MainTheme")}

//AFFINITY PASS
{
    - g_affinity_Jackie > 10:

        {
            - mafagafo_relax && !bought_mafagafo || mafagafo_throw && !bought_mafagafo:
                #char:Jackie_neutral_angry|R
                You know, Captain, I respect the way you dealt with our unexpected issues.

            - mafagafoChaseState == "Captured":
                #char:Jackie_neutral_angry|R
                You know, Captain, I respect the way you dealt with our, uh, <i>runaway cargo</i>.
        }

        #char:Jackie_happy_angry|R
        Like Grandma says, "a good Caravan is run well from the top"!

        #char:Jackie_happy_neutral|R
        Honestly? I hope this is just the start of our caravan life! {PlaySFX("Shimmer2")} {Emotion("Shine", "ffb71b")}

    - else:
        #char:Jackie_neutral_sad|R
        After all we went through, I think we deserve it, really.
}

//AFFINITY PASS
{
    - g_affinity_Barto > 10:
        #char:Barto_neutral_neutral|L
        Captain, if I may say...

        {
            - mafagafo_relax && !bought_mafagafo || mafagafo_throw && !bought_mafagafo:
                #char:Barto_neutral_angry|L
                Though I do wish we had sent the Mafagafo to the sanctuary... I want you to know I understand your decision.

                #char:Barto_neutral_neutral|L
                Really, the fact that you wanted to fullfill our contract shows your integrity. I can respect that.

            - mafagafoChaseState == "Captured":
                #char:Barto_neutral_angry|L
                I believe you dealt really well with the pressure of that chase.
                
                #char:Barto_neutral_neutral|L
                That is a sign of your competence and integrity. I can respect that.
        }

        #char:Barto_happy_angry|L
        As for that celebration, maybe I can make some Feijoada!

    - else:
        #char:Barto_neutral_angry|L
        Fair enough. Though to be clear, my personal wine bottle is off-limits.

        {
            - mafagafo_relax && !bought_mafagafo || mafagafo_throw && !bought_mafagafo:
                #char:Barto_sad_sad|L
                ...I do wish we had sent the Mafagafo to the sanctuary, though. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}
        }
}

//AFFINITY PASS
{
    - g_affinity_Kleber > 10:
        #char:Kleber_neutral_sad|R
        Not to be a stick in the mud, chef, but part of me just wants to go to bed right now.

        #char:Kleber_happy_happy|R
        Don't get me wrong, I'm happy with how this delivery went and <i>especially</i> with our first reward.

        {
            - mafagafo_relax && !bought_mafagafo || mafagafo_throw && !bought_mafagafo:
                #char:Kleber_happy_happy|R
                All thanks to you by the way, Cap! We're going places, I can feel it! {PlaySFX("Shimmer2")} {Emotion("Explosion", "ffffff")}

                #char:Kleber_happy_sad|R
                I just kinda hope the only animal aboard for the foreseeable future is our chef.

            - mafagafoChaseState == "Captured":
                #char:Kleber_happy_happy|R
                I just hope next time we visit the Aquarela Marketplace, we get to visit the stalls.

                #char:Kleber_happy_sad|R
                Instead of, y'know, chasing something around them. {PlaySFX("Funny1")} {Emotion("WaveIn", "0a4de8")}
        }

    - else:
        #char:Kleber_neutral_sad|R
        Eh, suit yourselves. I think I need a nice trip to snoozeland after this.
}

#char:--
As your crew chats, you can't help but think about how you just finished your first delivery.

~ ScreenFlash("white", -1)

#char:--
...Though it's hard not to wonder about the Mafagafo's future buyer.

#char:--
Despite all the problems you faced, your first step to pay your debt was taken. {StopMusic()} {SetToNight()} {StopSFX("Marketplace")}

#char:--
Hopefully you and your crew will get more well-paying jobs.

{UnlockAchievement("CODENAME_MAFAGAFO")}

-> EVENT_END



= mafagafo_ran_away

#char:--
Everyone looks down as you go back to Rosana's shop.

#char:--
No one wanted to fail on the first delivery.

#char:Rosana_neutral|L
I take it you couldn't find the Mafagafo?

#char:Rosana_angry|L
Well, can't say I'm too surprised a beginner caravan couldn't do it.

#char:Rosana_angry|L
I did warn you. You're compensating for the cargo you lost! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

//TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

    ~ g_morale -= g_statChangeMid

    ~ g_grana += g_reward_M1 - g_granaChangeMid

    ~ g_currentReward = g_reward_M1 - g_granaChangeMid
    
    ~ CompleteDelivery()

#char:--
You don't really have any leeway to negotiate. You didn't deliver all of her cargo, after all.

#char:Rosana_neutral|L
Well, then. Now, if you'll excuse me, I have a shop to run.

#char:--
Rosana goes back to the Critter Corner. The rest of you stay outside.

#char:Barto_sad_sad|R
...

{
    - g_fuel < 35 || g_supplies < 35:

        #char:Kleber_sad_sad|L
        //Uh... eu não quero piorar a situação mais ainda, mas <>
        Uh... I don't wanna make the situation even worse, but <>

        {
            - g_fuel < 35 && g_supplies < 35:
                we're also in need fuel and supplies for the trip back. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

            - g_fuel < 35 && g_supplies > 35:
                have any of you seen how low our fuel gauge is? {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}

            - g_fuel > 35 && g_supplies < 35:
                I think your pantry also needs more food for the trip back, chef. {PlaySFX("Bad1")} {Emotion("WaveIn", "0a4de8")}
        }

        #char:Jackie_sad_sad|R
        //Bom, estamos no mercadão. Pelo menos isso não vai ser problema.
        Well, we're in a huge market. That won't be an issue.

        #char:--
        You spend the next hour or so looking for the shops you need and buying more <>
        //Você passa por volta de uma hora procurando pelas lojas certas e compra mais <>

        {
            - g_fuel < 35 && g_supplies < 35:
                fuel and supplies for the trip to the Capy-Bar.

                ~ g_grana -= g_granaChangeMid
                ~ g_fuel += g_statChangeMid
                ~ g_supplies += g_statChangeMid

            - g_fuel < 35 && g_supplies > 35:
                fuel for the trip to the Capy-Bar.

                ~ g_grana -= g_granaChangeLow
                ~ g_fuel += g_statChangeMid

            - g_fuel > 35 && g_supplies < 35:
                supplies for the trip to the Capy-Bar.

                ~ g_grana -= g_granaChangeLow
                ~ g_supplies += g_statChangeMid
        }

        ~ FadeTo("black", 1, 1)
}

#char:--
As you glumly go back to the ship, you can't help but think being part of a Caravan isn't simple at all.

~ ScreenFlash("white", -1)

#char:--
As a Surface dweller, you were used to a very different kind of life.

#char:--
Your inexperience made the whole crew lose money.

#char:--
Although they are trying to keep high spirits the best they can, it's clear you failed them. {SetToNight()} {StopSFX("Marketplace")}

#char:--
You can't afford to be this reckless next time. The debt won't pay itself, after all.

{UnlockAchievement("CODENAME_MAFAGAFO")}

-> EVENT_END



= mafagafo_animal_sanctuary

~ g_mafagafo_was_delivered = true

#char:--
You arrive at the animal sanctuary the next day. Barto couldn't be happier. {StopMusic()}

#char:Kleber_neutral_sad|L
Gee, chef, I'd think you had won a cooking contest or something.

#char:Barto_happy_happy|R
Well, I dare say I am just that happy. {PlaySFX("Love1")} {Emotion("Explosion", "ffffff")}

#char:Barto_happy_angry|R
After all, we completed a delivery as a crew and did a good deed, to boot.

#char:--
Barto directs you towards a reception center - currently occupied by an armadillo. 

#char:Barto_neutral_neutral|R
A-hem. Hello, Tatiana. We've got a specimen for the sanctuary. Could you help us with the paperwork? {PlayMusic("MainTheme")}

//AFFINITY PASS
{
    - g_affinity_Jackie > 10 && g_affinity_Jackie_Barto > 0:
        #char:--
        While Barto talks with the receptionist - who seems to be an old friend of his, Jackie approaches you.

        #char:Jackie_happy_sad|L
        Heh, I don't think I've ever seen our grumpy cook this happy for this long. {PlayMusic("MainTheme")}

        #char:Jackie_happy_sad|L
        He might be strict, but I guess he's got a good heart. 

        #char:Jackie_happy_neutral|L
        I think you all do. Even Kleber.

        #char:Kleber_happy_sad|R
        Hey! I'm right here, you know? {Shake("Big Face", 2, 1)}
}

//TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

#char:--
After a few minutes, you bring the Mafagafo out.

#char:--
Soon after, you say your goodbyes and release it into the reserve.

#char:Kleber_neutral_sad|R
Well, can't say I expected the delivery to take this turn when we first picked up the chip at the Capy-Bar.

#char:--
You feel like you got to know your crew a bit better. {StopMusic()} {SetToNight()} {StopSFX("Marketplace")}

#char:--
Honestly, you're fine with that debt taking a little longer to pay.

{UnlockAchievement("CODENAME_MAFAGAFO")}

-> EVENT_END