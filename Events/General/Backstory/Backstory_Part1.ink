===E_Backstory_Part1===

#scope: Backstory
#location: Skyways
#intensity: Low

/* Synopsis:

Na volta da sua primeira Missão com a caravana (Skyways), você recebe uma ligação do Coiote, te avisando "falta um mês pra você pagar o que deve".
Você pode se abrir ou mentir sobre a situação para um membro da sua crew.

*/

#char:--
You're making your way back to the Capy-Bar.

#char:--
You should be sleeping - yet insomnia hits you hard this night.

#char:--
You've just completed your first delivery as a caravaneer, a captain at that.

#char:--
Still, you're filled with self-doubt.

#char:--
Thoughts come and go incessantly while you toss and turn in bed, reminding of your life in the surface and your reason to be here.

~ ScreenFlash("White", -1)

#char:--
You're suddenly interrupted by a tune coming from the chamber closest to you - the cockpit.

//TODO SFX: Efeito estilo transmissão de rádio

#char:--
It sounds like a transmission request from the communications terminal.

#char:--
Who could it be <i>at this hour</i>?

#char:--
You tiptoe to the cockpit and look at the screen.

~ ScreenFlash("White", -1)

#char:--
<color=green1><i>The caller's location is unknown.</i></color> {PlaySFX("Mistery3")} {PlayMusic("Marimbondo")}

#char:--
You lower the system's volume before answering the call.

#char:Marimbondo_neutral_hooded_hologram|L
Greetings, {g_name}. Didn't wake you, did I? Just wanted to catch up after all this time! {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")} 

#char:Marimbondo_neutral_hooded_hologram|L
Let's have a... <waitfor=0.35><wiggle>quick chat</wiggle>, shall we?

#char:--
The sight of the one looking at you through the screen is enough to make you feel uneasy.

#char:Marimbondo_neutral_hooded_hologram|L
It's almost time. How're your preparations going?

#char:Marimbondo_neutral_hooded_hologram|L
<i>You better be ready,</i> little one<waitfor=0.5> - there's only a couple of months left.

    + [ANGRY¬You're fed up with threats.>>]
        #char:--
        Your blood is boiling.

        #char:--
        You tell Marimbondo you've got no time for vague talk and petty provocation.

        #char:Marimbondo_neutral_hooded_hologram|L
        <wave>Aaaaaww.</wave> Look at you, feeling brave and all.

        #char:Marimbondo_neutral_hooded_hologram|L
        Watch your words, brat, before I raise your debt as a compensation for the "moral damages". {Shake("Big Face", 1, 0.5)} {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}


    + [BARGAIN¬Try to extend the deadline.>>]
        #char:--
        It's probably too late, but this might be your last chance to bargain.

        #char:--
        You ask him to give you an extra month - even if it means paying a bit more for the trouble.

        #char:Marimbondo_neutral_hooded_hologram|L
        <bounce>Ha</bounce>! You've gotta be <i>kidding</i>! {Emotion("WaveOut", "ea2929")} {PlaySFX("Funny1")}

        #char:Marimbondo_neutral_hooded_hologram|L
        Did you really think I would buy your nonsense?

        #char:Marimbondo_neutral_hooded_hologram|L
        I was merciful enough to offer you a good price and a six-month deadline.

        #char:Marimbondo_neutral_hooded_hologram|L
        Don't like it? Well, should've thought better before taking the deal.

    + [FEAR¬You're taken by surprise.>>]
        #char:--
        You freeze for a moment, but try to compose yourself. 

        #char:--
        You reassure Marimbondo that he'll get the money as agreed.

        #char:Marimbondo_neutral_hooded_hologram|L
        <wave>Really</wave>, now? You don't sound so sure, brat.

        #char:Marimbondo_neutral_hooded_hologram|L
        Not as sure as you sounded six months ago, at least.
        
        #char:Marimbondo_neutral_hooded_hologram|L
        I expect no surprises when I come to collect my money, <i>understand</i>? {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}
        
    -   #char:Marimbondo_neutral_hooded_hologram|L
        <wave>Aaaaanyway...</wave>
        
        #char:Marimbondo_neutral_hooded_hologram|L
        You're going to hear from me again <wiggle>soon</wiggle>.
        
        #char:Marimbondo_neutral_hooded_hologram|L
        Until next time!

        {Blink("Big Face", 1, 0.5, "white")}

        #char:--
        Marimbondo hangs up and you're left alone with your feelings and a headache. {PlaySFX("Hologram")} {StopMusic()}

        + [RELAX¬Try to calm yourself.>>]
            #char:--
            You take a deep breath and try to calm yourself.

            #char:--
            You might be far from having all the Grana, but that was just your first job. 

            #char:--
            You still have time to more deliveries before the deadline. 
            
            #char:--
            It's going to be fine.
            
            #char:--
            <i>.<waitfor=0.5>.<waitfor=0.5>.<waitfor=0.5>Isn't it?</i>

        + [FRUSTRATED¬You feel heavy.>>]
            #char:--
            You can't help but feel frustrated.

            #char:--
            You lean your body against the wall, but the weight of your problems pulls you to the ground.

            #char:--
            This was only the first job, though. You still have time for others.

            #char:--
            Will that be enough to earn the Grana you need?

        -   #char:--
            Your thoughts are briefly interrupted by a sneeze coming from the corridor. {Shake("All", 0.5, 0.5)} 

            //TODO SFX Espirro

            ~ ScreenFlash("White", -1)

            #char:--
            You open the door to find {~Kleber. -> kleber_eavesdrops |Jackie. -> jackie_eavesdrops |Barto. -> barto_eavesdrops} {PlaySFX("Mistery3")}



    = barto_eavesdrops

        #char:--
        <waitfor=0.5>Your cook is standing a bit awkwardly, but quickly fixes his posture with a forced smile. 

        #char:Barto_neutral_neutral|L
        Oh, hello, {g_name}. 
        
        #char:Barto_neutral_neutral|L
        I did not know you were awake.

        #char:Barto_neutral_sad|L
        Do not mind me, I was just on my way to the kitchen. 
        
        #char:Barto_happy_sad|L
        Late night cravings, if you get what I mean. {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer1")}

        #char:Barto_neutral_angry|L
        If you do not mind me asking, is there anything keeping you awake?

        + (lie_about_marimbondo) [LIE¬Come up with an excuse.>>]

            #char:--
            Better not involve the crew in your problems. 

            #char:--
            You try to brush it off it by saying it's just a personal matter.

            #char:--
            Nothing he should worry about, really.

            {

                - g_affinity_Barto >= -1:

                    #char:Barto_neutral_neutral|L
                    ...<waitfor=0.5>I see. 
                    
                    #char:Barto_neutral_sad|L
                    I apologize for being nosy, then.

                    #char:Barto_neutral_neutral|L
                    You should try to get some sleep, though.

                    #char:Barto_neutral_sad|L
                    I will prepare something nice for you in the morning.  

                    #char:Barto_happy_angry|L
                    Eating warm food is <wiggle>always</wiggle> a good way to cheer up! {Emotion("Explosion", "white")} {PlaySFX("Shimmer1")}

                    #char:Barto_neutral_sad|L
                    Now, if you do not mind, I shall get going. My stomach is growling. {Shake("Big Face", 1, 0.5)}

                    //TODO SFX Estômago roncando

                    #char:--
                    You nod and go back to your cabin. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    As you lay in bed, you can't help but feel a bit guilty.

                    #char:--
                    They will find out, eventually.

                    #char:--
                    But maybe it's best if you focus on completing another delivery first.

                - else:

                    #char:Barto_neutral_neutral|L
                    ...<waitfor=0.5>I see. 
                    
                    #char:Barto_neutral_sad|L
                    I apologize for being nosy, although I need to be frank. 

                    #char:Barto_neutral_angry|L
                    You should be mindful that as a caravaneer, you do not work alone. We are a team. 
                    
                    #char:Barto_neutral_sad|L
                    I hope your personal problems do not bring <i>us</i> any complications. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

                    #char:--
                    Barto turns away and goes to the kitchen. You retreat to your cabin. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    As you lay in bed, you can't help but feel uneasy at Barto's words.

                    #char:--
                    You feel like you won't be able to hide the truth for too long.

                    #char:--
                    But now it's time to focus on completing a new delivery.
                    
            }

        -> MISSION_END

        + (talk_about_marimbondo) [TALK¬Tell the truth.>>]

            #char:--
            There is no use hiding it. They would eventually find out, and it's best if you open up.

            #char:--
            You try to sum up the situation to Barto. How you got to the Skies, and what it cost.

            ~ FadeTo("black", 1, 1)

            #char:--
            You reassure him you will be telling the others, when the right moment comes.

            {

                - g_affinity_Barto >= -1:

                    #char:--
                    Barto seems to lose his balance for a moment, leaning his arm against the wall. 

                    #char:Barto_fear_sad|L
                    <shake>...A loan shark!?</shake> {Emotion("Spiral", "53e66b")} {PlaySFX("Mistery2")}

                    #char:Barto_fear_sad|L
                    <i>Oh my</i>... This isn't what I joined a caravan for!

                    #char:Barto_angry_neutral|L
                    I'm the type to avoid conflict as much as possible, to be honest.

                    #char:Barto_neutral_neutral|L
                    Still, it wouldn't be right for me to quit on you all.

                    #char:Barto_neutral_angry|L
                    As a cook, I'm responsible for everyone's well-being, in a way.
                    
                    #char:Barto_neutral_sad|L
                    I will help as I can, Captain. Just promise me you'll be honest with the others too.

                    #char:Barto_neutral_sad|L
                    Now if you don't mind, I'll get going. My stomach is growling. {Shake("Big Face", 1, 0.5)}

                    //TODO SFX Estômago roncando

                    #char:--
                    You go back to your bed, feeling a bit more relieved. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    The others will know eventually. You hope they stay by your side too.

                    #char:--
                    But now it's time to focus on completing a new delivery.
                                        

                - else:

                    #char:--
                    Barto seems to lose his balance for a moment, leaning his arm against the wall. 

                    #char:Barto_fear_sad|L
                    <shake>...A loan shark!?</shake> {Emotion("Spiral", "53e66b")} {PlaySFX("Mistery2")}

                    #char:Barto_fear_sad|L
                    <i>Oh my</i>... This isn't what I joined a caravan for!

                    #char:Barto_fear_neutral|L
                    I would definitely be safer back in the Mandioca Cooks Guild.

                    #char:Barto_fear_sad|L
                    E-excuse me, I have to eat before I faint. {Emotion("Spiral", "53e66b")} {Shake("Big Face", 1, 0.5)}

                    //TODO SFX Estômago roncando

                    ~ g_affinity_Barto -= g_affinityChangeLow

                    #char:--
                    You go back to your cabin, feeling heavier than before. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    You wouldn't want anyone involved in your own troubles - but now that you're in a team, it seems inevitable.

                    #char:--
                    Maybe you should open up to the others. But you don't want anyone else to get anxious.

                    #char:--
                    For the time being, you should focus on completing another delivery.
            }

        -> MISSION_END



    = jackie_eavesdrops

        #char:--
        <waitfor=0.5>The engineer gives you a worried stare, fidgeting with her hands.

        #char:Jackie_surprised_fear|L
        Hey, {g_name}. Is everything okay...? {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer2")}
        
        #char:Jackie_surprised_sad|L
        I'm a light sleeper. Woke up as soon as I heard the noise coming from the cockpit.

        + (lie_about_marimbondo) [LIE¬Come up with an excuse.>>]

            #char:--
            Better not to involve the crew in your problems. 

            #char:--
            You try to brush it off by saying it's just a personal matter.

            #char:--
            Nothing she should worry about, really.

            {

                - g_affinity_Jackie >= -1:

                    #char:Jackie_neutral_neutral|L
                    ...<waitfor=0.5>Ok, got it. 
                    
                    #char:Jackie_happy_neutral|L
                    I'll respect your space, but I just wanted you to know that I'm here if you want to vent or open up at another time.

                    #char:Jackie_neutral_neutral|L
                    After all, we're all in the same boat.

                    #char:Jackie_happy_neutral|L
                    Or should I say, in the same <wave>Skyship</wave>? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

                    #char:Jackie_neutral_neutral|L
                    Anyways, I'd better get going. I'm still feeling sleepy.

                    #char:Jackie_neutral_neutral|L
                    Night, {g_name}.

                    #char:--
                    You go back to your cabin right after. {StopMusic()}

                    ~ FadeTo("black", 1, 1)
                    
                    #char:--
                    As you lay your head on your pillow, you can't help but feel a bit guilty.

                    #char:--
                    Well, your crew will find out, eventually.

                    #char:--
                    But maybe it's best if you focus on completing a new delivery for now.


                - else:

                    #char:Jackie_sad_neutral|L
                    ...<waitfor=0.5>Ok, got it.

                    #char:Jackie_sad_neutral|L
                    I will respect your space.

                    #char:Jackie_sad_sad|L
                    But if you want some advice, I think the best work relationships are built on trust.

                    #char:Jackie_sad_sad|L
                    You don't have to talk if you don't feel like it, but we might be able to help with whatever it is.

                    #char:Jackie_sad_sad|L
                    Well, I'll leave you too it. Good night, Captain.

                    #char:--
                    As you go back to your cabin, you can't help but feel agitated. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    You feel like you won't be able to hide the truth for too long.

                    #char:--
                    But maybe it's best if you focus on completing a new delivery for now.
            }

        -> MISSION_END

        + (talk_about_marimbondo) [TALK¬Tell the truth.>>]
            #char:--
            There is no use in hiding. They would eventually find out, and its best if you open up.

            #char:--
            You try to sum up the situation to Jackie. How you got to the Skies, and what it cost.
 
            ~ FadeTo("black", 1, 1)

            #char:--
            You reassure her you will be telling the others, when the right moment comes.

            {

                - g_affinity_Jackie >= -1:

                    #char:Jackie_sad_sad|L
                    I've heard some stuff about the surface, but they were mostly tall tales. 
                    
                    #char:Jackie_sad_sad|L
                    You must have been desperate... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                    
                    #char:Jackie_neutral_neutral|L
                    But you were also very brave for your family. I respect that.

                    #char:Jackie_neutral_neutral|L
                    I'm glad you opened up, {g_name}. I really do.

                    #char:Jackie_neutral_neutral|L
                    That said, I'll do my best to help!

                    #char:Jackie_happy_neutral|L
                    As the 41-Bis's engineer, I'll make sure our next deliveries run smoothly! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                    #char:Jackie_neutral_angry|L
                    Ah. But I believe Barto and Kleber deserve to know, too.

                    #char:Jackie_neutral_angry|L
                    If everyone is aware, we'll be more effective.

                    #char:Jackie_neutral_neutral|L
                    Well, I should try to go back to sleep. Good night, {g_name}.
   
                    #char:--
                    You go back to your bed, feeling grateful for Jackie's words. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    She seems right. The others should know. You'll tell them eventually.

                    #char:--
                    But first, you should focus on completing another delivery.
                    
                - else:

                    #char:--
                    She lets out a big sigh.

                    #char:Jackie_neutral_neutral|L
                    I'm glad you told me the truth, {g_name}. I really do.

                    #char:Jackie_sad_sad|L
                    But I think things would've been easier if you had opened up from the start. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    ~ g_affinity_Jackie -= g_affinityChangeLow

                    #char:Jackie_neutral_neutral|L
                    Still, my sense of duty says I should help. We're a team, after all!

                    #char:Jackie_neutral_neutral|L
                    I hope you can talk to the others soon. They might be able to help, too.

                    #char:--
                    She turns towards the corridor.

                    #char:Jackie_neutral_neutral|L
                    Have a good night, Captain.

                    #char:--
                    You go back to your cabin, still feeling a bit tense. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    Maybe Jackie is right. The others deserve to know.

                    #char:--
                    But first, you should focus on completing another delivery.
            }

          -> MISSION_END



    = kleber_eavesdrops

        #char:--
        <waitfor=0.5>The pilot has his arms crossed while he looks at you, raising an eyebrow.

        #char:Kleber_neutral_neutral|L
        I woke up with the transmission noise.

        #char:Kleber_happy_sad|L
        Guess a pilot is always alert. <waitfor=0.5>For better or worse.

        #char:Kleber_neutral_sad|L
        Got anything I should know about?

        + (lie_about_marimbondo) [LIE¬Come up with an excuse.>>]
            #char:--
            Better not to involve the crew in your problems. 

            #char:--
            You try to brush it off by saying it's just a personal matter.

            #char:--
            Nothing he should worry about, really.

            {
                - g_affinity_Kleber >= -1:

                    #char:Kleber_neutral_neutral|L
                    C'mon, Cap. No need to lie.

                    #char:Kleber_neutral_neutral|L
                    I had some trouble with debts in the past myself... 
                    
                    #char:Kleber_sad_sad|L
                    I know how things can get tough. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    #char:Kleber_neutral_neutral|L
                    But hey, look on the bright side<waitfor=0.35> - the caravan life might be harsh, but it pays well for the trouble.

                    #char:Kleber_neutral_neutral|L
                    With our help, you'll pay that debt in no time! You'll see! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

                    #char:Kleber_neutral_sad|L
                    I just think you should tell the other folks about it when you can, though.
                    
                    #char:Kleber_neutral_neutral|L
                    Now if you excuse me, I'd better go back to sleep.

                    #char:--
                    You go back to your cabin, feeling less tense. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    Kleber was surprinsingly cooler about it than you'd expected. 
                    
                    #char:--
                    At least you found some comfort in his words.

                    #char:--
                    Soon you'll have to speak to the others, though. 

                    #char:--
                    But first, you should focus on completing another delivery.
                    

                - else:
                    #char:Kleber_angry_neutral|L
                    No need to lie to my face, Cap. {Emotion("WaveOut", "ea2929")}

                    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

                    #char:Kleber_sad_sad|L
                    I've gone through similar stuff myself. More times than I wanted to. 

                    #char:Kleber_sad_sad|L
                    And I hoped I wouldn't have to go through all that again when I decided to become a caravaneer. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    ~ g_affinity_Kleber -= g_affinityChangeHigh

                    #char:Kleber_neutral_sad|L
                    But yeah, guess it's too late to turn back, huh?

                    #char:Kleber_neutral_sad|L
                    Might be good to tell the other folks about it when you can, though.

                    #char:Kleber_neutral_sad|L
                    ...<waitfor=0.5>Well, I'd better go back to sleep. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    You spent the rest of the night trying to go back to sleep, to no success.

                    #char:--
                    Maybe you should open up to the others. But you don't want anyone else to get anxious.

                    #char:--
                    For the time being, maybe you should focus on completing another delivery.
            }

        -> MISSION_END

        + (talk_about_marimbondo) [TALK¬Tell the truth.>>]
            #char:--
            There is no use in hiding. They would eventually find out, and it's best if you open up.

            #char:--
            You try to sum up the situation to Kleber. How you got to the Skies, and what it cost.
 
            ~ FadeTo("black", 1, 1)

            #char:--
            You reassure him you will be telling the others, when the right moment comes.

            {

                - g_affinity_Kleber >= -1:
                    #char:Kleber_neutral_sad|L
                    To be fair, I could tell what was happening just from passing by.

                    #char:Kleber_sad_sad|L
                    I'd be lying if I said I've never had trouble with money. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    #char:Kleber_sad_sad|L
                    I don't know much about the surface, but I imagine your life was even harder.

                    #char:Kleber_neutral_happy|L
                    Thanks for opening up, {g_name}. Oh, and you can count on me for help!
                    
                    #char:Kleber_neutral_neutral|L
                    I do think the others should know about this, though.

                    #char:Kleber_neutral_sad|L
                    But hey, take your time. Just don't forget that we're all in this Skyship together!
      
                    #char:--
                    He pats your back before going back to his bed.
                    
                    #char:--
                    You go back to your cabin, anxiety creeping up. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    Perhaps you should really speak to the others.

                    #char:--
                    But first, you should focus on completing another delivery.

                - else:
                    #char:Kleber_neutral_neutral|L
                    Yeah, but I could tell what was happening just from passing by.

                    #char:Kleber_sad_neutral|L
                    I'd be lying if I said I've never had trouble with money. 

                    #char:Kleber_sad_sad|L
                    You have a bit of a mess on your hands, Cap - and I've had enough headache dealing with my own. {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

                    #char:Kleber_sad_sad|L
                    Not gonna lie, I'd probably have thought twice before accepting this job if I knew.
                    
                    ~ g_affinity_Kleber -= g_affinityChangeLow

                    #char:Kleber_neutral_sad|L
                    But yeah, guess it's too late to turn back, huh?

                    #char:Kleber_neutral_sad|L
                    Might be good to tell the other folks about it when you can, though.
                    
                    #char:Kleber_sad_sad|L
                    ...<waitfor=0.5>Well, I'd better go back to sleep. {StopMusic()}

                    ~ FadeTo("black", 1, 1)

                    #char:--
                    You spent the rest of the night trying to go back to sleep, to no success.

                    #char:--
                    Maybe you should open up to the others. But you don't want anyone else to get anxious.

                    #char:--
                    For the time being, maybe you should focus on completing another delivery.
            }

        -> MISSION_END
    