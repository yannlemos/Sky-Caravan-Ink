===E_Mission_Rookie_GraspOfTheOctornado===

#tier: Rookie
#scope: Mission

VAR protocolN1 = 0
VAR protocolN2 = 0
VAR protocolN3 = 0
VAR inputRound = 1

VAR bureaucracies = 0

VAR lastSideScanned = ""

VAR left_side_error = false
VAR right_side_error = false

VAR lied_about_ownership = false

VAR matchingAnswers = 0

~ temp storyDirection = -> part1

{
    - part2 > 0:
        ~ storyDirection = -> part3
    - part1 > 0:
        ~ storyDirection = -> part2
}

-> storyDirection



= part1

#location: Skyways

~ g_time = g_deadline_M3
~ g_timeLimit = g_deadline_M3

#char:--
The cargo is so heavy the C.C.A. workers had to use one of their giant cranes to load it. //

~ protocolN1 = RANDOM(1,3)
~ protocolN2 = RANDOM(4,6)
~ protocolN3 = RANDOM(7,9)

#char:Jackie_happy_angry|L
Alright, we're pretty much at maximum capacity, but I'm confident our ship can take it! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:Kleber_surprised_sad|R
So, client wants <i>us</i> to call them this time? 

#char:Kleber_surprised_sad|R
Shouldn't it be the other way around? That's weird. 

#char:Barto_neutral_angry|L
That would be due to the client being a company, rather than a person.

#char:Barto_neutral_sad|L
<wiggle = 0.2>Abyss Metalworks</wiggle>... I actually worked at the Venom Refinery for a bit. //

#char:Kleber_surprised_angry|R
Really, chef? Didn't peg you for a factory cook. {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}

#char:Barto_surprised_neutral|L
I was, once. Though I do not remember much...

#char:--
<color=refineryPurple><shake = 0.3>You have contacted Abyss Metalworks. Your protocol number is {protocolN1}{protocolN2}{protocolN3}. Please wait.<waitfor=0.5>.<waitfor=0.5>.</shake></color> {PlaySFX("Transmission")}

#char:--
<color=refineryPurple><shake = 0.3><b>Repeat: your protocol number is {protocolN1}{protocolN2}{protocolN3}.</shake></color></b> 

//TODO SFX: Efeito de transferência telefônica.
//TODO SFX: Essa "voz" da Horizon aparece várias vezes, talvez fazer um sfx de gibberish pra gente repetir nessas horas?

#char:Barto_neutral_neutral|L
That would be the number they assigned to our delivery internally, Captain.

#char:Barto_fear_sad|L
Write that down somewhere! The bureaucracy there is... maddening, from what I can recall. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

#char:Barto_surprised_neutral|L
Strange, I'm trying to remember my day to day there and—

// #char:Jackie_surprised_angry|R
// Better write it down somewhere, then! 

#char:Gabriela_neutral_hologram|L
<bounce>Salutations</bounce>! I am <wiggle>Gròs M'Arjyin</wiggle>, Supply Manager for Abyss Metalworks, a proud Venom Refinery company! {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")} {PlayMusic("SupplyManager")}

#char:Gabriela_neutral_hologram|L
You probably do not have enough larynxes to say that, so you can call me by my business alias, 'Gabriela'! //  

#char:Gabriela_writing_hologram|L
Judging by your protocol number, you are the latest temporary hires bringing our ore powder, yes?

#char:Gabriela_neutral_hologram|L
Do you have any questions about this delivery?

+ [GABRIELA¬Ask about Gabriela's job.>>]

    #char:--
    You ask about the manager. Is she the one who hired you?

    #char:Gabriela_neutral_hologram|L
    Well, not really. As Supply Manager, it is my duty to oversee deliveries.

    #char:Gabriela_neutral_hologram|L
    In fact, everything comes from our superiors in the depths.

    #char:Kleber_happy_sad|R
    Uh, don't you mean "at the top"? {Emotion("Question", "fd97c9")} {PlaySFX("Funny1")}

    #char:Gabriela_neutral_hologram|L
    No, I really meant 'in the depths'. All manufacturers start from <wave>the void</wave>.

    #char:Kleber_surprised_sad|R
    Oh.<waitfor=0.5>.<waitfor=0.5>.

+ [CARGO¬Ask about the ore powder's properties.>>]

    #char:--
    You ask about the ore powder. What is non-linear about it?
    
    #char:Gabriela_neutral_hologram|L
    Ah, <incr>Non-Linear Ore</incr>! A precious and unique material! {Emotion("Explosion", "fd97c9")} {PlaySFX("LightWoosh")} //

    #char:Gabriela_happy_hologram|L
    In the right conditions, it can be shaped into non-Euclidian forms. //

    #char:--
    Oh, great. Another crazy cargo. 

    #char:Gabriela_writing_hologram|L
    Due to its specific properties, it is important that you keep your cargo hold locked and pressurized at all times!

    #char:--
    No risk of injury or any other specific conditions you should know?

    #char:Gabriela_neutral_hologram|L
    Of course not, so long as you follow these instructions.

    #char:--
    Is Gabriela hiding something from you?

    #char:--
    You're not a rookie anymore. //
    
    #char:--
    Better let her know about your previous experience with other clients.
  
    ++ [ROSANA¬Mention your experience with Rosana.>>]
        #char:--
        You briefly tell her about getting in trouble due to not knowing specifics about the cargo before.

    ++ [SILVA¬Mention your troubles with Silva.>>]
        #char:--
        You tell Gabriela about putting your lives in risk because of a dangerous cargo.

    --  #char:Gabriela_neutral_hologram|L
        I see. That sounds... <wiggle>Inefficient</wiggle>. //

        #char:--
        Inefficient? That's one way to put it. 

        #char:Barto_fear_sad|R
        Captain, a moment? I, erm, advise against asking her to elaborate too much. {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

        #char:Barto_fear_neutral|R
        Venom Refinery workers tend to be a bit excessive with rules and efficiency. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Jackie_happy_neutral|L
        <wiggle>Excessive with rules?</wiggle> Who are you and what did you do with Barto? {PlaySFX("Funny1")} //

        ~ g_affinity_Barto_Jackie -= g_affinityChangeLow

        #char:Barto_angry_angry|R
        Jackie, please. This is serious. {Shake("Big Face", 0.5, 0.3)} {Blink("Big Face", 0.5, -1, "white")}

        #char:Kleber_happy_neutral|R
        And <wave>there</wave> he is! {PlaySFX("Funny1")} //

-   #char:Gabriela_neutral_hologram|L
    Regardless, we need the ore for some special sheets only Abyss can produce.

    #char:Gabriela_neutral_hologram|L
    We are a primary force behind the Refinery's expansion, you know?
    
    #char:Gabriela_neutral_hologram|L
    Since you are close by, I expect no setbacks. 
    
    #char:Gabriela_neutral_hologram|L
    It would be counterproductive to the <wave>Elder Boss' design</wave>! 

    #char:Gabriela_writing_hologram|L
    Though I must warn you, if you are late, you might have to fill in some paperwork here. 

    #char:--
    At the mention of 'paperwork', Kleber and Jackie look annoyed. Barto, however, looks visibly shaken. //

    #char:Gabriela_neutral_hologram|L
    I bid you farewell, then. I hope every box in your path is ticked! {StopMusic()}

    #char:--
    That was a really weird way to end the call. {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

    #char:--
    Maybe it's some kind of local custom? It's not like you know much about the Venom Refinery.

    #char:--
    Doesn't hurt to ask one of your crewmates.

    + (barto_refinery_talk) [BARTO¬Ask Barto about the Refinery.>>]

        #char:Barto_fear_sad|L
        To think I will be going back to that <shake>accursed</shake> place... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        #char:Barto_neutral_angry|L
        Like I said, years ago I ended up as a cook in one of the Refinery companies.

        #char:Barto_neutral_angry|L
        Not Abyss Metalworks per se, but one of its sister factories.

        #char:Barto_neutral_angry|L
        I do not remember a whole lot, but I am willing to bet their circumstances are similar.

        {shuffle:

            -
                #char:Barto_neutral_sad|L
                All factories there are run by a different Elder Boss.

                #char:Barto_fear_neutral|L
                No one has ever seen them in person, but their eyes see everything in their domains.

                #char:Barto_neutral_angry|L
                I left that job after a few weeks, so truth be told, I do not know much about them.
                
                #char:Barto_neutral_angry|L
                There's something I do know, though: even a local crime boss like Silva would not hold a candle to them. 

            -
                #char:Barto_fear_angry|L
                I <i>do</i> remember needing approval for each of my meals' preparation steps.

                #char:Barto_sad_sad|L
                I believe I spent more time writing <bounce>internal memos</bounce> than cooking. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

                #char:Barto_sad_sad|L
                And even when I did cook something, well... I cannot say for sure, but I didn't think it was my own.

                #char:Barto_sad_sad|L
                Naturally, I could not handle it. I quit in less than a month.

            -
                #char:Barto_sad_sad|L
                In the few weeks I worked at the Refinery, I saw <wave>ungodly</wave> amounts of documents. 

                #char:Barto_neutral_sad|L
                The C.C.A. must have handled a lot of bureaucracy to approve this delivery.

                #char:Barto_neutral_angry|L
                They have my respect for that, of course. That was probably a headache of its own.

                //AFFINITY PASS

                { 
                    
                    - g_affinity_Barto >= 0:
             
                        #char:Barto_fear_angry|L
                        Still, beware of anything you are required to sign, Captain.

                        #char:Barto_fear_sad|L
                        Read the fine print. <shake>Always</shake>. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}
                              
                }

        }

        ~ g_affinity_Barto += g_affinityChangeLow

        #char:Barto_sad_sad|L
        Let us not overstay our welcome, please. We leave as soon as we deliver the ore.

    + (jackie_refinery_talk) [JACKIE¬Ask Jackie about the Refinery.>>]
        #char:Jackie_surprised_neutral|L
        I don't really know what Abyss Metalworks specializes in, but seriously, <incr>so much stuff</incr> gets made in the Venom Refinery factories. //

        {shuffle:

            -
                #char:Jackie_surprised_neutral|L
                But I have no idea <i>how</i> they're made. To be fair, I don't think anyone does. {PlaySFX("Mistery1")}

                #char:Jackie_happy_happy|L
                Think we can convince them to give us a tour? <wave>I certainly wouldn't mind!</wave> {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            -
                #char:Jackie_surprised_neutral|L
                The biggest distinguishing factor on their goods are the strange drawings on them. 

                #char:Jackie_surprised_neutral|L
                No one knows what these markings are, much less <i>why</i> they're there.
                
                #char:Jackie_surprised_neutral|L
                They can't be replicated either. Must be made with some special machinery.

                #char:Jackie_happy_sad|L
                It looks really stylish though, if you ask me. {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

            -
                #char:Jackie_happy_happy|L
                Oh, but there's this story grandma told me once, from when she was a kid!

                #char:Jackie_happy_angry|L
                See, everyone calls it the 'Venom' Refinery nowadays, but that wasn't it's original name.

                #char:Jackie_surprised_sad|L
                The reason it changed was, well... "<wave>Employees must have their larynx and trachea approved</wave>". Whatever that means. {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

                #char:Jackie_neutral_sad|L
                No one seems to remember what it was before. But because of its toxic green clouds, the new name stuck quite quickly.
        }

        ~ g_affinity_Jackie += g_affinityChangeLow

        #char:Jackie_happy_happy|L
        Can't lie... I'm really curious about going there for once!

    + (kleber_refinery_talk) [KLEBER¬Ask Kleber about the Refinery.>>]
        #char:Kleber_surprised_neutral|L
        Eh, I'm afraid you're asking the wrong person, Cap. I've never been there.

        {shuffle:
            -
                #char:Kleber_happy_happy|L
                <wave>Ooooh,</wave> wait! I know of this rally that passes close by! 

                #char:Kleber_happy_angry|L
                Those Octornados make for some exciting moments, not gonna lie! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                #char:Kleber_happy_angry|L
                I don't know whose idea it was to make a race go through a bunch of factories, but it's great!

            -
                #char:Kleber_neutral_sad|L
                But the Octornados that happen there are infamous. Don't have to be a pilot to know them.

                #char:Kleber_neutral_neutral|L
                No one knows if they're there because of the factories' discharge or if they <i>are</i> the discharge.

                #char:Kleber_happy_sad|L
                Either way, we shouldn't be around long enough to find out. <bounce>Bummer</bounce>.

            -
                #char:Kleber_happy_sad|L
                I've talked to people who have, though.

                #char:Kleber_neutral_sad|L
                Kinda goes without saying, considering the place has 'Venom' in the name, but it's dangerous.

                #char:Kleber_happy_happy|L
                Expect some turbulence... <waitfor=0.5>But with this pilot on your side, you've got nothing to fear! {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")}
        }

        ~ g_affinity_Kleber += g_affinityChangeLow

        #char:Kleber_neutral_neutral|L
        Anyway. Close by, good pay... I think this one is in the bag!

    -   #char:--
        Well, looks like that's what you should expect for this trip.

        #char:--
        Better lock the cargo hold and get going. You're not looking forward to doing any paperwork.

        #char:--
        Your third delivery. {SetToNight()}

        {
            - g_grana >= g_debt - g_reward_M3:
                #char:--
                After this one, you should be close to paying the debt. Just a little longer...

            - else:
                #char:--
                Still some Grana to go. You can't mess this up.
        }

-> EVENT_END



= part2

#location: Venom Refinery

#char:--
You finally arrive at the <color=green2><b>Venom Refinery</b></color>.

// ~ UniqueEffectActivate("VenomRefineryWind")

#char:--
Turbulence rattles the 41-Bis all around. {Shake("All", 2, 3)} {PlaySFX("BigDamage")}

#char:--
The strong winds and sickly green clouds meld together in an <wave>undulating spectacle</wave> you can't fully comprehend.

#char:--
Among them, several metal facilities float in the air, spewing fumes and noise.

#char:--
Abyss Metalworks is near. The building almost looks like it's upside down.

#char:--
As soon as the ship approaches, you receive a transmission.

#char:--
<color=refineryPurple><shake = 0.3>Welcome to Abyss Metalworks! Please input your protocol number.</shake></color> {PlaySFX("Transmission")}

#char:--
Huh?

#char:--
<color=refineryPurple><shake = 0.5>Please input your protocol number!</shake></color> 

#char:Kleber_neutral_neutral|L
Hey, we're here to deliver you someth—

#char:--
<color=refineryPurple><shake>GiVe Me youR PRoToCoL NuMBeR!!</shake></color> {Shake("All", 1, 0.5)} {PlaySFX("SmallDamage")}

-> octornado_protocol


= protocol_input
{
    - inputRound == 3:
        {protocolN2}-

        + [SEVEN¬7>>]
            {
                - protocolN3 == 7:
                    #char:--
                    And {protocolN3}. You manage to input all values correctly.

                -> refinery_post_protocol

                - else:->octornado_protocol
            }

        + [EIGHT¬8>>]
            {
                - protocolN3 == 8:
                    #char:--
                    And {protocolN3}. You manage to input all values correctly.

                -> refinery_post_protocol

                - else:->octornado_protocol
            }

        + [NINE¬9>>]
            {
                - protocolN3 == 9:
                    #char:--
                    And {protocolN3}. You manage to input all values correctly.

                -> refinery_post_protocol

                - else:->octornado_protocol
            }

    - inputRound == 2:
        #char:--
        {protocolN1}-

        + [FOUR¬4>>]
            {
                - protocolN2 == 4:
                    ~ inputRound = 3

                ->protocol_input

                - else:->octornado_protocol
            }

        + [FIVE¬5>>]
            {
                - protocolN2 == 5:
                    ~ inputRound = 3

                ->protocol_input

                - else:->octornado_protocol
            }

        + [SIX¬6>>]
            {
                - protocolN2 == 6:
                    ~ inputRound = 3

                ->protocol_input

                - else:->octornado_protocol
            }

    - inputRound == 1:
        #char:--
        Let's see.

        + [ONE¬1>>]
            {
                - protocolN1 == 1:
                    ~ inputRound = 2
                
                ->protocol_input

                - else:->octornado_protocol
            }

        + [TWO¬2>>]
            {
                - protocolN1 == 2:
                    ~ inputRound = 2

                ->protocol_input

                - else:->octornado_protocol
            }

        + [THREE¬3>>]
            {
                - protocolN1 == 3:
                    ~ inputRound = 2

                ->protocol_input

                - else:->octornado_protocol
            }
}



= octornado_protocol

{
    - octornado_protocol > 3:
        #char:--
        <color=refineryPurple><shake = 0.5>Protocol not found. We're forwarding a new one for the cost of {g_granaChangeLow},00 G$.</shake></color> 

        ~ g_grana -= g_granaChangeLow

        #char:Barto_angry_sad|R
        .<waitfor=0.5>.<waitfor=0.5>.

        #char:Barto_angry_neutral|R
        I told you we should have written it down, Captain. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_sad_sad|R
                I understand you are not used to this, so please. Let me.

            - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                #char:Barto_angry_angry|R
                Here, <shake>allow me</shake>.

            - else:
                #char:Barto_angry_angry|R
                Why are you this irresponsible!?
        }

        ~ g_affinity_Barto -= g_affinityChangeMid

        #char:--
        Barto inputs the new protocol number correctly.

    -> refinery_post_protocol

    - octornado_protocol == 3:
        #char:--
        <color=refineryPurple><shake = 0.5>Protocol not found. Please try again.</shake></color>  

        ~ inputRound = 1

        #char:Jackie_sad_angry|R
        Shoot, I thought you had written it down, Captain.

    -> protocol_input

    - octornado_protocol == 2:
        #char:--
        <color=refineryPurple><shake = 0.5>Protocol not found. Please try again.</shake></color>  

        ~ inputRound = 1
        
        #char:Barto_neutral_neutral|R
        ...

    -> protocol_input

    - else:
        #char:Barto_neutral_sad|R
        Captain, I believe it is referring to the number we received during our transmission with Gabriela.

    -> protocol_input
}



= refinery_post_protocol
#char:--
<color=refineryPurple><shake = 0.3>Protocol number accepted. Welcome, Capybara Caravan Association employees '{g_name}', 'Jackie' and 'Kleber'.</shake></color> {PlaySFX("Mistery1")}

#char:--
<color=refineryPurple><shake = 0.3>Welcome back, former employee number AN-28-R, formal name 'Barto'.</shake></color>  

#char:Barto_surprised_sad|R
...They still have my records? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")} 

#char:--
After some confusion, Kleber finds the landing point in the uncanny structure. {StopMusic()} {ShipOut()}

~ FadeTo("black", 1, 1)

#char:--
As you exit the ship, you can't help but notice the clouds getting more chaotic. The weather is picking up. 

#char:--
Gabriela arrives not a moment later, clipboard in hand and with other workers in tow.

#char:Gabriela_neutral|L
Ah, <wave>hello</wave>! Everything went as expected with the delivery, I presume? {PlayMusic("SupplyManager")}

{
    - g_time > 1:
        #char:Gabriela_neutral|L
        And you are ahead of schedule! <wave>Good</wave>, <wave>good</wave>! Our Elder Boss will be pleased! {Emotion("Heart", "fd97c9")} {PlaySFX("Shimmer2")}

    - g_time == 1:
        #char:Gabriela_neutral|L
        Right on time, too. Our Elder Boss appreciates punctuality.

    - else:
        #char:Gabriela_neutral|L
        Unfortunately, though, you did not get here on time. You will need to file a report later. {PlaySFX("Bad2")}
}

#char:--
She gives you the payment right off the bat, while the other workers start unloading and inspecting the ore boxes.

~ g_grana += g_reward_M3

~ g_currentReward = g_reward_M3

~ CompleteDelivery()

#char:Barto_neutral_sad|R
Well, I am glad we finished the delivery. We should get going.

#char:Kleber_neutral_neutral|R
Why the rush, chef? This isn't like you.

#char:Barto_neutral_sad|R
Like I said, I would rather not spend any more time here than we have t- {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad2")}

#char:--
Just then, a siren blares inside the factory. {PlaySFX("Sirens")}

#char:--
You're all startled. The employees start working faster and closing all exits. 

#char:Jackie_fear_angry|L
Tell me that's just the factory's call for lunch, Barto. {PlaySFX("LightWoosh")}

#char:Barto_fear_angry|R
<shake>No... no</shake>, this is- 

#char:Gabriela_neutral|L
You could say it signals lunch.

~ ScreenFlash("white", -1)

#char:Gabriela_happy|L
Just not ours, sadly. {PlaySFX("Hit1")}

+ [FEAR¬So you're in danger. Again.>>]
    #char:--
    Just what did you get yourself into!?

    #char:Gabriela_neutral|L
    You would be in danger if you were outside. But the tentacles do not reach the domain of the Elder Bosses.

+ [QUESTION¬Keep calm and ask what she means.>>]
    #char:--
    You ask Gabriela what she means by that.

    #char:Gabriela_neutral|L
    That siren is the herald of an Octornado. A call for us to retreat back into our lairs.

+ [ANGER¬Confront Gabriela about this.>>]
    #char:--
    You confront Gabriela. Why on Skies didn't she warn you about that!?

    #char:Gabriela_writing|L
    <shake>I-it was not in our schedule</shake>! If it was, your delivery would not have been approved! {Shake("Big Face", 0.5, 0.3)}

-   #char:--
    Gabriela motions to the still-open bulkhead of the landing point.

    #char:--
    Through the clouds, you can see strange shapes wriggling.

    // ~ UniqueEffectActivate("VenomTentacles")

    #char:Gabriela_writing|L
    The Octornado does not show mercy. We were expecting one in a week, but it arrived earlier.

    #char:Jackie_surprised_neutral|L
    These things happen regularly!? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

    #char:Barto_fear_sad|R
    Indeed. Though it is only part of the danger of the Refinery- {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

    #char:Kleber_happy_sad|L
    Shouldn't we get going, then? Before it arrives?

    #char:Gabriela_neutral|L
    <wave>No use</wave>! If the alarms are sounding, the storm will arrive in <shake>minutes</shake>! {PlaySFX("StrongWoosh")}

    #char:Gabriela_happy|L
    You should <fade>LeAvE</fade> — leave everything to us! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

    #char:Kleber_surprised_neutral|R
    So we stay here? What's the catch?

    #char:Gabriela_neutral|L
    <wave>No catch</wave>! Since some workers live far away, many factories here double as Octornado shelters.

    #char:--
    Somehow, you doubt that. Not after what happened with Marimbondo or Silva.
    
    #char:--
    A client wouldn't offer you shelter like this. There has to be an ulterior motive.

    #char:Barto_fear_sad|R
    Everyone, a word, if I may?

    #char:--
    The four of you excuse yourselves and go back near the 41-Bis' entrance. 

    ~ FadeTo("black", 1, -1)

    #char:Barto_sad_sad|R
    I—I am aware we are in danger by doing this, but... it is best for us to leave while we can. {PlaySFX("Mistery3")}

    #char:Jackie_fear_happy|L
    Why would you want to risk riding through that Octornado? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

    #char:Kleber_surprised_sad|R
    Yeah, you normally chicken out of any risky plan!

    ~ g_affinity_Barto_Kleber -= g_affinityChangeLow

    #char:Barto_angry_angry|R
    I do not <wave>chicken out</wave>, I just have better self-preservation instincts than you, Kleber. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

    ~ g_affinity_Kleber_Barto -= g_affinityChangeLow

    #char:Barto_sad_sad|R
    But believe me, you do not want to stay inside a Refinery facility for too long.

    #char:Barto_fear_happy|R
    Their obsession with protocols does things to your head! 
    
    #char:Barto_fear_happy|R
    I lost most of my memories from working here! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

    #char:Barto_fear_angry|R
    If I had not gotten out in time—

    ~ g_affinity_Jackie_Barto -= g_affinityChangeLow

    #char:Jackie_fear_sad|L
    So something you don't even remember is supposed to be worse than <wave>giant tentacles</wave> from the sky? {PlaySFX("Woosh")}

    #char:Jackie_neutral_angry|L
    I vote we stay here until the storm passes.

    #char:Jackie_neutral_angry|L
    I'm sure going through bureaucracy is better than risking our lives.

    ~ g_affinity_Barto_Jackie -= g_affinityChangeLow

    #char:Barto_fear_sad|R
    At least there is a small chance we survive the tentacles.
    
    #char:Barto_fear_angry|R
    If the Refinery takes us, we may never see the light of day again! {PlaySFX("StrongWoosh")}

    #char:Kleber_surprised_sad|R
    Huh, so stay and deal with whatever is in here... Or leave and deal with the tentacles.

    #char:Kleber_neutral_angry|R
    Personally, I think I can dodge that storm... But I'm curious about this place's secrets. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    #char:Kleber_neutral_happy|R
    <wave>Soooo</wave>... Up to you, Cap! 
    
    #char:Kleber_neutral_happy|R
    What do we do? Either way, we gotta decide fast!

    #char:--
    Do you agree with Jackie or Barto?

    + (jackie_refinery) [JACKIE¬You agree with Jackie. It's safer to stay.>>]
        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 25:
                #char:Jackie_happy_sad|L
                Thank you, {g_name}. I knew you would consider our safety! {StopMusic()}

            - g_affinity_Jackie < 25 && g_affinity_Jackie > -25:
                #char:Jackie_neutral_sad|L
                Thank you, Captain. I was hoping you would consider our safety. {StopMusic()}

            - else:
                #char:Jackie_surprised_sad|L
                Thanks. Glad you're considering our safety, <i>at least</i>. {StopMusic()}
        }

        ~ g_affinity_Jackie += g_affinityChangeHigh

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_sad_sad|R
                As I was. Hopefully you will reconsider before it is too late, Captain. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                #char:Barto_fear_sad|R
                It makes sense you would be afraid. But staying is not worth it. You will see. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            - else:
                #char:Barto_angry_angry|R
                Fine! But if we never leave this place, I am blaming you all. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}
        }

        ~ g_affinity_Barto -= g_affinityChangeHigh

        #char:--
        You go back to where Gabriela is, Barto trailing behind.

        // #char:--
        // You suppose he can't escape on his own with a ship, even if he seems deathly afraid.

        #char:--
        Just then, a warning comes through a speaker somewhere in the landing zone.

    + (barto_refinery) [BARTO¬You agree with Barto. It's safer to leave.>F_S>]
        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_happy_sad|R
                Thank you for believing in me again, {g_name}. I appreciate it. {StopMusic()}

            - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                #char:Barto_sad_sad|R
                I appreciate it, {g_name}. If there was ever a time I would ask you to take a risk, it is now. {StopMusic()}

            - else:
                #char:Barto_surprised_sad|R
                I am... honestly stupefied that you are siding with me for once, Captain. {StopMusic()}

                #char:Barto_neutral_sad|R
                But... thank you.
        }

        ~ g_affinity_Barto += g_affinityChangeHigh

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 25:
                #char:Jackie_fear_sad|L
                What!? Why? I thought you'd prioritize our safety! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            - g_affinity_Jackie < 25 && g_affinity_Jackie > -25:
                #char:Jackie_fear_sad|L
                We could die out there! {PlaySFX("Bad2")}
                
                #char:Jackie_fear_angry|L
                I know we've dealt with shady stuff before, but this is irrational! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            - else:
                #char:Jackie_sad_neutral|L
                Right. '<wave>Jackie can just fix it later</wave>', yeah? Why bother being careful? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}
        }

        ~ g_affinity_Jackie -= g_affinityChangeHigh

        #char:--
        Jackie lets out a deep sigh and goes back to the ship with you.

        #char:--
        As you enter the 41-Bis, a warning comes through a speaker somewhere in the landing zone.

    -   #char:--
        <color=refineryPurple><shake = 0.3>Due to the approach of an Octornado, all vehicles are now forbidden from leaving the factory.</shake></color>

        {
            - jackie_refinery:
                #char:--
                <color=refineryPurple><shake = 0.3>Emergency protocols have already been initiated and exits have been shut.</shake></color>

                #char:--
                <color=refineryPurple><shake = 0.3>So long as you follow the correct measures, the tentacles cannot get inside.</shake></color>

                #char:--
                <color=refineryPurple><shake = 0.3>Failure to comply will result in having to write an 800-page-long document detailing all correct emergency procedures.</shake></color>

                #char:--
                <color=refineryPurple><shake = 0.3>All manufacturers start from the void.</shake></color> {FlipBackground()} 

                #char:--
                The system turns off as Gabriela directs you inside. {StopAmbience()}
                
                ~ FadeTo("black", 1, 1)

            -> enter_metalworks

            - barto_refinery:
                #char:--
                You don't even wait for the warning to finish, asking Kleber to start the engines. {ShipIn()}

                ~ FadeTo("black", 1, 1)

            -> leave_metalworks
        }



= enter_metalworks

{PostProcess("Refinery", 0.5)}

#char:Gabriela_writing|R
Before entering, you must follow the Economicon's Introduction Protocol! {PlayAmbience("AbyssMetalworksAmbience")}

#char:Kleber_surprised_sad|L
The <bounce>what</bounce> now!? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}

#char:Gabriela_neutral|R
Oh, you just need to recite a few lines along with me. It's easy!

#char:Barto_surprised_happy|L
I do not remember any of this.

#char:Gabriela_neutral|R
Of course you wouldn't, it's been a long time. Now, say it with me:

#char:Gabriela_happy|R
<color=refineryPurple><shake = 0.3>A scalable business will never be dead.</shake></color>

#char:Gabriela_happy|R
<color=refineryPurple><shake = 0.3>Through bleeding edge products, its influence I shall spread.</shake></color>

#char:Gabriela_happy|R
<color=refineryPurple><shake = 0.3>Let the invisible tentacle of the market guide me ahead.</shake></color>

#char:--
Most of you do it just fine. Barto is unwilling, but does it anyway, with no other choice.

#char:Gabriela_neutral|R
Thank you for your cooperation! This guarantees a basic level protection from the Elder Boss! 

#char:Jackie_happy_angry|L
Well, that's that! We're safe until the storm passes, then? {PlaySFX("LightWoosh")}

#char:Kleber_happy_neutral|L
I wonder what other weird stuff we can find around? Maybe we can see what they make here? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:Barto_sad_neutral|L
...

#char:Gabriela_writing|R
I am afraid there are a few more steps to go through before you go to our visitor center.

#char:Barto_sad_angry|L
...That is what I was afraid of. {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")}

#char:Gabriela_writing|R
You will need two documents: a <>

{shuffle:

    - Holographic <>

    - Completely Automated <>

    - Singular <>
}

{shuffle:

    - Proxy <>

    - Measurement <>

    - Memo <>
}

{shuffle:

    - of True Forms <>

    - of Cognition <>

    - of Namelessness <>
}

and a <>

{shuffle:

    - Personality <>

    - Privacy-Violating <>

    - Biotype <>
}

{shuffle:

    - Identification <>

    - Abnormality <>

    - Validation <>
}

{shuffle:

    - Print.

    - Scan.

    - Survey.
}

#char:Gabriela_neutral|R
For the first, just follow this corridor to the left, take the elevator to floor -13C, then enter the purple door.

#char:Jackie_surprised_sad|L
Floor... <i>-13C</i>? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Gabriela_neutral|R
For the second, come back to this corridor, but go right. Then climb up the first set of stairs you see—

#char:Barto_surprised_sad|L
Uh—

#char:Gabriela_neutral|R
Then turn left, then right, right again, go down the stairs...

#char:Gabriela_neutral|R
Then search for the orange door and take a queue number.

#char:Gabriela_neutral|R
Ah, but you do not need to, Mr. Barto. 

#char:Gabriela_happy|R
After all, you already spent <wave>735 days</wave> here at Venom Refinery! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} {PlaySFX("Mistery2")}

#char:Barto_neutral_angry|L
I'm afraid that's not right. I quit after a few weeks— 

#char:Gabriela_happy|R
Now, now, Mr. Barto. My records do not lie.

#char:Kleber_surprised_sad|R
Seven hundred and thirty fiv— that's <bounce>over two years</bounce>! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Barto_fear_sad|L
Two... <shake>years?</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")} {Shake("Big Face", 0.7, 0.3)} {PlaySFX("Hit2")}

#char:Gabriela_neutral|R
Well, I have work to do! When you are done, please come find me here again!

#char:Gabriela_neutral|R
Oh, and take this copy of the Economicon's pocket version!

#char:Gabriela_happy|R
Read exactly two verses after <wave>every finished task</wave>! 

#char:--
Gabriela goes to check the cargo, leaving you and the crew.

#char:--
Barto is staring off into space, breathing heavily.

#char:Jackie_surprised_neutral|L
Are you okay, Barto?

#char:Barto_fear_happy|L
T-two years? <shake>TWO YEARS</shake>!? {Emotion("WaveIn", "ea2929")} {Shake("Big Face", 1, 0.5)} {PlaySFX("StrongWoosh")}

#char:Barto_fear_happy|L
<shake>So it's been almost a decade since I left my clan??</shake>

#char:Jackie_surprised_happy|L
H-hey, breathe!

#char:Barto_fear_happy|L
<shake>I should have become an accomplished chef already! I should have my food ship back!</shake> {Emotion("WaveIn", "ea2929")} {Shake("Big Face", 1, 0.5)} {PlaySFX("StrongWoosh")}

#char:Barto_angry_happy|L
<shake>And now I'm stuck here again!</shake>

#char:--
Your cook storms off deeper into the factory before you can stop him, leaving you three on your own. {PlaySFX("StrongWoosh")} {PlaySFX("Door")}

#char:--
You go after him—but after a few corridors, you end up exactly where you were a minute ago!

#char:Kleber_fear_angry|R
Urgh, he's gone! We're walking in circles or what?

#char:Jackie_surprised_angry|L
I think we're walking in spheres. So this is what Non-Linear Ore can do!?

#char:Kleber_surprised_sad|R
So... Two documents, then? Let's get them already and then we'll search for him!

#char:Kleber_surprised_sad|R
The way to get the first document is on the left and the second is on the right...

#char:Kleber_neutral_neutral|R
Okay, then! Where to first, Cap?

+ [POINT_LEFT¬Go left.>M>]
    #char:--
    Not like it matters much, but you choose to go left first.

    ~ FadeTo("black", 1, 1)

    {shuffle:

        -
            #char:--
            After entering the purple door, the employees direct you to a terminal.

            #char:--
            There is some strange tentacle that can manipulate the screen when moved.

            #char:--
            At that point, the machine fires up.

        -> not_a_robot

        -
            #char:--
            Inside the purple door, the employees take you to a panel with several buttons, telling you to follow its intructions.

            #char:--
            Just as you're thinking whether or not this single machine can help you, it boots up.

        -> teller_machine
    }

+ [POINT_RIGHT¬Go right.>M>]
    #char:--
    Maybe it's better to go right before all those instructions fade from your memory.

    ~ FadeTo("black", 1, 1)

    {shuffle:

        -
            #char:--
            After finally getting to the orange door, you and the crew spend a while waiting in a room.

            #char:--
            When your number is finally called, some workers usher you inside a strange booth.

            #char:--
            There's a camera pointed at you and a speaker in one of the corners.

            #char:--
            It cracks up, a monotonous voice coming through. 
        
        -> scanning_faces

        -
            #char:--
            When you get to the orange door, you get a queue number and sit down.

            #char:--
            After some time, you're called to a room with several sphere-shaped terminals.

            #char:--
            It's displaying something in a strange language you don't know.

            #char:--
            Then the words suddenly change, and you're faced with a prompt.
        
        -> satisfaction_survey
    }



= not_a_robot

#char:--
<color=refineryPurple><i>Welcome to the Image Detection Test. Its purpose is to guarantee that you are not a robot or an interdimensional being.</i></color>

#char:--
<color=refineryPurple><i>Please select the corresponding images according to the prompt.</i></color>

#char:--
<color=refineryPurple><i>Please select the (ANTEATER).</i></color>

+ [SHRIMP_BOBO¬Shrimp Bobó.>>]
    #char:--
    <color=refineryPurple><i>Wrong answer. Please try again.</i></color>

-> not_a_robot

+ [BARTO¬Anteater.>>]
    #char:--
    <color=refineryPurple><i>Please select the (PISTOL).</i></color>

    ++ [SHOOT¬Pistol.>>]
        #char:--
        <color=refineryPurple><i>Please select (YOUR SOUL).</i></color>

        +++ [SOUL¬YOUR SOUL.>>]
        +++ [SOUL¬YOUR SOUL.>>]
        +++ [SOUL¬YOUR SOUL.>>]

            ---
            {shuffle:

                -
                    #char:--
                    <color=refineryPurple><i>Thank you for your cooperation.</i></color>

                    ~ bureaucracies += 1

                -> between_bureaucracies

                -   
                    #char:--
                    <color=refineryPurple><i>Apologies. A system error has occurred.</i></color>

                    #char:--
                    <color=refineryPurple><i>Please select the (SMILING FACE).</i></color>

                    + [LAUGH¬laughing face.>>]
                        #char:--
                        <color=refineryPurple><i>Wrong answer. Please try again.</i></color>

                    -> not_a_robot

                    + [LIE¬Strained face.>>]
                        #char:--
                        <color=refineryPurple><i>Wrong answer. Please try again.</i></color>

                    -> not_a_robot

                    + (not_a_robot_smile) [HAPPY¬Smiling face.>>]
                        #char:--
                        <color=refineryPurple><i>Thank you for your cooperation.</i></color>

                        ~ bureaucracies += 1

                    -> between_bureaucracies
            }

    ++ [SAD¬Sad face.>>]
        #char:--
        <color=refineryPurple><i>Wrong answer. Please try again.</i></color>

    -> not_a_robot

    ++ [FEAR¬Scared face.>>]
        #char:--
        <color=refineryPurple><i>Wrong answer. Please try again.</i></color>

    -> not_a_robot

+ [SUPPLIES¬Supplies.>>]
    #char:--
    <color=refineryPurple><i>Wrong answer. Please try again.</i></color>

-> not_a_robot



= teller_machine

#char:--
<color=refineryPurple><i>You have contacted the Human and Inhuman Resources of Abyss Metalworks.</i></color>

#char:--
<color=refineryPurple><i>For Employee Registration, press 1. For Cargo Registration, press 2. For Visitors, press 3.</i></color>

+ [ONE¬Employee Registration.>>]
    #char:--
    <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

    #char:--
    <color=refineryPurple><i>Sorry, but you don't have access to this department. Please press the number corresponding to your profile.</i></color>

    #char:--
    How do they even know that? {PlaySFX("Mistery3")}

    #char:--
    Well, either way, looks like you're back to the start once more.

-> teller_machine

+ [TWO¬Cargo Registration.>>]
    #char:--
    <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

    #char:--
    <color=refineryPurple><i>Sorry, but you don't have access to this department. Please press the number corresponding to your profile.</i></color>

    #char:--
    ...

    #char:--
    Back to the start again.

-> teller_machine

+ [THREE¬Visitor Registration.>>]
    #char:--
    <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

    #char:--
    <color=refineryPurple><i>If you are visiting as part of a <b>Guided Tour of the Lost (TM)</b>, press 4.</i></color>

    #char:--
    <color=refineryPurple><i>If you are here on business, press 5 and deposit your offering in the opening in the left side of this machine.</i></color>

    #char:--
    <color=refineryPurple><i>For any other visiting reasons, press 6.</i></color>

    ++ [FOUR¬I'm here on a tour.>>]
        #char:--
        <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

        #char:--
        <color=refineryPurple><i>Sorry, but you don't seem to match your selected Visitor profile. Please press the number corresponding to your profile.</i></color>

        #char:--
        Seriously, how can they tell? Is this thing reading your mind somehow? {PlaySFX("Mistery3")}

    -> teller_machine

    ++ [FIVE¬I'm here on business.>>]
        #char:--
        <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

        #char:--
        <color=refineryPurple><i>Sorry, but you don't seem to match your selected Visitor profile. Please press the number corresponding to your profile.</i></color>

        #char:--
        Anyway. Back to the beginning.

    -> teller_machine

    ++ [SIX¬I'm here for something else.>>]
        #char:--
        <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

        #char:--
        <color=refineryPurple><i>If you are seeking shelter from a natural disaster, press 7. If you are seeking shelter from a non-natural disaster, press 8.</i></color>

        #char:--
        <color=refineryPurple><i>Alternatively, if you are only interested in today's menu at the cafeteria, press Feijoada.</i></color>

        +++ (teller_machine_7) [SEVEN¬I'm hiding from a natural disaster.>>]
            #char:--
            <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

            #char:--
            <color=refineryPurple><i>Your request has been processed. You will receive confirmation after some time, during work hours.</i></color>

            ~ bureaucracies += 1

        -> between_bureaucracies

        +++ (teller_machine_8) [EIGHT¬I'm hiding from a non-natural disaster.>>]
            #char:--
            <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

            #char:--
            <color=refineryPurple><i>Your request has been processed. You will receive confirmation after some time, during work hours.</i></color>

            ~ bureaucracies += 1

        -> between_bureaucracies

        +++ [FEIJOADA¬...What's for dinner?>>]
            #char:--
            <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

            #char:--
            <color=refineryPurple><i>Unfortunately, you do not qualify for this benefit. Please try again.</i></color>

            #char:--
            Now you're sure they're messing with you.

        -> teller_machine



= between_bureaucracies

{
    - (not_a_robot || teller_machine) && (scanning_faces || satisfaction_survey):
        #char:--
        With both procedures complete, you should go back to Gabriela.

        #char:--
        You hope your crew is done soon.

        ~ FadeTo("black", 1, 1)

    -> after_bureaucracies

    - else:
        #char:--
        Well, one down. Better go back for that other document.

        ~ g_morale -= g_statChangeLow

        #char:--
        You wonder why they even make you go through this. You're starting to see Barto's point.

        ~ FadeTo("black", 1, 1)

        {
            - not_a_robot || teller_machine:
                {shuffle:

                    -
                        #char:--
                        After finally getting to the orange door, you and the crew spend a while waiting in a room.

                        #char:--
                        When your number is finally called, some workers usher you inside a strange booth.

                        #char:--
                        There's a camera pointed at you and a speaker in one of the corners.

                        #char:--
                        It cracks up, a monotonous voice coming through. 
                    
                    -> scanning_faces

                    -
                        #char:--
                        When you get to the orange door, you get a queue number and sit down.

                        #char:--
                        After some time, you're called to a room with several sphere-shaped terminals.

                        #char:--
                        It's displaying something in a strange language you don't know.

                        #char:--
                        Then the words suddenly change, and you're faced with a prompt. 
                    
                    -> satisfaction_survey
                }

            - scanning_faces || satisfaction_survey:
                {shuffle:

                    -
                        #char:--
                        After entering the purple door, the employees direct you to a terminal.

                        #char:--
                        There is some strange tentacle that can manipulate the screen when moved.

                        #char:--
                        At that point, the machine fires up. 

                    -> not_a_robot

                    -
                        #char:--
                        Inside the purple door, the employees take you to a panel with several buttons, telling you to follow its intructions.

                        #char:--
                        Just as you're thinking whether or not this single machine can help you, it boots up. 

                    -> teller_machine
                }
        }
}



= scanning_faces

{
    - scanning_faces < 2:
        #char:--
        <color=refineryPurple><i>We will now proceed with your facial, body and appendage scans. Please follow our instructions.</i></color>
}

{shuffle:

    -
        #char:--
        <color=refineryPurple><i>Please (FROWN).</i></color>

        + [HAPPY¬Smile.>>]
            #char:--
            <color=refineryPurple><i>That was the wrong expression. Please try again.</i></color>

        -> scanning_faces

        + [SAD¬Cry.>>]
            #char:--
            <color=refineryPurple><i>That was the wrong expression. Please try again.</i></color>

        -> scanning_faces

        + (please_frown) [ANGRY¬Frown.>>]
            #char:--
            <color=refineryPurple><i>Expression successfully scanned. Proceeding.</i></color>

        -> scanning_body

    -
        #char:--
        <color=refineryPurple><i>Please (SCREAM).</i></color>

        + [HAPPY¬Smile.>>]
            #char:--
            <color=refineryPurple><i>That was the wrong expression. Please try again.</i></color>

        -> scanning_faces

        + (please_scream) [FEAR¬Scream.>>]
            #char:--
            <color=refineryPurple><i>Expression successfully scanned. Proceeding.</i></color>

        -> scanning_body

        + [ANGRY¬Frown.>>]
            #char:--
            <color=refineryPurple><i>That was the wrong expression. Please try again.</i></color>

        -> scanning_faces

    -
        #char:--
        <color=refineryPurple><i>Please (SMILE).</i></color>

        + [ANGRY¬Frown.>>]
            #char:--
            <color=refineryPurple><i>That was the wrong expression. Please try again.</i></color>

        -> scanning_faces

        + (please_smile) [HAPPY¬Smile.>>]
            #char:--
            <color=refineryPurple><i>Expression successfully scanned. Proceeding.</i></color>

        -> scanning_body

        + [FEAR¬Scream.>>]
            #char:--
            <color=refineryPurple><i>That was the wrong expression. Please try again.</i></color>

        -> scanning_faces

    -
        #char:--
        <color=refineryPurple><i>Please (CRY).</i></color>

        + (please_cry) [SAD¬Cry.>>]
            #char:--
            <color=refineryPurple><i>Expression successfully scanned. Proceeding.</i></color>

        -> scanning_body

        + [ANGRY¬Frown.>>]
            #char:--
            <color=refineryPurple><i>That was the wrong expression. Please try again.</i></color>

        -> scanning_faces

        + [FEAR¬Scream.>>]
            #char:--
            <color=refineryPurple><i>That was the wrong expression. Please try again.</i></color>

        -> scanning_faces
}



= scanning_body

{
    - scanning_body < 2:
        #char:--
        <color=refineryPurple><i>For the body scan, you will be required to turn your body to a certain direction, one at a time.</i></color>

        #char:--
        <color=refineryPurple><i>You can start with whichever one you prefer.</i></color>
    
    - else:
        #char:--
        <color=refineryPurple><i>Please turn to your other side.</i></color>

        + [POINT_LEFT¬Turn left.>>]
            {
                - lastSideScanned == "Left":
                    #char:--
                    <color=refineryPurple><i>Error. This side was already scanned.</i></color>

                    ~ left_side_error = true

                -> scanning_body

                - else:
                    #char:--
                    <color=refineryPurple><i>Side scanned successfully. Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>
                -> scanning_appendage
            }

        + [POINT_RIGHT¬Turn right.>>]
            {
                - lastSideScanned == "Right":
                    #char:--
                    <color=refineryPurple><i>Error. This side was already scanned.</i></color>

                    ~ right_side_error = true

                -> scanning_body

                - else:
                    #char:--
                    <color=refineryPurple><i>Side scanned successfully. Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>
                -> scanning_appendage
            }
}

+ (left_side_first) [POINT_LEFT¬Turn left.>>]

    ~ lastSideScanned = "Left"

+ (right_side_first) [POINT_RIGHT¬Turn right.>>]

    ~ lastSideScanned = "Right"

-   #char:--
    <color=refineryPurple><i>One side scanned successfully. Please turn towards the other.</i></color>

    + [POINT_LEFT¬Turn left.>>]
        {
            - lastSideScanned == "Left":
                #char:--
                <color=refineryPurple><i>Error. This side was already scanned.</i></color>
            -> scanning_body

            - else:
                #char:--
                <color=refineryPurple><i>Side scanned successfully. Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>
            -> scanning_appendage
        }

    + [POINT_RIGHT¬Turn right.>>]
        {
            - lastSideScanned == "Right":
                #char:--
                <color=refineryPurple><i>Error. This side was already scanned.</i></color>
            -> scanning_body

            - else:
                #char:--
                <color=refineryPurple><i>Side scanned successfully. Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>
            -> scanning_appendage
        }



= scanning_appendage

{
    - TURNS_SINCE(-> scanning_appendage) > 2:
        #char:--
        <color=refineryPurple><i>Please wait<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>.</i></color>

        #char:--
        <color=refineryPurple><i>Appendage successfully scanned. Proceeding.</i></color>

        #char:--
        <color=refineryPurple><i>You have completed all scans. Thank you for your cooperation.</i></color>

        ~ bureaucracies += 1

    -> between_bureaucracies

    - TURNS_SINCE(-> scanning_appendage) == 2:
        {shuffle:

            -
                #char:--
                <color=refineryPurple><i>I looked away. Please try again.</i></color>

            -
                #char:--
                <color=refineryPurple><i>Too slow. Please try again.</i></color>
        }

        + (thumb_scan) [YES¬JUST SCAN THE THUMB ALREADY!>>]->scanning_appendage

        + (index_scan) [POINT_UP¬JUST SCAN THE INDEX ALREADY!>>]->scanning_appendage

    - TURNS_SINCE(-> scanning_appendage) == 1:
        {shuffle:

            -
                #char:--
                <color=refineryPurple><i>Bad read. Please try again.</i></color>

            -
                #char:--
                <color=refineryPurple><i>Too fast. Please try again.</i></color>

            -
                #char:--
                <color=refineryPurple><i>Elder Boss Meditation. Please try again.</i></color>
        }

        + [YES¬Try your thumb again.>>]->scanning_appendage

        + [POINT_UP¬Try your index again.>>]->scanning_appendage

    - else:
        #char:--
        <color=refineryPurple><i>For the appendage scan, please place the tip of your finger near the lens.</i></color>

        #char:--
        <color=refineryPurple><i>Please use your thumb or index finger.</i></color>

        + [YES¬Use your thumb.>>]->scanning_appendage

        + [POINT_UP¬Use your index finger.>>]->scanning_appendage
}



= satisfaction_survey

{
    - satisfaction_survey == 3:
        #char:--
        <color=refineryPurple><i>Would you recommend our services to a friend?</i></color>

        + (survey_yes) [YES¬Yes.>>]
            #char:--
            <color=refineryPurple><i>Thank you for your cooperation.</i></color>

            ~ bureaucracies += 1

        -> between_bureaucracies

        + (survey_no) [NO¬No.>>]
            #char:--
            <color=refineryPurple><i>Thank you for your cooperation.</i></color>

            ~ bureaucracies += 1

        -> between_bureaucracies

    - satisfaction_survey == 2:
        {shuffle:

            - -> survey_coxinha_pastel

            - -> survey_color

            - -> survey_fish_pond
        }

    - else:
        #char:--
        <color=refineryPurple><i>Welcome to the Abyss Metalworks Satisfaction Survey.</i></color>

        #char:--
        <color=refineryPurple><i>Please answer the following questions truthfully to the best of your ability.</i></color>

        {shuffle:

            - -> survey_dominant_hand

            - -> survey_rate_shelter

            - -> survey_horizon_experience
        }
}



= survey_dominant_hand

#char:--
<color=refineryPurple><i>Are you right-handed or left-handed?</i></color>

+ (survey_left_handed) [PUNCH_LEFT¬Left-handed.>>]->satisfaction_survey

+ (survey_right_handed) [PUNCH_RIGHT¬Right-handed.>>]->satisfaction_survey



= survey_rate_shelter

#char:--
<color=refineryPurple><i>On a scale of 1 to 3, how would you rate your shelter from the Octornado?</i></color>

+ (survey_rate_1) [ONE¬1.>>]->satisfaction_survey

+ (survey_rate_2) [TWO¬2.>>]->satisfaction_survey

+ (survey_rate_3) [THREE¬3.>>]->satisfaction_survey



= survey_horizon_experience

#char:--
<color=refineryPurple><i>Overall, are you happy with your experience at Abyss Metalworks, angry or neither?</i></color>

+ (survey_satisfied) [HAPPY¬Happy.>>]->satisfaction_survey

+ (survey_dissatisfied) [ANGRY¬Angry.>>]->satisfaction_survey

+ (survey_neutral) [RELAX¬Neither.>>]->satisfaction_survey



= survey_coxinha_pastel

#char:--
<color=refineryPurple><i>Which snack do you prefer?</i></color>

+ (survey_coxinha) [COXINHA¬Coxinha.>>]->satisfaction_survey

+ (survey_pastel) [PASTEL¬Pastel.>>]->satisfaction_survey

+ (survey_human_souls) [SOUL¬Souls.>>]->satisfaction_survey



= survey_color

#char:--
<color=refineryPurple><i>Pick the ball with the most appealing color to you.</i></color>

+ (survey_yellow) [ONE¬Yellow.>>]->satisfaction_survey

+ (survey_blue) [TWO¬Blue.>>]->satisfaction_survey

+ (survey_red) [THREE¬Red.>>]->satisfaction_survey



= survey_fish_pond

#char:--
<color=refineryPurple><i>Would you rather be a <i>big fish</i> in a tiny pond or a <i>small fish</i> in a huge pond?</i></color>

+ (survey_bigfish) [BIG¬Big fish in a tiny pond.>>]->satisfaction_survey

+ (survey_littlefish) [SMALL¬Small fish in a huge pond.>>]->satisfaction_survey



= after_bureaucracies

#char:Gabriela_happy|L
I received your documents already! Your crew must be finishing their procedures as well. {PlaySFX("LightWoosh")}

#char:--
You hope so. You haven't even spent too much time here and you feel stressed already.

~ g_morale -= g_statChangeLow

// #char:--
// It's like everyone here is possessed by a bottle like Silva's.

#char:Gabriela_writing|L
Afterwards, you will need to go to the visitor shelter section and provide— {EldritchOverride()}

{
    - g_morale >= 25:
        #char:--
        You're not listening to this right now. Better go after your crew and see what they're doing.

    - else:
        #char:--
        You're feeling light-headed, for some reason. Maybe it's the stress? 

        ~ ScreenFlash("black", -1)

        #char:--
        Maybe you should go after your crew after you go to the visitor shelter.

        ~ ScreenFlash("black", -1)

        #char:--
        Though for some reason, the strange letters around the metalworks seem clearer to you...
}

{
    - g_morale >= 25:

        ~ FadeTo("black", 1, 0)

        #char:--
        Some time passes, but no luck in finding your crew. 

        #char:--
        They weren't in the same rooms you took the tests in.

        #char:--
        And every place you've been to has directed you somewhere else.

        ~ ScreenFlash("black", -1)

        #char:--
        The <>

        {shuffle:
            - Department of Engravings <>

            - Telepathic Communications Office <>

            - Altar of Manufacture <>
        }

        sends you to <>

        {shuffle:
            - the Cold Heat Treatment Plant <>

            - the Internal Plating Workshop <>

            - the Power Press Control <>
        }

        and so on.

        #char:--
        With every room you pass by and every new procedure you follow, the roar of machines and the buzz of fluorescent lights become <incr>louder</incr>...
}

-> EVENT_END



= leave_metalworks

#char:--
The 41-Bis takes off to a terrifying spectacle!

~ UniqueEffectActivate("Rain")
~ PlaySFX("Storm")

#char:--
The tentacles sway and swirl with the winds. They're several sizes larger than the ship. {PlaySFX("Turbulence")} {PlayMusic("Action")}  {Shake("All", 1, 3)}

#char:--
If one of them hits you, it would be like a fly being swatted.

#char:Kleber_surprised_sad|L
Uh, Cap, how do I put this...

#char:Kleber_fear_angry|L
I'm starting to regret this. <shake>Really</shake> regret this. {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")} {PlaySFX("Tentacles")} {UniqueEffectActivate("VenomTentacles")}

#char:--
The tentacles notice you. They reach toward the ship and Kleber has to swerve out of the way!

#char:Barto_fear_happy|R
<shake>I-I</shake> am not partial to <shake>th-this</shake> either, but... {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")}

#char:Jackie_fear_happy|L
Let's turn back already, <shake>please</shake>! {Emotion("Explosion", "FFFFFF")} {PlaySFX("StrongWoosh")}

#char:Jackie_fear_angry|L
If Kleber is scared instead of screaming about his freaking mad skills, what chance do we have?! 

#char:Barto_fear_angry|R
<shake>NO</shake>! I am not going through those factory doors again! {Emotion("Explosion", "FFFFFF")} {Shake("Big Face", 1, 0.5)} {PlaySFX("StrongWoosh")}

#char:Kleber_fear_angry|L
Can you two stop!? I'm trying to— {Shake("Big Face", 1, 0.5)}

#char:--
A tentacle strikes the back of the 41-Bis! {Shake("Big Face", 1, 0.5)} {UniqueEffectActivate("VenomTentacles")} {PlaySFX("Tentacles")} {PlaySFX("BigDamage")} {Shake("All", 3, -1)} {UniqueEffectActivate("41BisDamage")} {Blink("All", 2, -1, "White")}

~ g_fuel -= g_statChangeHigh
~ g_supplies -= g_statChangeHigh

#char:--
You start losing speed and altitude. More tentacles slam against the ship. 

#char:--
Jackie hangs on to the cockpit's door handle while Barto curls up on the ground. Kleber screams the loudest.

#char:--
He tries to steer the best he can, but your sail is grabbed by a tentacle and snapped. {UniqueEffectActivate("VenomTentacles")} {PlaySFX("Tentacles")} {PlaySFX("SmallDamage")} {Shake("All", 1, 0.5)}

#char:--
The 41-Bis starts tipping.

{StopMusic()}

#char:--
The octornado roars as the ship plunges... {PlaySFX("Turbulence")} {StopSFX("Rain")} {StopSFX("Storm")} {PlaySFX("Tentacles")} {UniqueEffectActivate("VenomTentacles")}

{UnlockAchievement("GRASPED_BY_THE_OCTORNADO")}

~ UniqueEffectDeactivate("Rain")
~ Die("Octornado")

-> END



= part3
#char:--
You open your eyes. You're facing some kind of panel covered in strange emblems.

#char:--
There are several tentacle-shaped levers and eye-shaped blinking lights on it.

#char:--
Behind the panel is a conveyor belt carrying several molds in strange shapes. A machine above pours hot metal on them.

//AFFINITY PASS:

{   
    - g_affinity_Jackie >= 0:
    
        #char:Jackie_surprised_happy|L
        <shake>{g_name}</shake>! There you are! Kleber and I have been looking all over for you! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer2")}


    - else:

        #char:Jackie_surprised_happy|L
        <shake>Captain</shake>! Kleber and I have been looking all over for you! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer2")}

}


#char:--
Getting their documents must have taken longer somehow, but at least you are finally reunited with your crew.

#char:Jackie_surprised_neutral|L
Longer? Captain, we were done right after you! {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

#char:--
What? You didn't even see them after you came out of those rooms!

#char:Kleber_surprised_sad|R
Wait, wait, wait. 'Right after'? I was done <i>before</i> you all! {Emotion("Question", "fd97c9")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Mistery3")}

#char:Jackie_fear_angry|L
Are we tripping again? Is this whole place a giant version of that cachaça bottle!? 

#char:Barto_fear_angry|R
It messes with our heads just the same. You got the documents <i>a week ago</i>! {PlaySFX("Hit1")} {PlaySFX("StrongWoosh")}

#char:Jackie_surprised_angry|L
Barto! You're back! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer1")}

    + [FRUSTRATED¬How could Barto leave you?>>]

        #char:--
        Why did Barto just leave you? He's the one who knows the most about this place! {PlaySFX("Bad2")}

        ~ g_affinity_Barto -= g_affinityChangeLow

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_sad_sad|R
                I-I am sorry, {g_name}. I promise you it will not happen again. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                #char:Barto_sad_sad|R
                I am truly sorry, Captain. But please, try to understand. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - else:
                #char:Barto_angry_angry|R
                Maybe I would not have left if you had been reasonable in the first place! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                #char:Barto_sad_angry|R
                Thanks to that isolation, though, I was able to regain a few memories of when I worked here.
        }

    + [HAPPY¬You're glad he's finally here.>>]

        #char:--
        At least, Barto seems to be more aware of the situation than you. It's great that he's back.

        ~ g_affinity_Barto += g_affinityChangeLow

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_happy_sad|R
                Thank you, Captain. I am glad to be welcomed back like this.

            - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                #char:Barto_sad_sad|R
                Apologies for my outburst earlier. I had a lot to think about.

            - else:
                #char:Barto_angry_angry|R
                Of course I am more aware! That is why I got so nervous in the first place!
        }

    + [FEAR¬One week? How come you lost track of time like that?>>]
        #char:--
        Scratch that — <shake>one week</shake>? What about your debt? You're running out of time!

    -   #char:Barto_sad_sad|R
        You see, the longer I stayed here, the more I started remembering.

        #char:Barto_fear_sad|R
        Gabriela was right. I was here for two years! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

        #char:Barto_fear_sad|R
        Which means I am now over half of my life. Anteaters do not live too long.

        #char:Barto_sad_angry|R
        That is time I will never get back. Time I could have spent in my craft, or with my clan... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Barto_neutral_angry|R
        Still, I am a cook for this crew now. And I have a responsibility.

        #char:Barto_sad_sad|R
        It has been a week. Let us leave.

        #char:Kleber_sad_angry|L
        Hey, we're here, Barto. Calm down. Let's think together.

        #char:Jackie_surprised_sad|L
        Wait, if it's been this long... maybe the Octornado went away? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

        #char:Barto_neutral_angry|R
        I checked with some employees earlier. Its intensity has decreased, but not completely.

        #char:Jackie_neutral_happy|L
        So if we wait just a few more days, we'll finally get out of here! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

        #char:Barto_angry_angry|R
        If we wait <shake>a few more days</shake>, we will lose more than our track of time! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

        #char:Barto_angry_angry|R
        I warned you of this when we took shelter here! But none of you would listen! {Shake("Big Face", 1, 0.5)} {PlaySFX("Hit1")}

        #char:Kleber_fear_angry|R
        <bounce>Okay</bounce>, <bounce>okay</bounce>! I guess you were right! {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Woosh")}
        
        #char:Kleber_fear_angry|R
        If I have to answer one more stupid question...

        #char:Jackie_fear_angry|L
        I'll take stupid questions any day over death by tentacles! {Emotion("WaveIn", "0a4de8")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Woosh")}

        #char:Barto_sad_angry|R
        Think about it, Jackie! Do you want to lose years of your life like me? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery2")}

        #char:Barto_sad_angry|R
        Years you could have spent as a caravaneer? Or with your grandmother?

        #char:Jackie_sad_neutral|L
        ...
        
        #char:Jackie_sad_neutral|L
        But I also don't want us to risk everything like that. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

        #char:--
        On one hand, if the storm is passing, there's a chance you can fly through and escape this place.

        #char:--
        On the other, the tentacles could kill you just as easily. You'd be safe from them here.

        #char:--
        What should you do? Stay here like Jackie suggested or plan an escape with Barto?

        + (stayed_at_refinery) [JACKIE¬It's still safer to stay.>>]

            ~ g_stayed_at_refinery = true

            #char:--
            Maybe just for a couple of days? Hopefully the storm will have passed completely by then.

            #char:Jackie_sad_neutral|L
            Thank you, {g_name}, really. I'm relieved. Sorry, Barto. {PlaySFX("Love2")}
            
            //AFFINITY PASS
            {
                - g_affinity_Jackie >= 25:
                    #char:Jackie_neutral_happy|L
                    Please, put some trust in {g_name} too, Barto. I'm sure we can deal with some more weirdness!

                - g_affinity_Jackie < 25 && g_affinity_Jackie > -25:
                    #char:Jackie_neutral_neutral|L
                    We've been through worse. I'm sure we will be fine this time.

                - else:
                    #char:Jackie_sad_sad|L
                    I know we've been through a lot, but our Captain is making the right call this time.
            }

            ~ g_affinity_Jackie += g_statChangeMid

            //AFFINITY PASS
            {
                - g_affinity_Barto >= 25:
                    #char:Barto_fear_sad|R
                    //Comandante, eu confio em você. Mas espero que você esteja cert{GetX()}.
                    Captain, I trust you. But I hope you are confident in escaping.

                    #char:Barto_fear_angry|R
                    //Caso contrário, nunca mais vamos sair daqui.
                    Otherwise, we are never seeing the Skies again. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

                - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                    #char:Barto_sad_sad|R
                    You are both underestimating the Refinery. We are dealing with powers beyond our understanding! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

                - else:
                    #char:Barto_angry_angry|R
                    //Humph! Não me culpem se a sanidade de vocês se deteriorar! Eu avisei!
                    Hmph! Do not blame me if your sanity deteriorates beyond repair! I warned you! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
            }

            ~ g_affinity_Barto -= g_affinityChangeMid

            #char:Kleber_sad_sad|R
            Man, if I have to keep <>

            {
                - not_a_robot:
                    proving I'm '<wave>not a robot</wave>' <>

                - teller_machine:
                    dialing numbers <>
            }

            and <>

            {
                - scanning_faces:
                    scanning my body parts, <>

                - satisfaction_survey:
                    taking nonsensical surveys, <>
            }

            I think I don't <i>want</i> to understand. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

            ~ g_morale -= g_statChangeLow

            ~ g_affinity_Kleber -= g_statChangeLow

            #char:Jackie_neutral_neutral|L
            Now, to keep track of time... you were a cook in the Refinery, right?

            #char:Barto_sad_sad|R
            Yes, unfortunately. But why—

            #char:--
            You hear a loud alarm in the distance. {PlaySFX("Sirens")}

            #char:Barto_surprised_angry|R
            Oh! Of course! The meal hours! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

            #char:Jackie_happy_angry|L
            This time it <b>is</b> ours, at least. Let's stick together while we're here and count the meals.

            #char:Barto_sad_angry|R
            Meals are not exactly regular, though. Any living being here can go longer without eat or rest.

            #char:Kleber_neutral_sad|R
            Eh, at least some food will keep us sane for a while. Let's go!

            #char:--
            You go towards the alarm noise.

            ~ FadeTo("black", 1, 1)

        -> refinery_lunch

        + (left_refinery) [BARTO¬It's time for you to leave.>>]

            //AFFINITY PASS:

            {   
                - g_affinity_Barto >= 0:

                    #char:Barto_happy_happy|R
                    Thank you so much, {g_name}! You have no idea how grateful I am right now! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Love2")}

            
                - else:

                    #char:Barto_neutral_angry|R
                    FINALLY. I thought you were never going to listen.
                    
                    #char:Barto_fear_neutral|R
                    Phew. I have never been so relieved.
            }

            ~ g_affinity_Barto += g_affinityChangeMid

            #char:Kleber_happy_happy|R
            So am I! No more tests for us! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            ~ g_morale += g_statChangeLow

            ~ g_affinity_Kleber += g_affinityChangeLow

            #char:Jackie_sad_sad|L
            ...I hope you know what you're doing, {g_name}.  {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

            ~ g_affinity_Jackie -= g_affinityChangeMid

            #char:Kleber_neutral_sad|R
            So... How'd you get out the first time, chef?

            #char:Barto_neutral_neutral|R
            I had to take some sort of test. To be honest, I do not remember many details.
            
            #char:Barto_neutral_sad|R
            But if I managed to get out, it must not be impossible.

            #char:Barto_neutral_neutral|R
            We should find Gabriela again. She welcomed us in, she should be able to see us out.

            ~ FadeTo("black", 1, 1)

        -> refinery_psychometric_test



= refinery_lunch

~ g_ate_lunch_at_refinery = true

#char:--
Upon arriving at the mess hall's entrance, you see several different lines — all of them long and filled with employees of different shapes.

#char:--
But which line are you supposed to go to? You go towards a squidlike employee, hoping for directions.

{
    - teller_machine:
        #char:--
        "Hello, Visitor! Please stand on the line for <>

        {
            - teller_machine_7:
                visitors sheltering from natural disasters!"

            - else:
                visitors sheltering from non-natural disasters!"
        }

    - else:
        #char:--
        "Hello, Visitor! Please stand on the same line as the visitors from our Guided Tour of the Lost (TM)!"
}

#char:--
"After you get in, just find a place to sit and someone will bring you your meal!"

#char:--
You get in the line. It's moving very slowly, and you chat with the crew as you move forward, one step at a time.

+ [POINT_UP¬Take a step.>>]

-   #char:Jackie_neutral_neutral|L
    Well, I guess at least the food should be familiar, since Barto worked here.

+ [POINT_UP¬Take a step.>>]

-   #char:Barto_sad_sad|R
    Not really. I did not have much freedom. The recipes here are... <wave>unusual</wave>. 

+ [POINT_UP¬Take a step.>>]

-   #char:Kleber_surprised_sad|L
    <i>You</i> think it's unusual, huh? I don't know whether to be curious or scared. {PlaySFX("LightWoosh")}

+ [POINT_UP¬Take a step.>>]

-   #char:Barto_angry_sad|R
    Joke all you want, but you will be <shake>begging</shake> me for food after we leave this place. {PlaySFX("StrongWoosh")}

+ [POINT_UP¬Take a step into the mess hall.>>]

-   #char:--
    You finally enter the mess hall. It feels a lot bigger than it should be, to the point where it makes you anxious.

    #char:--
    Soon after, another cephalopod comes by with several trays in a cart.

    {
        - satisfaction_survey:
            {
                - survey_coxinha:
                    #char:--
                    You're served a coxinha... Except it's <color=green2>green</color>. 

                    #char:Kleber_fear_neutral|R
                    Okay, I take back what I said. This looks weird! {Emotion("Spiral", "53e66b")} {PlaySFX("Bad2")}

                    #char:Jackie_fear_neutral|L
                    Yeah, the purple pastel doesn't look much better. 

                    #char:Barto_neutral_angry|R
                    Told you. At least they are not deadly. Or if they can be, I do not remember.

                    #char:Kleber_fear_angry|R
                    <shake>Not helping</shake>, man! {Emotion("Explosion", "FFFFFF")} {PlaySFX("StrongWoosh")}
                    
                    #char:--
                    When you finally work up the courage to eat, the filling <i>does</i> taste like poultry meat, although it doesn't <i>look</i> like it.

                - survey_pastel:
                    #char:--
                    You're served a pastel... Except it's <color=refineryPurple>purple</color>. 

                    #char:Jackie_fear_sad|L
                    Yeesh! I don't normally refuse pastels, but I'm tempted to with this one! {Emotion("Spiral", "53e66b")} {PlaySFX("Mistery3")}

                    #char:Barto_neutral_angry|R
                    Well, I do not remember the food being toxic, if it makes you feel better.

                    #char:Jackie_sad_sad|L
                    Not really, but I guess it's either this or starving. 

                    #char:Kleber_sad_sad|R
                    At least you ain't the ones with a green coxinha... {Emotion("Spiral", "53e66b")} {PlaySFX("Bad2")}

                    #char:--
                    When you finally work up the courage to eat, the filling has what feels like tentacles and some kind of crunchy carapace.

                    #char:--
                    It tastes surprisingly fine, once you get past the weird texture.

                - survey_human_souls:
                    #char:--
                    You're served a coxinha and a pastel... Except it's <color=green2>green</color> and <color=refineryPurple>purple</color> instead of golden brown.

                    #char:Kleber_sad_sad|R
                    Y'know, Cap, normally I'd complain about you getting a double portion. 

                    #char:Kleber_fear_sad|R
                    But the way this looks... I actually feel kinda bad for you. {Emotion("Spiral", "53e66b")} {PlaySFX("Bad2")}

                    #char:Jackie_fear_neutral|L
                    Yeah, there's a limit to how much creativity should go into making pastels. 

                    #char:Barto_fear_sad|R
                    Even I have to concede on that one.

                    #char:Barto_surprised_angry|R
                    Oh? What is that piece of paper on your tray, Captain?

                    #char:--
                    It's a message with a really strange writing that seems both cursive and mechanic.

                    #char:--
                    <color=refineryPurple><i>We apologize for the inconvenience, but souls are not currently available in stock due to increased demand and low supplies.</i></color>

                    #char:--
                    <color=refineryPurple><i>Abyss Metalworks would like to offer an extra portion of other food items as compensation.</i></color>

                    #char:Jackie_fear_neutral|L
                    ... 

                    #char:Barto_fear_sad|R
                    ... 

                    #char:Kleber_surprised_sad|R
                    ...<wave>Ooooookay</wave>. I don't think I wanna know.
            }

        - else:
            #char:--
            You're served a portion of pão de queijo... Except it's <color=refineryPurple>purple</color>.

            #char:--
            The filling is doughy, but doesn't taste that bad.

            #char:Barto_neutral_neutral|R
            Well, I did warn you about the food.

            #char:Jackie_fear_sad|L
            My pastel tastes okay, but its texture... {Emotion("Spiral", "53e66b")} {PlaySFX("Bad2")}

            #char:Kleber_fear_sad|L
            I feel like the less I know about my coxinha, the better. 
    }

#char:--
You eat relatively in peace among the strange crowd in the mess hall.

#char:--
The metallic noises of the factory drones out most of the employees' chatter.

#char:--
You have a feeling you wouldn't understand it anyway — many of them talk in a cryptic way.

#char:--
Maybe it's probably the same as the letters on the machines.

#char:--
Afterwards, you're directed to the visitor center that Gabriela previously mentioned.

~ FadeTo("black", 1, 1)

{
    - survey_fish_pond:
        {
            - survey_bigfish:
                #char:--
                It feels cramped, but there aren't a lot of people there besides you four.

                #char:--
                Probably from that guided tour you've heard about.

            - survey_littlefish:
                #char:--
                The place is even more spacious than the mess hall, if that was even possible.

                ~ ScreenFlash("white", -1)

                #char:--
                It's full of people, and yet there is plenty of space left. Just how big is Abyss Metalworks? {PlaySFX("Mistery3")}
        }
    
    - else:
        #char:--
        It's a large place, almost as big as the mess hall. There's no one else there, though.
}

{
    - survey_color:
        {
            - survey_yellow:
                #char:--
                The yellow walls and carpet <>

            - survey_blue:
                #char:--
                The blue tiled walls and floor <>

            - survey_red:
                #char:--
                The reddish wallpaper and woodlike flooring <>
        }

        look soothing, if a bit old.

    - else:
        #char:--
        The walls are bright green, and... Is this artificial turf on the ground?
}

#char:--
There are long tentacle-shaped recliners all over — both for short rests and full nights of sleep.

#char:Kleber_neutral_neutral|R
Okay, my back is gonna be sore, but I'm so tired I can't complain.

#char:Kleber_neutral_sad|R
Plus I have no clue how long it's been since I slept and I have this annoying ass headache—

#char:Jackie_surprised_sad|L
Wait, you too? I thought I was the only one! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Kleber_neutral_sad|R
Nah, my noggin is in pain too. Probably the stress of doing that survey.

#char:Barto_sad_sad|L
When I worked in the Refinery, I, too, had constant headaches.

#char:Barto_sad_sad|L
Whether it is a side effect of the bureaucracy or caused by the factory's environment is anyone's guess.

#char:Barto_sad_sad|L
I wonder if this was how the Mafagafo felt in our ship. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

{
    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
        #char:Kleber_happy_sad|R
        Well, we managed to deliver it either way, right?

        {
            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_animal_sanctuary:
                #char:Kleber_happy_happy|R
                And we even took it to that sanctuary of yours! 

                #char:Barto_neutral_angry|L
                Not 'mine', but yes, we did.

                #char:Barto_sad_sad|L
                If I am being honest... That is what gives me hope of getting out of this situation, too.

            - else:
                #char:Barto_sad_sad|L
                Indeed. Though I still wish we had taken it to the sanctuary... {PlaySFX("Woosh")}

                #char:Kleber_neutral_sad|R
                But we got out of that situation either way, yeah?
        }

    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_ran_away:
        #char:Jackie_sad_sad|L
        Maybe. I guess that's why it was so agitated.

        #char:Kleber_neutral_sad|R
        Heeey, we never made the Mafagafo gather a bunch of documents.

        #char:Kleber_neutral_sad|R
        Still wouldn't blame the thing for wanting to escape. 
        
        #char:Kleber_surprised_sad|R
        Or us, in this case.
}

// #char:Kleber_neutral_sad|L
// ...<wave>Gee</wave>, I wish we had kept some cachaça bottles from last trip, they would go well now. 

// #char:Kleber_happy_angry|L
// Not the cursed one, of course!

-> octornado_ending


// #char:Kleber_neutral_neutral|L
// Hey Cap, speaking of Surface.    We know how you came to the Skies, but not how you got the 41-Bis.

// #char:Kleber_neutral_neutral|L
// I gotta admit I've been kinda curious. How did you end up in this caravan life? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

// {
//     - g_ownership == "Gambler":
//         + [GAMBLER¬Tell how you gambled for the ship.>>]
//             #char:--
//             You tell them about the day you played craps against that captain.

//             #char:--
//             Maybe you're a bit dramatic about the match, but you think it's warranted.

//             #char:--
//             Between your luck in the dice and your previous lack of it in finding a job, it's definitely an underdog's tale.

//             #char:Kleber_happy_happy|L
//             Ha! Been there, done that! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

//             ~ g_affinity_Kleber += g_statChangeMid

//             #char:Kleber_happy_sad|L
//             Seriously, you wouldn't believe what people bet when they get cocky!

//             #char:Barto_happy_angry|R
//             Did that ever include you, I wonder?

//             ~ g_affinity_Barto += 10

//             #char:Kleber_neutral_sad|L
//             Oh, shut it! I-I was drunk that day. Yeah. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

//             #char:Jackie_happy_neutral|R
//             That's a yes, then!

//             ~ g_affinity_Jackie += 10

//             #char:Kleber_neutral_neutral|L
//             Jokes aside, I've won and lost my fair share on bets. Owed a lot of Grana because of maintenance costs, too.
            
//             #char:Kleber_neutral_neutral|L
//             I've mostly grown out of gambling by now, but back when I was a taxi caravan driver, I used to bet a lot more.

//             #char:Barto_surprised_happy|R
//             <i>More</i>? Now I legitimately sympathize with your wallet, Kleber. {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

//         -> octornado_ending

//         + [LIE¬Keep things to yourself.>>]
//             #char:--
//             People do say that every lie has a little bit of truth.

//             ~ lied_about_ownership = true

//             #char:--
//             Maybe it's best if you keep things simple. No need to tell them everything.

//             #char:--
//             You only tell them you got the ship in a game of craps, downplaying the rest of your journey.

//             #char:--
//             Kleber looks at you for a moment. He seems to know you aren't telling everything.

//             #char:Kleber_happy_happy|L
//             Well, I gotta make you teach me some good way to roll dice, then! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

//             ~ g_affinity_Kleber += 10

//             #char:--
//             He knows there's more to the story, but doesn't press you.

//         -> octornado_ending

//     - g_ownership == "Survivor":
//         + [SURVIVOR¬Tell about the expedition you survived.>>]
//             #char:--
//             You tell your crew about that fateful expedition. Being the only remaining survivor with no help in sight.

//             #char:Barto_fear_angry|R
//             That sounds horrifying! And yet you remained a caravaneer? {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad1")}

//             #char:--
//             Well, you still needed a way to pay your debt, no matter the danger.

//             #char:Barto_neutral_sad|R
//             I see... Well, I respect that. Honor and commitment like that are hard to find.

//             ~ g_affinity_Barto += 20

//             #char:Jackie_surprised_happy|R
//             That's really admirable, {g_name}! Delivery caravans have it hard enough, but exploration ones have it even harder.

//             ~ g_affinity_Jackie += 10

//             #char:Kleber_sad_sad|L
//             Guess you really knew you had to risk your life to pay that debt, huh.

//             ~ g_affinity_Kleber += 10

//             #char:Barto_neutral_sad|R
//             Captain. Allow me to tell you something. You see, the truth is...

//             #char:Barto_sad_angry|R
//             I have only recently become a member of the Mandioca Cooks Guild. A year ago, to be precise.

//             #char:Barto_neutral_sad|R
//             It took me several attempts for almost a full decade. That is what made me go after odd jobs in the meantime. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

//             #char:Barto_neutral_neutral|R
//             My drive is what kept me going.

//             #char:Barto_neutral_angry|R
//             What I am trying to say is... If your drive is that strong, I believe you can pay your debt.

//         -> octornado_ending

//         + [LIE¬Keep things to yourself.>>]
//             #char:--
//             People do say that every lie has a little bit of truth.

//             ~ lied_about_ownership = true

//             #char:--
//             Maybe it's best if you keep things simple. No need to tell them everything.

//             #char:--
//             You tell them you got the ship after joining an expedition caravan.

//             #char:--
//             You don't feel like telling them about the dangers or being the sole survivor.

//             #char:Barto_surprised_happy|R
//             An expedition caravan? I thought you weren't the type to risk your life like that. {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

//             #char:Barto_neutral_angry|R
//             Looks like I was wrong. Still, you did well in changing jobs to a delivery caravan.

//             ~ g_affinity_Barto += 10

//         -> octornado_ending

//     - g_ownership == "Apprentice":
//         + [APPRENTICE¬Explain how you inherited the ship.>>]
//             #char:--
//             You talk about the old woman you met. How you learned from her and became her friend.

//             ~ lied_about_ownership = true

//             #char:--
//             You'll never forget the lessons she gave you — and the 41 Bis' key.

//             #char:--
//             She was the one who gave you the drive to work to reunite with your family.

//             #char:Jackie_happy_happy|R
//             I think she'd be happy with how far you've come, {g_name}. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

//             ~ g_affinity_Jackie += 20

//             #char:Kleber_happy_sad|L
//             Yeah. Her road as a caravaneer might be over, but that old lady is probably part of why we're still alive! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer2")}

//             ~ g_affinity_Kleber += 10

//             #char:Barto_neutral_sad|R
//             Indeed. And by going this far for your family, I would dare say that you fulfilled her wish.

//             ~ g_affinity_Barto += 10

//             #char:Jackie_neutral_neutral|R
//             You know, joining a caravan was a way to leave my comfort zone... Write my own story.

//             #char:Jackie_neutral_neutral|R
//             But no matter what, the people close to you should alway come first...

//             #char:Jackie_happy_happy|R
//             So yeah. No one left behind. Whether we're talking about each other or our loved ones outside the crew. {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

//         -> octornado_ending

//         + [LIE¬Keep things to yourself.>>]
//             #char:--
//             People do say that every lie has a little bit of truth.

//             #char:--
//             Maybe it's best if you keep things simple. No need to tell them everything.

//             #char:--
//             You tell them you got the key from a former caravaneer.

//             #char:--
//             No need to tell them about your apprenticeship with her — or her status as a disgraced captain.

//             #char:Jackie_surprised_happy|R
//             <bounce>Wow</bounce>, so someone passed the torch to you? That's so cool! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

//             ~ g_affinity_Jackie += 10

//             #char:Jackie_happy_neutral|R
//             Glad you went through with it, {g_name}! Adventure is at the core of the caravan life!


/*
+ (lied_about_ownership) [LIE¬Keep things to yourself.>>]
    #char:--
    People do say that every lie has a little bit of truth.

    #char:--
    Maybe it's best if you keep things simple. No need to tell them everything.

    {
        - g_ownership == "Gambler":
            #char:--
            You only tell them you got the ship in a game of craps, downplaying the rest of your journey.

            #char:--
            Kleber looks at you for a moment. He seems to know you aren't telling everything.

            #char:Kleber_happy_happy|L
            Well, I gotta make you teach me some good way to roll dice, then! {Emotion("Explosion", "FFFFFF")}

            ~ g_affinity_Kleber += 10

            #char:--
            He seems to know there's more to the story, but doesn't press you.

        -> octornado_ending

        - g_ownership == "Survivor":
            #char:--
            You tell them you got the ship after joining an expedition caravan.

            #char:--
            You don't feel like telling them about the dangers or being the sole survivor.

            #char:Barto_surprised_happy|R
            An expedition caravan? I thought you weren't the type to risk your life like that. {Emotion("Explosion", "39f2d6")}

            #char:Barto_neutral_angry|R
            Looks like I was wrong. Still, you did well in changing jobs to a delivery caravan.

            ~ g_affinity_Barto += 10

        -> octornado_ending

        - g_ownership == "Apprentice":
            #char:--
            You tell them you got the key from a former caravaneer.

            #char:--
            No need to tell them about your apprenticeship with her — or her status as a disgraced captain.

            #char:Jackie_surprised_happy|R
            <bounce>Wow</bounce>, so someone passed the torch to you? That's so cool! {Emotion("Shine", "ffb71b")}

            ~ g_affinity_Jackie += 10

            #char:Jackie_happy_neutral|R
            Glad you went through with it, {g_name}! Adventure is at the core of the caravan life!

        -> octornado_ending
    }
*/


= refinery_psychometric_test

#char:--
After some searching (and more tests), you manage to find Gabriela's office.

#char:--
After knocking twice, you're welcomed in a room overlooking the hangar you arrived in so long ago.

#char:Carolina_neutral|R
Ah, welcome, welcome. You're the visitors who joined us some time ago, yes?

#char:Barto_surprised_angry|L
You... You are not Gabriela, are you? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

#char:Carolina_neutral|R
Oh, no, no! My name is <wiggle>Korkon'Ptancye</wiggle>! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:Carolina_neutral|R
But my business alias is 'Carolina'! You're in my office.

#char:Jackie_surprised_angry|L
But it said 'Supply Manager' on the door... Wasn't that Gabriela? {Emotion("Question", "fd97c9")} {PlaySFX("Woosh")}

#char:Carolina_happy|R
Yes, yes, 'was'. She had to be replaced, though.

#char:Carolina_happy|R
Her mental productivity declined sharply after signing one internal memo too many.

#char:Carolina_neutral|R
<wave>Don't worry</wave>, though! Everything is just fine, our turnover rate was always this high! {PlaySFX("LightWoosh")}

#char:Barto_fear_happy|L
Er...<waitfor=0.5> Alright. Carolina, how can we get permission to leave?

#char:Carolina_happy|R
Oh, that's easy! You just have to fill some forms and then you can go!

#char:Carolina_neutral|R
Here, I'll get them for you.

#char:--
Carolina presses a button in her desk and asks for a 'Psychometric Evaluation Test'.

#char:--
Afterwards, she opens a cabinet. The drawer extends far beyond where it should.

~ ScreenFlash("white", -1)

#char:--
She doesn't reach for any documents, though. Instead, a tentacle comes out of it, along with several voices speaking at once. {PlaySFX("Mistery3")} {PlaySFX("Tentacles")}
//TO DO SFX Vozes lovecraftianas

#char:--
{shuffle:
    - <color=refineryPurple>"Here is <>

    - <color=refineryPurple>"You seek <>

    - <color=refineryPurple>"Wait for <>
}

{shuffle:
    - the fleeting freedom <>

    - the dream of the unwise <>

    - the fading embers of mortality <>
}

{shuffle:
    - that results in ever-rising graphs <>

    - seen by profit prophets <>

    - invested in by the broker gods <>
}

{shuffle:
    - whose productivity value far exceeds the universe."</color>

    - coming from contracts that time forgot."</color>

    - whose insurance has expired."</color>
}

 ~ ScreenFlash("black", -1)

{
    - g_morale < 10:
    -> octornado_bad_end

    - else:
        #char:--
        You blink. The cabinet is closed, the forms in Carolina's hand. {PlaySFX("DeuRuim")} {PlaySFX("Hit1")}
}

#char:Carolina_happy|R
Okay! You just have to fill in these forms so we can evaluate your sanity!

#char:Carolina_neutral|R
In order to be released, you must prove you are coherent enough for the outside world.

#char:Carolina_happy|R
But don't worry! If you've been paying attention, you should be <wave>juuust fine!</wave> 

#char:Carolina_neutral|R
Well, go on, then! Sit down and fill your forms! Oh, but no talking among you!

#char:Carolina_happy|R
We wouldn't want to mess up the results, would we?

#char:--
Without much choice, you sit down on some chairs you didn't even see in the room.

#char:--
You start looking at the paper. It's blank, but slowly fills up with words.

-> first_question



= first_question
{
    - not_a_robot:
        #char:--
        <color=refineryPurple><i>What was the correct answer in the Image Detection Test?</i></color>

        + [SHRIMP_BOBO¬Shrimp Bobó.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> second_question

        + [BARTO¬Anteater.>>]
            #char:--
            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

            ~ matchingAnswers += 1

        -> second_question

        + [SUPPLIES¬Supplies.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> second_question

    - teller_machine:
        #char:--
        <color=refineryPurple><i>Which department matched your profile in the Human and Inhuman Resources of Abyss Metalworks?</i></color>

        + [ONE¬Employee Deparment.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> second_question

        + [TWO¬Cargo Deparment.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> second_question

        + [THREE¬Visitor Deparment.>>]
            #char:--
            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

            ~ matchingAnswers += 1

        -> second_question
}



= second_question
{
    - not_a_robot:
        #char:--
        <color=refineryPurple><i>What was the second correct answer in the Image Detection Test?</i></color>

        + [SHOOT¬Pistol.>>]
            #char:--
            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

            ~ matchingAnswers += 1

        -> third_question

        + [SAD¬Sad face.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> third_question

        + [FEAR¬Scared face.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> third_question

    - teller_machine:
        #char:--
        <color=refineryPurple><i>Which of the numbers corresponds to your visiting reason?</i></color>

        + [FOUR¬Tourism.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> third_question

        + [FIVE¬Business.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> third_question

        + [SIX¬Something else.>>]
            #char:--
            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

            ~ matchingAnswers += 1

        -> third_question
}



= third_question
{
    - not_a_robot:
        #char:--
        <color=refineryPurple><i>What was the last choice you made in the Image Detection Test?</i></color>

        + [SOUL¬Your Soul.>>]
            {
                - not_a_robot_smile:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                - else:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1
            }

        -> fourth_question

        + [HAPPY¬Smiling face.>>]
            {
                - not_a_robot_smile:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
            }

        -> fourth_question

        + [LIE¬Strained face.>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> fourth_question

    - teller_machine:
        #char:--
        <color=refineryPurple><i>What was the last choice you made when contacting Human and Inhuman Resources of Abyss Metalworks?</i></color>

        + [SEVEN¬I'm hiding from a natural disaster.>>]
            {
                - teller_machine_7:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
            }

         -> fourth_question

        + [EIGHT¬I'm hiding from a non-natural disaster.>>]
            {
                - teller_machine_8:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
            }

         -> fourth_question

        + [FEIJOADA¬...What's for dinner?>>]
            #char:--
            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

        -> fourth_question
}



= fourth_question
{
    - satisfaction_survey:
        {
            - survey_dominant_hand:
                #char:--
                <color=refineryPurple><i>What was your choice of dominant hand?</i></color>

                + [PUNCH_LEFT¬Left-handed.>>]
                    {
                        - survey_left_handed:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> fifth_question

                + [PUNCH_RIGHT¬Right-handed.>>]
                    {
                        - survey_right_handed:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> fifth_question

            - survey_rate_shelter:
                #char:--
                <color=refineryPurple><i>How did you rate our shelter?</i></color>

                + [ONE¬1.>>]
                    {
                        - survey_rate_1:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> fifth_question

                + [TWO¬2.>>]
                    {
                        - survey_rate_2:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> fifth_question

                + [THREE¬3.>>]
                    {
                        - survey_rate_3:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> fifth_question

            - survey_horizon_experience:
                #char:--
                <color=refineryPurple><i>What was your assessment of your Abyss Metalworks experience?</i></color>

                + [HAPPY¬Happy.>>]
                    {
                        - survey_satisfied:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> fifth_question

                + [ANGRY¬Angry.>>]
                    {
                        - survey_dissatisfied:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> fifth_question

                
                + [RELAX¬Neither.>>]
                    {
                        - survey_neutral:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> fifth_question
        }

    - scanning_faces:
        #char:--
        <color=refineryPurple><i>Which expression were you required to make during the Face Scanning?</i></color>

        {
            - please_frown:
                + [HAPPY¬Smile.>>]
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> fifth_question

                + [SAD¬Cry.>>]
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> fifth_question

                + [STERN¬Frown.>>]
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                -> fifth_question

            - please_scream:
                + [HAPPY¬Smile.>>]
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> fifth_question

                + [FEAR¬Scream.>>]
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                -> fifth_question

                + [STERN¬Frown.>>]
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> fifth_question

            - please_smile:
                + [STERN¬Frown.>>]
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> fifth_question

                + [HAPPY¬Smile.>>]
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                -> fifth_question

                + [FEAR¬Scream.>>]
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> fifth_question

            - please_cry:
                + [SAD¬Cry.>>]
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                -> fifth_question

                + [STERN¬Frown.>>]
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> fifth_question

                + [FEAR¬Scream.>>]
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> fifth_question
        }
}



= fifth_question
{
    - satisfaction_survey:
        {
            - survey_coxinha_pastel:
                #char:--
                <color=refineryPurple><i>What was your choice of preferred snack?</i></color>

                + [COXINHA¬Coxinha.>>]
                    {
                        - survey_coxinha:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> sixth_question

                + [PASTEL¬Pastel.>>]
                    {
                        - survey_pastel:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> sixth_question

                + [SOUL¬Souls.>>]
                    {
                        - survey_human_souls:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> sixth_question

            - survey_color:
                #char:--
                <color=refineryPurple><i>What was the ball with the most appealing color to you?</i></color>

                + [ONE¬Yellow.>>]
                    {
                        - survey_yellow:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> sixth_question

                + [TWO¬Blue.>>]
                    {
                        - survey_blue:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> sixth_question

                + [THREE¬Red.>>]
                    {
                        - survey_red:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> sixth_question

            - survey_fish_pond:
                #char:--
                <color=refineryPurple><i>What was your position in the waters of life?</i></color>

                + [BIG¬Big fish in a tiny pond.>>]
                    {
                        - survey_bigfish:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> sixth_question

                + [SMALL¬Little fish in a huge pond.>>]
                    {
                        - survey_littlefish:
                            #char:--
                            <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                            ~ matchingAnswers += 1

                        - else:
                            #char:--
                            <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
                    }

                -> sixth_question
        }

    - scanning_faces:
        #char:--
        <color=refineryPurple><i>Which side of your body did you scan first?</i></color>

        + [POINT_LEFT¬Left side.>>]
            {
                - left_side_first:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                -> sixth_question

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> sixth_question
            }

        + [POINT_RIGHT¬Right side.>>]
            {
                - right_side_first:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                -> sixth_question

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>

                -> sixth_question
            }
}



= sixth_question
{
    - satisfaction_survey:
        #char:--
        <color=refineryPurple><i>Did you recommend our services to a friend?</i></color>

        + [YES¬Yes.>>]
            {
                - survey_yes:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
            }

        -> octornado_ending

        + [NO¬No.>>]
            {
                - survey_no:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
            }

        -> octornado_ending

    - scanning_faces:
        #char:--
        <color=refineryPurple><i>Which appendage did you scan correctly?</i></color>

        + [YES¬Thumb.>>]
            {
                - thumb_scan:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
            }

        -> octornado_ending

        + [POINT_UP¬Index finger.>>]
            {
                - index_scan:
                    #char:--
                    <color=refineryPurple><i>Correct choice. Proceed to the next question.</i></color>

                    ~ matchingAnswers += 1

                - else:
                    #char:--
                    <color=refineryPurple><i>Wrong choice. Proceed to the next question.</i></color>
            }

        -> octornado_ending
}



= octornado_ending

{
    - stayed_at_refinery:

        #char:--
        The four of you chat for some time, trying to ignore the time dilations and anomalies that appear every now and then. {EldritchOverride()}
        
        #char:--
        Sleep eventually consumes all of you.

        // {
        //     - !lied_about_ownership:
        //         // #char:--
        //         // You feel like you've truly grown to care for your crew, any problems aside.

        //         #char:--
        //         At one point in the night, Kleber did say that 'if you're risking your necks, at least you're doing it together'.
        // }

        ~ DayChange()

        #char:--
        Waking up, you and the crew go search for Gabriela. 
        
        #char:--
        Who knows how long has passed? All you know is that no alarm has sounded. Maybe.

        #char:--
        It takes a few hours to find her office. 
        
        #char:--
        Slapped by octopi for trespassing. Bumped into each other in different dimensions.

        #char:--
        Eventually, you reach the Supply Manager's office.
 
        #char:Carolina_neutral|R
        Ah, welcome, welcome. You're the visitors who joined us some time ago, yes? {PlaySFX("LightWoosh")} {PlaySFX("Funny1")}

        #char:Barto_surprised_angry|L
        You... You are not Gabriela, are you? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

        #char:Carolina_neutral|R
        Oh, no, no! My name is <wiggle>Korkon'Ptancye</wiggle>! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        #char:Carolina_neutral|R
        But my business alias is 'Carolina'! You're in my office.

        #char:Jackie_surprised_angry|L
        But it said 'Supply Manager' on the door... Wasn't that Gabriela? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery3")}

        #char:Carolina_happy|R
        Yes, yes, 'was'. She had to be replaced, though.

        #char:Carolina_happy|R
        Her mental productivity declined sharply after signing one internal memo too many.

        #char:Carolina_neutral|R
        Shame, but our turnover rate was always like that. 
        
        #char:Carolina_happy|R
        You must always be ready to lose your mind for your job! 

        // #char:Kleber_surprised_happy|R
        // Uh... I'd rather not, thanks. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

        #char:Jackie_surprised_neutral|L
        Do you know if the Octornado has dissipated yet?

        #char:Carolina_neutral|R
        Mostly, yes! It should be relatively safe for travel.

        #char:Carolina_happy|R
        Unless you fly too high, of course. Then you'll be their dinner! {Emotion("Explosion", "fd97c9")} {PlaySFX("LightWoosh")} 

        #char:Barto_surprised_sad|L
        Erm, right. 
        
        #char:Barto_surprised_angry|L
        So, would you allow us to leave?

        #char:Carolina_writing|R
        <wave>Of course!</wave> All you need to do is fill a form! Let me grab it!

        #char:--
        She then leaves you and the crew for a moment.

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_sad_sad|L
                Alright. Stay calm, everyone. If we conclude this test, we can leave! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                #char:Barto_fear_sad|L
                I have no idea what this form will entail, but please, be careful. {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")}

            - else:
                #char:Barto_angry_angry|L
                We would have taken this form a lot sooner if you had listened to me! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        ~ FadeTo("black", 1, 1)

        #char:Carolina_writing|R
        Well, looks like you won't need to take the test after all.

        #char:Jackie_surprised_neutral|L
        What!? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

        #char:Carolina_neutral|R
        The Capybara Caravan Association has negotiated your exit.

        #char:Barto_surprised_sad|L
        Oh, thank the Skies... {Emotion("Explosion", "FFFFFF")} {PlaySFX("StrongWoosh")}

        #char:Carolina_happy|R
        They requested their workers and ship back. They're losing money while you're here or something.
        
        #char:Carolina_happy|R
        A shame, really. <wave>It's so fun here!</wave>

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 25:
                #char:Jackie_happy_neutral|L
                There we go! Looks like the decision we've made paid of, {g_name}!

            - g_affinity_Jackie < 25 && g_affinity_Jackie > -25:
                #char:Jackie_sad_neutral|L
                Phew... in the end, I think we've made the right choice.

                #char:Barto_fear_angry|L
                More like the <i>lucky</i> choice. If it wasn't for C.C.A...

            - else:
                #char:Jackie_neutral_neutral|L
                See? Everything was fine. You all should listen to me more!
        }

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 25:
                #char:Kleber_neutral_neutral|L
                Look, I don't care who got us out of this, I'm just glad we're not signing anything else!

                #char:Kleber_neutral_happy|L
                I'll never complain about boredom on the 41-Bis anymore, for sure!
        }

        #char:--
        It takes a few more hours to find the 41-Bis again. But there it is, with a few detached eyes stuck to it. {FlipBackground()} {ShipIn()}

        #char:--
        You enter the ship and leave Abyss Metalworks behind.

        ~ StopAmbience()
        ~ PlayAmbience("Venom RefineryAmbience")
        ~ FadeTo("black", 1, 1)
        ~ PostProcess("Normal", 3) 

    -> barto_octornado_end


    - left_refinery:
        #char:--
        The last few lines appear on the paper.

        #char:--
        <color=refineryPurple><i>Please wait while we verify your results...</i></color>

        {
            - matchingAnswers > 2:
                #char:--
                <color=refineryPurple><i>It seems you are still sane. Please deliver this paper to the Supply Manager to proceed.</i></color>

                #char:Carolina_neutral|R
                Looks like you all passed! You're free to go!

                #char:Carolina_happy|R
                ...As soon as you sign one last document declaring you won't reveal anything you've seen in here! 

                #char:Carolina_happy|R
                We'd rather not give other Elder Bosses an advantage over us, you know?

                // #char:Kleber_happy_sad|R
                // Advantage over what? Boring questions? {PlaySFX("Funny1")}

                // #char:--
                // Carolina glares at Kleber for a second, but lightens up right after.

                #char:--
                She gives you the document and asks you to imprint your thumbs on it.

                + [YES¬Imprint your thumb.>>]
                    #char:Carolina_neutral|R
                    <bounce>There we go</bounce>! Here, take this permit with you.

                    #char:Carolina_happy|R
                    It will let you leave — and also exempts us from any responsibility over what happens to you out there! 

                    #char:Carolina_neutral|R
                    Oh, but I'll need you to give me the pocket Economicon <wiggle>Gròs M'Arjyin</wiggle> gave you!

                    #char:--
                    You give back the book without thinking twice. Carolina takes it eagerly.

                    #char:--
                    The manager sends you off while speaking a bunch of nonsensical words from the Economicon.

                    #char:--
                    You're glad to finally leave this place. 

                    ~ FadeTo("black", 1, 0)

                    #char:--
                    Suddenly, as you feel the familiar comfort of your ship's walls around you, you're hit by a wave of dizzyness. {PlaySFX("DeuRuim")}

                    ~ ScreenFlash("black", -1)

                    #char:Kleber_sad_angry|R
                    Ugh... Cap, I don't feel <dangle>so good</dangle>... {Emotion("Spiral", "53e66b")} {PlaySFX("LightWoosh")}

                    ~ ScreenFlash("black", -1)

                    #char:Jackie_sad_sad|L
                    Me neither... Was it <dangle>something we ate</dangle>? {Emotion("Spiral", "53e66b")} {PlaySFX("Woosh")}

                    ~ ScreenFlash("black", -1)

                    #char:Barto_sad_sad|L
                    <dangle>Something we ate</dangle>... When was our last meal again? {Emotion("Spiral", "53e66b")} {PlaySFX("StrongWoosh")}

                    ~ ScreenFlash("black", -1)

                    #char:--
                    You... <dangle>Can't remember</dangle>.

                    #char:Kleber_sad_angry|R
                    We— We got here right before the Octornado, and then... Then...

                    #char:Jackie_sad_sad|L
                    How long ago was that? Does anyone remember what happened? 

                    #char:--
                    Barto seems to snap back to reality.

                    #char:Barto_surprised_sad|L
                    Ah, I see what this is. I've felt this before. 

                    #char:Barto_fear_angry|L
                    The loss of memory, this vague dread... Everyone, <shake>please</shake>, let us get away from here. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")} {FlipBackground()} {ShipIn()}

                    #char:--
                    You all nod and prepare to leave.

                    ~ StopAmbience()
                    ~ PlayAmbience("Venom RefineryAmbience")
                    ~ FadeTo("black", 1, 1)
                    ~ PostProcess("Normal", 3) 
                    ~ UniqueEffectActivate("Rain")
                    ~ PlaySFX("Storm")

                    // ~ UniqueEffectActivate("VenomTentacles")

                    #char:--
                    Kleber accelerates as much as possible through his headache. There are still a few tentacles around, but not many. 

                    //AFFINITY PASS

                    {
                        - g_affinity_Barto >= 25:
                            #char:Barto_surprised_angry|L
                            Strange. I do not remember why, but I feel like I should be thankful to you, Captain. {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

                        - else:
                            #char:Barto_sad_angry|L
                            Whatever we did in that place, we overstayed our welcome.

                            #char:Barto_sad_sad|L
                            This is just like when I left my previous job... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}
                    }

                    {
                        - g_affinity_Jackie >= 25:
                            #char:Jackie_fear_neutral|L
                            I don't remember anything either, but it couldn't have been worse than this storm! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

                        - else:
                            #char:Jackie_fear_happy|L
                            Just try not to steer that close to the tentacles, Kleber! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                    }

                    {
                        - g_affinity_Kleber >= 25:
                            #char:Kleber_neutral_happy|R
                            Look, don't worry! Memories or not, I feel glad to be piloting again! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                            #char:Kleber_happy_sad|R
                            My bones feel like I spent days without any action. That's too long if you ask me!

                        - else:
                            #char:Kleber_neutral_angry|R
                            Don't worry, the storm is not so bad now! I've got this! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
                    }

                    #char:--
                    You manage to create some distance from Abyss Metalworks. Your head is already hurting a bit less. {StopSFX("Storm")}

                    ~ UniqueEffectDeactivate("Rain")
                    ~ FadeTo("black", 1, 1)

                -> barto_octornado_end

            - else:
                #char:--
                <color=refineryPurple><i>Unfortunately, you are below the minimum sanity requirement to leave Abyss Metalworks.</i></color>

                #char:--
                <color=refineryPurple><i>We recommend rereading the Economicon whenever you have the time and memorizing your procedures.</i></color>

                #char:--
                <color=refineryPurple><i>Please try again next week!</i></color>

                #char:--
                And with that, the words fade from the paper.

                #char:Carolina_happy|R
                <wave>Aaaah</wave>, a shame. It seems like you couldn't pass the test.{PlaySFX("Bad1")}

                #char:Carolina_neutral|R
                <wave>No worries</wave>, though! You can try again next week! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:Kleber_fear_angry|R
                <shake>Seriously</shake>? We'll spend a <i>full week</i> here!? {Emotion("WaveIn", "0a4de8")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Hit2")}

                #char:Carolina_happy|R
                Yes! Which reminds me, your protocols for the day are— {EldritchOverride()}

                #char:--
                As Carolina lists infinite bureaucratic procedures, you can't help but wonder if the test will incorporate them either.

                ~ DayChange()

            -> octornado_bad_end
        }
}



= octornado_bad_end

//TODO: Aqui, usar os sprites estilo Darkest Dungeon, pode dar um efeito legal

#char:--
You wake up. You hope it will be an <b>abyssal</b> day!

#char:Kleber_creepy_happy|R
<wave>Hey</wave>, {g_name}! Did you see the new memo yet? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} {PlayMusic("Venom RefineryTheme")}

#char:Jackie_creepy_happy|L
We also need to fill the new form before lunch! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer1")}

#char:Barto_creepy_happy|L
The wonders of serving maximized revelations to the employees' food income is a pleasure that fades as one wanders through the lucrative endeavors of life... {PlaySFX("StrongWoosh")}

#char:Kleber_creepy_happy|R
Loyalty to the manufacture. Loyalty to the Elder Boss. Loyalty to Abyss.

#char:Jackie_creepy_happy|L
Loyalty to the manufacture. Loyalty to the Elder Boss. Loyalty to Abyss.

#char:Barto_creepy_happy|L
Loyalty to the manufacture. Loyalty to the Elder Boss. Loyalty to Abyss. {FlipBackground()}

#char:--
It's starting to seem like the Metalworks is a really great place to work. {PlaySFX("Mistery2")} {PlaySFX("DeuRuim")} {StopMusic()}

~ Die("Brainwashed")

-> END


= barto_octornado_end

#location: Skyways

#char:--
Everyone breathes a sigh of relief.

#char:Kleber_happy_angry|R
Whew, finally out! Happy to say that the weather is cloudy with a smaller shance of octopi, folks.

#char:--
Barto is the only one that is still a bit restless.

#char:Barto_neutral_neutral|L
Captain. May we speak for a moment?

#char:Barto_sad_sad|L
I just want to say that... I am not sure whether or not I will continue being a caravaneer for too long.

//AFFINITY PASS
{
    - g_affinity_Barto >= 25:
        #char:Barto_surprised_sad|L
        Ah, I assure you it has nothing to do with you and the crew!

        #char:Barto_happy_sad|L
        In fact, you have been nothing short of wonderful to me up until now! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

    - g_affinity_Barto < 25 && g_affinity_Barto >= -25:
        #char:Barto_surprised_sad|L
        But worry not, I am not quitting <i>now</i>! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

        #char:Barto_neutral_sad|L
        Like I said, I have my objectives to fulfill as a cook.

    - g_affinity_Barto < -25 && g_affinity_Barto > -50:

        #char:Barto_neutral_sad|L
        But I don't plan on quitting <i>now</i>, though.

        #char:Barto_neutral_sad|L
        Like I said, I have my objectives to fulfill as a cook.

    - else:
        #char:Barto_angry_sad|L
        I will not lie. Your leadership so far has been a big push in that direction. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

        #char:Barto_angry_sad|L
        Even so, I will not quit now. I value my responsibilities to the crew. Unlike you, it seems.
}

#char:Barto_sad_angry|L
I also think I am ready to see my clan again. Despite not being a great chef, yet. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Woosh")}

#char:Barto_sad_sad|L
I have been away for about seven whole years. 

//AFFINITY PASS:

{   
    - g_affinity_Barto >= -25:
    #char:Barto_neutral_angry|L
    ...Say, if you were in my place, how would you spend your time? Keep cooking? Go back to my family?

    - g_affinity_Barto < -25 && g_affinity_Barto > -50:
    #char:Barto_neutral_angry|L
    ...I know we are not close, but if you were in my place, how would you spend your time? Keep cooking? Go back to my family?

    - else:
    #char:Barto_neutral_neutral|L
    ...I cannot believe I am asking <i>you</i> this, but if you were in my place, how would you spend your time? Keep cooking? Go back to my family?

}



+ (barto_follow_dream) [COOKING¬Tell him to keep cooking.>>]
    #char:--
    You tell Barto he should follow his dreams, no matter how much time passed.

    #char:Barto_surprised_neutral|L
    ...! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Mistery3")}

    //AFFINITY PASS
    {
        - g_affinity_Barto >= 25:
            #char:Barto_happy_neutral|L
            {g_name}... thank you. You've made me a lot more confident as a cook.{Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

            #char:Barto_happy_happy|L
            I <i>will</i> follow my dreams. No matter how much time I still take to do it!

        - g_affinity_Barto < 25 && g_affinity_Barto >= -25:
            #char:Barto_happy_neutral|L
            Thank you, Captain. Maybe I can start with tonight's dinner! {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")}

        - g_affinity_Barto < -25 && g_affinity_Barto > -50:

            #char:Barto_surprised_sad|L
            My, I am surprised. I did not expect you to be supportive.
        
        - else:
            #char:Barto_angry_sad|L
            My, I am surprised. I did not expect you to try to be supportive now.

    }

+ (barto_follow_family) [LOVE¬Tell him to go to his clan.>>]
    #char:--
    Even if his clan doesn't get his ambition, family is more important.

    {
        - g_affinity_Barto >= 25:
            #char:Barto_surprised_happy|L
            //Você parece estar falando por experiência própria!
            You almost sound like you are talking from experience! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            #char:Barto_happy_happy|L
            //Mas eu entendo. Não é uma questão de desistir dos meus sonhos, e sim de passar mais tempo com meus entes queridos.
            But I understand. It is not about giving up on my dreams, but rather spending time with my loved ones.

        - g_affinity_Barto < 25 && g_affinity_Barto >= -25:
            #char:Barto_happy_neutral|L
            ...Haha. Somehow, I had a feeling you would say that. {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")}

        - g_affinity_Barto < -25 && g_affinity_Barto > -50:

            #char:Barto_sad_sad|L
            ...

            #char:Barto_sad_neutral|L
            I wonder. Are you trying to be supportive? Or just trying to make me give up?

        - else:
            #char:Barto_sad_sad|L
            ...

            #char:Barto_angry_neutral|L
            I wonder. Are you trying to be supportive? Or just trying to make me give up? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
    }

-   
    //AFFINITY PASS:
    { 
        - g_affinity_Barto >= -25:
        #char:Barto_happy_sad|L
        Thank you for the advice, {g_name}.
    
    }

    #char:Barto_neutral_sad|L
    ...For now, I will keep doing my best. We have a job to do, do we not? {SetToNight()}

    #char:--
    You got out of the Venom Refinery <>    
    
    {
        - left_refinery:
            without your memories, but at least you're alive.

        - stayed_at_refinery:
            thanks to C.C.A. And thankfully, without a memory wipe.
    }

    #char:--
    But most importantly, you got your payment. Just a little bit longer...

    {UnlockAchievement("ELDRITCH_WORK_CONDITIONS")}

-> EVENT_END