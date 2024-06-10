===E_Mission_Final===

#tier: Expert
#scope: Mission

VAR bisDamage = 1

VAR yourDamage = 0
VAR leftCapangaHP = 2
VAR rightCapangaHP = 2

VAR paidDebt = false

VAR canceled_mafagafo = false
VAR canceled_economicon = false

VAR barto_died = false
VAR jackie_died = false
VAR kleber_died = false

VAR 41_bis_exploded = false

VAR marimbondoState = ""

~ temp storyDirection = -> part1

{
    - part2 > 0:
        ~ storyDirection = -> part3
    - part1 > 0:
        ~ storyDirection = -> part2
}

-> storyDirection



=part1

#location: Skyways

~ g_time = g_deadline_M5
~ g_timeLimit = g_deadline_M5

//A crew te apoia e faz a entrega com você.
#char:--
You all huddle in the cockpit, nervousness creeping in.

#char:Kleber_sad_sad|L
<wave>Hooo</wave>, man. Guess we're between a rock and a hard place, huh. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

//AFFINITY PASS
{
    - g_affinity_Kleber >= 50:
        #char:Kleber_happy_happy|L
        Or I guess you could say... we've got a Surface problem!

    - g_affinity_Kleber >= -10 && g_affinity_Kleber < 50:
        #char:Kleber_neutral_happy|L
        Still, we can think of a way out of this! What's one more near-death experience for this crew, right?

    - g_affinity_Kleber < -10 && g_affinity_Kleber > -50:
        #char:Kleber_sad_sad|L
        Thought I'd be used to that by now. Maybe we all would.

    - g_affinity_Kleber <= -50:
        #char:Kleber_angry_sad|L
        Just another day working under {g_name}.
}

#char:Barto_angry_angry|R
This is not the time for <>

//AFFINITY PASS
{
    - g_affinity_Kleber >= -10:
        #char:Barto_angry_angry|R
        jokes, <>

    - else:
        snark,  <>
}

Kleber! We're in more danger than ever! {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

//AFFINITY PASS
{
    - g_affinity_Kleber >= -10:
        #char:Kleber_happy_sad|L
        Which is exactly why it's the <i>best</i> time for jokes, chef! Gotta lighten that mood somehow! {Emotion("Shine", "ffb71b")} {PlaySFX("Funny2")} {PlaySFX("Shimmer1")}

        {
            - g_affinity_Kleber >= 50:
                #char:Kleber_neutral_sad|L
                Plus, if even I can get out of debt, I'm sure we can all help a friend out with that!
        }

        {
            - g_affinity_Jackie >= -10:
                #char:Jackie_neutral_neutral|L
                He's not wrong, Barto. We can't get discouraged now.

            - else:
                #char:Jackie_sad_sad|L
                Good to see at least one of us is in high spirits.
        }

    - else:
        #char:Kleber_angry_sad|L
        Oh, gimme a break. Not much I can do to make this mood better. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

        {
            - g_affinity_Jackie >= -10:
                #char:Jackie_sad_sad|L
                We could try, at least.

            - else:
                #char:Jackie_sad_sad|L
                Yeah, if anything, we'd be lying to ourselves. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
        }
}

//AFFINITY PASS
{
    - g_affinity_Jackie >= 50:
        #char:Jackie_happy_happy|L
        We've been through worse! But {g_name} always helped us through! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

        #char:Jackie_happy_sad|L
        Besides... I've kinda enjoyed traveling with you all too much to quit now.

    - g_affinity_Jackie >= -10 && g_affinity_Jackie < 50:
        #char:Jackie_neutral_happy|L
        Come on, we're a crew! I'm sure we'll find a way to fix this mess! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

    - g_affinity_Jackie < -10 && g_affinity_Jackie > -50:
        #char:Jackie_sad_sad|L
        I'm not sure I have the energy for that right now. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    - g_affinity_Jackie <= -50:
        #char:Jackie_angry_sad|L
        After everything you've put us through, {g_name}, I'm not really thrilled for this ride. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
}

//AFFINITY PASS
{
    - g_affinity_Jackie >= -10:
        {
            - g_affinity_Barto >= -10:
                #char:Barto_neutral_sad|R
                Well, you are right about one thing. We are in this together. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

            - else:
                #char:Barto_fear_sad|R
                It's hard to agree with that when our own lives are in danger! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}
        }

    - else:
        {
            - g_affinity_Barto >= -10:
                #char:Barto_surprised_angry|R
                Please. I know things seem bleak, but we cannot leave our Captain like that! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            - else:
                #char:Barto_sad_sad|R
                I am inclined to agree. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }
}

//AFFINITY PASS
{
    - g_affinity_Barto >= 50:
        #char:Barto_happy_angry|R
        Besides, I have yet to make good on my Sky Cuisine lessons for you, {g_name}. {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

    - g_affinity_Barto >= -10 && g_affinity_Barto < 50:
        #char:Barto_neutral_angry|R
        And I am the one who provides the tripulation's fuel. This cook will not back down! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

    - g_affinity_Barto < -10 && g_affinity_Barto > -50:
        #char:Barto_fear_sad|R
        I-I am just a simple cook. I never wanted to be involved in something like this! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

    - g_affinity_Barto <= -50:
        #char:Barto_angry_sad|R
        And if I am being honest, you have not given me reason to be confident in you solving this, {g_name}!

        #char:Barto_angry_angry|R
        To say the <i>least</i>. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}
}

{
    - g_affinity_Barto >= -10:
        + [HAPPY¬You're happy to have Barto with you.>>]
            #char:--
            You tell Barto how happy you are to have him stick by your side.

            #char:Barto_happy_happy|R
            Come now. It would not do for us to desert our captain. {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

        -> final_think_of_plans
}

{
    - g_affinity_Jackie >= -10:
        + [MOTIVATE¬You can do this!>>]
            #char:--
            Jackie's right. If you managed all those deliveries, you can complete this one with your crew.

            #char:Jackie_happy_happy|L
            That's more like it, Captain! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

        -> final_think_of_plans
}

{
    - g_affinity_Kleber >= -10:
        + [JOKE¬Looks like they finally agreed with each other!>>]
            #char:--
            Well, if they're all agreeing on something for once, who are you to sour the mood?

            #char:Kleber_happy_angry|L 
            See? That's the spirit! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

        -> final_think_of_plans
}

{
    - g_affinity_Barto < -10 || g_affinity_Jackie < -10 || g_affinity_Kleber < -10:
        + [RELAX¬Breathe. You have to do this.>>]
            #char:--
            Before, you had to deal with Marimbondo alone.

            #char:--
            Now, you have three other people with you — and they've helped you along so far.

            {
                - g_affinity_Barto >= 0 && g_affinity_Barto >= g_affinity_Jackie && g_affinity_Barto >= g_affinity_Kleber:
                    #char:Barto_neutral_neutral|R
                    Indeed, {g_name}. We will find a way.

                - g_affinity_Jackie >= 0 && g_affinity_Jackie >= g_affinity_Barto && g_affinity_Jackie >= g_affinity_Kleber:
                    #char:Jackie_neutral_neutral|L
                    Yep! And we'll keep helping you the rest of the way, {g_name}!

                - g_affinity_Kleber >= 0 && g_affinity_Kleber >= g_affinity_Barto && g_affinity_Kleber >= g_affinity_Jackie:
                    #char:Kleber_neutral_neutral|L
                    What can I say? I'm a pilot, I gotta take you to where you wanna go, {g_name}!
            }

        -> final_think_of_plans
}

{
    - (g_affinity_Barto < -10 && (g_affinity_Jackie < -10 || g_affinity_Kleber < -10)) || (g_affinity_Jackie < -10 && g_affinity_Kleber < -10):
        + [FEAR¬...Can you even do this?>>]
            #char:--
            Even with their encouragement, your anxiety does not diminish.

            {
                - g_affinity_Barto >= g_affinity_Jackie && g_affinity_Barto >= g_affinity_Kleber:
                    #char:Barto_sad_sad|R
                    I understand, {g_name}. But please, we must persevere. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                - g_affinity_Jackie >= g_affinity_Barto && g_affinity_Jackie >= g_affinity_Kleber:
                    #char:Jackie_sad_sad|L
                    I know things look bad, but you need to believe in yourself, {g_name}. And your crew! {Emotion("WaveIn", "0a4de8")}  {PlaySFX("Bad1")}

                - g_affinity_Kleber >= g_affinity_Barto && g_affinity_Kleber >= g_affinity_Jackie:
                    #char:Kleber_sad_sad|L
                    Look, I've told you: I know what it's like. But there's always a way out. {Emotion("WaveIn", "0a4de8")}  {PlaySFX("Bad1")}
            }

            #char:--
            Well, you can try to think of a solution.

        -> final_think_of_plans
}

{
    - g_affinity_Barto < -10 && g_affinity_Jackie < -10 && g_affinity_Kleber < -10:
        + [FRUSTRATED¬You CAN'T do this.>>]
            #char:--
            You've dragged them into your mess. If only you had never taken the loan...

            #char:--
            But it's too late to regret it now. You have to think of a solution.

        -> final_think_of_plans
}




= final_think_of_plans

//Considerando o que rolou até agora, vocês acham melhor ter um plano de contingência pra lidar com o Marimbondo, enquanto vão em direção à superfície.
#char:--
You're not dealing with Marimbondo unprepared. He's bound to stab you in the back. {PlayMusic("Decision")}

#char:Kleber_sad_sad|L
Yeah, I know these loan shark types. They don't let you go that easily. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")} {PlaySFX("LightWoosh")}

#char:Kleber_sad_angry|L
Why would they, when they can keep sucking your wallet dry?

#char:Kleber_sad_sad|L
You saw what happened with Silva. That's pretty much why I had to ditch the Heights.

{
    - paidTheDebt == true:
        #char:Kleber_fear_sad|L
        If you hadn't paid my debt, <>

    - else:
        #char:Kleber_fear_sad|L
        If we hadn't escaped, <>
}

I'd have ended up working for him again. Against my will. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

#char:--
You better think of something with the crew. What do you have at your disposal?

{
    - g_mafagafo_was_delivered || g_stayed_at_refinery || (g_outran_azurian_pursuers && g_helped_horacio_escape):
        {
            - g_mafagafo_was_delivered:
                //Bartô se lembra do apito de criaturas da superfície - e que os Mafagafos são animais da superfície. Ele sugere usar o apito se as coisas ficarem feias.
                #char:Barto_neutral_angry|R
                What about the whistle we received from Rosana? She mentioned it could work with Mafagafos from the Surface too. {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

                #char:Barto_sad_sad|R
                You know I <i>really</i> dislike exploiting animals like that, but... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                #char:Jackie_sad_sad|L
                Desperate times, desperate measures, right? 

                #char:--
                Maybe you could use the whistle to cause a big ruckus in case a fight breaks out. But otherwise, you doubt these things can be tamed in any way.

                #char:Jackie_neutral_angry|L
                Right. Let's keep that in mind.
        }

        {
            - g_stayed_at_refinery:
                //Kleber se lembra da cópia de bolso do Economicon e se pergunta se é possível deixar o Marimbondo maluco também.
                #char:Kleber_happy_happy|L
                Oh, I just remembered! We still have that pocket book edition of the Economicon! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:Barto_fear_angry|R
                <shake>You kept that thing!?</shake> {Shake("Big Face", 1, 0.5)} {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit2")} {PlaySFX("LightWoosh")}

                #char:Kleber_happy_happy|L
                Hey, if we can drive that smuggler crazy too, maybe we can use it to our advantage!

                #char:--
                That's not a bad idea. So long as you don't have to sign anything...

                #char:Barto_surprised_sad|R
                I believe we would need to do some kind of ritual. Maybe if we read a protocol, we can get the Abyss to intervene for us?

                #char:Barto_fear_angry|R
                Still, I would not recommend using it unless absolutely necessary. {Emotion("Spiral", "53e66b")} {PlaySFX("Mistery2")}
        }

        {
            - g_outran_azurian_pursuers && g_helped_horacio_escape:
                //Jackie se lembra do Angra Crystal que Horácio deixou com vocês e diz que talvez consiga fazer alguma coisa pra vocês voltarem alguns segundos em caso de emergência.
                #char:Jackie_neutral_angry|L
                What I can recommend is using the Angra Crystal Horacio left with us!

                #char:Jackie_happy_angry|L
                With his blueprints, I think I can make a small replica of his watch somehow. A pocket version! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                #char:Kleber_happy_happy|L
                Now <wiggle>that's</wiggle> our engineer! So if something bad happens, we just turn back the clock! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

                #char:Jackie_neutral_neutral|L
                We should be cautious, though. With the size of that crystal, it will just bring us back a few seconds.

                #char:--
                Well, a few seconds may be enough to save you from near death.
        }

        //~ DayChange()

    -> final_about_you

    - else:
        //Cada crewmate sugere um plano. Jackie fala em dar um upgrade na turret da nave.
        //Bartô sugere preparar algum tipo de armadilha usando o Amago como 'isca' pro Marimbondo. Kleber sugere sabotar a carga como na Crystals.

        #char:Jackie_happy_angry|L
        I could try upgrading our gun turret! I think can get it done before we arrive in Surface. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

        #char:Jackie_neutral_sad|L
        Mind you, it still won't turn the 41-Bis into a war machine, but it can help us return fire if needed.

        #char:Barto_neutral_neutral|R
        Well, if Marimbondo wants the Red Oil, we could try to play around that fact.

        #char:Barto_neutral_angry|R
        A trap would be a good call, I believe. Maybe opening the cargo hold when we get near his ship?

        #char:Barto_neutral_angry|R
        The Red Oil itself would work as the bait.

        #char:Kleber_happy_sad|L
        What if we switched the cargo? Give that damn mosquito something else to drink? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        #char:Kleber_happy_angry|L
        If it's like you said, {g_name}, he probably won't open the barrels for fear that the oil leaks!

        #char:--
        All of them are valid options. But you probably only have time to prepare for one.

        + (final_plan_barto) [BARTO¬Use the Red Oil as bait.>>]
            //Kleber concorda rindo, satisfeito em sua ideia da Mafagafo finalmente ter influenciado. Ele recomenda destruir a carga quando o Marimbondo for pegar.

            #char:--
            You agree with Barto's plan of using the Red Oil as bait.

            ~ g_affinity_Barto += g_affinityChangeMid

            #char:Barto_neutral_neutral|R
            Indeed. It is unlikely that Marimbondo would attack us before the cargo is safe and sound with him.

            #char:Kleber_happy_sad|L
            Huh, I just realized... My idea from our Mafagafo-hunting days is finally bearing fruit, eh? Fancing traps now, Barto? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

            //AFFINITY PASS
            {
                - g_affinity_Barto_Kleber >= 25:
                    #char:Barto_surprised_sad|R
                    ...I suppose you did rub off on me a bit. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                - else:
                    #char:Barto_angry_angry|R
                    ...Marimbondo deserves it. The poor Mafagafo didn't. {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}
            }

            #char:Kleber_neutral_neutral|L
            I think our best bet is destroying the barrels while Marimbondo and his goons are distracted with the Red Oil. 
            
            #char:Kleber_neutral_happy|L
            A few good shots should do.

            #char:Barto_surprised_angry|R
            But one of us would have to stay behind to fire the turret, no?

            #char:Jackie_neutral_angry|L
            I think I can set it up to fire remotely.

            #char:Jackie_happy_neutral|L
            That way we can all be outside and Marimbondo won't suspect anything!

            #char:Barto_neutral_angry|R
            I see. That said, let us try to keep it non-lethal.

            #char:Barto_surprised_sad|R
            I know these are dangerous criminals, but still... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            //AFFINITY PASS
            {
                - g_affinity_Jackie_Barto >= 0:
                    #char:Jackie_neutral_neutral|L
                    You know, after everything we've been through, I guess I've grown to appreciate your pacifism.

                - else:
                    #char:Jackie_sad_angry|L
                    Really? You're worried about the smugglers? What about us? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
            }

            #char:Kleber_angry_angry|L
            Yeah, yeah, let's worry about our own hides first, 'kay? Less talking, more blowing up barrels of oil. {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

            #char:--
            That should be a great wrench in Marimbondo's plans. After ironing out the details, you and the crew get to work.

            //~ DayChange()

        -> final_about_you

        + (final_plan_jackie) [JACKIE¬Upgrade the turret.>>]

            #char:--
            You agree with Jackie's plan of upgrading the turret.

            ~ g_affinity_Jackie += g_affinityChangeMid

            //AFFINITY PASS

            {   
                - g_affinity_Jackie >= 0:

                    #char:Jackie_happy_happy|L
                    I knew I could count on you, {g_name}!
            
                - else:
                    #char:Jackie_neutral_neutral|L
                    Good.
                
            }

            #char:Jackie_happy_happy|L
            Phew, I'm really glad I've been gathering the right parts! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            //AFFINITY PASS
            {
                - g_affinity_Kleber_Jackie >= 0:
                    #char:Kleber_neutral_sad|L
                    C'mon, be honest, Jackie. You just wanted to upgrade our ship regardless, right?

                - else:
                    #char:Kleber_sad_sad|L
                    Not sure a single turret will be enough to save our hides.
            }

            //AFFINITY PASS
            {
                - g_affinity_Barto_Jackie >= 0:
                    #char:Barto_neutral_angry|R
                    I suppose that is a lot like you. Who knows how many conundrums we have avoided because of your fixes.

                - else:
                    #char:Barto_fear_angry|R
                    Of course you would come up with that idea...
            }

            #char:Barto_surprised_angry|R
            But one of us would have to stay behind to fire the turret, no?

            #char:Jackie_neutral_angry|L
            I think I can set it up to fire remotely.

            #char:Jackie_happy_neutral|L
            That way we can all be outside and Marimbondo won't suspect anything!

            #char:Barto_neutral_angry|R
            I see. That said, let us try to keep it non-lethal.

            #char:Barto_surprised_sad|R
            I know these are dangerous criminals, but still... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            #char:Kleber_happy_angry|L
            If we're talking about scaring them off, what about some firebombs? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit1")}

            #char:Jackie_happy_happy|L
            Right, right! I know <wiggle>just</wiggle> the mix for that! 

            #char:Kleber_fear_angry|L
            Oh, Skies, you're making that thing <>

            {
                - E_Crew_DeuRuim.deu_ruim_party:
                    again, <>

                - else:
                    now, <>
            }
            
            aren't you? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit2")}

            #char:Jackie_happy_angry|L
            "When <i>nothing</i> happens, drink a Deu Ruim. Then you bet <i>something</i> will!" {Emotion("Shine", "ffb71b")} {PlaySFX("Funny2")}
            
            #char:Jackie_happy_neutral|L
            Now, Kleber still owes me money from Caravan Network Gambling and Barto still owes me an upgraded banana pastel. Let's make sure we're alive for that.

            #char:--
            That should make Marimbondo think twice before attacking you. You and the crew start the upgrades and bomb preparations.

            //~ DayChange()

        -> final_about_you

        + (final_plan_kleber) [KLEBER¬Sabotage the cargo.>>]

            #char:--
            You agree with Kleber's plan of fooling Marimbondo.

            ~ g_affinity_Kleber += g_affinityChangeMid

            //AFFINITY PASS

            {   
                - g_affinity_Kleber >= 0:

                #char:Kleber_neutral_happy|L
                Glad to see you're with me, Cap!
            
                - else:
                #char:Kleber_surprised_neutral|L
                Wasn't really expecting <i>you</i> to agree with me, but thanks.
            
            }

            #char:Kleber_neutral_sad|L
            Now, if only we can find something with similar weight...

            #char:Jackie_surprised_angry|L
            <wave>Hmmmm...</wave> Barto, don't you have a bunch of potato sacks in the kitchen? I believe that would do. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            #char:Jackie_neutral_neutral|L
            We can fill a barrel with them and compare the weights until they match.

            #char:Barto_sad_sad|R
            I suppose I cannot complain. My ingredients will save our lives, after all.

            #char:Barto_neutral_neutral|R
            Still, I can probably open the drums without breaking the lids. That should help the illusion, yes?

            #char:Kleber_surprised_angry|L
            Really, chef? You'd do that!? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            #char:Barto_happy_angry|R
            All due respect, that work requires more delicate claws. Who's better than the chef? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            #char:Kleber_happy_happy|L
            Then we have a plan, everyone!

            #char:--
            This should fool Marimbondo for long enough to run or fight back if you need to.

            //~ DayChange()

        -> final_about_you
}


= final_about_you

//Com alguns planos em mente, vocês vão em direção à superfície.
//Caso tenha escolhido um plano, o nome do cliente ou emoji correspondente fica sendo uma "palavra-chave".

{
    - g_mafagafo_was_delivered || g_stayed_at_refinery || (g_outran_azurian_pursuers && g_helped_horacio_escape):
        #char:--
        You decide to use the client' name as the keyword for executing the plan. 
}

#char:Kleber_neutral_sad|L
Alright, Cap! {StopMusic()}

#char:Kleber_neutral_sad|L
To be honest, I'd rather not risk an ambush in the Surface.

#char:Kleber_neutral_happy|L
I assume it's safer to cover most of the distance in the Skyways and then go down when we get close. Let's go!

~ FadeTo("Black", 1, 1)

#char:--
After that, the trip goes in relative silence for a while. Until— 

//AFFINITY PASS
{
    - g_affinity_Barto >= g_affinity_Jackie && g_affinity_Barto >= g_affinity_Kleber:
        //Barto te pergunta sobre a sua vida pra aliviar a tensão.
        #char:Barto_neutral_sad|R
        {g_name}, if I may, mind telling us a bit about Surface? 

    - g_affinity_Jackie >= g_affinity_Barto && g_affinity_Jackie >= g_affinity_Kleber:
        //Jackie te pergunta sobre a sua vida pra aliviar a tensão.
        #char:Jackie_neutral_neutral|L
        Hey, {g_name}, what can you tell us about Surface? 

    - g_affinity_Kleber >= g_affinity_Barto && g_affinity_Kleber >= g_affinity_Jackie:
        //Kleber te pergunta sobre a sua vida pra aliviar a tensão.
        #char:Kleber_neutral_sad|L
        Sooooo... How's a day in the Surfacer like, {g_name}? 
}

//Durante o trajeto para a superfície, você tem a oportunidade de trocar uma ideia sobre a superfície com os crewmates.
#char:--
The question takes you off-guard, but your crew seems strangely excited. Or at least willing to break the silence. {PlayMusic("Sad")}

//AFFINITY PASS
{
    - g_affinity_Barto >= 0 && g_affinity_Barto >= g_affinity_Jackie && g_affinity_Barto >= g_affinity_Kleber:
        //Barto te pergunta sobre a sua vida pra aliviar a tensão.
        #char:Barto_happy_angry|R
        Learning how to cook food from Surface is something I am admittedly eager to do. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    - g_affinity_Jackie >= 0 && g_affinity_Jackie >= g_affinity_Barto && g_affinity_Jackie >= g_affinity_Kleber:
        //Jackie te pergunta sobre a sua vida pra aliviar a tensão.
        #char:Jackie_surprised_happy|L
        What are the people like? Do you make gadgets like the people of Aquarela? {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}

    - g_affinity_Kleber >= 0 && g_affinity_Kleber >= g_affinity_Barto && g_affinity_Kleber >= g_affinity_Jackie:
        //Kleber te pergunta sobre a sua vida pra aliviar a tensão.
        #char:Kleber_neutral_sad|L
        I mean, even with my previous jobs, I've never got to go to Surface. I'm curious! {Emotion("Explosion", "FFFFFF")}  {PlaySFX("Hit1")}
}

#char:--
For once, you have a chance to tell them about your home. What should you talk about?

+ [MINERS¬The Surface's miners.>>]
    {
        - g_family == "Miner":
            //Você comenta sobre a atividade mineradora na superfície e de como o dia-a-dia numa família de mineradores era - como a saúde de seus pais foi debilitada com o tempo.
            #char:--
            You tell your crew about how it was to grow up in the mines with your family.

            #char:--
            Red Oil was very valuable to keep things running, but it was mined at the cost of many lives.

            #char:--
            Your parents' health deteriorated because of it. Come to think of it, the death rate was even higher than C.C.A.'s.

        - else:
            //Você comenta sobre a atividade mineradora na superfície e de como é uma das poucas atividades econômicas viáveis.
            #char:--
            You tell your crew about the importance of mining for Red Oil in Surface.

            #char:--
            It's one of the few viable ways to live, but it's also risky. If they think C.C.A.'s 45% death rate is bad, well...
    }

+ [SCAVENGERS¬The Surface's scavengers.>>]
    {
        - g_family == "Scavenger":
            //Você comenta sobre o extrativismo e de como vocês várias vezes passaram fome ou tiveram problemas caçando.
            #char:--
            You tell your crew about the daily struggles of scavenging for survival.

            #char:--
            The constant tremors meant you could die anytime.

            #char:--
            You've had some problems finding food or hunting. On occasion, your family went to bed hungry.

        - else:
            //Você comenta sobre o extrativismo e de como era difícil encontrar algo para comer ou vender em meio aos escombros.
            #char:--
            A few people manage to survive off of things they find in the wild and the ruins of Old Surface.

            #char:--
            You remember an old woman in your community who used to sell some tubers she found. One day, she went scavenging and never came back.
    }

+ [MERCENARIES¬The Surface's mercenaries.>>]
    {
        - g_family == "Mercenary":
            //Você comenta sobre o como a superfície é um lugar violento e como você foi exposto a isso desde cedo.
            #char:--
            The Surface is a violent place. Your parents trained you to defend yourself soon after you learned to walk.

            #char:--
            Bosses and jobs changed constantly, but the danger didn't. Once, when you were 10, you and your sisters got captured by bandits.

            #char:--
            It was an escort mission gone horribly wrong. You would have died if your parents hadn't saved you.

        - else:
            //Você comenta sobre o como a superfície é um lugar violento e como várias pessoas ganham a vida como caçadores de recompensas.
            #char:--
            The Surface is a violent place. Some people become mercenaries or bounty hunters.

            #char:--
            There are frequent skirmishes between them and the many kinds of criminals that make abandoned ruins their home.

            #char:--
            And of course, gangs like Marimbondo's also fight among themselves.
    }

//No meio da conversa, o 41-Bis toma um tiro. Um grupo rival do Marimbondo te ataca pra roubar a carga. Eles estão diretamente acima de você, com uma turret apontada pra sua traseira.
-   #char:Kleber_surprised_angry|L
    Sounds rough for sure. Not a lot of caravans deliver supplies to Surface, right?

    #char:Jackie_sad_sad|L
    Only the most experienced ones. And even then, some don't return...

    #char:Barto_neutral_angry|R
    The C.C.A. probably avoids sending caravaneers so they don't lose more ships, cargo and workers.

    //AFFINITY PASS
    {
        - g_affinity_Barto >= 0 && g_affinity_Barto >= g_affinity_Jackie && g_affinity_Barto >= g_affinity_Kleber:
            #char:Barto_neutral_neutral|R
            Even so, embracing the caravan life was the best way out you could find. I left my family too... I understand you, {g_name}. {StopMusic()}

        - g_affinity_Jackie >= 0 && g_affinity_Jackie >= g_affinity_Barto && g_affinity_Jackie >= g_affinity_Kleber:
            #char:Jackie_neutral_angry|L
            Don't worry, we <i>will</i> go back to the Skies, {g_name}! Let's recap our plan— {StopMusic()}

        - g_affinity_Kleber >= 0 && g_affinity_Kleber >= g_affinity_Barto && g_affinity_Kleber >= g_affinity_Jackie:
            #char:Kleber_surprised_sad|L
            Damn, Cap. Guess you were stuck with no way out for some time, huh? {StopMusic()}

        - else:
            #char:--
            No matter the odds, after this, you will definitely take your loved ones to the Sk- {StopMusic()}
    }

    #char:--
    Suddenly, you hear a turret firing and the entire ship trembles! {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} {PlayMusic("Tension")}

    #char:Kleber_fear_angry|L
    WHA— there's someone right above us! {Shake("Big Face", 1, 0.5)} {Emotion("Explosion", "FFFFFF")} {PlaySFX("Bad1")}

    #char:Barto_fear_sad|R
    <shake>Is it Marimbondo?</shake> Were we wrong about him not attacking us with the Red Oil still inside? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

    #char:--
    ...No. You can't see it in full trough the cockpit, but the ship is considerably different from Marimbondo's.
    
    #char:Jackie_fear_neutral|L
    Someone else is attacking us, then? Surface raiders, maybe? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

    #char:Barto_fear_angry|R
    That makes more sense. Another group of scoundrels must have followed us! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit2")}

    #char:--
    Your mind flashes back to a downed Skyship you saw as a kid.
    
    #char:--
    Seems like you've been lucky not get ambushed for your cargo until now.

    #char:Kleber_angry_angry|L
    Well, they won't take us down without a fight! What do we do, Cap? {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")} 

    #char:--
    Should you shoot at them, ask someone to do it or attempt to flee?

    //Você pode atirar, delegar o tiro pra alguém ou tentar desviar.
    + (final_raiders_shoot) [SHOOT¬You will fire back!>S>]
        #char:--
        You order Kleber to stabilize the ship and Jackie to assess the damages while you fire back at them. {StopMusic()} 

        #char:--
        {PlayMusic("Action")} You activate the turret, take aim... <>

        {
            - E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_fired_shot:
                //Você acerta a frente da nave inimiga. Pelo visto pegou o jeito de atirar!

                and you manage to hit their underside! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                ~ g_supplies -= g_statChangeShot

                #char:--
                After that fight with the other caravan, you've finally got the hang of this thing!

            - else:
                {shuffle:
                    -   and manage to clip their underside, just barely! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                        ~ g_supplies -= g_statChangeShot

                    -   and fire, but you miss the target. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                        ~ g_supplies -= g_statChangeShot
                }
        }

    + [CREW¬Ask someone to fire back!>S_F>]
        #char:--
        You think someone else should use the turret. But who?  {StopMusic()} 

        ++ (final_raiders_barto) [BARTO¬Barto!>>]
            //Você delega o tiro pro Bartô, mas ele erra.
            #char:--
            {PlayMusic("Action")} You ask Barto to fire the turret. Your cook trembles.

            {
                - E_Mission_Rookie_CrystalsOfBygoneTimes.barto_shot_crystals && E_Ship_Pelicannons.barto_shot_pelicannons:
                    #char:Barto_surprised_sad|R
                    <shake>M-me?</shake> Sure, I have done it twice by now, but I only hit once and— {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

                    #char:--
                    You tell Barto that if he hit a target once, he can do it again.

                    #char:Barto_angry_sad|R
                    ...Very well, I will!

                    #char:--
                    Barto takes aim and fires with a surprising amount of willpower for him.

                    ~ g_supplies -= g_statChangeShot

                    {shuffle:
                        -
                            #char:-- 
                            And he manages to clip one of their wings from below! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                        -
                            #char:--
                            He almost clips one of their wings, but his aim falls a bit short. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 
                    }

                - E_Mission_Rookie_CrystalsOfBygoneTimes.barto_shot_crystals:
                    #char:Barto_fear_sad|R
                    C-captain, I am not s-so sure... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")}

                    #char:--
                    You tell Barto to quit stalling and just do it.

                    #char:--
                    He does. Barto tries his best to aim and fire.

                    ~ g_supplies -= g_statChangeShot

                    {shuffle:
                        -
                            #char:--
                            His shot goes a bit low, but he manages a hit on their underside! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                        -
                            #char:--
                            It almost grazes the enemy ship, but misses. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 
                    }

                - E_Ship_Pelicannons.barto_shot_pelicannons:
                    #char:Barto_surprised_sad|R
                    Me? Shoot now? <shake>I-I—</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

                    #char:--
                    You tell Barto that if he shot a target once, he can do it again.

                    #char:Barto_angry_sad|R
                    ...Very well, I will!

                    #char:--
                    Barto takes aim and fires with a surprising amount of willpower for him.

                    ~ g_supplies -= g_statChangeShot

                    #char:--
                    Even more surprisingly — he hits the mark, clipping their wing! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                - else:
                    #char:Barto_fear_sad|R
                    <shake>B-but</shake> Captain, I have never— {Emotion("WaveIn", "0a4de8")}  {PlaySFX("Funny1")}

                    #char:--
                    You tell Barto to quit stalling and just do it.
                    
                    #char:--
                    The urgency of the situation makes Barto relent. Still shaking, he fires the turret once. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                    ~ g_supplies -= g_statChangeShot

                    #char:Barto_fear_angry|R
                    <shake>D-did</shake> I get them!?

                    #char:--
                    ...He didn't. Barto just fired the shots straight down, without aiming. 
            }

        ++ (final_raiders_jackie) [JACKIE¬Jackie!>>]
            //Você delega o tiro pra Jackie, ela acerta.
            #char:--
            {PlayMusic("Action")} You ask Jackie to fire the turret. She nods confidently.

            #char:Jackie_angry_happy|L
            Alright, Captain! I'll show them not to mess with <shake>this</shake> caravan!

            #char:--
            She fires once... and manages to hit the enemy ship! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

            ~ g_supplies -= g_statChangeShot

            #char:Jackie_happy_happy|L
            <wave>YEAH! TAKE THAT!</wave> {Emotion("Shine", "ffb71b")} 

        ++ (final_raiders_kleber) [KLEBER¬Kleber!>>]
            //Você delega o tiro pro Kleber, ele acerta, mas você toma um tiro também.
            #char:--
            You ask Kleber to fire the turret. He gives you a thumbs up.

            #char:Kleber_angry_angry|L
            Alrighy! Take the helm for a sec, lemme do the honors!

            #char:--
            You take control of the 41-Bis, dodging a second volley from the raiders above.

            #char:--
            You hear the telltale bang of the gun turret, followed shortly by an explosion in the distance. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

            ~ g_supplies -= g_statChangeShot

            #char:Kleber_happy_happy|L
            HA! Still got a good aim! {Emotion("Shine", "ffb71b")}

            #char:--
            Unfortunately, you aren't as good of a pilot as Kleber. You fail to dodge a second shot! {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

            ~ g_fuel -= g_statChangeLow
            ~ bisDamage += 1

            #char:Kleber_angry_angry|L
            Crap! Hold steady, Captain! They don't wanna give up yet! 

    + (final_raiders_flee) [FLEE¬Better run away!>F>]
        //Você foge... pra onde?
        #char:--
        You ask Kleber to try to outrun the raiders. {StopMusic()}

        #char:--
        If a shot goes into the cargo hold...

        #char:Kleber_surprised_angry|L
        Alright, Cap, but <i>where</i> do we flee to? {PlayMusic("Action")}

        ++ [POINT_LEFT¬Go left!>>]
            //Você consegue desviar do segundo tiro.
            #char:--
            You tell Kleber to go left. He obeys, and you dodge another round of fire. {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

        ++ [POINT_UP¬Go up!>>]
            //Você colide com a nave inimiga.
            #char:--
            You tell Kleber to go up, above the raiders' ship. He complies. 

            ~ g_fuel -= g_statChangeLow
            ~ bisDamage += 1

            #char:--
            Bad idea. The back of the 41-Bis collides with the front of the other ship as you go up. {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

        ++ [POINT_RIGHT¬Go right!>>]
            //Você consegue desviar do segundo tiro.
            #char:--
            You tell Kleber to go left. He obeys, and you dodge another round of fire. {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

    //Os inimigos mudam de posição (esquerda, direita ou abaixo, variável random) e preparam outro tiro. Você atira ou desvia?

    -   #char:--
        The raiders maneuver <>

        ~ temp enemyCaravanDirection = RANDOM(1,3)

        {
            - enemyCaravanDirection == 1:
                to your left. <>

            - enemyCaravanDirection == 2:
                under you. <>

            - enemyCaravanDirection == 3:
                to your right. <>
        }

        What do you do this time?

        + [SHOOT¬Fire back!>S>]
            //Você atira. O resultado é randômico, podendo acertar ou errar.
            {
                - final_raiders_shoot:
                    #char:--
                    You try your hand at firing again.

                - else:
                    #char:--
                    You decide to fire back at the raiders yourself.
            }

            {
                - E_Mission_Rookie_CrystalsOfBygoneTimes.crystals_fired_shot:
                    #char:--
                    Using your experience from the shootout with that caravan, you <>

                    {
                        - final_raiders_shoot:

                            fire again. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                        - else:

                            fire the gun turret. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 
                    }
                    
                    ~ g_supplies -= g_statChangeShot

                    #char:--
                    You hit the front of their ship! You're really starting to appreciate your previous experience as a sharpshooter.  

                - else:
                    {shuffle:
                        - 
                            #char:--
                            You hit the front of their ship! A lucky shot, but you're not complaining! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                            ~ g_supplies -= g_statChangeShot

                        -
                            #char:--
                            You fire, but you aren't fast enough. The raiders dodge your shot. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                            ~ g_supplies -= g_statChangeShot
                        
                        - 
                            #char:--
                            You miss the shot. Shouldn't have bet on your luck. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                            ~ g_supplies -= g_statChangeShot

                            #char:Kleber_angry_angry|L
                            Captain, what are you doing!? Their ship is <>

                            {
                                - enemyCaravanDirection == 1:
                                    on the left! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                                - enemyCaravanDirection == 2:
                                    below us! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                                - enemyCaravanDirection == 3:
                                    on the right! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}
                            }
                    }
            }

        + [CREW¬Ask someone to fire back!>S>]
            {
                - final_raiders_barto || final_raiders_jackie || final_convo_kleber:
                    #char:--
                    The crew should keep trying to return fire. Who should do it this time?

                - else:
                    #char:--
                    Maybe it's better to ask someone to fire your own turret at the raiders this time. Who, though?
            }

            ++ [BARTO¬Barto!>>]
                //Você delega o tiro pro Bartô, ele tem uma chance pequena de acertar.
                {
                    - final_raiders_barto:
                        #char:--
                        You order Barto to fire once again. <>

                        {
                            - E_Mission_Rookie_CrystalsOfBygoneTimes.barto_shot_crystals && E_Ship_Pelicannons.barto_shot_pelicannons:

                                He can do this!

                                #char:Barto_angry_sad|R
                                I can do this... I can do this! {Emotion("Explosion", "FFFFFF")}

                                ~ g_supplies -= g_statChangeShot

                                #char:--
                                Barto takes aim and fires once more, hitting the raiders' wing! {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                            - E_Mission_Rookie_CrystalsOfBygoneTimes.barto_shot_crystals:

                                You believe in him!

                                #char:Barto_angry_angry|R
                                ...Alright! {Emotion("Explosion", "FFFFFF")}

                                #char:--
                                Barto changes his aim and fires again.  {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                                ~ g_supplies -= g_statChangeShot

                                {shuffle:
                                    -
                                        #char:--
                                        Miraculously, he manages a hit on the top of their ship!

                                    -
                                        #char:--
                                        It sails close to the enemy ship, but misses again.
                                }

                            - E_Ship_Pelicannons.barto_shot_pelicannons:

                                He's doing great!

                                #char:Barto_surprised_sad|R
                                <shake>A-am I?</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}
                                
                                #char:Barto_angry_sad|R
                                I mean... Ok, let's do this!

                                #char:--
                                Barto changes his aim and fires another shot. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                                ~ g_supplies -= g_statChangeShot

                                #char:--
                                It lands square against the raiders' stabilizer sail!

                            - else:

                                Actually aiming, this time.

                                #char:Barto_fear_sad|R
                                C-c-cap'n, th'is is <shake>not</shake> work'n! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                                #char:--
                                You tell him to stop stalling and fire already, there's no time!
                                
                                #char:--
                                Barto screams and fires another shot. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                                ~ g_supplies -= g_statChangeShot
                                {shuffle:
                                    -
                                        #char:--
                                        Again, Barto's aim is off and he misses.

                                        ~ bisDamage += 1

                                        #char:--
                                        The raiders hit you back in response. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

                                    -
                                        #char:--
                                        Again, Barto's aim is off and he misses.
                                }
                        }

                    - else:
                        #char:--
                        You decide to replace <>

                        {
                            - final_raiders_jackie:
                                Jackie <>

                            - final_raiders_kleber:
                                Kleber <>
                        }

                        with Barto as your gunner.

                        {
                            - E_Mission_Rookie_CrystalsOfBygoneTimes.barto_shot_crystals && E_Ship_Pelicannons.barto_shot_pelicannons:
                                #char:Barto_surprised_sad|R
                                <shake>M-me?</shake> Sure, I have done it twice by now, but I only hit once and— {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}

                                #char:--
                                You tell Barto that if he hit a target once, he can do it again.

                                #char:Barto_angry_sad|R
                                ...Very well, I will!

                                #char:--
                                Barto takes aim and fires with a surprising amount of willpower for him.  {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                                ~ g_supplies -= g_statChangeShot

                                {shuffle:
                                    -
                                        #char:--
                                        But the shot sails far away from the raiders' ship.

                                    -
                                        #char:--
                                        He manages to hit the raiders!
                                }

                            - E_Mission_Rookie_CrystalsOfBygoneTimes.barto_shot_crystals:
                                #char:Barto_fear_sad|R
                                C-captain, I am not s-so sure... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")}

                                #char:--
                                You tell Barto to quit stalling and just do it.

                                #char:--
                                He does. Barto tries his best to aim and fire.  {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                                ~ g_supplies -= g_statChangeShot

                                {shuffle:
                                    -
                                        #char:--
                                        The shot sails far away from the raiders' ship.

                                    -
                                        #char:--
                                        Barto fires too high. Where does he think the raiders are!?

                                    -
                                        #char:--
                                        And... he somehow manages to hit the raiders!
                                }

                            - E_Ship_Pelicannons.barto_shot_pelicannons:
                                #char:Barto_surprised_sad|R
                                Me? Shoot now? <shake>I-I— </shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

                                #char:Barto_angry_sad|R
                                ...Very well, I will!

                                #char:--
                                Barto takes aim and fires with a surprising amount of willpower for him. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                                ~ g_supplies -= g_statChangeShot

                                #char:--
                                He manages to hit the raiders!

                                #char:Barto_surprised_sad|R
                                I-I did it!

                            - else:
                                #char:Barto_fear_sad|R
                                What!? <shake>C-cap'n</shake>, why <i>me</i>!? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

                                #char:--
                                You tell him to do it already, Jackie needs to assess the damages and Kleber needs to pilot!

                                #char:--
                                Barto is shaking nervously, but fires the turret. It's a wonder he can even push the button. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                                ~ g_supplies -= g_statChangeShot

                                {shuffle:

                                    -
                                        #char:--
                                        The shot sails far away from the raiders' ship.

                                    -
                                        #char:--
                                        Barto somehow manages to fire in the opposite direction he had to.

                                        ~ bisDamage += 1

                                        ~ UniqueEffectActivate("FlyingBullets")

                                        ~ g_fuel -= g_statChangeLow

                                        #char:--
                                        The raiders seize the opportunity to hit you back. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

                                    -
                                        #char:--
                                        Still... he somehow manages to hit the raiders!

                                    -
                                        #char:--
                                        Barto fires too high. Where does he think the raiders are!?
                                }
                        }
                }

            ++ [JACKIE¬Jackie!>>]

                {
                    - final_raiders_jackie:
                        #char:--
                        You order Jackie to fire once again. Her aim is the best!

                        #char:Jackie_happy_happy|L
                        Can do, {g_name}! Don't worry! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                    - else:
                        #char:--
                        You decide to replace <>

                        {
                            - final_raiders_barto:
                                Barto <>

                            - final_raiders_kleber:
                                Kleber <>
                        }

                        with Jackie as your gunner.

                        #char:Jackie_happy_happy|L
                        Right, I'll check the damage later! I'll get these guys off our trail! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
                }

                #char:--
                Jackie takes a moment adjusting her aim, then fires. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                ~ g_supplies -= g_statChangeShot

                {shuffle:

                    -
                        #char:--
                        She hits the raiders' stabilizer sail!

                    -
                        #char:--
                        She hits one of the raiders' wings!

                    -
                        #char:--
                        She hits the front of their ship! Bullseye!

                    -
                        #char:--
                        Somehow, she misses.
                }

            ++ [KLEBER¬Kleber!>>]
                //Você delega o tiro pro Kleber, ele tem uma chance de acertar maior que a sua, mas também de ser acertado de volta.

                {
                    - final_raiders_kleber:
                        #char:--
                        You order Kleber to fire once more. You'll try not to get hit again.

                        #char:Kleber_neutral_happy|L
                        Great! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                    - else:
                        #char:--
                        You decide to replace <>

                        {
                            - final_raiders_jackie:
                                Jackie <>

                            - final_raiders_barto:
                                Barto <>
                        }

                        with Kleber as your gunner.

                        #char:Kleber_neutral_happy|L
                        Can do, Cap! Take the helm, I'll do it! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}
                }

                #char:--
                A few moments later, you hear Kleber firing the turret.  {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                ~ g_supplies -= g_statChangeShot

                {shuffle:

                    -
                        #char:--
                        There's a loud explosion. Looks like Kleber hit the mark!

                    -
                        #char:--
                        Judging by the explosion, Kleber managed to land he shot!

                        #char:--
                        Surprisingly, though, the raiders try to ram your ship with theirs instead of firing again. 

                        ~ bisDamage += 1
                        ~ g_fuel -= g_statChangeLow

                        #char:--
                        You're taken by surprise and get hit. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

                    -
                        #char:--
                        You don't hear the shot hitting anything.

                        #char:Kleber_angry_angry|L
                        <shake>CRAP!</shake> Missed that! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}
                }

        + [FLEE¬Keep trying to flee.>F>]
            {
                - final_raiders_flee:
                    #char:--
                    You ask Kleber to change directions and evade them again. 

                    #char:Kleber_angry_angry|L
                    Alright! Where do we go now, Cap?

                - else:
                    #char:--
                    You tell Kleber to change directions — you're fleeing!  

                    #char:Kleber_surprised_sad|L
                    Where to, Cap? //
            }

            ++ [POINT_LEFT¬Go left!>>]
                #char:--
                You tell Kleber to turn to the left. He steers the 41-Bis <>

                {
                    - enemyCaravanDirection == 1:
                        //Você colide com a nave inimiga.
                        but ends up colliding with the raiders. {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 
                        ~ g_fuel -= g_statChangeLow
                        ~ bisDamage += 1

                        #char:--
                        The collision does more damage to your ship than theirs.

                    - else:
                        //Você consegue desviar do terceiro tiro.
                        away from another volley of fire from the raiders. {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}
                }

            ++ [POINT_DOWN¬Go down!>>]
                #char:--
                You tell Kleber to dive down. He complies <>

                {
                    - enemyCaravanDirection == 2:
                        //Você colide com a nave inimiga.
                        but ends up scraping the roof of the raiders' ship. {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

                        ~ g_fuel -= g_statChangeLow
                        ~ bisDamage += 1

                        #char:--
                        Luckily, aside from a few items knocked over in the kitchen, the damage isn't too big.

                    - else:
                        //Você consegue desviar do terceiro tiro.
                        and you dodge another shot.  {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}
                }

            ++ [POINT_RIGHT¬Go right!>>]
                #char:--
                You tell Kleber to turn right. He quickly changes your direction <>

                {
                    - enemyCaravanDirection == 3:
                        //Você colide com a nave inimiga.
                        but unfortunately the raiders do the same.

                        ~ g_fuel -= g_statChangeLow
                        ~ bisDamage += 1

                        #char:--
                        Kleber can't evade their bigger ship and you end up ramming into them. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} {PlayMusic("Tension")}

                    - else:
                        //Você consegue desviar do terceiro tiro.
                        and you dodge one more projectile from their turret. {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}
                }

        -   #char:--
            You manage to put some distance between yourselves and the raiders. {StopMusic()}

            #char:--
            After a few minutes of chasing you, they vanish into the clouds.
            //Vocês conseguem fugir da outra nave, possivelmente sustentando alguns danos. No entanto, um dos conteiners de Amago fura e contamina a crew e parte dos supplies.
            //Por causa disso, vocês fazem um pouso de emergência ao invés de continuar a rota para o local de entrega.
            //Dependendo dos danos, você gasta uma determinada quantidade de dias pra consertar.

            #char:Kleber_neutral_happy|L
            Looks like we're not worth the trouble, huh? Nice! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            {
                - bisDamage > 1:
                    #char:Jackie_surprised_sad|L
                    We were damaged pretty badly, though! We should land for fixes! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                - bisDamage == 1:
                    #char:Jackie_surprised_sad|L
                    We got shot once, though. We should land for a quick fix! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                - else:
                    #char:Jackie_surprised_sad|L
                    I don't think we got hit too bad, but it's better to land somewhere for a checkup. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                    #char:Jackie_neutral_angry|L
                    Better not face Marimbondo unprepared, after all!
            }

            #char:Barto_fear_sad|R
            That's not our only concern! I've just checked the cargo hold... one of the Red Oil drums got shot! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")} {PlayMusic("SupplyManager")}

            #char:--
            Everyone freezes. Your confrontation with Marimbondo just got more complicated.

            {
                - final_plan_barto || final_plan_kleber:
                    #char:--
                    Even if you <>

                    {
                        - final_plan_barto:

                            wanted to shoot the barrels anyway, <>

                        - final_convo_kleber:

                            exchange the cargo for potatoes, <>
                    }
                    
                    there's no way Marimbondo <>

                    {
                        - final_plan_barto:

                            wouldn't be supicious as soon as they were taken out of the 41-Bis.

                        - final_convo_kleber:

                            wouldn't notice the damage to the drum.
                    }

                - else:
                    #char:--
                    So what do you do now? Even if you have a plan, Marimbondo is noticing the damage to that barrel for sure.
            }

            #char:Jackie_surprised_neutral|L
            Well. For starters, we'll have to clean up the cargo hold!

            #char:Barto_fear_sad|R
            What about the drum!? Maybe we can patch it up somehow, but will it convince Marimbondo?

            #char:--
            You're not sure hiding it will be an option.
            
            #char:--
            And this is Marimbondo you're talking about. If you throw it out, he'll notice you have one less barrel.

            #char:Kleber_sad_sad|L
            We'll cross that bridge when we get there. For now, we just gotta stick to our plan and hope for the best. {ShipOut()} {StopMusic()}

            ~ g_timeChange = bisDamage

            #char:--
            Kleber prepares to dive into Surface, towards the Crumbling Plains. You all brace for the rough landing.
            
            // {
            //     - bisDamage == 0:
            //         #char:Kleber_angry_angry|L
            //         Hold on to your seats! I haven't really trained for this!

            //         #char:--
            //         Your pilot tries his best to stabilize the ship.

            //     - else:
            //         #char:Kleber_angry_angry|L
            //         Hold on to your seats! Time for an emergency landing!

            //         #char:--
            //         Your pilot tries his best to stabilize the ship.
            // }
            
            // #char:--
            // You land clumsily, the rough terrain scraping the underside of the 41-Bis. {Shake("All", 1, 0.5)}

            // #char:Kleber_fear_angry|L
            // Hoooo... here we are. 

            // #char:--
            // You should have one day for repairs and regrouping there, at least.

-> EVENT_END



=part2

#location: Crumbling Plains

~ ShipOut()

//AQUI TEM QUE DESLIGAR O 41-BIS DA TELA (pq ele tá caído no fundo enquanto vcs consertam)

{
    - final_convo_barto && final_convo_jackie && final_convo_kleber:
        //Vocês passam o resto da noite consertando a nave.

        #char:--
        You and the crew spend the rest of the day finishing the repairs of the 41-Bis. {StopMusic()} {ShipFixed()}

        #char:--
        Night is restless — but hopeful. {ShipIn()}

        -> EVENT_END

    - TURNS_SINCE(->part2) > 1 && !(final_convo_barto && final_convo_jackie && final_convo_kleber):
        //Melhor falar com outro crewmember.
        #char:--
        Maybe you should talk to someone else too.

    - else:
        //Você percebe que vocês pousaram perto de onde era sua moradia de infância - e de onde você e sua família viram a nave cair.
        //Você tem a opção de falar com todos os crewmates pela última vez.
        {
            - bisDamage > 1:
                ~ g_fuel -= g_statChangeHigh

            - else:
                ~ g_fuel -= g_statChangeMid
        }

        #char:--
        After landing, you all took a moment to examine the surroundings.
        
        #char:--
        Luckily, no wild animals were around. The raiders didn't seem to have followed you either.

        #char:--
        But the repairs were so extensive that you've all been in crisis management mode {bisDamage > 1:for the last few days}{bisDamage == 1:all day}.

        {
            - bisDamage > 1:
                ~ g_morale -= g_statChangeHigh

            - else:
                ~ g_morale -= g_statChangeMid
        }

        #char:--
        Used everything you could to patch the ship, too.

        {
            - bisDamage > 1:
                ~ g_supplies -= g_statChangeHigh

            - else:
                ~ g_supplies -= g_statChangeMid
        }

        #char:--
        Worse: your pistol was shattered in the tricky landing. Kleber said he was sorry, though.

        #char:--
        When you all finally take a moment of respite, you take in the landscape.

        #char:--
        This canyon...

        #char:Jackie_surprised_neutral|L
        Something wrong, {g_name}?

        //AFFINITY PASS:

        { 
            - g_affinity_Jackie >= 0:

                #char:Jackie_sad_angry|L
                You've been staring around for a bit. Are you okay?

            - else:

                #char:Jackie_surprised_neutral|L
                ...You've been staring around for a bit.

        }

        #char:--
        You tell Jackie that you've been to this place before. It's close to your childhood camp.

        #char:Jackie_surprised_happy|L
        Wow. So we really are in the Surface you've known all your life...

        #char:Kleber_fear_sad|R
        No offense, but this place gives me the creeps.

        #char:Barto_neutral_angry|R
        Creeps or not, we still have repairs and preparations to make.

        #char:Barto_neutral_angry|R
        Come on, let us start already. {StopMusic()}

        ~ FadeTo("black", 1, 0.5)

        #char:--
        Your crew is busy with preparations. Maybe you should check on them. {PlayMusic("CrewTheme")}
}

* (final_convo_barto) [BARTO¬Talk to Barto.>>]
    //Barto troca uma ideia com você sobre a sua família.
    #char:--
    You approach Barto. He's inspecting the remaining supplies for the day's meals.

    //AFFINITY PASS
    {
        - g_affinity_Barto >= 0:
            #char:Barto_neutral_angry|R
            Ah, Captain! I was thinking about making something special to lift our spirits. Any ideas?

        - else:
            #char:Barto_fear_sad|R
            <shake>Aaaah</shake>, what did we get into?

            #char:Barto_sad_sad|R
            I-I guess I will make some food. It is the best I can do now.
    }

    ++ [PASTEL¬Those Banana Pastels...>>]
        #char:--
        You tell Barto that maybe he should try making the banana pastels again.

        //AFFINITY PASS

        {   
            - g_affinity_Barto >= 0:

                #char:Barto_surprised_sad|R
                Oh my! You remembered that? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}
        
            - else:

                #char:Barto_neutral_neutral|R
                Oh, so you remembered that?
        
        }

        #char:--
        You could certainly use a snack in a moment like that...


        {
            - E_Crew_BartosBananaPastels.banana_pastels_angry:
                //AFFINITY PASS
                {
                    - g_affinity_Barto >= 0:
                        #char:Barto_surprised_angry|R
                        But I thought you hated my pastels and did not want me to make them again?

                        #char:--
                        Well, you may have overreacted. You don't know what tomorrow will bring, so if Barto really wants to try again...

                    - else:
                        #char:Barto_angry_angry|R
                        But... after the way you reacted? No. I will make something else.

                        #char:Barto_angry_sad|R
                        I do not need the stress right now. From you or the others.
                }

            - E_Crew_BartosBananaPastels.banana_pastels_lie:
                //AFFINITY PASS
                {
                    - g_affinity_Barto >= 0:
                        #char:Barto_happy_happy|R
                        Then again, you really liked them, so I should not be surprised.

                        #char:--
                        Better not tell Barto the truth. And hey, maybe this time they'll turn out fine.

                    - else:
                        #char:Barto_sad_sad|R
                        ...

                        #char:Barto_angry_sad|R
                        You are lucky my chef's pride is strong. Otherwise I would not have it in me to hear your requests.
                }

            - E_Crew_BartosBananaPastels.banana_pastels_motivate:
                //AFFINITY PASS
                {
                    - g_affinity_Barto >= 0:
                        #char:Barto_happy_sad|R
                        Maybe I can make them right this time!

                        #char:--
                        Well, at least Barto's spirits will be lifted by trying a recipe he likes.

                    - else:
                        #char:Barto_angry_sad|R
                        I... I do remember you motivated me back then. But I am not in the mood.
                }
        }

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 0:
                #char:Barto_happy_angry|R
                Very well, then! I will start with the preparations.

                ~ g_affinity_Barto += g_affinityChangeHigh
        }

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 50 && g_affinity_Barto >= g_affinity_Jackie && g_affinity_Barto >= g_affinity_Kleber:
                #char:Barto_neutral_happy|R
                Hmmm... actually, why not make them together with me, {g_name}?

                #char:Barto_neutral_angry|R
                It is not just about teaching you recipes, you know. I wish to learn Surface cuisine from you.

                #char:Barto_neutral_sad|R
                When I finally manage to open my flying restaurant again, I would love to have Surface-themed items.

                #char:--
                Barto's words surprise you. You had no idea he had this kind of thing on his mind.

                #char:Barto_neutral_sad|R
                What can I say? You were quite the source of inspiration.

                #char:Barto_happy_happy|R
                I am sure those recipes could find an audience. Especially among other Surfacers like you.

                #char:Barto_happy_angry|R
                Like a little taste of home, yes? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:Barto_sad_angry|R
                Also, if anything happens with Marimbondo...

                #char:Barto_sad_sad|R
                It could be something to... remember us. All together.

                #char:Barto_surprised_angry|R
                B-but hey, everything is going to go just fine! Let's not worry.  {Shake("Big Face", 3, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit2")}

                #char:--
                You both go to the kitchen to make the banana pastels together.

            - else:
                {
                    - g_affinity_Barto >= 0 && !E_Crew_BartosBananaPastels.banana_pastels_lie:
                        #char:--
                        Barto goes back to the kitchen to make the pastels for the crew.

                    - else:
                        #char:--
                        Barto stomps back to the kitchen to make food.
                }
        }

        ~ FadeTo("black", 1, 1)

    -> part2

    {
        - g_interest == "Foraging":
            ++ [FORAGING¬Show him some Surface ingredients!>>]
                #char:--
                There's some great food around the Plains if you know where to look.

                //AFFINITY PASS
                {
                    - g_affinity_Barto >= 0:
                        #char:Barto_surprised_sad|R
                        Oh my! A foraging trip on the Surface? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                        ~ g_affinity_Barto += g_affinityChangeHigh

                        #char:Barto_happy_happy|R
                        I would be delighted to, Captain!

                        #char:Barto_happy_angry|R
                        Let me prepare. We should be back before lunch!

                        {
                            - g_affinity_Barto >= 50 && g_affinity_Barto >= g_affinity_Jackie && g_affinity_Barto >= g_affinity_Kleber:
                                #char:Barto_neutral_happy|R
                                And when we come back, we could prepare lunch together!

                                #char:Barto_neutral_angry|R
                                It is not just about teaching you recipes, you know. I wish to learn Surface cuisine from you.

                                #char:Barto_neutral_sad|R
                                When I finally manage to open again my flying restaurant, I would love to have Surface-themed items.

                                #char:--
                                Barto's words surprise you. You had no idea he had this kind of thing on his mind.

                                #char:Barto_neutral_sad|R
                                What can I say? You were quite the source of inspiration.

                                #char:Barto_happy_happy|R
                                I am sure those recipes could find an audience. Especially among other Surfacers like you.

                                #char:Barto_happy_angry|R
                                Like a little taste of home, yes? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                            - else:
                                #char:Barto_neutral_happy|R
                                What do you say? Maybe I will make a Sky recipe with a Surface touch!
                        }

                        #char:--
                        You and Barto spend some time foraging in the Crumbling Plains.

                    - else:
                        #char:Barto_angry_sad|R
                        Captain, all due respect, I am not in the mood for foraging in a place I am unfamiliar with.

                        #char:--
                        Barto retreats inside his kitchen.

                        #char:--
                        As for you, you spend some time foraging in she ship's close vicinity.
                }

                ~ FadeTo("black", 1, 1)

        -> part2
    }

* (final_convo_jackie) [JACKIE¬Talk to Jackie.>>]
    //Jackie troca uma ideia com você sobre a sua família.
    #char:--
    You approach Jackie. She's <>

    {
        - bisDamage > 0:
            taking a look at the hits you took from the raiders.

        - else:
            doing one final checkup on the 41-Bis.
    }

    //AFFINITY PASS
    {
        - g_affinity_Jackie >= 0:
            #char:Jackie_neutral_neutral|R
            Oh, hey, {g_name}! Want a status report?

        - else:
            #char:Jackie_sad_sad|R
            Let me give you a status report, Captain.
    }

    {
        - bisDamage > 0:
            //AFFINITY PASS
            {
                - g_affinity_Jackie > -50:
                    #char:Jackie_surprised_sad|R
                    We took some damage, but it's not a lost cause.

                - else:
                    #char:Jackie_angry_sad|R
                    We didn't come out of that unscathed, thanks to you.
            }

        - else:
            //AFFINITY PASS
            {
                - g_affinity_Jackie > -50:
                    #char:Jackie_neutral_angry|R
                    Most of the systems are fine, but I can still do a few cleanups and upgrades!

                - else:
                    #char:Jackie_sad_sad|R
                    Most of the systems are fine, but I'm still triple-checking.

                    #char:Jackie_angry_sad|R
                    It's better I do it now, before you screw us up more.
            }
    }

    #char:--
    That might take a while. Maybe if Jackie had someone to help her?

    ++ [FIX¬Offer to help with the fixes.>>]
        #char:--
        You ask Jackie if she needs any help with that.

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 0:
                #char:Jackie_happy_neutral|R
                Oh, you'd help me? I could use an extra hand! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                #char:Jackie_happy_happy|R
                I might have three, but having spares never hurts, you know!

                ~ g_affinity_Jackie += g_affinityChangeHigh

            - g_affinity_Jackie < 0 && g_affinity_Jackie > -50:
                #char:Jackie_neutral_neutral|R
                ...Well, I could use that.

                ~ g_affinity_Jackie += g_affinityChangeLow

            - else:
                #char:Jackie_angry_sad|R
                Oh, now you want to help? Just great.

                #char:Jackie_angry_angry|R
                Thanks, but no thanks. Maybe you should go "help" someone else.
        }

        //AFFINITY PASS
        {
            - g_affinity_Jackie > -20:
                {
                    - g_interest == "Engineering":
                        #char:Jackie_happy_angry|R
                        And hey, I don't get the chance to work with an engineer from Surface too often!

                    - else:
                        #char:Jackie_happy_angry|R
                        And hey, from what you've told us, you Surfacers are pretty good with improvising!
                }
        }

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 50 && g_affinity_Jackie >= g_affinity_Barto && g_affinity_Jackie >= g_affinity_Kleber:
                #char:Jackie_neutral_neutral|R
                ...You know, {g_name}, I think I really understand what it means to be part of a caravan now.

                #char:Jackie_neutral_sad|R
                I mean, all the stories I heard could only take me so far. Now I've actually went on a journey with a crew.

                #char:Jackie_happy_angry|R
                I know what it's like to work with other caravaneers. Through all the ups and downs! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

                //TODO: POR FAVOR usar 'nas boas e nas roubadas' ou 'nas boas e nas furadas' nessa frase na localização :)

                #char:Jackie_neutral_neutral|R
                We'll be in danger and we'll butt heads... but I believe the caravan life really is the right one for me.

                #char:Jackie_happy_angry|R
                And hey, maybe I can be a captain someday, right?

                #char:--
                You're sure she can.
                
                #char:--
                She pauses, surprised.

                #char:Jackie_surprised_happy|R
                ...! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                #char:Jackie_neutral_happy|R
                Thank you, {g_name}. That means a lot to me. 
                
                #char:Jackie_happy_happy|R
                We'll find a way out of this mess! We always find a way! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:--
                As Jackie continues her checkup, you can tell she looks much happier, despite how tense the situation is.

            - g_affinity_Jackie > -50 && g_affinity_Jackie < 50:
                #char:--
                You and Jackie spend a few hours talking and checking the different parts of the 41-Bis together.

            - else:
                #char:--
                You leave Jackie to her own devices and try to find something else to do in the meantime.
        }

        ~ FadeTo("black", 1, 1)

    -> part2

    {
        - g_interest == "Engineering":
            ++ [ENGINEERING¬Show her some Surface fixes!>>]
                #char:--
                Maybe you can aid her with some Surface engineering techniques?

                #char:--
                For example, there's this one ore that's great for plugging a ship's hull.

                //AFFINITY PASS
                {
                    - g_affinity_Jackie >= 0:
                        #char:Jackie_surprised_happy|R
                        Really!? As in, it replaces a metal sheet!? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                        #char:--
                        Yup. All she has to do is heat it up a little.

                        ~ g_affinity_Jackie += g_affinityChangeMid

                        #char:Jackie_happy_angry|R
                        That's really cool, Captain! Can we get it around here?

                        #char:--
                        You can. That ore can be found all around the Plains.

                    - else:
                        #char:Jackie_neutral_neutral|R
                        Captain, I don't know if you've noticed, but we aren't exactly in a good time to experiment with engineering.

                        #char:Jackie_sad_sad|R
                        ...Just leave the repairs to me. Maybe the others need your help instead. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                }

                //AFFINITY PASS
                {
                    - g_affinity_Jackie >= 50 && g_affinity_Jackie >= g_affinity_Barto && g_affinity_Jackie >= g_affinity_Kleber:
                        #char:Jackie_neutral_neutral|R
                        ...You know, {g_name}, I think I really understand what it means to be part of a caravan now.

                        #char:Jackie_neutral_sad|R
                        I mean, all the stories I heard could only take me so far. Now I've actually went on a journey with a crew.

                        #char:Jackie_happy_angry|R
                        I know what it's like to work with other caravaneers. Through all the ups and downs! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

                        //TODO: POR FAVOR usar 'nas boas e nas roubadas' ou 'nas boas e nas furadas' nessa frase na localização :)

                        #char:Jackie_neutral_neutral|R
                        We'll be in danger and we'll butt heads... but I believe the caravan life really is the right one for me.

                        #char:Jackie_happy_angry|R
                        And hey, maybe I can be a captain someday, right?

                        #char:--
                        You're sure she can.
                        
                        #char:--
                        She pauses, surprised.

                        #char:Jackie_surprised_happy|R
                        ...! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                        #char:Jackie_neutral_happy|R
                        Thank you, {g_name}. That means a lot to me. 
                        
                        #char:Jackie_happy_happy|R
                        We'll find a way out of this mess! We always find a way! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                        #char:Jackie_happy_happy|R
                        Now, tell me more about Surface engineering! I wanna know what else we can use here!

                        #char:--
                        You can tell she looks much happier, despite how tense the situation is.

                    - g_affinity_Jackie >= 0 && g_affinity_Jackie < 50:
                        #char:--
                        You tell her about other fixes too, like another ore that can kickstart engines.
                }

                //AFFINITY PASS
                {
                    - g_affinity_Jackie >= 0:
                        #char:--
                        You and Jackie spend a few hours talking and repairing the ship together.

                    - else:
                        #char:--
                        You leave Jackie to her own devices and try to find something else to do in the meantime.
                }

                ~ FadeTo("black", 1, 1)

        -> part2
    }

* (final_convo_kleber) [KLEBER¬Talk to Kleber.>>]
    //Kleber troca uma ideia com você sobre a sua família.
    #char:--
    You approach Kleber. He's cleaning the cargo hold.

    //AFFINITY PASS
    {
        - g_affinity_Kleber >= 0:
            #char:Kleber_surprised_sad|R
            Oh, hey, Cap! Just getting rid of the mess those raiders made. {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit2")}

        - else:
            #char:Kleber_surprised_sad|R
            ...Need something? I'm just cleaning the Red Oil. {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit2")}
    }

    {
        - final_plan_barto || final_plan_kleber:
            #char:Kleber_surprised_sad|R
            Not gonna lie, I'm kinda worried about our plan now. We'll need to improvise a bit.

            //AFFINITY PASS
            {
                - g_affinity_Kleber >= 0:
                    #char:Kleber_neutral_happy|R
                    But it's nothing we haven't done before, right?
            }

        - else:
            #char:Kleber_neutral_sad|R
            Well, even if we lost a barrel of Red Oil, we still have our wits.

            //AFFINITY PASS
            {
                - g_affinity_Kleber >= 0:
                    #char:Kleber_neutral_happy|R
                    We've survived so far, I think we can deal with Marimbondo!
            }
    }

    #char:Kleber_surprised_sad|R
    ...Y'know, I thought I got used to this kinda situation with my own debts, but nope. Still hate it.

    #char:--
    Maybe you two can trade stories while cleaning the cargo together?

    ++ [CARGO¬Offer to help cleaning.>>]
        #char:--
        You offer to help Kleber with the cleanup.

        ~ g_affinity_Kleber += g_affinityChangeMid

        //AFFINITY PASS

        {   
            - g_affinity_Kleber >= 0:
                #char:Kleber_sad_sad|R
                Cap, I... thanks. Yeah.
        
            - else:
                #char:Kleber_surprised_neutral|R
                ...If you say so, I guess.
        }


        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 0:
                #char:Kleber_neutral_sad|R
                Wanna know something, Cap? When I decided to become a pilot, I was thinking about the Grana and glory, of course.

                #char:Kleber_happy_angry|R
                But I guess I just like that freedom. Going full speed, wherever the Skies take me! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

                #char:Kleber_sad_sad|R
                Thing is, my debts took that away from me for a long while. I just wanted a way out. Then I got in the Association.

                #char:Kleber_neutral_angry|R
                I didn't choose the caravan life, not really. But even when we were flying blindly, I enjoyed doing it with y'all.

                #char:Kleber_neutral_sad|R
                So whether I stay in the C.C.A. or go chase my dream again... I think I owe you a lot for getting me out of that funk.

                #char:Kleber_happy_happy|R
                And I'll start repaying <i>that</i> debt by helping you right now, Cap!
        }

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 50 && g_affinity_Kleber >= g_affinity_Barto && g_affinity_Kleber >= g_affinity_Jackie:
                #char:Kleber_neutral_sad|R
                Actually, here's the thing. I was thinking... There's a lot of people like us out there, yeah?

                #char:Kleber_surprised_sad|R
                People with dreams. People who want better lives. People who got into debt because of that.

                #char:Kleber_neutral_sad|R
                Maybe I can use my piloting skills to help. Y'know, transport other Surfacers to the Skies in a legal, safer way.

                #char:--
                If it's Kleber doing it, you can bet his clients won't have to endure what you did. Families like yours could benefit from it.

                #char:--
                ...If they can handle his reckless piloting, that is.

                #char:Kleber_happy_sad|R
                HA! You bet! Gotta make those rides entertaining somehow! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
        }

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 50:
                #char:--
                You joke around while cleaning the cargo hold. As always, Kleber is the best when it comes to lightening the mood.

            - g_affinity_Kleber < 50 && g_affinity_Kleber >= 0:
                #char:--
                You help Kleber with the cleanup, talking about what you want to do after your debt is paid.

            - else:
                #char:--
                You help Kleber with the cleanup in silence for th next few minutes.
        }

        ~ FadeTo("black", 1, 1)

    -> part2

    {
        - g_interest == "Piloting":
            ++ [PILOTING¬Tell him your own piloting stories!>>]
                #char:--
                While cleaning, you start telling Kleber about your first time riding a hover bike.

                //AFFINITY PASS
                {
                    - g_affinity_Kleber >= -1:
                        #char:Kleber_happy_sad|R
                        <wave>Hahahaha</wave>! That's cool, Cap! Explains a lot, too! {Emotion("Explosion", "39f2d6")} {PlaySFX("Funny1")}

                        ~ g_affinity_Kleber += g_affinityChangeMid

                        #char:Kleber_happy_sad|R
                        Y'know, I once did a tryout to be a racing pilot.

                        #char:Kleber_happy_angry|R
                        I used to watch races all the time with my old man as a kid.
                        
                        #char:Kleber_happy_sad|R
                        Later, he got me my first hover bike later too.

                        #char:Kleber_neutral_sad|R
                        But turns out getting to the big leagues is easier said than done.

                        #char:Kleber_neutral_sad|R
                        You need someone to vouch for you. A sponsor, a colleague, anyone.

                        #char:Kleber_neutral_neutral|R
                        And it costs money. <wave>Biiiig</wave> money.

                        #char:Kleber_neutral_neutral|R
                        But I never wanted to do it because of Grana, y'know? In the end, I just want to be a pilot.

                    - else:
                        #char:Kleber_angry_sad|R
                        Look, I'm not exactly hyped up for trading biking stories now.
                        
                        #char:Kleber_sad_sad|R
                        ...Just help me with the cleaning, will ya?
                }

                //AFFINITY PASS
                {
                    - g_affinity_Kleber >= 50 && g_affinity_Kleber >= g_affinity_Barto && g_affinity_Kleber >= g_affinity_Jackie:
                        #char:Kleber_neutral_sad|R
                        Actually, here's the thing. I was thinking... There's a lot of people like us out there, yeah?

                        #char:Kleber_surprised_sad|R
                        People with dreams. People who want better lives. People who got into debt because of that.

                        #char:Kleber_neutral_sad|R
                        Maybe I can use my piloting skills to help. Y'know, transport other Surfacers to the Skies in a legal, safer way.

                        #char:--
                        If it's Kleber doing it, you can bet his clients won't have to endure what you did. Families like yours could benefit from it.

                        #char:--
                        ...If they can handle his reckless piloting, that is.

                        #char:Kleber_happy_sad|R
                        HA! You bet! Gotta make those rides entertaining somehow! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
                }

                //AFFINITY PASS
                {
                    - g_affinity_Kleber >= 50:
                        #char:--
                        You joke around while cleaning the cargo hold. As always, Kleber is the best when it comes to lightening the mood.

                    - g_affinity_Kleber < 50 && g_affinity_Kleber >= 0:
                        #char:--
                        You help Kleber with the cleanup, trading piloting stories with one another.

                    - else:
                        #char:--
                        You help Kleber with the cleanup in silence for th next few minutes.
                }

                ~ ShipIn()
                ~ FadeTo("black", 1, 1)

        -> part2
    }



=part3
//No dia seguinte, o Marimbondo liga para vocês tirando satisfação. Vocês procedem até o local da entrega.

#location: Crumbling Plains


#char:--
The next day, you wake up to a noise from your caravan terminal.

#char:--
<color=green1><i>The caller's location is unknown.</i></color> {PlaySFX("Transmission")} {PlayMusic("Marimbondo")}

#char:--
You have a pretty good idea about who this is.

#char:--
You take the call.

#char:Marimbondo_neutral_hooded_hologram|L
What's the big idea, <shake>you brat!?</shake> <>

{
    - g_time == 0:
        Why aren't you here yet? You better not be thinking about backing out on our deal... {PlaySFX("Hologram")} {Blink("Big Face", 1, 0.5, "white")}

    - else:
        Why am I hearing that your caravan landed in the Crumbling Plains? {PlaySFX("Hologram")} {Blink("Big Face", 1, 0.5, "white")}
}

#char:--
You describe the raider ship that attacked you, forcing you to repair your ship.

#char:Marimbondo_neutral_hooded_hologram|L
Tsk! Looks like I have to teach another gang of wannabes not to mess with my cargo.

#char:Marimbondo_neutral_hooded_hologram|L
But it doesn't matter. I trust you were able to deal with them without any problems?

#char:Marimbondo_neutral_hooded_hologram|L
When I told you to bring the oil to me, that also meant keeping it safe. {Emotion("WaveIn", "ea2929")} {PlaySFX("Hit1")} {Shake("Big Face", 0.7, 1)}

#char:Marimbondo_neutral_hooded_hologram|L
That's what you cargo caravans do, right? I expect to get the oil I paid for.

#char:Marimbondo_neutral_hooded_hologram|L
Tell you what. Me and my crew are close by. Let's meet at the western edge of the Crumbling Plains in a few hours. 

#char:Marimbondo_neutral_hooded_hologram|L
I'll see you there. 

#char:Marimbondo_neutral_hooded_hologram|L
And by that, I mean that I <shake>better</shake> see you there.

#char:--
Marimbondo hangs up. You feel your anxiety rising. {Blink("Big Face", 1, 0.5, "white")}  {PlaySFX("Hologram")}

#char:--
Better call the others. Your time is running out.

~ FadeTo("black", 1, 1)

#char:Kleber_surprised_sad|L
The western edge of the Crumbling Plains, huh? I mean, I can probably get us there with your directions, Cap.

//AFFINITY PASS

{ 
    
    - g_affinity_Kleber <= -50:
    #char:Kleber_angry_sad|L
    ...Se você colaborar comigo dessa vez.


}


#char:Barto_fear_angry|R
But just a few hours? We won't have much time to prepare! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

#char:Jackie_neutral_neutral|L
I've <>

{
    - bisDamage > 0:
        fixed most of the damage by now. 

    - else:
        finished the last few checkups. 
}

{
        - final_plan_barto:

            #char:Jackie_neutral_angry|R
            The oil drums are ready for our ambush.

        - final_plan_jackie:

            #char:Jackie_neutral_angry|R
            Our turret upgrades are complete.

        - final_plan_kleber:

            #char:Jackie_neutral_angry|R
            The potatoes are mashed inside the oil drums.
}

#char:Jackie_neutral_angry|L
Also, we have <>

        {
            - g_mafagafo_was_delivered:
                the animal whistle from <>

                {
                    - g_stayed_at_refinery && (g_outran_azurian_pursuers && g_helped_horacio_escape):
                        Rosana, <>

                    - g_stayed_at_refinery || (g_outran_azurian_pursuers && g_helped_horacio_escape):
                        Rosana and <>

                    - else:
                        Rosana<>
                }
        }

        {
            - g_stayed_at_refinery:

                {
                    - g_outran_azurian_pursuers && g_helped_horacio_escape:
                        the Economicon Pocket Edition and <>

                    - else:
                        the Economicon Pocket Edition<>
                }
        }

        {
            - g_outran_azurian_pursuers && g_helped_horacio_escape:
                a pocket watch with Horacio's Angra Crystal<>
        }

        <>.

#char:Jackie_neutral_neutral|L
We're as prepared as we can get. {StopMusic()} {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:--
Time to finish this. {ShipOut()}

#char:--
You give Kleber the directions to Marimbondo's meeting point.

~ FadeTo("black", 2, 2)

//Chegando no loca da entrega, Marimbondo pega a Grana de você.

#char:--
After a few hours, you arrive at the large fissure on the western side. 

#char:--
A hooded figure awaits, flanked by several others. About eight or ten. 

#char:--
All decked in black, grey or brown hoods like Marimbondo — though you don't see any holsters on their belts.

#char:--
Marimbondo greets you when you exit the ship.

#char:Marimbondo_neutral_hooded|R
{PlayMusic("MarimbondoTension")} {PlaySFX("StrongWoosh")} There you are! <>

{
    - g_time > 0:
        For once, you're on schedule, brat!

    - else:
        Still haven't learned to be on time, huh, brat?
}

#char:Marimbondo_neutral_unhooded|R
And the tin can, furball and getaway driver are the sorry people you dragged down? {Shake("Big Face", 0.9, 0.5)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("StrongWoosh")} {PlaySFX("Mistery2")}

#char:Marimbondo_happy|R
Sucks to be you, huh? If only you didn't have a Surfacer for a Captain...

#char:Barto_angry_sad|L
Look, we are here to aid our Captain. May we get on with it?

#char:Kleber_angry_angry|L
<size=22>Psst, chef! Let go, we better not pick a fight yet!</size>

#char:Jackie_angry_happy|L
<size=22>Remember the plan! Wait for our chance!</size>

#char:Marimbondo_neutral_unhooded|R
Tsk. Well, first things first. 

#char:Marimbondo_angry|R
Where's the money you owe me? {Blink("Big Face", 1, -1, "white")} {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

{
    - g_grana >= g_debt:
        #char:--
        You give Marimbondo the full sum.

        ~ g_grana -= g_debt
        ~ paidDebt = true

        {UnlockAchievement("POSITIVE_CREDIT_SCORE")}

        #char:Marimbondo_neutral_unhooded|R
        See? Was that so difficult? It was a pleasure to do business with you.
        
        #char:Marimbondo_happy|R
        Now let's see that oil! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

    - else:
        #char:--
        You don't have the full sum, so you give Marimbondo all your Grana.

        ~ g_grana = 0

        {UnlockAchievement("DIRTY_NAME")}

        #char:Marimbondo_neutral_unhooded|R
        Is that all? You better not be hiding your Grana from me... {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

        #char:Marimbondo_neutral_unhooded|R
        Let's see if you at least managed to leave the cargo <wiggle>intact</wiggle>.
}

#char:--
Marimbondo turns to his goons, who start going to your ship to retrieve the Red Oil.

#char:Marimbondo_angry|R
Come on, you lot! Chop chop!

//No entanto, ele percebe que um dos barris está furado. Num plot twist, exige também o 41-Bis como pagamento pelo cargo destruído.
#char:--
It takes a few minutes before all the Red Oil drums are taken out of the 41-Bis.

{
    - final_plan_barto:
        #char:--
        Jackie is probably waiting to trigger the turret.

    - final_plan_jackie:
        #char:--
        Jackie should have the firebombs ready for a fight, hidden near the ship.

    - final_plan_kleber:
        #char:--
        All no longer containing Red Oil, but rather Barto's potatoes, of course.

    - else:
        #char:--
        You're just waiting for the chance to use the <>

        {
            - g_mafagafo_was_delivered:

                {
                    - g_stayed_at_refinery && (g_outran_azurian_pursuers && g_helped_horacio_escape):
                        whistle, <>

                    - g_stayed_at_refinery || (g_outran_azurian_pursuers && g_helped_horacio_escape):
                        whistle, <>

                    - else:
                        whistle<>
                }
        }

        {
            - g_stayed_at_refinery:
                {
                    - g_outran_azurian_pursuers && g_helped_horacio_escape:
                        Economicon and <>

                    - else:
                        Economicon<>
                }
        }

        {
            - g_outran_azurian_pursuers && g_helped_horacio_escape:
                pocket watch<>
        }

        .
}

#char:Marimbondo_neutral_unhooded|R
One, two, three, four, five— huh?

#char:Marimbondo_angry|R
One of the drums is damaged! What's the meaning of this, brat!? {Emotion("WaveIn", "ea2929")} {PlaySFX("Hit2")} {Shake("Big Face", 1, 1)}

#char:--
You remind Marimbondo of the raiders that attacked you.

#char:Jackie_surprised_neutral|L
Yeah. Just take a look — you'll see the marks—

{
    - paidDebt == true:
        #char:Marimbondo_neutral_unhooded|R
        Aaah, what a shame. And you had paid your debt in full, too. {PlaySFX("StrongWoosh")}

    - else:
        #char:Marimbondo_neutral_unhooded|R
        So you didn't bring my money <wiggle>and</wiggle> ruined my cargo? Don't know why I expected more from you, brat. {PlaySFX("StrongWoosh")}
}

#char:Marimbondo_neutral_unhooded|R
Normally I'd ask for more Grana or another service from you, but you know what? There's an easier way.

#char:Marimbondo_angry|R
Give me your ship and <shake>everything inside</shake>. {Blink("Big Face", 0.5, -1, "white")} {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")} {PlaySFX("Hit2")} {PlaySFX("Mistery1")}

#char:Marimbondo_happy|R
Should help cover the costs. 

#char:Kleber_surprised_angry|L
Wh-WHAT!? {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.8, 0.7)}

#char:--
You try to protest, but Marimbondo interrupts you.

#char:Marimbondo_angry|R
Oh, did it sound like I was given you a choice? Sorry, but that's not the case.

#char:Marimbondo_neutral_unhooded|R
Don't like it? Should have brought everything as agreed, then.

{
    - paidDebt == false && g_cursed_bottle_was_broken:
        //Marimbondo diz que também fez negócio com o Silva pra entregar você.
        #char:--
        Someone else comes from inside Marimbondo's ship. Someone you hoped to never see again.

        #char:Marimbondo_neutral_unhooded|R
        Besides, I have a special deal with an associate about this. Right, Silva?

        #char:Silva_laughing|L
        Right! You get their ship, I get their heads. {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")} {PlaySFX("Bad2")}

        #char:Kleber_angry_angry|L
        Silva!? The hell are you doing here!?  {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.9, 1)} {PlaySFX("LightWoosh")}

        #char:Silva_disgust|L
        That Surfacer Captain really should have given more thought before crossing me!

        #char:Silva_disgust|L
        But honestly, maybe I should be impressed. You caused so much damage, I don't even want a payback.

        #char:Silva_angry|L
        I want you all <shake>DEAD</shake>!  {Shake("Big Face", 3, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit2")}

    -> final_plans_execution

    - paidDebt == true && g_cursed_bottle_was_broken:
        //Marimbondo promete que você sairá ileso, mas a sua tripulação será levada pelo Silva (caso você tenha sacaneado brabo ele na Cursed Cachaça).
        #char:--
        Someone else comes from inside Marimbondo's ship. Someone you hoped to never see again.

        #char:Marimbondo_neutral_unhooded|R
        Don't make a fuss, now. You'll be fine if I take the ship! Ah, but your crew, though...

        #char:Marimbondo_neutral_unhooded|R
        I know exactly <i>who</i> would <wiggle>love</wiggle> to have them.

        #char:Silva_laughing|L
        <wiggle>Hello again</wiggle>, Surfacer captain! Haha! {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")} {PlaySFX("Bad2")}
        
        #char:Silva_neutral|L
        Your rookies are coming with me. 
        
        #char:Silva_angry|L
        That's what you get for messing with the head honcho of Champignons! {Emotion("Explosion", "FFFFFF")} {PlaySFX("StrongWoosh")} {PlaySFX("Hit1")}

        #char:Silva_disgust|L
        //Agradeçam ao piloto de vocês. Tudo porque ele resolveu quebrar minha garrafa.
        You can thank your pilot, by the way. If only he hadn't decided to break my bottle...

        #char:Kleber_fear_angry|L
        Silva!? The hell are you doing here!? {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.9, 1)} {PlaySFX("LightWoosh")}

        #char:Jackie_angry_happy|L
        //Devia mais era ter quebrado ela na sua cabeça mesmo!
        Should've smashed it on your head, that's what!
        
        #char:Barto_angry_angry|R
        //Não entregamos o Kléber antes e não vamos nos entregar agora, seu crápula!
        We did not surrender Kleber to you back then and we will not surrender now, you fiend!

    - else:
        //Marimbondo faz algum comentário sobre o Silva, mas o Silva não está lá.
        #char:Marimbondo_neutral_unhooded|R
        Then again, you were dumb enough to mess with Silva in Spore Heights, weren't you?

        #char:Kleber_surprised_angry|L
        What— how do you even know—

        #char:Marimbondo_neutral_unhooded|R
        I know him. Old business associate.

        #char:Marimbondo_angry|R
        Did you think you could pull the same stunt with me? No dice.
}

#char:--
Marimbondo's goons are preparing for a fight.

#char:--
The four of you are outnumbered, about two or three to one.

#char:--
This is it. Do you hand your ship over to Marimbondo?

+ [YES¬Give up the ship.>>]->give_ship

+ [NO¬Don't give up the ship.>>]->final_plans_execution



= give_ship

#char:--
You accept his deal. {StopMusic()}

// #char:--
// There's no way you and the crew can deal with all of these goons. Not even with your plans.

{
    - !g_cursed_bottle_was_broken:
        //Se você tiver pego o final bom da Cachaça, você aceita entregar o ship, evitando o confronto.
        #char:--
        Your will to stand up to Marimbondo isn't greater than your will to keep your crew safe.

        {
            - final_plan_barto:
                #char:Kleber_fear_angry|L
                Cap, what about us!? We're not going anywhere without our ship! {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery1")}

            - final_plan_jackie:
                #char:Jackie_fear_neutral|R
                Captain, what about us? Are we just going to stay here? {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            - final_plan_kleber:
                #char:Barto_fear_sad|L
                Captain, I understand not wanting to fight, but if we give them our ship, we're done for! {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}

            - else:
                #char:Kleber_fear_angry|L
                Cap, what about... <i>that</i>? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery1")}

                #char:Jackie_sad_sad|R
                Are we just giving up? After all we went through? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                #char:Barto_fear_sad|L
                I understand you are worried, but please! {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit1")}
        }
        
        #char:--
        Marimbondo approaches you, claws extended.

        #char:Marimbondo_angry|R
        Well? Don't waste my time, give me the keys already! {Emotion("Spiral", "ea2929")} {PlaySFX("Bad2")}  {PlaySFX("LightWoosh")}  

        #char:--
        You're about to hand the keys to Marimbondo when a loud noise rings out. {PlaySFX("CapybaraShip")}
        
        #char:--
        The goons stop dead in their tracks.

        #char:Kleber_fear_sad|L
        Huh? The heck is that?! {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

        #char:Jackie_surprised_angry|R
        I-I know that noise...! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} 

        //Mas quando está prestes a fazer isso, uma esquadra de capivaras aparece atras da a nave do Marimbondo.

        #char:--
        There's a large ship approaching. It's at least twice the size of Marimbondo's ship, with multiple gun turrets.

        #char:--
        But maybe the most distinguishing feature are the <i>multiple</i> C.C.A. emblems plastered on its side and sail. 

        #char:Marimbondo_angry|R
        <shake>THE RIVER RATS!? YOU...!</shake> You called them here, didn't you? {Shake("Big Face", 2, 1)} {PlaySFX("LightWoosh")} {Emotion("Explosion", "ea2929")} {PlaySFX("Hit2")}

        #char:--
        You didn't. But Marimbondo doesn't need to know that.

        #char:--
        The smuggler starts barking orders to his subordinates.

        #char:Marimbondo_angry|R
        You, you, you and you! <shake>Get them!</shake> The rest, with me!

        #char:--
        Four of his goons come towards you and the others. The others go back to Marimbondo's ship. 

        #char:Marimbondo_angry|R
        This isn't over, you brat! You're gonna pay me with interest, <shake>MARK MY WORDS!</shake> {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.9, 1)}

        #char:--
        Marimbondo enters his ship. A few moments later, it takes flight. 

        #char:--
        Looks like the C.C.A. ship will have to deal with him. {StopSFX("CapybaraShip")}

        #char:--
        Meanwhile, you're left to fight the four on the ground. 
        
        #char:--
        Your crew makes the first move! {PlayMusic("Climax")}

        {
            - final_plan_barto || final_plan_jackie:
                //Turret
                #char:--
                Jackie immediately springs into action and activates the automated turret.

                #char:--
                The shot blasts the ground near one of the grunts. The others scramble away from the cloud of dust. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                #char:Jackie_angry_happy|L
                Are you <wiggle>sure</wiggle> you want to do this? {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

                #char:--
                You can tell they're thinking twice.
                
                #char:--
                The criminals look between you and the 41-Bis, then back to their boss' ship, which is now in the air.

                {
                    - final_plan_barto:
                        #char:--
                        Your original plan might have gone up in smoke, but four goons against your automated turret?

                    - final_plan_jackie:
                        #char:--
                        Barto and Kleber have brought out the firebombs too, further intimidating them.
                }

                #char:Kleber_angry_angry|L
                Look, we're better armed and your boss ditched you. I think y'all know how this fight is gonna end. {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

                #char:Barto_angry_angry|L
                Leave, or we will hand you over to the Association! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit2")}

                #char:--
                That seems to do the trick. Knowing they can't win, the goons flee. {StopMusic()}

            -> drinking_buddies

            - g_mafagafo_was_delivered || g_ate_lunch_at_refinery || (g_outran_azurian_pursuers && g_helped_horacio_escape):
                #char:--
                Before, you were scared of numbers, but now, you have an advantage!

            -> final_plans_execution

            - else:
            -> final_porradaria_drinking_buddies
        }

    - else:
        //Você aceita entregar o ship, evitando o confronto. Sua crew fica decepcionada.
        
        #char:--
        This is the only way to get back to your family. 
        
        //Caso o Silva esteja lá, eles quase são levados, mas o Capybarman aparece com a C.C.A. e os salva. "No one fucks with capybaras."
        {
            - g_cursed_bottle_was_broken:
                #char:Jackie_surprised_angry|L
                What... what did you just say, {g_name}?

                //AFFINITY PASS
                {
                    - g_affinity_Jackie >= 50:
                        #char:Jackie_fear_happy|L
                        Why!? Please, you're our Captain! You have to do something! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Mistery1")}

                    - g_affinity_Jackie < 50 && g_affinity_Jackie >= 0:
                        #char:Jackie_fear_happy|L
                        You can't... you can't just... You're throwing us <i>away</i>!? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Mistery1")}

                    - g_affinity_Jackie < 0 && g_affinity_Jackie > -50:
                        #char:Jackie_angry_happy|L
                        After all we've been through together? How dare you!? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

                    - else:
                        #char:Jackie_angry_happy|L
                        You! You're a disgrace of a Captain! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}
                }

                //AFFINITY PASS
                {
                    - g_affinity_Barto >= 50:
                        #char:Barto_fear_sad|R
                        No! Captain, p-please, let us help you! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

                    - g_affinity_Barto < 50 && g_affinity_Barto >= 0:
                        #char:Barto_fear_sad|R
                        But why!? After everything that happened...! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

                    - g_affinity_Barto < 0 && g_affinity_Barto > -50:
                        #char:Barto_angry_angry|R
                        I went in the Refinery again for this crew and this is how you repay me!? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

                    - else:
                        #char:Barto_angry_sad|R
                        Making our families lose us so you can go back to yours!? Just when I thought you could not sink lower... {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}
                }

                //AFFINITY PASS
                {
                    - g_affinity_Kleber >= 50:
                        #char:Kleber_fear_angry|L
                        I thought we could trust each other! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                    - g_affinity_Kleber < 50 && g_affinity_Kleber >= 0:
                        #char:Kleber_fear_angry|L
                        This is why you brought us here!? To give us up!? {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                    - g_affinity_Kleber < 0 && g_affinity_Kleber > -50:
                        #char:Kleber_angry_angry|L
                        Seriously!? You wouldn't even be alive if it wasn't for us! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}

                    - else:
                        #char:Kleber_angry_angry|L
                        YOU PIECE OF— I should have known! You're no different from those bloodsuckers! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad2")}
                }

                #char:Silva_disgust|L
                Now, now. No need for that. Your captain just acknowledged the best survival option. 

                #char:Marimbondo_neutral_unhooded|R
                No shame in making use of an opportunity, brat! That's how you get to the top! 

                #char:Silva_neutral|L
                Well, you heard the Captain! Take 'em away!

                #char:--
                Marimbondo's goons take Barto, Kleber and Jackie to Marimbondo's ship, the three desperately trying to fight back.

                #char:--
                Several insults leave Kleber's mouth. <>
                
                //AFFINITY PASS
                {
                    - g_affinity_Kleber >= 0:
                        Mostly directed at Silva.

                    - else:
                        Some directed at you.
                }

            - else:
                {
                    - final_plan_barto:
                        #char:Kleber_fear_angry|L
                        Cap, what about us!? We're not going anywhere without our ship! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Mistery1")}

                    - final_plan_jackie:
                        #char:Jackie_fear_sad|R
                        Captain, what about us? Are we just going to stay here? {Emotion("Explosion", "FFFFFF")}  {PlaySFX("Mistery1")}

                    - final_plan_kleber:
                        #char:Barto_fear_sad|L
                        Captain, I understand not wanting to fight, but if we give them our ship, we're done for! {Emotion("Explosion", "FFFFFF")}  {PlaySFX("Mistery1")}

                    - else:
                        #char:Kleber_fear_angry|L
                        Cap, what about... <i>that</i>? {Emotion("Explosion", "39f2d6")}  {PlaySFX("Mistery1")}

                        #char:Jackie_sad_sad|R
                        Are we just giving up? After all we went through? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

                        #char:--
                        You tell them your safety is more important. You can find another way to go back to the Skies.

                        #char:Barto_fear_sad|L
                        I understand you are worried, but please! {Emotion("Explosion", "39f2d6")} {PlaySFX("Bad1")}
                }
        }

        #char:--
        Marimbondo approaches you, claws extended.

        #char:Marimbondo_angry|R
        Well? Don't waste my time, give me the keys already!  {Emotion("Spiral", "ea2929")} {PlaySFX("LightWoosh")}  {PlaySFX("Bad2")}

        #char:--
        You're about to hand the keys to Marimbondo when a loud noise rings out. {PlaySFX("CapybaraShip")}
        
        #char:--
        The goons stop dead in their tracks.

        #char:Kleber_fear_sad|L
        Huh? The heck is that?! {Emotion("Explosion", "39f2d6")}  {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

        #char:Jackie_surprised_angry|R
        I-I know that noise...! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} {PlaySFX("CapybaraShip")}

        #char:--
        There's a large ship approaching. It's at least twice the size of Marimbondo's ship, with multiple gun turrets. {PlayMusic("CapybarasTheme")}

        #char:--
        But maybe the most distinguishing feature are the <i>multiple</i> C.C.A. emblems plastered on its side and sail. 

        #char:Marimbondo_angry|R
        <shake>THE RIVER RATS!? YOU...!</shake> You called them here, didn't you? {Shake("Big Face", 2, 1)} {PlaySFX("LightWoosh")} {Emotion("Explosion", "ea2929")} {PlaySFX("Hit2")}

        #char:--
        You didn't. But Marimbondo doesn't need to know that.

        #char:Silva_angry|L
        Damn it, Marimbondo, what have you got me into?! I'll get you idiots someday! {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.9, 1)}

        #char:--
        The smuggler and his goons retreat, along with Silva.

        #char:Marimbondo_angry|R
        This isn't over, you brat! You're gonna pay me with interest, <shake>MARK MY WORDS!</shake> {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.9, 1)}

        #char:--
        Marimbondo enters his ship and leaves... or tries to, before a shot rings from C.C.A. ship.

        #char:--
        It hits the smuggler's ship right in one of the wings, making it crash to the ground. {PlaySFX("BigDamage")} {PlaySFX("SingleExplosion")} {StopSFX("CapybaraShip")}

        ~ FadeTo("black", 1, 1)

        #char:Capybarman_neutral|R
        Well, well, well. Looks like we got here just in time. 

        #char:Kleber_neutral_sad|L
        Wait, <i>we</i>? What do you m— 
        
        #char:Kleber_surprised_sad|L
        <wave>WHOA!</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

        #char:Capybarman_eyesright|L
        Yes, we.

        #char:--
        Several capybarmen start coming out of the ship, all of them in similar outfits.

        #char:Capybarman_eyesright|L
        Good thing we did, too. Looks like <b>someone</b> was giving off property that's not theirs.

        #char:Capybarman_eyesright|R
        Did you forget, friend? You signed the 41-Bis off to us when you became a captain.

        #char:Capybarman_eyesright|R
        All C.C.A.'s ships have their communications system tapped for security purposes.
        //translator note: tap no sentido de grampear aqui!

        #char:Capybarman_eyesright|L
        So you were trying to give a C.C.A-owned ship to some smuggler?

        #char:Capybarman_eyesright|R
        And to top it off, you almost sacrificed your crew.

        #char:Capybarman_eyesright|L
        The Capybara Caravan Association has no need of captains who cause this much collateral damage.

        #char:Capybarman_eyesright|L
        The 41-Bis will be reappropriated and your crew will be transferred to a better Captain.

        #char:Capybarman_eyesright|R
        As for yourself, <wiggle>friend</wiggle>, consider yourself fired.

        #char:Capybarman_eyesright|R
        We're going back to the Skies. And you — you're staying here.
        
        //Sua crew volta para as Skyways e você vai de encontro à sua família, voltando à estaca 0, mas sem Marimbondo no seu encalço.

        #char:--
        The Capybarman block your way back to the 41-Bis.

        #char:--
        You feel like even the crew's support wouldn't be enough to fight them off.

        #char:--
        Your crewmates shoot you hurt looks as they go inside.

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 50:
                #char:Kleber_sad_sad|L
                Well, good luck to you, {g_name}. Can't believe we ended like this... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Kleber < 50 && g_affinity_Kleber >= 0:
                #char:Kleber_sad_neutral|L
                I-I get it, in a way, {g_name}. Doesn't make it sting any less.  {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Kleber < 0 && g_affinity_Kleber > -50:
                #char:Kleber_angry_angry|L
                That's fine with me. I have nothing else to say to our "Captain". {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

            - else:
                #char:Kleber_angry_angry|L
                Good. If I have to stay a second close to this bloodsucker, I'm gonna hurl. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 50:
                #char:Barto_sad_sad|R
                Captain {g_name}... for all that is worth, I hope you and your family have a good future. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 50 && g_affinity_Barto >= 0:
                #char:Barto_sad_angry|R
                I guess this is goodbye then, Captain. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 0 && g_affinity_Barto > -50:
                #char:Barto_sad_neutral|R
                I wish I had it in me to wish you luck... but I believe I do not. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

            - else:
                #char:Barto_angry_sad|R
                Frankly speaking, I do not wish ill upon you. But I hope we <i>never</i> meet again. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 50:
                #char:Jackie_sad_sad|L
                Please, {g_name}, be careful out there. And take care of your family. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Jackie < 50 && g_affinity_Jackie >= 0:
                #char:Jackie_sad_angry|L
                {g_name}... it was short, but I'm glad I got to work with you. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Jackie < 0 && g_affinity_Jackie > -50:
                #char:Jackie_sad_sad|L
                So much for my first caravan. I should have know better. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Hit1")}

            - else:
                #char:Jackie_angry_sad|L
                At the very least, I guess I know what I <i>won't</i> do if I ever become a Captain. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        #char:--
        A few of the Capybarmen board your former ship as well. Moments later, they fly off.

        #char:--
        You're alone and on foot in the middle of the Crumbling Plains. {StopMusic()}

        #char:--
        Your only option is to go find your family. 

        ~ FadeTo("black", 1, -1)

        #char:--
        You walk through the Crumbling Plains.

        {
            - g_family == "Miner":
                #char:--
                Hopefully there's still work for you in the mines.

            - g_family == "Scavenger":
                #char:--
                You'll have to trust your ability to survive and forage until you do.

            - g_family == "Mercenary":
                #char:--
                Going back to the mercenary life won't be easy. But it's all you have now.
        }
        
        #char:--
        At least Marimbondo likely won't be a problem anymore. 

        ~ FadeTo("black", 1, -1)

        #char:--
        You think of Jackie, Barto and Kleber. Will you meet them again one day?

        #char:--
        You've returned to square one. 
        
        #char:--
        Only now you have some stories to tell of your time as Sky Caravaneer.

        #char:--
        You wonder what your sisters would like to hear about first. The Spore Heights? Maybe the Venom Refinery. 

        #char:--
        You see your family's home camp in the distance. Will it still be your home? 

        #char:--
        You walk, forwards and backwards at the same time.

        {UnlockAchievement("GROUNDED")}

        //<b>BACK TO THE SURFACE ENDING</b>

        {UnlockAchievement("WRITTEN_IN_THE_CLOUDS")}

    -> MISSION_END
}



= final_porradaria_drinking_buddies

#char:--
Each goon goes for one of you, while the skyship battle sounds ring from above. 

#char:--
They go for a high punch. Do you go for a punch or try to dodge?

+ [PUNCH_LEFT¬Punch left.>>]
    #char:--
    You punch left, <>

    {shuffle:
        -   but end up trading blows with the goon. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

            ~ ScreenFlash("red", -1)

            ~ rightCapangaHP -= 1
            ~ yourDamage += 1

        -   but the goon's arm is faster and hits you square in the jaw. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

            ~ ScreenFlash("red", -1)

            ~ yourDamage += 1

        -   hitting the goon on the stomach. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

            ~ rightCapangaHP -= 1
    }

+ [POINT_DOWN¬Duck.>>]
    #char:--
    You dodge <>

    {shuffle:
        -   in the nick of time, and a massive arm swings over your head. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

            ~ rightCapangaHP -= 1

            #char:--
            You use the opportunity to deliver a blow to their stomach. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

        -   too slow, getting hit on the side of the head. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}
 
            ~ ScreenFlash("red", -1)

            ~ yourDamage += 1
    }

+ [PUNCH_RIGHT¬Punch right.>>]
    #char:--
    You punch right, <>

    {shuffle:
        -   but end up trading blows with the goon. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}
            ~ rightCapangaHP -= 1

        -   but the goon's arm is faster and hits you square in the jaw. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}
            ~ yourDamage += 1

        -   hitting the goon on the stomach. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}
            ~ rightCapangaHP -= 1
    }

-   #char:--
    You're <>

    {
        - yourDamage > 0:
            then forced to dodge when a follow-up punch <>

        - else:
            about to hit again, but a kick <>
    }

    ~ temp hitDirection = ""

    {shuffle:

        - coming from the right <>
            ~ hitDirection = "Right"

        - coming from the left <>
            ~ hitDirection = "Left"
    }

    catches you by surprise. Better dodge somewhere! {PlaySFX("LightWoosh")}

    + [POINT_LEFT¬Dodge left.>>]
        {
            - hitDirection == "Right":
                #char:--
                You manage to evade the <>

                {
                    - yourDamage > 0:
                        punch by a hair <>

                    - else:
                        kick easily <>
                }

                and hit back with one of your own!

                ~ rightCapangaHP -= 1

            - hitDirection == "Left":
                #char:--
                Bad choice. You're hit <>

                {
                    - yourDamage > 0:
                        on the nose by the punch. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                        ~ ScreenFlash("red", -1)

                        ~ yourDamage += 1

                    - else:
                        by the kick right in the shin. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                        ~ ScreenFlash("red", -1)

                        ~ yourDamage += 1
                }
        }

    + [POINT_RIGHT¬Dodge right.>>]
        {
            - hitDirection == "Left":
                #char:--
                You manage to evade the <>

                {
                    - yourDamage > 0:
                        punch by a hair <>

                    - else:
                        kick easily <>
                }

                and hit back with one of your own! {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                ~ rightCapangaHP -= 1

            - hitDirection == "Right":
                #char:--
                Bad choice. You're hit <>

                {
                    - yourDamage > 0:
                        on the nose by the punch. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                        ~ ScreenFlash("red", -1)

                        ~ yourDamage += 1

                    - else:
                        by the kick right in the shin. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                        ~ ScreenFlash("red", -1)

                        ~ yourDamage += 1
                }
        }

    -   #char:--
        You <>

        {
            - yourDamage > rightCapangaHP:
                hear a cry coming from your left.

                {
                    - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                        #char:Barto_fear_sad|L
                        {g_name}! W-watch out! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit1")} {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                    - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                        #char:Jackie_angry_happy|L
                        <shake>TAKE THIS!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")} {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                    - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                        #char:Kleber_angry_angry|L
                        <shake>HEY, YOU!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")} {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}
                }

                #char:--
                Before the raider can react, <>

                {
                    - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                        Barto comes in and hilariously strikes a rolling pin over the mook's head.{PlaySFX("Hit1")} {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                    - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                        Jackie grabs the mook with two of her arms while the third hits them in the jaw with a resounding crack.{PlaySFX("Hit1")} {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                    - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                        Kleber delivers a flying kick that somehow looks even more improvised than it should.{PlaySFX("Hit1")} {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}
                }

            - else:
                managed to do pretty well so far.

                #char:--
                Looking around you, your crew seems to have won their respective fights as well.
        }

        #char:--
        There's an explosion above! {PlaySFX("SingleExplosion")} {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

        #char:--
        Marimbondo's ship is retreating, a column of smoke rising from the left side.

        #char:--
        Looks like the C.C.A. took care of them too!

        #char:--
        You and the crew watch as Marimbond's goons scatter, the C.C.A. about to land near you. {StopMusic()}

    -> drinking_buddies



= drinking_buddies

~ FadeTo("black", 1, 1)

#char:Capybarman_neutral|R
Well, well, well. Looks like we got here just in time.

#char:Kleber_neutral_sad|L
Wait, <i>we</i>? What do you m— 

#char:Kleber_surprised_sad|L
<wave>WHOA!</wave> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

#char:Capybarman_eyesright|R
Yes, <i>we</i>. {PlayMusic("CapybarasTheme")}

#char:--
Several capybarmen start coming out of the ship, all of them in similar outfits.

#char:Capybarman_eyesright|R
Be grateful. We all had to make time off our stations for this.

#char:Capybarman_eyesleft|L
You must be wondering how we got here.

#char:Capybarman_eyesright|R
All C.C.A.'s ships have their communications system tapped for security purposes.

#char:Capybarman_eyesdown|L
Wouldn't do to let a bug boss around or employees and take our ships. Bad for business.

#char:--
<i>C.C.A's ships?</i>

#char:--
The 41-Bis belongs to <i>you</i>!

#char:Capybarman_eyesup|L
Friend, did you forget? Your ship is collateral for any damages to cargo or C.C.A. properties.

#char:Capybarman_eyesup|R
Then again, if you contacted a smuggler, you're probably not the type to read contracts.

#char:Barto_fear_sad|L
Thank the Skies you came! We would be outnumbered otherwise! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

#char:Jackie_happy_angry|L
Must be rare getting the whole family together like this, huh? {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

#char:Capybarman_eyesup|R
We are not all siblings, if that's what you're implying.

#char:Capybarman_neutral|L
Though we do like to chill together sometimes.

#char:--
You thank the Capybarmen for chasing Marimbondo away.

#char:Capybarman_shy|R
...Don't mention it, kid.

#char:Capybarman_neutral|L
No, seriously, don't mention it. To anyone. We have a reputation to maintain.

#char:Capybarman_neutral|R
Now then... Less standing, more flying back to the Skies. We're escorting you.

#char:--
An idea creeps up in your mind. You're in Surface again after several months...

#char:--
You ask the Capybarmen if you can make a small detour first.

#char:Capybarman_eyesright|R
...Alright. In the name of your service in the last few months, we'll go get your family first.

#char:Capybarman_eyesleft|L
Though <wiggle>you're</wiggle> gonna have to provide their accomodations.

#char:--
That's more than okay with you.

//AFFINITY PASS
{
    - g_affinity_Jackie >= 25:
        #char:Jackie_happy_angry|L
        We did it, Captain! We'll even meet your family too! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

//AFFINITY PASS
{
    - g_affinity_Kleber >= 25:
        #char:Kleber_happy_angry|R
        Well, I guess the capybaras did it, right? Anyway, I'm glad we're all in one piece. {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}
}

//AFFINITY PASS
{
    - g_affinity_Barto >= 25:
        #char:Barto_happy_angry|L
        I'll make a celebratory Surface feast! How about that, Captain? Will you assist me? {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}
}

#char:--
It's time to go see your family — alongside your new one. Whatever comes next, you can deal with.

#char:--
You are a Sky Caravaneer now. {StopMusic()}
//traduzir com os pronomes aqui - caravaneira, caravaneiro, caravaneire

{UnlockAchievement("RIVER_RAT_RESCUE")}

//<b>DRINKING BUDDIES ENDING</b>

{UnlockAchievement("WRITTEN_IN_THE_CLOUDS")}

-> MISSION_END



= final_plans_execution
{
    - give_ship:
        {
            - adult_mafagafo_appears && invoking_economicon && !crystal_reward:
                //Os capangas ficam ocupados durante o caos, mas Marimbondo ativa a turret da nave direto.
                #char:--
                The plan has worked so far! Marimbondo's goons are occupied by the Mafagafos and the tentacles coming from angles that shouldn't exist.

                {
                    - g_cursed_bottle_was_broken:
                        #char:--
                        You're happy to spot Silva on his own, using his hat as a shield.
                }

                #char:--
                There's an explosion above! {PlaySFX("SingleExplosion")} {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

                #char:--
                Marimbondo's ship is retreating, a column of smoke rising from the left side.

                #char:--
                Looks like the C.C.A. took care of them too!

                #char:--
                You and the crew watch as Marimbond's goons scatter, the C.C.A. about to land near you. {StopMusic()}

                -> drinking_buddies

            - (adult_mafagafo_appears && !g_ate_lunch_at_refinery && !crystal_reward) || (invoking_economicon && !g_mafagafo_was_delivered && !crystal_reward):
                //Um dos capangas fica ocupado pela reward usada, mas o outro parte pra cima. A porradaria é encurtada.
                #char:--
                Some of the goons are held up by <>

                {
                    - adult_mafagafo_appears:
                        the Mafagafos, but others still remain.

                    - invoking_economicon:
                        the strange tentacles, but not all of them.
                }

                {
                    - g_cursed_bottle_was_broken:
                        #char:--
                        You're happy to spot Silva on his own, using his hat as a shield.
                }

                #char:--
                Looks like you'll have to do some fighting yourself.

                -> final_porradaria_drinking_buddies

            - crystal_reward:
                {
                    - canceled_mafagafo:
                        {
                            - invoking_economicon:
                                #char:--
                                Some of the goons are held up by the strange tentacles, but not all of them.

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:--
                                        You're happy to spot Silva on his own, using his hat as a shield.
                                }

                                #char:--
                                Looks like you'll have to do some fighting yourself.

                                -> final_porradaria_drinking_buddies

                            - else:
                                #char:--
                                You have to make do with what's left.
                        }

                    - canceled_economicon:
                        {
                            - adult_mafagafo_appears:
                                #char:--
                                Some of the goons are held up by the Mafagafos, but others still remain.

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:--
                                        You're happy to spot Silva on his own, using his hat as a shield.
                                }

                                #char:--
                                Looks like you'll have to do some fighting yourself.

                                -> final_porradaria_drinking_buddies

                            - else:
                                #char:--
                                You have to make do with what's left.
                        }

                    - else:
                        {
                            - adult_mafagafo_appears && invoking_economicon:
                                #char:--
                                The plan has worked so far! Marimbondo's goons are occupied by the Mafagafos and the tentacles coming from angles that shouldn't exist.

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:--
                                        You're happy to spot Silva on his own, using his hat as a shield.
                                }

                                #char:--
                                There's an explosion above! {PlaySFX("SingleExplosion")} {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

                                #char:--
                                Marimbondo's ship is retreating, a column of smoke rising from the left side.

                                #char:--
                                Looks like the C.C.A. took care of them too!

                                #char:--
                                You and the crew watch as Marimbond's goons scatter, the C.C.A. about to land near you. {StopMusic()}

                                -> drinking_buddies

                            - (!adult_mafagafo_appears && g_mafagafo_was_delivered) || (!invoking_economicon && g_ate_lunch_at_refinery):
                                #char:--
                                At least you still have some stuff to use!

                            - else:
                                #char:--
                                Some of the goons are held up by <>

                                {
                                    - adult_mafagafo_appears:
                                        the Mafagafos, but others still remain.

                                    - invoking_economicon:
                                        the strange tentacles, but not all of them.
                                }

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:--
                                        You're happy to spot Silva on his own, using his hat as a shield.
                                }

                                #char:--
                                Looks like you'll have to do some fighting yourself.

                                -> final_porradaria_drinking_buddies
                        }
                }

            - (g_mafagafo_was_delivered && !mafagafo_reward) || (g_ate_lunch_at_refinery && !octornado_reward) || (g_outran_azurian_pursuers && g_helped_horacio_escape && !crystal_reward):
                #char:--
                Looks like you still have plans to put in action!
        }

    - !give_ship:
        {
            - adult_mafagafo_appears && invoking_economicon && !crystal_reward:
                //Os capangas ficam ocupados durante o caos, mas Marimbondo ativa a turret da nave direto.
                #char:--
                The plan has worked so far! Marimbondo's goons are occupied by the Mafagafos and the tentacles coming from angles that shouldn't exist.

                {
                    - g_cursed_bottle_was_broken:
                        #char:--
                        You're happy to spot Silva on his own, using his hat as a shield.
                }

                -> final_marimbondo_turret
            
            - (adult_mafagafo_appears && !g_ate_lunch_at_refinery && !crystal_reward) || (invoking_economicon && !g_mafagafo_was_delivered && !crystal_reward):
                //Um dos capangas fica ocupado pela reward usada, mas o outro parte pra cima. A porradaria é encurtada.
                #char:--
                Some of the goons are held up by <>

                {
                    - adult_mafagafo_appears:
                        the Mafagafos, but others still remain.

                    - invoking_economicon:
                        the strange tentacles, but not all of them.
                }

                {
                    - g_cursed_bottle_was_broken:
                        #char:--
                        You're happy to spot Silva on his own, using his hat as a shield.
                }

                #char:--
                Looks like you'll have to do some fighting yourself.

                -> final_porradaria_round_2

            - crystal_reward:
                {
                    - canceled_mafagafo:
                        {
                            - invoking_economicon:
                                #char:--
                                Some of the goons are held up by the strange tentacles, but not all of them.

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:--
                                        You're happy to spot Silva on his own, using his hat as a shield.
                                }

                                #char:--
                                Looks like you'll have to do some fighting yourself.

                                -> final_porradaria_round_2

                            - else:
                                #char:--
                                You have to make do with what's left.
                        }

                    - canceled_economicon:
                        {
                            - adult_mafagafo_appears:
                                #char:--
                                Some of the goons are held up by the Mafagafos, but others still remain.

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:--
                                        You're happy to spot Silva on his own, using his hat as a shield.
                                }

                                #char:--
                                Looks like you'll have to do some fighting yourself.

                                -> final_porradaria_round_2

                            - else:
                                #char:--
                                You have to make do with what's left.
                        }

                    - else:
                        {
                            - adult_mafagafo_appears && invoking_economicon:
                                #char:--
                                The plan has worked so far! Marimbondo's goons are occupied by the Mafagafos and the tentacles coming from angles that shouldn't exist.

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:--
                                        You're happy to spot Silva on his own, using his hat as a shield.
                                }

                                -> final_marimbondo_turret

                            - (!adult_mafagafo_appears && g_mafagafo_was_delivered) || (!invoking_economicon && g_ate_lunch_at_refinery):
                                #char:--
                                At least you still have some stuff to use!

                            - else:
                                #char:--
                                Some of the goons are held up by <>

                                {
                                    - adult_mafagafo_appears:
                                        the Mafagafos, but others still remain.

                                    - invoking_economicon:
                                        the strange tentacles, but not all of them.
                                }

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:--
                                        You're happy to spot Silva on his own, using his hat as a shield.
                                }

                                #char:--
                                Looks like you'll have to do some fighting yourself.

                                -> final_porradaria_round_2
                        }
                }

            - (g_mafagafo_was_delivered && !mafagafo_reward) || (g_ate_lunch_at_refinery && !octornado_reward) || (g_outran_azurian_pursuers && g_helped_horacio_escape && !crystal_reward):
                {
                    - TURNS_SINCE(->final_plans_execution) < 1:
                        #char:--
                        You tell Marimbondo there's no way you're sacrificing your ship and putting your crew at risk. {StopMusic()}

                        #char:Marimbondo_neutral_unhooded|R
                        So I guess we're doing this the hard way, then.

                        {
                            - g_cursed_bottle_was_broken:
                                #char:Silva_disgust|L
                                //Hnf. Azar seu, rato da Superfície.
                                Hmph. Your funeral, little Surface rat.
                        }

                        #char:Marimbondo_angry|R
                        What are you lot waiting for? <shake>GET THEM!</shake> {PlayMusic("Climax")} {Emotion("Explosion", "FFFFFF")} {PlaySFX("Punch")} {Shake("All", 1, -1)} {PlaySFX("StrongWoosh")} {Blink("Big Face", 1, -1, "white")} {Shake("Big Face", 1, 0.3)}

                        //Vocês estão outnumbered, mas a única saída é brigar. Os capangas se aproximam. Você pode escolher entre um dos planos da crew.
                        #char:--
                        You're clearly outnumbered, but there's no other way out of this. The gang members close in.

                        {
                            - g_time == 0:
                                #char:--
                                This will be a tough fight.
                        }

                        #char:--
                        Time to put your plan in action!

                    - else:
                        //Parece que você ainda tem planos a serem executados!
                        #char:--
                        Looks like you still have plans to put in action!
                }

            - else:
                //Se você não aceitar, Marimbondo chama vários capangas e fica observando a luta de dentro da nave dele.
                #char:--
                You tell Marimbondo there's no way you're sacrificing your ship and putting your crew at risk.  {StopMusic()}

                #char:Marimbondo_neutral_unhooded|R
                So I guess we're doing this the hard way, then.

                {
                    - g_cursed_bottle_was_broken:
                        #char:Silva_disgust|L
                        //Hnf. Azar seu, rato da Superfície.
                        Hmph. Your funeral, little Surface rat.
                }

                #char:Marimbondo_angry|R
                What are you lot waiting for? <shake>GET THEM!</shake> {PlayMusic("Climax")} {Emotion("Explosion", "FFFFFF")} {PlaySFX("Punch")} {Shake("All", 1, -1)} {PlaySFX("StrongWoosh")}  {Blink("Big Face", 1, -1, "white")} {Shake("Big Face", 1, 0.3)}

                //Vocês estão outnumbered, mas a única saída é brigar. Os capangas se aproximam. Você pode escolher entre um dos planos da crew.
                #char:--
                You're clearly outnumbered, but there's no other way out of this. The gang members close in.

                {
                    - g_time == 0:
                        #char:--
                        This will be a tough fight.
                }

                #char:--
                Time to put your plan in action!
        }
}

{
    - g_mafagafo_was_delivered || g_ate_lunch_at_refinery || (g_outran_azurian_pursuers && g_helped_horacio_escape):
        #char:--
        Should you use <>

        {
            - g_mafagafo_was_delivered && !adult_mafagafo_appears:
                {
                    - g_ate_lunch_at_refinery && (g_outran_azurian_pursuers && g_helped_horacio_escape) && !invoking_economicon && !crystal_reward:
                        Rosana's whistle, <>

                    - (g_ate_lunch_at_refinery && !invoking_economicon) || (g_outran_azurian_pursuers && g_helped_horacio_escape && !crystal_reward):
                        Rosana's whistle or <>

                    - else:
                        Rosana's whistle<>
                }
        }

        {
            - g_ate_lunch_at_refinery && !invoking_economicon:
                {
                    - g_outran_azurian_pursuers && g_helped_horacio_escape && !crystal_reward:
                        Gabriela's Economicon or <>

                    - else:
                        Gabriela's Economicon <>
                }
        }

        {
            - g_outran_azurian_pursuers && g_helped_horacio_escape && !crystal_reward:
                Horacio's Angra Crystal<>
        }

        ?
}

{
    - g_mafagafo_was_delivered:
        * (mafagafo_reward) [ROSANA¬Use the whistle!>>]
            #char:--
            You cry out Rosana's name. Kleber uses the Mafagafo whistle that Rosana gave you. {PlaySFX("Whistle")}
            //Você usa o apito.

        -> adult_mafagafo_appears -> final_plans_execution
}

{
    - g_ate_lunch_at_refinery:
        * (octornado_reward) [GABRIELA¬Use the Economicon!>>]
            #char:--
            You cry out Gabriela's name. Barto starts reading the Economicon out loud. {PlaySFX("Economicon")}
            //Você declama uma parte do Economicon.

        -> invoking_economicon -> final_plans_execution
}

{
    - g_outran_azurian_pursuers && g_helped_horacio_escape:
        * (crystal_reward) [HORACIO¬Use the crystal!>>]
            #char:--
            You look at Jackie, who's holding the pocket watch. 
            
            #char:--
            Are you sure about this? It can only be used once.

            ++ [YES¬Use the pocket watch.>>]
                {
                    - mafagafo_reward || octornado_reward:

                        #char:--
                        You yell Horacio's name. Jackie activates the stopwatch. {PlaySFX("Clock")}

                        #char:--
                        You flash back in time! {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")}

                        #char:--
                        You go back a few seconds, but...

                        {
                            - give_ship:
                                #char:Marimbondo_angry|R
                                You, you, you and you! Get them! The rest, with me!

                                #char:Marimbondo_angry|R
                                This isn't over, you brat! You're gonna pay me with interest, <shake>MARK MY WORDS!</shake> {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.9, 1)}

                                #char:--
                                Marimbondo enters his ship, while the four goons come at you again.

                            - else:
                                #char:Marimbondo_neutral_unhooded|R
                                So I guess we're doing this the hard way, then.

                                #char:Marimbondo_angry|R
                                What are you lot waiting for? <shake>GET THEM!</shake>  {Emotion("Explosion", "FFFFFF")} {PlaySFX("Punch")} {Shake("All", 1, -1)} {PlaySFX("StrongWoosh")} {Blink("Big Face", 1, -1, "white")} {Shake("Big Face", 1, 0.3)}

                        }
                        
                        #char:Jackie_fear_happy|L
                        Captain! The Angra Crystal is drained! We can't rewind anymore!

                        {
                            - mafagafo_reward:
                                ~ canceled_mafagafo = true

                            - octornado_reward:
                                ~ canceled_economicon = true
                        }
                        
                        #char:--
                        That's not one, but two resources down the drain.

                    - else:

                        #char:--
                        You yell Horacio's name. Jackie activates the stopwatch. {PlaySFX("Clock")}

                        #char:--
                        You flash back in time! {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")}

                        #char:--
                        You go back a few seconds, but...

                        {
                            - give_ship:
                                #char:Marimbondo_angry|R
                                You, you, you and you! Get them! The rest, with me!

                                #char:Marimbondo_angry|R
                                This isn't over, you brat! You're gonna pay me with interest, <shake>MARK MY WORDS!</shake> {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.9, 1)}

                                #char:--
                                Marimbondo enters his ship, while the four goons come at you again.

                                #char:Jackie_fear_happy|L
                                Captain! The Angra Crystal is drained! We can't rewind anymore!

                                #char:--
                                Looks like you wasted that plan.

                            -> final_porradaria_drinking_buddies

                            - else:
                                #char:Marimbondo_neutral_unhooded|R
                                So I guess we're doing this the hard way, then.

                                {
                                    - g_cursed_bottle_was_broken:
                                        #char:Silva_disgust|L
                                        //Hnf. Azar seu, rato da Superfície.
                                        Hmph. Your funeral, little Surface rat.
                                }

                                #char:Marimbondo_angry|R
                                What are you lot waiting for? <shake>GET THEM!</shake>  {Emotion("Explosion", "FFFFFF")} {PlaySFX("Punch")} {Shake("All", 1, -1)} {PlaySFX("StrongWoosh")} {Blink("Big Face", 1, -1, "white")} {Shake("Big Face", 1, 0.3)}

                                #char:--
                                The crooks are still there. And the Angra crystal probably drained with use.

                                #char:--
                                Looks like you wasted that plan.
                        }
                }

            -> final_plans_execution

            ++ [NO¬Don't use it for now.>>]
                //Melhor deixar pra outra hora. Nunca se sabe.
                #char:--
                You shake your head at Jackie. Better keep it for a better moment.

            -> final_plans_execution
}

{
    - !g_mafagafo_was_delivered && !g_ate_lunch_at_refinery && !g_outran_azurian_pursuers && !g_helped_horacio_escape:
        {
            - final_plan_barto:

                #char:--
                You hear the 41-Bis' gun turret activating. Kleber shoots straight at the pile of oil barrels, breaking them. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                #char:--
                The area is instantly taken over by flames and a red-colored mist. {ScreenFlash("yellow", 0.5)} {PlaySFX("Fire")}

            -> final_porradaria_round_1

            - final_plan_jackie:

                #char:--
                You hear the 41-Bis' gun turret activating. Jackie shoots at the gang, hitting some and forcing others to find cover. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                #char:--
                You, Kleber and Barto take out the firebombs you prepared with Deu Ruim. 

            -> final_porradaria_round_1

            - final_plan_kleber:

                #char:--
                You hear the 41-Bis' gun turret activating. Kleber shoots straight at the pile of fake oil barrels, detonating them. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Cannon")} {Blink("All", 1, -1, "white")} 

                #char:--
                A blaze engulfs part of Marimbondo's ship. You hear his crew screaming. {ScreenFlash("yellow", 0.5)} {PlaySFX("Fire")}

            -> final_porradaria_round_1
        }
}



= adult_mafagafo_appears
//Por um instante, nada acontece, mas depois um bando de Mafagafos adultos aparece e vai pra cima dos capangas do Marimbondo.
#char:--
For a moment, nothing happens. There's only dead silence around you.

{
    - !invoking_economicon && !give_ship:
        #char:Marimbondo_angry|R
        What's your friend doing, brat? Is that some kind of—
}

#char:--
Then there's a loud noise. 

{
    - mafagafoSkin == "redFeather":
        ~ PlaySFX("FlyingMafagafoRedFeather")

    - mafagafoSkin == "blueScale":
        ~ PlaySFX("FlyingMafagafoBlueScale")

    - mafagafoSkin == "greenFur":
        ~ PlaySFX("FlyingMafagafoGreenFur")
}

#char:--
{PlaySFX("Mafagafos")} It's followed by the <>

{
    - mafagafoBody == "winged":
        fluttering of wings <>

    - mafagafoBody == "quadruped":
        sound of many legs stomping <>

    - mafagafoBody == "biped":
        sound of heavy footsteps <>
}

coming towards you.

#char:Barto_fear_sad|L
Oh Skies... so <i>those</i> are Surface's Mafagafos! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}

#char:--
{StopSFX("Mafagafos")} The massive <>

{
    - mafagafoSkin == "redFeather":
        red-feathered <>
        ~ UniqueEffectActivate("FlyingMafagafosFeatherRed") 
        ~ PlaySFX("FlyingMafagafoRedFeather")

    - mafagafoSkin == "blueScale":
        blue-scaled <>
        ~ UniqueEffectActivate("FlyingMafagafosScaleBlue")
        ~ PlaySFX("FlyingMafagafoBlueScale")

    - mafagafoSkin == "greenFur":
        green-furred <>
        ~ UniqueEffectActivate("FlyingMafagafosFurGreen")
        ~ PlaySFX("FlyingMafagafoGreenFur")
}


creatures make even Barto look tiny. They look around confused, as if searching for something.

{
    - give_ship:
        #char:--
        Until Marimbondo's ship shoots at them, that is. {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}
        
        #char:--
        The Mafagafos do not take that well.

    - else:
        #char:--
        Until Marimbondo shoots at them, that is. {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}
        
        #char:--
        The Mafagafos do not take that well.
}

#char:--
They begin charging the smuggler's crew, emitting loud noises.

{
    - mafagafoSkin == "redFeather":
        ~ UniqueEffectActivate("FlyingMafagafosFeatherRed") 
        ~ PlaySFX("FlyingMafagafoRedFeather")

    - mafagafoSkin == "blueScale":
        ~ UniqueEffectActivate("FlyingMafagafosScaleBlue")
        ~ PlaySFX("FlyingMafagafoBlueScale")

    - mafagafoSkin == "greenFur":
        ~ UniqueEffectActivate("FlyingMafagafosFurGreen")
        ~ PlaySFX("FlyingMafagafoGreenFur")
}


{
    - !give_ship:
        #char:Marimbondo_angry|R
        You little — you think these pets are going to save you!? {Shake("Big Face", 2, 1)} {PlaySFX("Punch")} {PlaySFX("StrongWoosh")}
}

->->



= invoking_economicon

#char:--
It's like a switch is flickered in reality. One moment, everything is normal.

#char:--
Then come the tentacles. They sprout around the ships like plants, from every conceivable and inconceivable angle. {Shake("Big Face", 1, 0.5)} {UniqueEffectActivate("VenomTentacles")} {PlaySFX("Tentacles")} {PlaySFX("BigDamage")} {Shake("All", 3, -1)}  {Blink("All", 2, -1, "White")}

#char:--
And the voices come with them too... {PlaySFX("Economicon")}

#char:--
<color=refineryPurple><shake = 0.3><b>"What is the price of the abundant fear of all truths?"</shake></color></b> 

{
    - give_ship:
        #char:--
        Looking around, you can tell the voices are speaking to the gang members as well.

    - else:
        #char:--
        Looking around, you can tell the voices are speaking to Marimbondo and his crew as well.
}

#char:--
As the questions get louder, some answer, others fall to the ground screaming about pie graphs.

{
    - !give_ship:
        #char:Marimbondo_angry|R
        What the— <shake>you planned this from the start!</shake> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit1")}
}

->->



= final_porradaria_round_1

{
    - final_plan_barto:
        #char:--
        The flames are tall and the heat makes it hard to breathe. Guess this thing really is strong.

        #char:--
        Marimbondo's grunts try to run away from the cloud. You spy him retreating to his ship.

        #char:--
        Before you can chase after him, you're blocked by his remaining crew.

        #char:--
        Not many are left, though. Most have fled or got thrown to the ground by the blast.

        #char:--
        Still, you have to fight the ones that are left.

    - final_plan_jackie:

        #char:--
        Combined, both of these things force them back. You spy Marimbondo retreating to his ship.

        #char:--
        Before you or your crew can chase after him, you're blocked by his remaining crew.

        #char:--
        Some of them weren't discouraged by your fire and bombs. And they aren't infinite.

        #char:--
        Looks like it's time to use your fists.

    - final_plan_kleber:

        #char:Marimbondo_angry|R
        You, you and you! Help me with the ship! The rest of you, <shake>AFTER THEM!</shake> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit2")} {Shake("Big Face", 0.5, 0.3)}

        #char:--
        Some of them try to deal with the flames. You see Marimbondo retreating inside the ship.

        #char:--
        Before you or your crew can chase after him, you're blocked by his remaining crew.
}

#char:--
Two goons come for you — one from the left and another from the right.

#char:--
Do you go for a punch or try to dodge?

+ (punch_left_capanga_1) [PUNCH_LEFT¬Punch left.>>]
    //Você tenta dar um soco no capanga da esquerda, mas ele desvia, enquanto o da direita te dá um chute.
    #char:--
    You try to punch the left one, but he dodges. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

    #char:--
    The one on the right kicks you in the side. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

    ~ ScreenFlash("red", -1)

+ [POINT_DOWN¬Duck.>>]
    //Você desvia de um gancho de um dos capangas.
    #char:--
    You dodge a hook from the goon on the left. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

+ (punch_right_capanga_1) [PUNCH_RIGHT¬Punch right.>>]
    //Você dá um soco no capanga da direita, mas o da esquerda te dá um chute.
    #char:--
    You hit the right goon square in the jaw, but the left one gets you with a gut punch. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

    ~ ScreenFlash("red", -1)

    ~ rightCapangaHP -= 1

-   #char:--
    Afterwards, both of the gang members rush you. 
    
    #char:--
    Better dodge somewhere!

    + [POINT_LEFT¬Dodge left.>>]
        {
            - punch_right_capanga_1:
                //Você desvia pro lado errado e toma um soco na cara do capanga da direita.
                #char:--
                Bad choice. You're hit on the nose from the raider on the left.{PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                ~ ScreenFlash("red", -1)

            - else:
                //Você desvia pro lado certo, driblando os dois oponentes e abrindo uma oportunidade pra ataque.
                #char:--
                You manage to evade both raiders weaving between them.{PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}  
        }

    -> final_porradaria_round_2

    + [POINT_RIGHT¬Dodge right.>>]
        {
            - punch_left_capanga_1:
                #char:--
                Bad choice. You're hit on the nose from the raider on the right.{PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                ~ ScreenFlash("red", -1)

            - else:
                #char:--
                You manage to evade both raiders weaving between them. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 
        }

    -> final_porradaria_round_2



= final_porradaria_round_2

{
    - mafagafo_reward:

        #char:--
        One of the goons is tackled by the colossal Mafagafo. That's one down.

    - octornado_reward:

        #char:--
        Suddenly, one of the goons collapses, muttering about 'increases in the frequency of B2B telepathic communications'.

        #char:--
        The other one looks frightened, but then turns to face you and your fight resumes.
}

+ (punch_left_capanga_2) [PUNCH_LEFT¬Punch left.>>]
    {
        - mafagafo_reward || octornado_reward:
            {shuffle:
                -

                    #char:--
                    You hit the remaining crook with the best uppercut of your life.   {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    ~ leftCapangaHP -= 1

                -

                    #char:--
                    You fumble around, and the remaining crook blocks your attack and throws you to the ground. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    ~ ScreenFlash("red", -1)
            }

        - else:
            {shuffle:
                -

                    #char:--
                    You hit the left crook with the best uppercut of your life. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    ~ leftCapangaHP -= 1

                -

                    #char:--
                    You fumble around, and one of the crooks blocks your attack and throws you to the ground. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    ~ ScreenFlash("red", -1)
            }
    }

+ [POINT_DOWN¬Duck.>>]

    #char:--
    You duck, predicting an attack that never comes.  {PlaySFX("LightWoosh")}

    #char:--
    Looks like you've lost your opportunity.

+ (punch_right_capanga_2) [PUNCH_RIGHT¬Punch right.>>]
    {
        - mafagafo_reward || octornado_reward:
            {shuffle:
                -
                    #char:--
                    You hit the remaining one with a punch in the ribs. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    ~ leftCapangaHP -= 1

                -
                    #char:--
                    You fumble around, and the remaining crook blocks your attack and throws you to the ground. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    ~ ScreenFlash("red", -1)
            }

        - else:
            {shuffle:
                -
                    #char:--
                    You hit the one on the right with a punch in the ribs. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    ~ rightCapangaHP -= 1

                -
                    #char:--
                    You fumble around, and one of the crooks blocks your attack and throws you to the ground. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    ~ ScreenFlash("red", -1)
            }
    }

-   #char:--
    The <>

    {
        - mafagafo_reward || octornado_reward:
            grunt sees an opportunity to rush you again. <>

        - else:
            two try a pincer attack. <>
    }

    Where do you roll to?

    + [POINT_LEFT¬Roll left.>>]
        {
            - punch_left_capanga_2 || punch_right_capanga_2:
                {
                    - rightCapangaHP > 0 && !mafagafo_reward && !octornado_reward:
                        //Você tem uma chance de driblar um ataque coordenado dos capangas.

                        {shuffle:
                            -
                                //Você dá dodge.
                                #char:--
                                You roll away from a downwards punch and a kick to the shin! {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                                #char:--
                                Looks like they're not so coordinated after all. 

                            -
                                //Você tenta desviar, mas um dos capangas te dá uma porrada.
                                #char:--
                                You dodge the first attack, but get kicked in the shin right after. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                                ~ ScreenFlash("red", -1)
                        }

                    - mafagafo_reward || octornado_reward:
                        {shuffle:
                            -
                                //Você dá dodge.
                                #char:--
                                You roll away from a downwards punch!

                            -
                                //Você tenta desviar, mas um dos capangas te dá uma porrada.
                                #char:--
                                You try to roll, but get kicked in the shin. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                                ~ ScreenFlash("red", -1)
                        }

                    - else:
                        //O capangada direita é nocauteado. O da esquerda tenta um ataque, mas você desvia de qualquer jeito.
                        #char:--
                        You manage to counter the right mook's punch and knock them out! {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                        #char:--
                        The remaining one tries a desperate kick, but you step back just in time. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 
                }

            - else:
                //Você perde tempo "strafing" em volta deles.
                #char:--
                You strafe around the two mooks, trying to get a good read.

                #char:--
                They keep their distance. It ends up being a waste of time.
        }

    + [POINT_RIGHT¬Roll right.>>]
        {
            - punch_left_capanga_2 || punch_right_capanga_2:
                //Você rola e escapa de qualquer jeito.
                {
                    - leftCapangaHP > 0 && !mafagafo_reward && !octornado_reward:
                        //Você tem uma chance de driblar um ataque coordenado dos capangas.

                        {shuffle:
                            -
                                //Você dá dodge.
                                #char:--
                                You roll away from a downwards punch and a kick to the shin! {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                                #char:--
                                Looks like they're not so coordinated after all.

                            -
                                //Você tenta desviar, mas um dos capangas te dá uma porrada.
                                #char:--
                                You dodge the first attack, but get kicked in the shin right after. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                                ~ ScreenFlash("red", -1)
                        }

                    - mafagafo_reward || octornado_reward:
                        {shuffle:
                            -
                                //Você dá dodge.
                                #char:--
                                You roll away from a downwards punch!

                            -
                                //Você tenta desviar, mas um dos capangas te dá uma porrada.
                                #char:--
                                You try to roll, but get kicked in the shin. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                                ~ ScreenFlash("red", -1)
                        }

                    - else:
                        //O capangada direita é nocauteado. O da esquerda tenta um ataque, mas você desvia de qualquer jeito.
                        #char:--
                        You manage to counter the left mook's punch and knock them out! {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                        #char:--
                        The remaining one tries a desperate kick, but you step back just in time. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 
                }

            - else:
                //Você perde tempo "strafing" em volta deles.
                #char:--
                You strafe around the two mooks, trying to get a good read.

                #char:--
                They keep their distance. It ends up being a waste of time.
        }

    -   #char:--
        Around you, you hear your crewmates fighting. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

        #char:--
        Barto is keeping three people at bay with his claws. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

        #char:--
        Jackie has grabbed a guy with all three arms and is swinging him around like a club. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

        {
            - g_cursed_bottle_was_broken:
                #char:--
                Her target is Silva, who seems none too pleased. 
        }

        #char:--
        Kleber managed to push another raider inside a crack in the ground.

        #char:--
        You can't let them down. Better make the next move count. 

        + [PUNCH_LEFT¬Punch left.>>]
            //Você acerta dois socos no capanga da esquerda.
            {
                - leftCapangaHP > 0 && rightCapangaHP > 0 && !mafagafo_reward && !octornado_reward:
                    #char:--
                    Your opponents aren't ready for your move. 

                    #char:--
                    You hit the left gang member twice before they can react. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    #char:--
                    They crumple to the ground in a satisfying way.

                    ~ leftCapangaHP -= 2

                - else:
                    #char:--
                    You feint to the right. The remaining gang member isn't ready for that.

                    #char:--
                    You manage to punch them twice before they can react. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    {
                        - leftCapangaHP > 0:
                            ~ leftCapangaHP -= 2

                        - rightCapangaHP > 0:
                            ~ rightCapangaHP -= 2
                    }
            }

        -> final_marimbondo_turret

        + [POINT_DOWN¬Dodge.>>]
            //Você perde tempo desviando dos ataques dos capangas.
            #char:--
            You'd rather not risk getting hit right now.

            #char:--
            This lets your <>

            {
                - leftCapangaHP > 0 && rightCapangaHP > 0 && !mafagafo_reward && !octornado_reward:

                    opponents <>

                - else:

                    opponent <>
            }

            take the initiative instead. 

            #char:--
            Forced to dodge a barrage of attacks, you can't find a good opening. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

        -> final_marimbondo_turret

        + [PUNCH_RIGHT¬Punch right.>>]
            {
                - leftCapangaHP > 0 && rightCapangaHP > 0 && !mafagafo_reward && !octornado_reward:
                    #char:--
                    Your opponents aren't ready for your move.

                    #char:--
                    You hit the right gang member twice before they can react. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    #char:--
                    They crumple to the ground in a satisfying way.

                    ~ rightCapangaHP -= 2

                - else:
                    #char:--
                    You feint to the left. The remaining gang member isn't ready for that.

                    #char:--
                    You manage to punch them twice before they can react. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                    {
                        - leftCapangaHP > 0:
                            ~ leftCapangaHP -= 2

                        - rightCapangaHP > 0:
                            ~ rightCapangaHP -= 2
                    }
            }

        -> final_marimbondo_turret



= final_marimbondo_turret

{
    - (rightCapangaHP == 0 && leftCapangaHP == 0) || (rightCapangaHP == 0 && (mafagafo_reward || octornado_reward)) || (leftCapangaHP == 0 && (mafagafo_reward || octornado_reward)) || (mafagafo_reward && octornado_reward):
        
        #char:--
        Looks like there's no one else in your way! Time to go for Marimbondo!

        #char:--
        Just then, see an enormous cannon rotation. A gun turret has activated. But it's not yours.

        #char:--
        Looks like Marimbondo has decided to take you out from his ship.

        #char:--
        But with <>

        {
            - mafagafo_reward && octornado_reward:
                the wild Mafagafos and whatever it is that came because of the Economicon<>

            - mafagafo_reward || octornado_reward:
                {
                    - mafagafo_reward:
                        the wild Mafagafos <>

                    - octornado_reward:
                        whatever it is that came because of the Economicon<>
                }

            - else:
                no backup and four different targets<>
        }

        , he clearly doesn't know where to shoot first.

        #char:--
        The turret rotates... directly to where <>

        {
            - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                Barto <>

            - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                Jackie <>

            - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                Kleber <>
        }

        is.

    //-> final_confrontation

    - else:
        //O crewmate com quem você te mais afinidade aparece e nocauteia um dos capangas remanescentes.
        #char:--
        You still have one opponent to deal with. Or so you think, before a cry comes from your left.

        {
            - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                //Você tem mais afinidade com o Bartô.
                #char:Barto_fear_sad|L
                {g_name}! W-watch out! {Emotion("Explosion", "39f2d6")} {PlaySFX("StrongWoosh")}

                #char:--
                Barto comes in and hilariously strikes a rolling pin over the mook's head.

            - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                //Você tem mais afinidade com a Jackie.
                #char:Jackie_angry_happy|L
                <shake>TAKE THIS!</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("StrongWoosh")}

                #char:--
                Jackie grabs the mook with two of her arms while the third hits them in the jaw with a resounding crack. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                #char:--
                Ouch. That was one of her metal arms.

            - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                //Você tem mais afinidade com o Kleber.
                #char:Kleber_angry_angry|L
                <shake>HEY, YOU!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

                #char:--
                Kleber delivers a flying kick that somehow looks even more improvised than it should. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)} 

        }

        #char:--
        You breathe a sigh of relief. You're glad your crewmates are there to help you.

        ~ ScreenFlash("white", -1)

        #char:--
        That relief only lasts until you hear a loud noise from Marimbondo's ship.

        //Marimbondo ativa a turret do ship e se prepara para atirar no seu crewmate.
        #char:--
        To your right, you see the turret rotating... directly to where <>

        {
            - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                Barto <>

            - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                Jackie <>

            - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                Kleber <>
        }

        is.
}

{
    - paidDebt == false:
        //{
            //- (!mafagafo_reward && !octornado_reward):

                {
                    - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):

                        #char:--
                        You try to warn Barto, but it's too late.

                        #char:--
                        The turret fire hits him. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}
                        
                        #char:--
                        His apron becomes stained with blood.

                        #char:Barto_injured_sad|R
                        ...
                        
                        ~ barto_died = true

                        #char:Jackie_fear_happy|L
                        <shake>BARTO!</shake> {Emotion("Explosion", "ea2929")} {PlaySFX("Hit1")}
                        
                        #char:Jackie_fear_happy|L
                        We have to find cover! Kleber, {g_name}, help me carry him!

                        #char:Kleber_fear_angry|L
                        Shit... shit! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit2")}

                    - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):

                        #char:--
                        You try to warn Jackie, but it's too late.

                        #char:--
                        The turret fire hits her. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

                        #char:Jackie_injured_sad|R
                        ...

                        ~ jackie_died = true

                        #char:Barto_fear_sad|L
                        <shake>J-JACKIE!</shake> {Emotion("Explosion", "ea2929")} {PlaySFX("Hit1")}

                        #char:Kleber_fear_angry|L
                        Shit! {g_name}, we gotta find cover! Barto, carry her! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit2")}

                    - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):

                        #char:--
                        You try to warn Kleber, but it's too late.

                        #char:--
                        The turret fire hits him. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

                        #char:Kleber_injured_sad|R
                        ...

                        ~ kleber_died = true

                        #char:Barto_fear_sad|L
                        <shake>K-Kleber?</shake> {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit1")}

                        #char:Jackie_fear_happy|L
                        We have to find cover! Barto, {g_name}, help me carry him! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Hit2")}
                }

                #char:--
                You hide behind a jagged spike of rock close to where you are.

                {
                    - barto_died:
                        #char:Barto_injured_sad|L
                        S-sorry, everyone. I-I should have paid more attention.

                    - jackie_died:
                        #char:Jackie_injured_sad|L
                        (cough) Didn't see the turret. I-I'm sorry, {g_name}.

                    - kleber_died:
                        #char:Kleber_injured_sad|L
                        Damn... Can't believe I fell for that.
                }

                {
                    - g_outran_azurian_pursuers && g_helped_horacio_escape && !crystal_reward:
                        //Você tem a opção de voltar no tempo com o relógio do Horácio.
                        {
                            - jackie_died:
                                #char:Barto_fear_angry|L
                                I-I'm no doctor, but I'll try to help the best I can! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                                #char:Kleber_sad_angry|L
                                {g_name}, isn't there anything we can do? {Emotion("WaveIn", "0a4de8")}  {PlaySFX("Bad2")}

                                #char:--
                                Suddenly, you remember the stopwatch Jackie made.

                                #char:--
                                You search her pockets and sure enough, it's still there.

                                //AFFINITY PASS
                                {
                                    - g_affinity_Jackie >= 0:
                                        #char:--
                                        Before you can use it, though, she places a hand on top of yours.

                                        #char:Jackie_injured_happy|L
                                        Captain, I'm fine. Go... after... him...!

                                        #char:Barto_fear_angry|L
                                        You're clearly not fine! Hold still!
                                }

                            - else:
                                #char:Jackie_surprised_happy|L
                                {g_name}! Let's use the stopwatch! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

                                #char:--
                                Jackie is right. You can use Horacio's Angra Crystal!

                                //AFFINITY PASS
                                {
                                    - barto_died && g_affinity_Barto >= 0:
                                        #char:--
                                        Barto speaks up before you can.

                                        #char:Barto_injured_sad|L
                                        I will... be fine... go after... Marimbondo.

                                        #char:Kleber_fear_angry|L
                                        W-What are you talking about! You're wheezing! {Emotion("Explosion", "ea2929")} {PlaySFX("Hit1")}

                                    - kleber_died && g_affinity_Kleber >= 0:
                                        #char:--
                                        Your thoughts are interrupted by Kleber coughing.

                                        #char:Kleber_injured_happy|L
                                        I'll be fine, Cap. Survived... way worse.

                                        #char:Jackie_sad_sad|L
                                        No... Kleber! This isn't a joke! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}
                                }
                        }

                        #char:--
                        Will you use Horacio's crystal to turn back time and save <>
                        {
                            - barto_died:
                                Barto<>

                            - jackie_died:
                                Jackie<>

                            - kleber_died:
                                Kleber<>
                        }
                        
                        ?

                        + (crystal_reward_2) [HORACIO¬Use the crystal.>>]
                            //Você usa o cristal, voltando no tempo e nocauteando os dois capangas.
                            #char:--
                            It's not even a question. This is your crewmember you're talking about.

                            #char:--
                            You're not sure if it'll work, but you have to try.

                            #char:--
                            You turn back the watch as much as you can. 
                            
                            #char:--
                            There's the same feeling from back in Azure! {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")}

                            #char:--
                            When time stabilizes around you, you're back <>

                            {
                                - mafagafo_reward && octornado_reward:
                                    to just before <>

                                    {
                                        - barto_died:
                                            Barto <>

                                        - jackie_died:
                                            Jackie <>

                                        - kleber_died:
                                            Kleber <>
                                    }

                                    got hit.

                                - mafagafo_reward || octornado_reward:
                                    in the middle of the commotion from before.

                                    #char:--
                                    Knowing the remaining goon's movements, you waste no time taking care of them.  {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                                    {
                                        - rightCapangaHP > 0:
                                            ~ rightCapangaHP = 0

                                        - leftCapangaHP > 0:
                                            ~ leftCapangaHP = 0
                                    }

                                - else:
                                    to the middle of the fight with Marimbondo's goons.

                                    #char:--
                                    Knowing their movements, you waste no time taking care of them. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                                    ~ rightCapangaHP = 0
                                    ~ leftCapangaHP = 0
                            }

                            //Isso impede que seu crewmember se fira.
                            ++ [WARN¬Warn before it's late!>>]
                                #char:--
                                You shout a warning to <>

                                {
                                    - barto_died:
                                        Barto. He jumps from his position clumsily, but it's enough to evade the shot. {PlaySFX("LightWoosh")}

                                        ~ barto_died = false

                                    - jackie_died:
                                        Jackie. Her eyes widen and she rolls to the left, the volley missing her entirely. {PlaySFX("LightWoosh")}

                                        ~ jackie_died = false

                                    - kleber_died:
                                        Kleber. He runs to his right, with Marimbondo's aim unable to keep up. {PlaySFX("LightWoosh")}

                                        ~ kleber_died = false
                                }

                            -> final_confrontation

                    - else:
                        //Os membros remanescentes precisam se reorganizar. Você pode tentar ir em direção à nave pousada do Marimbondo ou tentar fugir no 41-Bis.
                        #char:--
                        Now it's personal. You tell the crew to stay where they are. You're going after Marimbondo.

                    -> final_confrontation
                }

            /*
            - else:
                //Você consegue avisar/Empurrar o crewmate a tempo. Ele se fere de raspão. Vocês procuram cover.
                ++ [WARN¬Warn before it's late!>>]
                    #char:--
                    You manage to warn <>

                    {
                        - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                            Barto <>

                        - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                            Jackie <>

                        - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                            Kleber <>
                    }

                    in time.

                    #char:--
                    {
                        - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                            The bullet grazes Barto's tail, but it doesn't look serious. {PlaySFX("LightWoosh")}

                        - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                            Jackie barely dodges, her mechanical arms blocking the bullet. {PlaySFX("LightWoosh")}

                        - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                            Kleber dodges, falling on his back as he loses his balance. {PlaySFX("LightWoosh")}
                    }

                    #char:--
                    You find cover behind a large jagged rock.

                -> final_confrontation
        }*/

    - else:
        //Você consegue avisar/Empurrar o crewmate a tempo. Ele se fere de raspão. Vocês procuram cover.
        ++ [WARN¬Warn them before it's too late!>>]
            #char:--
            You manage to warn <>

            {
                - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                    Barto <>

                - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                    Jackie <>

                - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                    Kleber <>
            }

            in time!

            #char:--
            {
                - (g_affinity_Barto >= g_affinity_Jackie) && (g_affinity_Barto >= g_affinity_Kleber):
                    The bullet grazes Barto's tail, but it doesn't look serious. {PlaySFX("LightWoosh")}

                - (g_affinity_Jackie >= g_affinity_Barto) && (g_affinity_Jackie >= g_affinity_Kleber):
                    Jackie barely dodges, her mechanical arms blocking the bullet. {PlaySFX("LightWoosh")}

                - (g_affinity_Kleber >= g_affinity_Barto) && (g_affinity_Kleber >= g_affinity_Jackie):
                    Kleber dodges, falling on his back as he loses his balance. {PlaySFX("LightWoosh")}
            }

            #char:--
            You find cover behind a large jagged rock.

    -> final_confrontation
}



= final_confrontation_use_crystal

{
    - g_outran_azurian_pursuers && g_helped_horacio_escape && !crystal_reward && !crystal_reward_2:
        //Você tem a opção de voltar no tempo com o relógio do Horácio.
        #char:--
        You suddenly remember: the pocket watch with the Angra Crystal!
        
        #char:--
        Heading back to Jackie, you shout for her to use it.

        + (crystal_reward_3) [HORACIO¬Use the crystal.>>]
            //Você usa o cristal pra voltar no tempo, salvando o 41-Bis.
            #char:--
            Nodding, your engineer activates the trinket! {Blink("All", 1, -1, "white")} {Shake("All", 3, 4)}  {PlaySFX("BigDamage")} {UniqueEffectActivate("TimeTravel")} {PlaySFX("TimeTravel")}

            ~ 41_bis_exploded = false

            #char:--
            Then you're back behind the sharp rock, with a strange feeling of <i>déjà vu</i>.
            
            -> final_confrontation

    - else:
        #char:--
        You clench your fists. The 41 was a piece of junk, but it was still your ship.

        -> final_confrontation
}



= final_confrontation

{
    - final_confrontation > 1:
        #char:--
        Now, there's only one thing left for you to do. {StopMusic()}

    - else:
        #char:--
        //Agora que vocês estão fora da mira do Marimbondo, ele pode tentar fugir na nave dele.
        Now that you're out of Marimbondo's line of sight, he can try to take off in his ship.

        #char:--
        //Voltar para o 41-Bis pode ser uma boa opção — você pode usar as próprias armas e perseguir Marimbondo.
        Going back to the 41-Bis could be a good option — you can use its turret and pursue Marimbondo if he flees.

        #char:--
        //Ou você pode ir atrás daquele sanguessuga direto na nave dele. Acabar de vez com isso.
        Or you can try to go after that bloodsucker directly on his ship. End it once and for all.
}

+ [MARIMBONDO¬Go after Marimbondo.>>]
    //Você tenta chegar perto do ship do Marimbondo.
    #char:--
    You try to get close to Marimbondo's ship.

    #char:--
    He fires a few times, but you manage to get so close that the turret has no available angles to hit you.  {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}


* [SHIP¬Go to the 41-Bis.>>]
    //Marimbondo atira desordenadamente, atingindo o 41-Biz, que começa a pegar fogo em algumas partes. A nave foi comprometida.
    #char:--
    Better make this fight ship against ship.

    #char:--
    Marimbondo seems to have other ideas, though. He tries to stop you with his turret, firing at will. {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

    #char:--
    In doing so, one of the shots hits the 41-Bis with a loud bang! {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

    ~ 41_bis_exploded = true

    #char:--
    Not only that, he seems to have hit the engine. A fire starts to form.

    -> final_confrontation_use_crystal

-   #char:--
    You can hear your crew behind you, trying to distract Marimbondo.

    #char:--
    He shoots at them a few times too, but isn't fast enough for three targets moving behind cover. {Blink("All", 1, -1, "white")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}

    #char:--
    Then there's the loud rumbling of an engine. He's trying to flee!

    #char:--
    You're able to enter his ship's hatch before it closes. {StopSFX("Fire")}  {StopMusic()}

    {
        - 41_bis_exploded == false:
            {UnlockAchievement("SANTOS_DUMONT")}
    }

    ~ FadeTo("Black", 1, 3)
    
    #char:--
    Now you're alone in there with the smuggler. 

    #char:--
    You don't even stop to think your approach, going straight to the cockpit. {PlayMusic("MarimbondoTension")}

    #char:--
    A gunshot comes from the cockpit and grazes the wall to your left! {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")} {UniqueEffectActivate("41BisDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

    #char:Marimbondo_angry|R
    <shake>YOU DAMN SURFACER BRAT</shake>! You think you're getting out of this!? {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 3, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit2")}

    #char:--
    You're unarmed. How are you gonna deal with Marimbondo's gun?

    #char:--
    As you consider letting him run out of ammo, you hear a noise from his terminal. {PlaySFX("Transmission")}

    #char:Capybarman_neutral_hologram|L
    I know you can hear me. This is your only warning. {Blink("Big Face", 1, 0.5, "white")} {PlaySFX("Hologram")}

    #char:Capybarman_neutral_hologram|L
    You made a fraudulent request to the C.C.A. and put our employees in harm's way.

    #char:Capybarman_neutral_hologram|L
    Land your ship, or we'll open fire!

    #char:Marimbondo_angry|R
    Tsk, those river rats! You called them here, didn't you?

    #char:--
    You didn't. But Marimbondo doesn't have to know. 

    #char:--
    This is the opportunity you needed! What would your crew do?
    
    #char:--
    Barto would try to negotiate with Marimbondo. If he stays here any longer, the C.C.A. could capture him. Or worse.

    #char:--
    Kleber and Jackie would try to fight — in different ways.

    #char:--
    Jackie has taught you enough for you to try to crash Marimbondo's ship to the ground.

    #char:--
    Or maybe you should fight him directly, like Kleber probably would.

    #char:--
    Moment of truth. What will you do?

    + [BARTO¬Try to negotiate.>>]
        #char:--
        You tell him to leave you and your crew alone. In return, you'll ask the C.C.A. to let him go.

        ~ marimbondoState = "Fled"

        #char:Marimbondo_angry|R
        You think you can talk your way out of this, you brat?  {Shake("Big Face", 3, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit2")}

        #char:Marimbondo_neutral_unhooded|R
        What's stopping me from shooting you in the head anyway?

        #char:--
        ...Nothing, really. But right now, complying is the best option he has.

        #char:--
        At least that way he can keep his ship and freedom.

        #char:--
        There's silence for a few seconds, interrupted only by the beeping of the ship. 

        #char:--
        You risk a look at the smuggler. 
        
        #char:Marimbondo_angry|R
        ... 

        #char:Marimbondo_neutral_unhooded|R
        <shake a=2>Fine!</shake> You win this one, brat. I'll go closer to the ground and you can jump. {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 1, 1)}

        #char:Marimbondo_angry|R
        But only after I'm sure the river rats won't shoot me! 

        #char:--
        Not really how you expected this to go, but at least you'll be safe for now.

        #char:--
        You take a last glance at him. He seems so fragile now. {StopMusic()}

        ~ FadeTo("black", 1, 1)

    + [JACKIE¬Bring the ship down!>>]
        #char:--
        You dash to the cockpit, slamming into Marimbondo as he reloads. {PlaySFX("StrongWoosh")} {PlaySFX("Hit2")}

        ~ marimbondoState = "Captured"

        #char:--
        You stun him just long enough to deactivate his ship's autopilot and start a descent. 

        #char:Marimbondo_neutral_unhooded|R
        You've been a pebble in my shoe long enough, <shake>brat</shake>! {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")}  {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

        #char:--
        There's a loud bang and pain lances up your leg just as the ship starts tipping. {StopMusic()}
        
        ~ FadeTo("black", 2, 2)

        #char:--
        You come to senses soon after. The ship has crash-landed.

        #char:--
        Marimbondo is on the ground near you. Still alive, but unconscious. 

        #char:--
        You get up and limp out of the ship. {StopMusic()}

        ~ FadeTo("black", 1, 1)

    + [KLEBER¬Time to finish this fight!>>]
        #char:--
        You go right up to Marimbondo, trying to grab his gun as he reloads.

        #char:--
        It's a bad idea. You get knocked away and shot in the shoulder. {Blink("All", 1, -1, "white")} {PlaySFX("BigDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

        ~ ScreenFlash("red", -1)

        #char:--
        With a loud cry, you tackle the smuggler from below. The impact sends him to the ground, disarmed. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

        #char:--
        His wings buzz loudly as he tries to reach his gun again, but you do your best to pin him down.

        #char:--
        Realizing he's against the wall, Marimbondo's face grows desperate.

        #char:Marimbondo_neutral_unhooded|R
        Alright, alright! You win, brat! I'll let you and your crew go! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

        ~ ScreenFlash("red", -1)

        #char:--
        Too little, too late. Rage takes over you.

        ++ [PUNCH_LEFT¬Punch him.>>]
            #char:--
            You punch him several times for what all he did to you in Surface.  {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}


        ++ [PUNCH_RIGHT¬Punch him.>>]
            #char:--
            You punch him several times for what all he did to you in Surface.  {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

        --  #char:Marimbondo_angry|R
            Urgh! I'll even give back your Grana! {Emotion("WaveIn", "0a4de8")}  {PlaySFX("Bad2")}  {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

            ++ [PUNCH_LEFT¬Punch him.>>]
                #char:--
                You punch him several more for what he did to you in the Skies. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

            ++ [PUNCH_RIGHT¬Punch him.>>]
                #char:--
                You punch him several more for what he did to you in the Skies. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

            --  #char:Marimbondo_injured|R
                Gah! You- you PEST! You NOTHING! <shake>I'LL KILL YOU!</shake> {Emotion("WaveOut", "ea2929")}  {PlaySFX("Bad2")} {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                #char:Marimbondo_injured|R
                And then I'll kill your crew and that family of yours! <shake>MARK MY WORDS!</shake> {Emotion("WaveIn", "ea2929")} {PlaySFX("Bad1")} {Shake("Big Face", 0.9, 1)}

                ++ [PUNCH_LEFT¬Knock him out.>>]
                    #char:--
                    You punch him one last time for your family and crew. {PlaySFX("LightWoosh")} {PlaySFX("Punch")} {Shake("All", 1, -1)}

                    ~ marimbondoState = "Captured"

                    #char:--
                    The smuggler appears to pass out after that.

                    {UnlockAchievement("MERCIFUL")}

                ++ [SHOOT¬End him.>>]
                    #char:--
                    No. He won't come after them. Or anyone.

                    ~ marimbondoState = "Dead"

                    #char:--
                    You reach for the gun on the floor... {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Gunshot")} {Blink("All", 1, -1, "white")} 

                    #char:--
                    And shoot. {Shake("All", 1, 0.5)} {PlaySFX("StrongWoosh")} {PlaySFX("Gunshot")} {Blink("All", 1, -1, "white")} 

                    ~ ScreenFlash("red", -1)

                    {UnlockAchievement("FUMIGATION_COMPLETE")}

                ++ [MERCY¬Release him.>>]

                    #char:--
                    You release the smuggler. He's too beaten to fight back, anyway.

                    ~ marimbondoState = "Captured"

                    #char:Marimbondo_injured|R
                    Tsk. This—this isn't the last you'll see of me, brat.  {Shake("Big Face", 3, 0.3)} {Blink("Big Face", 1, -1, "white")} {PlaySFX("Hit2")}

                    #char:Marimbondo_injured|R
                    The Surface couldn't hold me forever. Neither can those Capybaras.

                    #char:--
                    You ignore him and reach for the controls.

                    {UnlockAchievement("MERCIFUL")}

                --  #char:--
                    ... {StopMusic()}

                    #char:--
                    Finally. It's over. All the problems you've found yourself in because of Marimbondo...

                    ~ ScreenFlash("white", -1)

                    #char:--
                    Actually, no! Your crew is still down there with his goons!

                    {
                        - barto_died || jackie_died || kleber_died:
                            #char:--
                            Not to mention <>

                            {
                                - barto_died:

                                    Barto <>

                                - jackie_died:

                                    Jackie <>

                                - kleber_died:

                                    Kleber <>
                            }

                            is hurt!
                    }

                    {
                        - 41_bis_exploded:
                            #char:--
                            And how are you going back to the Skies? The 41-Bis exploded!
                    }

                    #char:--
                    Nervously, you land Marimbondo's ship as fast as you can.

                    #char:--
                    You have to get back to your crew. Now.

                    ~ FadeTo("black", 1, 1)

    -   #char:--
        {PlaySFX("CapybaraShip")} You see the Association ship <>

        {
            - marimbondoState == "Fled":
                landing, while Marimbondo flees in his.

                #char:--
                At least for now, you're safe.

            - marimbondoState == "Captured":
                moving near where you are.

                #char:--
                They'll probably take care of Marimbondo.

            - marimbondoState == "Dead":
                moving near where you are.

                #char:--
                Though you've already taken care of Marimbondo for them.
        }

        #char:--
        //A maioria dos capangas parece ter fugido, mas dois estão amarrados e um inconsciente no chão.
        Most of the goons ran away, though two are tied up and one other is unconscious on the ground.

        #char:--
        //Pelo visto sua tripulação conseguiu dar conta do recado.
        Looks like everyone managed to fight down here. {StopSFX("CapybaraShip")}

        {
            - barto_died || jackie_died || kleber_died:
                #char:--
                You find your crew near the spiky rock from before. {PlayMusic("Sad")}

                #char:--
                They're huddled around <>
                
                {
                    - barto_died:

                        Barto<>

                    - jackie_died:

                        Jackie<>

                    - kleber_died:

                        Kleber<>
                }

                , who is still bleeding profusely.

                {
                    - barto_died:
                        #char:Barto_injured_sad|L
                        I heard... a lot of noise. What happened, {g_name}? Did you defeat Marimbondo?

                    - jackie_died:
                        #char:Jackie_injured_sad|L
                        The turret stopped...  {g_name}, did... did you do it?

                    - kleber_died:
                        #char:Kleber_injured_happy|L
                        You came back... So, I guess you did it, huh, {g_name}?
                }

                + [YES¬You did.>>]
                    {
                        - barto_died:
                            //AFFINITY PASS
                            {
                                - g_affinity_Barto >= 50:
                                    #char:Barto_injured_happy|L
                                    I see. Good. Enjoy the taste of victory.

                                    #char:Barto_injured_happy|L
                                    {g_name}... I wish I could keep cooking for you all.

                                    #char:Barto_injured_happy|L
                                    Even if I couldn't have my own restaurant... I felt at home here. {Emotion("Explosion", "ffffff")} {PlaySFX("LightWoosh")}

                                - g_affinity_Barto < 50 && g_affinity_Barto >= 0:
                                    #char:Barto_injured_happy|L
                                    I see. Good. Enjoy the taste of victory.

                                    #char:Barto_injured_happy|L
                                    {g_name}... Good luck in the Skies. I have no doubt you will find your place.

                                    #char:Barto_injured_happy|L
                                    If you can... reach my clan. Tell them I became a great cook and that I missed them. {Emotion("Explosion", "ffffff")} {PlaySFX("LightWoosh")}

                                - g_affinity_Barto < 0 && g_affinity_Barto > -50:
                                    #char:Barto_injured_sad|L
                                    I see. Good.

                                    #char:Barto_injured_sad|L
                                    Looks like I won't get to open my restaurant. Or see my clan again.

                                    #char:Barto_injured_sad|
                                    Such... a shame. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                                - else:
                                    #char:Barto_injured_sad|L
                                    I see. Good.

                                    #char:Barto_injured_sad|L
                                    At least one of us gets to see their family again.

                                    #char:Barto_injured_sad|L
                                    Lucky you. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                            }

                            #char:Barto_injured_dead|L
                            ... 

                            #char:--
                            Barto takes his last breath.

                            {UnlockAchievement("A_FAREWELL")}

                        - jackie_died:
                            //AFFINITY PASS
                            {
                                - g_affinity_Jackie >= 50:
                                    #char:Jackie_injured_happy|L
                                    Heh. Nice. That's our Captain for you!

                                    #char:Jackie_injured_happy|L
                                    I'm glad I decided to chase after this dream and met you.

                                    #char:Jackie_injured_happy|L
                                    Being your engineer... it was an honor. {Emotion("Explosion", "ffffff")} {PlaySFX("LightWoosh")}

                                - g_affinity_Jackie < 50 && g_affinity_Jackie >= 0:
                                    #char:Jackie_injured_happy|L
                                    Heh. Nice. That's our Captain for you!

                                    #char:Jackie_injured_happy|L
                                    ...Hey, Captain? In spite of everything, I'm glad I got a taste of the Caravan life.

                                    #char:Jackie_injured_happy|L
                                    Maybe... grandma... will tell... our stories. {Emotion("Explosion", "ffffff")} {PlaySFX("LightWoosh")}

                                - g_affinity_Jackie < 0 && g_affinity_Jackie > -50:
                                    #char:Jackie_injured_sad|L
                                    Heh. Nice.

                                    #char:Jackie_injured_sad|L
                                    I really wish I could tell grandma my own stories. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                                    #char:Jackie_injured_sad|L
                                    I hope... she stays well.

                                - else:
                                    #char:Jackie_injured_sad|L
                                    Heh. Nice.

                                    #char:Jackie_injured_sad|L
                                    I wish it didn't have to come to this, though. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                                    #char:Jackie_injured_sad|L
                                    I wonder... what if I had stayed... at grandma's workshop?
                            }

                            #char:Jackie_injured_dead|L
                            ...

                            #char:--
                            Jackie takes her last breath.

                            {UnlockAchievement("A_FAREWELL")}

                        - kleber_died:
                            //AFFINITY PASS
                            {
                                - g_affinity_Kleber >= 50:
                                    #char:Kleber_injured_happy|L
                                    That was reckless. Heh, guess I rubbed off on ya.

                                    #char:Kleber_injured_sad|L
                                    Y'know, I thought the caravan job was another dead end...

                                    #char:Kleber_injured_happy|L
                                    But roaming the Skies with you... I felt really free. For the first time. Thank you. {Emotion("Explosion", "ffffff")} {PlaySFX("LightWoosh")}

                                - g_affinity_Kleber < 50 && g_affinity_Kleber >= 0:
                                    #char:Kleber_injured_happy|L
                                    That was reckless. Heh, guess I rubbed off on ya.

                                    #char:Kleber_injured_happy|L
                                    Hey, Cap... take care of your family. And stay outta trouble.

                                    #char:Kleber_injured_happy|L
                                    Whatever you do... don't end up like me. {Emotion("Explosion", "ffffff")} {PlaySFX("LightWoosh")}

                                - g_affinity_Kleber < 0 && g_affinity_Kleber > -50:
                                    #char:Kleber_injured_sad|L
                                    Got it.

                                    #char:Kleber_injured_sad|L
                                    Damn... I guess I wasn't able to get away from trouble, huh. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                                    #char:Kleber_injured_sad|L
                                    I tried my best, but even in a caravan crew... your debts will always... catch up to you.

                                - else:
                                    #char:Kleber_injured_sad|L
                                    Got it.

                                    #char:Kleber_injured_sad|L
                                    Am—am I dying? I-I don't wanna die! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

                                    #char:Kleber_injured_sad|L
                                    If I knew it was gonna end this way... I'd never have joined...
                            }

                            #char:Kleber_injured_dead|L
                            ...

                            #char:--
                            Kleber takes his last breath.

                            {UnlockAchievement("A_FAREWELL")}
                    }
                
                #char:--
                ...

                {
                    - !barto_died:
                        #char:Barto_sad_sad|L
                        <shake>N-no</shake>... This can't... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                }

                {
                    - !jackie_died:
                        #char:Jackie_sad_neutral|L
                        <shake>N-no way...</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                }

                {
                    - !kleber_died:
                        #char:Kleber_sad_sad|L
                        <shake>Damn it...!</shake> {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                }

                #char:--
                You can't just leave <>

                {
                    - barto_died:
                        Barto's body <>

                    - jackie_died:
                        Jackie's body <>

                    - kleber_died:
                        Kleber's body <>
                }

                here. {StopMusic()}

                {
                    - barto_died:
                        {
                            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_animal_sanctuary:
                                #char:--
                                You remember that friend of his in the animal sanctuary.

                                #char:--
                                Maybe she would be able to take him to his clan.

                            - else:
                                #char:--
                                You decide to contact the Mandioca Cooks Guild.

                                #char:--
                                Maybe they can bring Barto back to his clan.
                        }

                    - jackie_died:
                        #char:--
                        You still remember the Capy-Bar where you first met Jackie.

                        #char:--
                        Maybe you can bring her to her grandmother.

                    - kleber_died:
                        #char:--
                        Kleber never really talked about his family.

                        #char:--
                        Maybe you can give him a funeral in a Surface burial ground.
                }

                #char:--
                As Captain, it's the least you can do. {ShipOut()}

                ~ g_timeChange = 7
                ~ g_fuelChange = 0
                ~ g_suppliesChange = 0
                ~ g_moraleChange = 0

                ~ DayChange()

                -> final_hangar


            - else:

                //AFFINITY PASS:

                { 
                    - g_affinity_Jackie >= -25:
                        #char:Jackie_surprised_happy|L
                        Captain! You're okay! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

                    - else:

                        #char:Jackie_surprised_happy|L
                        Captain, you're here! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                
                }

                { 
                    - g_affinity_Barto >= -25:
                        #char:Barto_sad_sad|R
                        Oh, thank the Skies. I thought you had been shot in there. {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")}


                    - else:
                        #char:Barto_surprised_angry|R
                        We were starting to wonder if you were ever going to come back.
                    
                }

                { 
                    - g_affinity_Kleber >= -25:
                        #char:Kleber_neutral_sad|R
                        Proud of ya, Cap! I wish I had been able to face Silva head-on like that! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                    - else:
                        #char:Kleber_surprised_sad|R
                        Gotta say, I wish I had been able to face Silva head-on like that.
                
                }


                {
                    - g_cursed_bottle_was_broken:

                    #char:Jackie_happy_angry|L
                    I did! Gave him a good metal-punch in his spore head. It was beautiful!
                }

                #char:--
                You're proud. You'd be lying if you said otherwise.

                #char:--
                It's... over. {ShipIn()}
                
                #char:--
                Time to say goodbye to Surface.

                ~ g_timeChange = 7
                ~ g_fuelChange = 0
                ~ g_suppliesChange = 0
                ~ g_moraleChange = 0

                ~ DayChange()

                -> final_skyways

        }

= final_skyways

#location: Aquarela

~ g_morale = 100
~ g_supplies = 100
~ g_fuel = 100

//Vocês derrotam o agiota e você consegue levar sua família para Aquarela.
#char:--
It's been a few days since the incident with Marimbondo. {UnlockAchievement("STANDOFF_IN_THE_CRUMBLING_PLAINS")}

#char:--
Now you're back to Aquarela. Not for a job, however.

#char:--
It's just the best place you could find for your family in the Skies.

{
    - g_affinity_Jackie >= 0:
        #char:Jackie_surprised_happy|L
        So, I heard your family is coming today? That's great news! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer2")}
}

{
    - g_affinity_Kleber >= 0:
        #char:Kleber_neutral_happy|R
        Heh, feels good being outta debt, huh, Cap? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

{
    - g_affinity_Barto >= 0:
        #char:Barto_happy_happy|L
        Aquarela is a pretty good choice for a home, I would say. {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}
}

#char:Barto_neutral_angry|L
The question is... What will you do now, Captain? {StopMusic()}

//O fim do jogo consiste em deixar <>
#char:--
Great question. With your debt left behind, you don't <i>have</i> to work in a caravan anymore, truth be told.

#char:--
So you could either <>

    {
        - 41_bis_exploded:
            //sua nova nave — a nave do Marimbondo, 'apreendida' e consertada pela C.C.A. — <>
            leave your new ship — Marimbondo's, now appropriated by the C.C.A. — <>

        - else:
            //o 41-Bis <>
            leave the 41-Bis <>
    }

//com a sua crew e escolher um novo capitão, ou continuar capitaneando sua crew.
with your crew and choose a new captain... or keep making deliveries.

#char:--
What should you do? Pass the torch to your crew or remain a captain?

+ (new_captain) [CREW¬Your crew deserves the ship.>>]
    //Quem é o novo comandante?
    #char:--
    Right now, you want a more peaceful life with your family. This is what you've decided. {PlayMusic("CrewTheme")}

    #char:--
    So... Who should be the new Captain?

    ++ [BARTO¬Barto.>>]
        #char:--
        Your cook has demonstrated a great sense of responsibility over your jobs.

        #char:--
        You think he's the right one for the title.

        #char:Barto_surprised_sad|L
        I-what!? Me? A Captain? {Emotion("Explosion", "FFFFFF")} {PlaySFX("Love1")}

        //AFFINITY PASS
        {
            - g_affinity_Jackie_Barto >= 0:
                #char:Jackie_neutral_neutral|L
                Well, yeah! You managed to keep us safe several times!
        }

        //AFFINITY PASS
        {
            - g_affinity_Kleber_Barto >= 0:
                #char:Kleber_happy_angry|R
                //Só não transforma nossa nave num <i>food truck</i> e tá de boa!
                Maybe we can do a side gig as that flying restaurant you were dreaming about!
        }

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 0:
                #char:Barto_happy_angry|L
                I thank you, my Captain.

            - else:
                #char:Barto_neutral_angry|L
                ...Definitely unexpected coming from you, Captain. But I can work with this.
        }

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 50:
                #char:Jackie_happy_angry|L
                It was an amazing ride, {g_name}.
        }

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 50:
                #char:Kleber_happy_angry|R
                Don't worry, we'll come visit!
        }

        #char:--
        The 41-Bis will be in good hands.

        ~ FadeTo("black", 1, 0.5)

    -> final_family

    ++ [JACKIE¬Jackie.>>]
        #char:--
        Your engineer has the knowledge, the smarts, and now, the experience.

        #char:--
        You're sure that if anyone can do it, it's Jackie.

        #char:Jackie_surprised_happy|L
        Huh!? {g_name}, are you serious? {Emotion("Explosion", "ffb71b")} {PlaySFX("Love1")}

        //AFFINITY PASS
        {
            - g_affinity_Barto_Jackie >= 0:
                #char:Barto_happy_angry|L
                I fail to see why not. I think it makes perfect sense.
        }

        //AFFINITY PASS
        {
            - g_affinity_Kleber_Jackie >= 0:
                #char:Kleber_happy_sad|R
                //De qualquer jeito, acho que você é a pessoa que mais quer o cargo!
                I think you're the one that wants that position the most anyway!
        }

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 0:
                #char:Jackie_happy_angry|L
                I... thank you, Captain. For everything!

            - else:
                #char:Jackie_sad_sad|L
                Well, this journey definitely had its ups and downs.

                #char:Jackie_neutral_sad|L
                But... for better or worse, I learned a lot.
        }

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 50:
                #char:Barto_happy_angry|L
                It was all worth it. Wasn't it, {g_name}?
        }

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 50:
                #char:Kleber_happy_angry|R
                Don't worry, we'll come visit!
        }

        #char:--
        The 41-Bis will be in good hands.

        ~ FadeTo("black", 1, 0.5)

    -> final_family

    ++ [KLEBER¬Kleber.>>]
        #char:--
        Kleber's recklessness is also offset by his street smarts and outside-the-box thinking.
        
        #char:--
        Plus, he is a skilled pilot, truth be told.

        #char:--
        You think that could be a defining factor in steering a crew.

        #char:Kleber_surprised_angry|L
        Huh!? I-I wasn't expecting that, Cap! {Emotion("Explosion", "ffb71b")} {PlaySFX("Love1")}

        //AFFINITY PASS
        {
            - g_affinity_Jackie_Kleber >= 0:
                #char:Jackie_happy_angry|L
                //Talvez assim você tome jeito pra não bater a nave!
                Maybe this way you'll take better care of the ship!
        }

        //AFFINITY PASS
        {
            - g_affinity_Barto_Kleber >= 0:
                #char:Barto_happy_angry|L
                Honestly? I think even I have to concede.
        }

        //AFFINITY PASS
        {
            - g_affinity_Kleber >= 0:
                #char:Kleber_sad_angry|L
                You... you've changed my life. Thank you.

            - else:
                #char:Kleber_sad_sad|L
                I gotta be honest. We're not on the best of terms, {g_name}.

                #char:Kleber_neutral_sad|L
                But I'm not gonna be ungrateful because of that. Thank you.
        }

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 50:
                #char:Jackie_happy_angry|L
                It was an amazing ride, {g_name}.
        }

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 50:
                #char:Barto_happy_angry|L
                It was all worth it. Wasn't it, {g_name}?
        }

        #char:--
        The 41-Bis will be in good hands.

        ~ FadeTo("black", 1, 0.5)

    -> final_family

+ [CAPTAIN¬You want to stay with your crew.>>]
    //Por incrível que pareça, você se apegou à vida de caravaneiro.
    #char:--
    Strange as it sounds... You've gotten used to this.

    #char:--
    You are a Sky Caravaneer now.

    //AFFINITY PASS
    {
        - g_affinity_Jackie >= 25:
            #char:Jackie_happy_happy|L
            Nice! So I guess it's just the beginning for this crew, huh? {Emotion("Heart", "ea2929")} {PlaySFX("Love1")} 
    }

    {
        - g_affinity_Jackie <= -25:
            #char:Jackie_sad_sad|L
            ...Part of me wishes we'd gotten along better, {g_name}.

            #char:Jackie_sad_sad|L
            Maybe that's the opportunity for a second chance?

            #char:Jackie_neutral_sad|L
            ..Only time will tell.

            #char:Jackie_neutral_neutral|L
            But there's one thing I'm sure of: I won't leave this caravan life so soon.

    }

    //AFFINITY PASS
    {
        - g_affinity_Kleber >= 25:
            #char:Kleber_happy_happy|R
            Thank the Skies! Betting wouldn't be the same without you, Cap! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
    }

    { 
        - g_affinity_Kleber <= -25:
            #char:Kleber_surprised_sad|L
            ...Yeah, can't believe you've really managed to deal with your debt problem.

            #char:Kleber_angry_neutral|L
            You're someone... <i>questionable</i>, at best. But at least you did that right.

            #char:Kleber_angry_neutral|L
            We'll see what happens next.
    
    }

    //AFFINITY PASS
    {
        - g_affinity_Barto >= 25:
            #char:Barto_happy_angry|L
            Believe me, it will be a pleasure to keep cooking for you. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")} 
    }

    { 
        - g_affinity_Barto <= -25:
        
            #char:Barto_neutral_neutral|L
            I don't agree with a lot of things you've done, Captain.

            #char:Barto_angry_angry|L
            I hope you reflect on your actions from now on.

    }

    ~ FadeTo("black", 1, 0.5)

-> final_family


= final_hangar

~ g_morale = 100
~ g_supplies = 100
~ g_fuel = 100

            #location: Hangar

            {UnlockAchievement("STANDOFF_IN_THE_CRUMBLING_PLAINS")}


            //Vocês vão até o Capy-Bar e se despedem, com cada crewmate dando uma ideia de como será sua vida pós-Sky Caravan.

            #char:--
            It's been a few days since the incident with Marimbondo. {Blink("Big Face", 1, 0.5, "white")} 

            #char:Capybarman_neutral|L
            So, you're all resigning? {PlayMusic("CrewTheme")}

            {
                - !jackie_died:
                    #char:Jackie_sad_sad|R
                    Not all of us. Just {g_name} and <>

                    {
                        - !kleber_died:
                            Kleber.

                        - !barto_died:
                            Barto.
                    }

                -   else:
                    #char:Kleber_sad_sad|R
                    Yeah. We are.
            }

            #char:Capybarman_neutral|L
            Thankfully there isn't a lot of paperwork for that. I'm sending it to you now.

            {
                - !barto_died:
                    #char:Barto_neutral_sad|R
                    Thank you. Just tell us what is necessary and we will be done in a few minutes.
            }


            {
                - !kleber_died:
                    #char:Kleber_sad_sad|R
                    Well, they won't sign themselves. Let's go.
            }

            #char:--
            You start filling the documents.

            #char:--
            ...

            {
                - barto_died:
                    #char:Kleber_sad_neutral|R
                    Our chef... he didn't deserve this. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    //AFFINITY PASS
                    {
                        - g_affinity_Kleber_Barto >= 0:
                            #char:Kleber_sad_sad|R
                            He was so close to his dream, too.
                    } 

                    #char:Jackie_sad_sad|R
                    I hope his clan is proud of him. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

                    //AFFINITY PASS
                    {
                        - g_affinity_Jackie_Barto >= 0:
                            #char:Jackie_sad_angry|R
                            Restaurant or not, he was an amazing cook.
                    }

                - jackie_died:
                    //AFFINITY PASS
                    {
                        - g_affinity_Kleber_Jackie >= 0:
                            #char:Kleber_sad_neutral|R
                            Jackie... she still had a lot to live for. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                    }

                    //AFFINITY PASS
                    {
                        - g_affinity_Barto_Jackie >= 0:
                            #char:Barto_sad_happy|R
                            She knew the dangers of the caravan life, but even so, she did everything with a smile on her face. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}
                    }

                    #char:Barto_sad_sad|R
                    I still remember the look on her grandmother's face.

                    #char:Kleber_sad_sad|R
                    Yeah. She's a veteran, but it was rough.

                - kleber_died:
                    #char:Barto_sad_happy|R
                    That fool. Reckless to the end. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    {
                        - paidDebt:
                            #char:Barto_sad_sad|R
                            He had been freed from his debt just a few months ago, too.

                        - else:
                            #char:Barto_sad_sad|R
                            He deserved a more dignified end.
                    }

                    #char:Jackie_sad_sad|R
                    We gave him the best burial we could, but still... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}
            }

            #char:--
            The best you can do from now on is carry on <>

            {
                - barto_died:
                    Barto's <>

                - jackie_died:
                    Jackie's <>

                - kleber_died:
                    Kleber's <>
            }

            legacy until the end of your days.

            {
                - !barto_died:
                    #char:Barto_neutral_neutral|R
                    I believe I have accumulated just enough capital to restart my business.

                    #char:Barto_neutral_sad|R
                    ...By which I mean a small stand, of course.

                    #char:Barto_neutral_sad|R
                    Over time, maybe I could grow into the life of a true chef.
            }

            {
                - !kleber_died:

                    #char:Kleber_neutral_neutral|R
                    I think I'm gonna smuggle people from Surface.

                    #char:Kleber_surprised_angry|R
                    Not like Marimbondo! No way.

                    #char:Kleber_neutral_sad|R
                    I'll be my own boss. Use my skills to continue helping folks.

                    #char:Kleber_neutral_neutral|R
                    I know it's gonna be harder that way, but I think I can do it.

                    #char:Kleber_neutral_happy|R
                    It's my way of avoiding anything like this ever happening again.
            }

            {
                - !jackie_died:
                    #char:Jackie_neutral_neutral|R
                    I... I'll remain as a caravan engineer.

                    #char:Jackie_neutral_neutral|R
                    Despite all the hardship, it is the life I've chosen.

                    #char:Jackie_neutral_happy|R
                    So I'll keep at it. One day, I'll become a Captain too! For all of you.
            }
            
            #char:--
            As for you... you're moving to Aquarela with your family.

            //AFFINITY PASS
            {
                - !barto_died && g_affinity_Barto >= 0:
                    #char:Barto_neutral_neutral|R
                    Admirable, Captain.

                    #char:Barto_happy_angry|R
                    Perhaps one day I can visit you and offer some food? A skewer, maybe? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
            }

            //AFFINITY PASS
            {
                - !kleber_died && g_affinity_Kleber >= 0:
                    #char:Kleber_neutral_neutral|R
                    Well, I'll be around during the Summer Festivals.

                    #char:Kleber_neutral_happy|R
                    If you wanna go soccer betting, just hit the bars in town and you'll find me! {Emotion("Shine", "ffb71b")}  {PlaySFX("Shimmer1")}
            }

            //AFFINITY PASS
            {
                - !jackie_died && g_affinity_Jackie >= 0:
                    #char:Jackie_neutral_neutral|R
                    I'll probably visit the city from time to time for deliveries.

                    #char:Jackie_happy_angry|R
                    Maybe we can all meet up? Remember the caravan days... {Emotion("Shine", "ffb71b")}  {PlaySFX("Shimmer1")}
            }

            //AFFINITY PASS
            {
                - (!barto_died && g_affinity_Barto >= 0) || (!kleber_died && g_affinity_Kleber >= 0) || (!jackie_died && g_affinity_Jackie >= 0):
                    #char:--
                    Maybe. Maybe.
            }

            #char:--
            For now, you have a form to finish.

            ~ FadeTo("black", 1, 1)

            #char:Capybarman_eyesdown|L
            Well, looks like you're done.

            #char:Capybarman_neutral|L
            Thank you all for your service to the Capybara Caravan Association.

            #char:Capybarman_neutral|L
            And farewell, Sky Caravaneers.

            #char:--
            You and your companions look at each other wistfully. You all have your own path to follow from now on.

            //AFFINITY PASS:

            { 
                - g_affinity_Barto <= -25:
                    #char:Barto_neutral_neutral|L
                    I don't agree with a lot of things you've done, Captain.

                    #char:Barto_angry_angry|L
                    I hope this fresh start makes you reflect on your actions.

            }

            { 
                - g_affinity_Kleber <= -25:
                    #char:Kleber_surprised_sad|L
                    ...Can't believe you've really managed to deal with your debt problem.

                    #char:Kleber_angry_neutral|L
                    You're someone... <i>questionable</i>, at best. But at least you did that right.
            
            }

            { 
                - g_affinity_Jackie <= -25:
                    #char:Jackie_sad_sad|L
                    ...Part of me wishes we'd gotten along better, {g_name}.

                    #char:Jackie_sad_sad|L
                    Can't say I'm not disappointed. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    #char:Jackie_sad_sad|L
                    ...Anyway. Guess that's a goodbye.

            }

            #char:--
            You watch as your crew leaves.

            #char:--
            Part of you feels empty, but a future of hope lies ahead.

            #char:--
            After all this time, you're seeing your family again.

            {UnlockAchievement("YOU_SHOULD_GO")}

            //<b>SPLIT CREW ENDING</b>

            {UnlockAchievement("WRITTEN_IN_THE_CLOUDS")}

        -> MISSION_END



= final_family

{UnlockAchievement("STANDOFF_IN_THE_CRUMBLING_PLAINS")}

{
    - new_captain:
        //Você se despede da crew. Depois que o 41-Bis some da linha do horizonte, você vai até sua família, pronto pra começar sua nova vida nos Céus.
        #char:--
        You and the crew talk a bit more before saying your goodbyes.

        //AFFINITY PASS:

            { 
                - g_affinity_Barto <= -25:
                    #char:Barto_neutral_neutral|L
                    I don't agree with a lot of things you've done, Captain.

                    #char:Barto_angry_angry|L
                    I hope this fresh start makes you reflect on your actions.

            }

            { 
                - g_affinity_Kleber <= -25:
                    #char:Kleber_surprised_sad|L
                    ...Can't believe you've really managed to deal with your debt problem.

                    #char:Kleber_angry_neutral|L
                    You're someone... <i>questionable</i>, at best. But at least you did that right.
            
            }

            { 
                - g_affinity_Jackie <= -25:
                    #char:Jackie_sad_sad|L
                    ...Part of me wishes we'd gotten along better, {g_name}.

                    #char:Jackie_sad_sad|L
                    Can't say I'm not disappointed. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                    #char:Jackie_sad_sad|L
                    ...Anyway. Guess that's a goodbye.

            }

        #char:--
        You see the three get inside the 41-Bis.

        #char:--
        As it disappears in the horizon, you can't help but think about the stories you'll tell your family.
        
        #char:Capybarman_neutral|L
        So. You're staying behind, then? {Blink("Big Face", 1, 0.5, "white")} 

        ~ ScreenFlash("white", -1)

        #char:--
        You're taken aback by the Capybarman's sudden appearance.

        #char:Capybarman_eyesup|L
        Friend. Don't get all jumpy with me.

        #char:Capybarman_eyesdown|L
        I'm settling here in Aquarela too. We're opening a new Capy-bar. New place, same coxinhas.
        
        #char:Capybarman_eyesdown|L
        I just wanted to congratulate you on the behalf of our management.

        #char:Capybarman_shy|L
        Don't get used to it. It's just that you gave us more excitement than we've had in some time.

        #char:Capybarman_neutral|L
        And, well... you were a good Captain, in the end. You had to be, to get this far.

        #char:Capybarman_eyesleft|L
        So... thank you for your service to the Capybara Caravan Association.

        #char:Capybarman_neutral|L
        And farewell, Sky Caravaneer.

        {UnlockAchievement("O_CAPTAIN_MY_CAPTAIN")}

    - else:
        //Você dia um 'até breve' a sua família e vai até o Capy-Bar em busca da próxima aventura.
        #char:--
        Well, you're still waiting until your family gets here.
        
        #char:--
        You were able to pay their way to the Skies. 

        #char:--
        Without smugglers, of course!

        #char:--
        Better spend some time together.
        
        #char:--
        Until next month, that is. Then... you'll be off on your next delivery.

        #char:Capybarman_neutral|L
        So. You're staying with us, then?

        ~ ScreenFlash("white", -1)

        #char:--
        You're taken aback by the Capybarman's sudden appearance.

        #char:Capybarman_eyesup|L
        Friend. Don't get all jumpy with me.

        #char:Capybarman_eyesdown|L
        I'm settling here in Aquarela too. We're opening a new Capy-bar. New place, same coxinhas.
        
        #char:Capybarman_eyesdown|L
        I just wanted to congratulate you on the behalf of our management.

        #char:Capybarman_shy|L
        Don't get used to it. It's just that you gave us more excitement than we've had in some time.

        #char:Capybarman_neutral|L
        And, well... you're a good Captain, in the end. You have to be, to get this far.

        #char:Capybarman_eyesleft|L
        So... thank you for your service to the Capybara Caravan Association.

        #char:Capybarman_neutral|L
        And good luck in your future deliveries, Sky Caravaneer.

        {UnlockAchievement("CARAVANEERS_ASSEMBLE")}
}

//<b>TO THE SKIES ENDING</b>

{UnlockAchievement("WRITTEN_IN_THE_CLOUDS")}

-> MISSION_END