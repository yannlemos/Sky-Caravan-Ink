===E_Mission_Rookie_AccordionInTheNight===

#location: Skyways
#tier: Rookie
#scope: Mission

/*A crew tem que entregar um instrumento musical na Aquarela.
Às madrugadas, eles começam a ouvir o instrumento tocando sozinho: todos menos Kleber.
Será que o Kleber tá de sacanagem?*/

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

#char:--
You can't help but notice how chipper Kleber is as he puts the chip inside the terminal.

#char:Kleber_happy_sad|L
Oh man! Haven't been to Aquarela in a long time!

#char:Jackie_happy_angry|R
Last time grandma brought me there, I was still a kid! Wonder how much has changed.

#char:Barto_neutral_neutral|L
Hm, that brings me back. It's been years since I tasted these skewers. I wonder if the flavors have changed.

#char:Kleber_happy_sad|L
Well, y'know what I'm more curious? This cargo. Some kinda musical instrument?

#char:--
The client's message appears on screen.

#char:Afonso|L
How's it going, Caravan! I'm Afonso, a musician trying to make it big! {Blink("Big Face", 1, 0.5, "white")}

#char:Afonso|L
I've bought an old used accordion, but I need it in time for a music competition happening in Aquarela in a few days.

#char:Afonso|L
That's where you come in, friends! Bring me my accordion and you'll be well paid! Just please, <b><i>please</i></b>, be careful with it.

#char:Afonso|L
But yeah, that's all you have to do, really! See you at the festival!

{Blink("Big Face", 1, 0.5, "white")}

{
    - E_Mission_Rookie_TheCursedCachaca:
        #char:Barto_neutral_angry|L
        I've got a bad feeling about this. I wouldn't be surprised if our cargo was more than it seemed.

        #char:Jackie_sad_sad|R
        Wouldn't be the first time, either.

        #char:Kleber_sad_sad|L
        Guys, come on. I know that bottle left us with a bad taste, but it doesn't mean all our missions are gonna turn sour.

    - E_Mission_Rookie_CrystalsOfBygoneTimes:
        #char:Kleber_sad_happy|L
        Well, so long as it doesn't make us time travel or something, we'll be good.

        #char:Jackie_sad_angry|R
        Yeah, no kidding.

    -else:
        #char:Kleber_happy_sad|L
        Phew! Easy job, easy money, great place! What are we waiting for?

        #char:Jackie_happy_angry|R
        Sounds like the kind of job they'd give a Rookie Caravan, alright.

        #char:Barto_neutral_sad|L
        Let's hope it stays that way until we've delivered the cargo.
}

+ [RELAX>M>]

    #char:--
    You tell them that it's going to be fine. It's just an accordion, how bad can it be?

    {
        - E_Mission_Rookie_TheCursedCachaca:
            #char:Barto_angry_angry|L
            Yes, and that bottle was "just a bottle", too. {Emotion("Outer", "red")}

            #char:Kleber_sad_sad|L
            Well, Silva <i>did</i> say it wasn't a normal cachaça bottle.

            #char:Jackie_sad_angry|R
            He still kept info from us, though. No way to know if the same will happen again, but being careful wouldn't hurt, you know.

            #char:--
            Maybe you should have been more tactful. Everyone is still a bit shaken from that job.

            ~ g_morale -= 10

        - E_Mission_Rookie_CrystalsOfBygoneTimes:
            #char:Barto_angry_angry|L
            Let's not forget our portable time machine, which was "just a pocket watch". {Emotion("Outer", "red")}
            
            #char:Jackie_sad_sad|R
            ...Yeah, I think you've made your point. Being too relaxed isn't a good thing.

            ~ g_morale -= 10

        - else:
            #char:Kleber_happy_happy|L
            We can do this, people! We'll have our grana in hand before anyone knows it! {Emotion("Outer", "yellow")}

            #char:--
            At least it looks like everyone's pumped for this delivery.

            ~ g_morale += 10
    }

+ [FEAR>M>]

    #char:--
    You tell them that even if it looks like an easy job, it's good to be careful at every turn.

    {
        - E_Mission_Rookie_TheCursedCachaca:
            #char:Barto_neutral_angry|L
            Glad you understand, Captain. I think we all learned from that other job.

            #char:Jackie_sad_happy|R
            Yeah, we could definitely go without more scares. Let's keep an eye on it.

            ~ g_morale += 10

        - E_Mission_Rookie_CrystalsOfBygoneTimes:

            #char:Barto_neutral_angry|L
            Just because something <i>looks</i> good, doesn't mean it <i>tastes</i> good. Glad to see you know the difference, Captain.

            #char:Jackie_sad_sad|R
            That's... a weird analogy, but I guess it's true.

            ~ g_morale += 10

        - else:
            #char:Kleber_sad_sad|L
            Come on, Cap, have a little more faith in yourself and your crew. {Emotion("Inner", "blue")}

            #char:Jackie_sad_happy|R
            Maybe we're not an experienced Caravan yet, but I want to think we can do something as simple as this.

            #char:--
            The crew looks a bit demotivated after your speech. Maybe you should act more confident as a Captain?

            ~ g_morale -= 10
    }

-   #char:--
    And on that note, you set off for Aquarela.

    ~ g_time = 10

-> EVENT_END



= part2

#location:Skyways

#char:--
In the past few nights, you've woken up to weird noises.

#char:--
They're very brief and stop immediately, but happen again a few hours later.

#char:--
Tonight's no different, but the noise is more persistent.

~ ScreenFlash("white", -1)

#char:--
Listening up close, you notice the "noise" is actually musical notes. <i>From an accordion</i>.

#char:--
It only plays a few more off-key notes before stopping.

#char:--
Is someone messing with the cargo? You go to the hold to inspect it and spot Kleber in the way.

#char:Kleber_angry_sad|L
Cap! You hearing this too? Is someone in the cargo hold?

+ [CONFUSED>>]

    #char:--
    You tell Kleber that you don't know and that you woke up to the sound.

    #char:Kleber_angry_angry|L
    Well, no one messes with our cargo! Let's get in there! {Shake("Big Face", 1, 0.5)}

+ [ANGRY>>]

    #char:--
    If someone's there, you'll make them regret it.

    #char:Kleber_sad_sad|L
    W-well, let's check it out. But be careful, okay, Cap? {Emotion("Inner", "black")}

-   #char:--
    You enter the cargo hold's password and open the door to find-

    ~ ScreenFlash("white", -1)

    #char:--
    ...Nothing. There's no one here.

    #char:Barto_angry_angry|R
    What's all that ruckus? Some of us are trying to sleep, you know.

    #char:Jackie_sad_sad|R
    Did something happen to the accordion?

    #char:--
    You briefly explain what happened to Jackie and Barto.

    #char:Barto_neutral_angry|R
    Hm. So someone broke into the cargo hold, you say?

    #char:Jackie_sad_sad|R
    Well, doesn't look like there's anything wrong here... and how would anyone board us while we're moving, anyway?

    #char:Kleber_neutral_sad|L
    But we clearly heard it playing! Maybe...

    #char:Kleber_neutral_sad|L
    Wait. The client said he bought an used instrument that belonged to another person. What if it's more than a normal accordion?

    #char:Jackie_sad_angry|R
    What do you mean?

    #char:Kleber_sad_sad|L
    What if it's <shake>haunted</shake>, or something? {Shake("Big Face", 1, 0.5)}

    {
        - E_Mission_Rookie_TheCursedCachaca:
            #char:Jackie_sad_sad|R
            Well, we went through that kinda thing once already, but still...

        - E_Mission_Rookie_CrystalsOfBygoneTimes:
            #char:Jackie_sad_angry|R
            Maybe it's just some function we don't know about? Seems more reasonable.

        - else:
            #char:Jackie_sad_sad|R
            I... don't think that's how it works, Kleber.
    }

    #char:Barto_neutral_sad|R
    Captain, may I ask something? You said Kleber was already awake when you went to check the instrument, right?

    #char:Barto_neutral_angry|R
    So if no one boarded us, the reasonable explanation is that <i>one of us</i> was playing the accordion.

    #char:Kleber_angry_angry|L
    Wait, are you saying that-

    #char:Barto_angry_angry|R
    I am. I think this you're just messing with us, Kleber.

    #char:Kleber_sad_neutral|L
    Wait, c'mon. You don't really think I did it, right, Cap? You were there, you saw me in the corridor!

    + (believe_kleber_played) [YES>>]

        #char:--
        You tell Kleber to stop playing around - there's no other explanation for this. Barto looks pleased with that.

//TODO(Trigs) -> Talvez opções pra pressionar o Kleber antes dele confessar? Sinto que n tá satisfatório o suficiente.

        #char:Kleber_sad_sad|L
        ...

        #char:Kleber_happy_happy|L
        ...Okay, okay, you got me! I got bored one night and decided to have some fun.

        #char:Kleber_neutral_neutral|L
        No idea how anyone can play that thing, though. All those keys and the bellows-

        #char:--
        Kleber is interrupted by a strike from Jackie's wrench.

        #char:Kleber_angry_sad|L
        OW! C'mon, guys, it was just a joke! {Shake("Big Face", 2, 0.5)}

        #char:Jackie_angry_happy|R
        "Just a joke"? If the client finds out we've been messing with the cargo, we risk losing our commission, you <shake>idiot</shake>! {Emotion("Outer", "red")}

        #char:Barto_angry_neutral|R
        And that's ignoring the fact that you kept waking us up in the dead of the night.

        #char:Kleber_sad_sad|L
        Alright, alright! I won't do it again! The accordion is fine, the client won't even notice someone else used it!

        #char:--
        You can tell Kleber doesn't exactly like your reaction to being found out - but that's his own fault, really.

        ~ g_affinity_Kleber -= 5
        ~ g_affinity_Barto += 5

    + (calm_barto_down) [NO>>]

        #char:--
        You tell Barto to pipe down. There's no reason for them to fight over something so trivial. He looks a bit displeased.

        #char:Jackie_neutral_angry|R
        Either way, the cargo is still here and the hold is undamaged, that's what matters.

        #char:Jackie_neutral_happy|R
        Now if you'll excuse me... <wave>(yawn)</wave>... I'm off to bed again. I suggest you all do the same for now.

        #char:--
        Jackie then briefly turns to Kleber before heading back to sleep.

        #char:Jackie_angry_neutral|R
        Oh, and Kleber? If the Captain was wrong, it means you messed with our cargo on purpose.

        #char:Jackie_angry_angry|R
        And if that's the case, you're gonna be <shake>sorry</shake>. {Emotion("Outer", "red")}

        #char:--
        Kleber looks worried, but also... strangely relieved?

        #char:Kleber_happy_sad|L
        Thanks for the save, captain! Hopefully we can get to the bottom of, uh, whatever this is.

        ~ g_affinity_Kleber += 5
        ~ g_affinity_Barto -= 5

    -   #char:--
        With that, the crew goes off to bed. For the next few days, the noise stops.

-> EVENT_END



= part3

#location:Aquarela

//TODO: Flavor descrevendo a Aquarela
#char:--
In the first night you spend in Aquarela, the accordion noises return.

#char:--
You meet Jackie and Barto in front of the cargo hold.

{
    - E_Mission_Rookie_AccordionInTheNight.believe_kleber_played:
        #char:Jackie_angry_happy|L
        This again? <shake>Kleber</shake>! {Emotion("Outer", "red")}

        #char:Barto_neutral_neutral|R
        He's not here. Let's search for that buffoon.

    - E_Mission_Rookie_AccordionInTheNight.calm_barto_down:
        #char:Jackie_sad_sad|L
        This again? I thought the noise had stopped!

        #char:Barto_angry_neutral|R
        I already checked inside. Nothing unusual.

        #char:Jackie_sad_angry|L
        Uh, where's Kleber? He didn't wake up like last time?

        #char:Barto_neutral_neutral|R
        Strange that he's not here when this happens again. Let's find that buffoon.
}

#char:--
You find Kleber snoozing in the cockpit and shake him awake.

#char:Kleber_sad_sad|R
WHA-oh, hey, Cap. Something wrong? Did we crash? {Blink("Big Face", 1, -1, "white")}

{
    - E_Mission_Rookie_AccordionInTheNight.believe_kleber_played:
        #char:Barto_neutral_angry|L
        We're parked, you dolt! Now, did you or did you not touch the accordion again?

        #char:Kleber_neutral_sad|R
        What? No, I said I wouldn't do it anymore! {Shake("Big Face", 1, 0.5)}

        #char:Jackie_neutral_angry|L
        And you didn't hear it playing just now?

    - E_Mission_Rookie_AccordionInTheNight.calm_barto_down:
        #char:Barto_neutral_neutral|L
        No, but you didn't hear the accordion playing again?
}

#char:Kleber_neutral_sad|R
No I didn't! I was sleeping like a log. {Shake("Big Face", 1, 0.5)}

{
    - E_Mission_Rookie_AccordionInTheNight.believe_kleber_played:
        #char:Barto_angry_angry|L
        I don't buy it. Seems like a convenient excuse.

    - E_Mission_Rookie_AccordionInTheNight.calm_barto_down:
        #char:Barto_angry_angry|L
        Even though you "woke up" just fine last time it happened? I don't buy it.

        #char:Jackie_sad_angry|L
        Gotta say, I'm starting to think Barto's onto something and you're just messing with us.
}

#char:Kleber_angry_sad|R
Come on, why doesn't anyone believe me? I was right here the whole time! {Shake("Big Face", 1, 0.5)}

#char:Kleber_angry_angry|R
Don't tell me you agree with them, Cap!

+ (blamed_kleber) [YES>>]

    {
        - E_Mission_Rookie_AccordionInTheNight.believe_kleber_played:
            #char:--
            You do. You don't understand why Kleber is still messing with the cargo after you told him not to.

            #char:Kleber_sad_angry|R
            Really, Cap? Just because I did it once?

        - E_Mission_Rookie_AccordionInTheNight.calm_barto_down:
            #char:--
            You didn't want to, but Barto and Jackie are right - it's way too convenient for him to be sleeping while it happened.

            #char:Kleber_sad_angry|R
            Alright. Listen here, I admit it. I was the one who did it before-

            #char:Barto_angry_angry|L
            Glad to know I was right.

            #char:Kleber_angry_sad|R
            But I couldn't have played the accordion now, because I. Was. RIGHT. <shake>HERE</shake>. {Shake("Big Face", 1, 0.5)}
    }

    #char:Kleber_angry_angry|R
    Gotta say, I don't appreciate being ganged up on by the crew I'm in. But okay, whatever.

    #char:Kleber_angry_angry|R
    Tell you what, Cap: since you won't trust me anyway, change the cargo hold password lock until we find the client.

    #char:Jackie_angry_happy|L
    You don't have to go that far, just don't touch it again! {Emotion("Outer", "red")}

    #char:Barto_neutral_angry|L
    I guess that works for me. Let us do it that way, then.

    {
        - E_Mission_Rookie_AccordionInTheNight.believe_kleber_played:
            ~ g_affinity_Kleber -= 15
            ~ g_affinity_Barto += 15
            ~ g_morale -= 10

        - E_Mission_Rookie_AccordionInTheNight.calm_barto_down:
            ~ g_affinity_Kleber -= 10
            ~ g_affinity_Barto += 10
            ~ g_morale -= 5
    }

+ (not_blame_kleber) [NO>>]

    #char:--
    You don't think it's fair to accuse Kleber like this. Maybe something else is going on?

    #char:Barto_angry_angry|L
    You cannot be serious, Captain. If it wasn't Kleber, then who was it?

    #char:Jackie_sad_angry|L
    I do think the captain has a point, though. None of us are above suspicion, in theory.

    #char:Barto_angry_sad|L
    What do you suggest, then? It's not like we can install a camera in there.

    #char:Kleber_angry_neutral|R
    No, but one of us change the password for the lock every day. And we take turns.

    #char:Kleber_angry_neutral|R
    That way, only one person can get in at a time, so if that piece of junk plays again, we'll know who it is.

    #char:Jackie_neutral_angry|L
    Not a bad idea! And if anyone else changed it, we'd know. Let's start with the Captain, then!

    {
        - E_Mission_Rookie_AccordionInTheNight.believe_kleber_played:
            ~ g_affinity_Kleber += 15
            ~ g_affinity_Barto -= 15
            ~ g_morale -= 10

        - E_Mission_Rookie_AccordionInTheNight.calm_barto_down:
            ~ g_affinity_Kleber += 10
            ~ g_affinity_Barto -= 10
            ~ g_morale -= 5
    }

-   #char:--
    You go to the cargo hold console and change the password so only you have access to the hold for now.

-> EVENT_END



= part4

#location:Aquarela

#char:--
Since the last time, you haven't heard the accordion again.

#char:--
Everyone is in the cockpit now, while Kleber prepares to enter one of the improvised docking point for ships.

#char:Barto_neutral_neutral|L
One moment. Am I the only one hearing this?

~ ScreenFlash("white", -1)

#char:--
You try to listen over the noise of the ship... and you hear the bloody accordion again.

#char:Kleber_angry_angry|R
<shake>SEE</shake>!? I told you I had nothing to do with it. {Emotion("Outer", "red")}

#char:--
Kleber docks the 41-Biz and you all go check the cargo. To no surprise, there's no one inside.

#char:--
To <i>everyone</i>'s surprise, however, the accordion is playing on its own anyway.

#char:--
The keys and bellows move as if being controlled by an invisible force.

{
    - E_Mission_Rookie_TheCursedCachaca:
        #char:Kleber_angry_sad|R
        I knew it! We were roped into carrying more posessed stuff again! {Shake("Big Face", 1, 0.5)}

    - else:
        #char:Kleber_angry_sad|R
        I knew it! This isn't a normal accordion after all! {Shake("Big Face", 1, 0.5)}
}

#char:Jackie_sad_angry|L
Actually, it looks like there's a better explanation for this.

#char:--
Jackie picks up the accordion and gives it a careful look. It keeps playing even in her hands.

#char:Jackie_happy_happy|L
<bounce>Aha</bounce>! Right here! See this, everyone? {Emotion("Outer", "yellow")}

~ ScreenFlash("white", -1)

#char:--
She points to a groove in the back of the instrument. It's painted over, almost as if to look inconspicuous.

#char:Jackie_neutral_angry|L
You were right in a way, Kleber. This isn't just any accordion: it's an <i>automatic</i> accordion.

#char:Kleber_sad_sad|R
Wait, automatic? You mean, it doesn't need anyone to play it?

#char:Jackie_neutral_neutral|L
Yeah. I think it might be activating on its own because it's either too sensitive of some mechanical problem.

#char:--
As if to prove her point, she shakes the accordion up and down, wihout moving the bellows. It plays a single note.

#char:Barto_sad_sad|L
So, all this mess was because our client bought a potentially defective instrument and we didn't check it properly? {Emotion("Inner", "blue")}

{
    - blamed_kleber:
        #char:Jackie_sad_neutral|L
        ...Yes. Yes, it was. And also because Kleber decided to prank us in the first few nights.

        #char:Kleber_angry_sad|R
        Look, I'm sorry for that, but it was just a harmless prank to me!

    - not_blame_kleber:
        #char:Jackie_sad_neutral|L
        Yeah, that's about right.

        #char:--
        Everyone seems to be relieved. Kleber in particular.
}

+ [FACEPALM>>]

    #char:--
    Enough about that. What if Afonso finds out the instrument is like this? None of you are musical specialists.

    #char:Jackie_neutral_angry|L
    Well, the inspection Caravaneers in the Capy-Bar didn't see anything unusual with the accordion.

    #char:Jackie_neutral_neutral|L
    At least, nothing superficial. They would have said something, otherwise.

    #char:Jackie_neutral_sad|L
    So if anything happened to the accordion, it was <i>way</i> before it got to us.

    #char:Kleber_neutral_happy|R
    Gotcha. So Afonso can't blame us if he can't go to his competition-

+ [MOTIVATE>>]

    #char:--
    That's some experience for the future. Maybe checking the cargos a bit more can't hurt.

    #char:Jackie_sad_sad|L
    I guess that's a start. But what do we do now? Afonso is going to ask either way.

    #char:Barto_neutral_angry|L
    He'll be dissatisfied, no doubt. Especially if it jeopardizes his chances at the competition.

+ [QUESTION>>]

    ~ ScreenFlash("white", -1)

    #char:--
    Wait, come to think of it, does Afonso know about this?

    #char:Barto_neutral_angry|L
    The fact that the instrument is automatic? Or the fact it might be defect?

    #char:Jackie_neutral_angry|L
    I doubt it. Who buys a broken instrument for a music competition?

-   #char:Kleber_neutral_sad|R
    Wait, if it's a competition... <wave>oho, I see</wave>. Looks like a certain someone was planning on cheating his way up top.

    #char:Kleber_neutral_sad|R
    Think about it: he's bringing an accordion that plays itself to a contest of musicians.

    #char:Jackie_neutral_angry|L
    Huh, that actually makes a lot of sense.
    
    #char:Kleber_neutral_happy|R
    Eh, but Caravans shouldn't really meddle in these things. Just complete deliveries.

    #char:Kleber_neutral_neutral|R
    Either way, that little fact might come in handy later. Now come on, let's find Afonso.

    ~ FadeTo("black", 1, 1)

-> talk_to_afonso



= talk_to_afonso

#char:--
You take the accordion, and the crew exits the ship. Afonso is waiting right outside the docking point, like other Caravan clients do.

{
    -g_time >= 3:
        #char:Afonso|L
        Oh, hey! Glad you could get here this early! Now I have time to practice!

    - else:
        #char:Afonso|L
        Hey... I know the travel must have been hard, but couldn't you have sped up a little bit?

        #char:Afonso|L
        Now I barely have time to practice for the competition!

        #char:--
        A snarky remark almost makes it out of your lips, but you keep it to yourself.
}

#char:--
You give the accordion to Afonso. As he fiddles with it, it plays a few notes. He freezes.

#char:--
Afonso looks at you, with an expression changing between anger and fear.

#char:Afonso|L
Hey, uh... did something happen to my accordion on the way here? You didn't mess with it, did you?

+ [LIE>G>]

    {
        - blamed_kleber:
            #char:--
            You tell him no. Better not say anything about Kleber's prank.

        - not_blame_kleber:
            #char:--
            You tell him no. Better not tell your client about investigating the instrument.
    }

    #char:Afonso|L
    Either way, the accordion is broken! Have you any idea how much I needed this for the competition? {Shake("Big Face", 1, 0.5)}

    #char:Afonso|L
    I'm going to file a complaint for this! {Emotion("Outer", "red")}

    {
        - believe_kleber_played || blamed_kleber:
            #char:Kleber_angry_angry|R
            Really, now? {Emotion("Outer", "red")}

            #char:Kleber_happy_happy|R
            Well, go ahead then, Afonso.

            #char:Jackie_angry_happy|R
            Wait... what!?

            #char:Kleber_happy_neutral|R
            Here's the thing: if you do, you'll have to say your product is an <i>automatic</i> accordion.

            #char:--
            Everyone freezes then. Especially Afonso.

            #char:Kleber_happy_sad|R
            Gee, wonder if the judges of that contest would put two and two together after seeing that?

            #char:--
            Jackie and Barto look at Kleber with disapproval on their faces.
            
            #char:--
            Afonso looks angry, but finally looks down on resignation.

            #char:Afonso|L
            Fine. I'll figure something out myself. But not a word about this! {Shake("Big Face", 1, 0.5)}

            #char:--
            Afonso gives you your Grana and stumbles back into Aquarela.

            #char:Barto_neutral_angry|R
            Was that really necessary, Kleber? Remember, we're just here to make a delivery.

            #char:Jackie_angry_happy|R
            Even if things worked out for us, I'd rather we refrain from threatening clients when we can.

            ~ g_morale -= 20

            #char:Kleber_neutral_sad|R
            Eh, we got our Grana and Afonso got his thing. I think we're done here anyway.

            ~ g_grana += 4000

            #Log: Threatened Afonso to make him pay you

        - else:

            #char:Kleber_sad_sad|R
            Look, man, it's a pity. But we received the cargo like this already.

            #char:Kleber_sad_angry|R
            Caused a big stir too. Caused the crew to lose some sleep because it kept playing on its own.

            #char:Kleber_neutral_angry|R
            Anyway, if you want to make a complaint, go ahead. The Caravans can prove the accordion was given to us like this.

            #char:--
            Afonso looks a bit despondent, but he appears to believe in the crew, for he most part.

            #char:Afonso|L
            Very well. I'll figure out a way to fix this. Just take your Grana and go.

            #char:--
            Afonso pays the crew and walks away, trying to see if he can keep the instrument silent.

            #char:Barto_neutral_angry|R
            That was surprisingly smooth coming from you, Kleber.

            #char:Jackie_neutral_angry|R
            I think this might be one of the very few times you talk the whole crew out of a situation, instead of just yourself.

            #char:Kleber_happy_sad|L
            Hey, was that a compliment or an insult, lady?

            ~ g_grana += 4000
            ~ g_morale += 20

            #Log: Dissuaded Afonso from filing a complaint
    }

    ~ FadeTo("black", 1, 1)

+ [BARGAIN>>]

    #char:--
    You tell him you didn't - the accordion is doing exactly what it was meant to do: play itself.

    #char:--
    Afonso's eyes go wide, then he looks down. He knows he's been caught.

    {
        - believe_kleber_played || blamed_kleber:

            #char:Kleber_neutral_sad|R
            Look, Afonso. Honestly, we don't care what you do with it. It's not part of our Caravan M.O..

            #char:Kleber_neutral_neutral|R
            But considering even we could tell this thing is automatic, I'm willing to bet one thing.
            
            #char:Kleber_neutral_happy|R
            If you take that accordion to any musician worth their salt, I'm sure they'll be able to tell too. And that it was broken from the start.

            #char:Afonso|L
            F-fine! Tell you what, I'll add an extra to your payment. Let's just keep it between us. {Shake("Big Face", 1, 0.5)}

            #char:--
            Afonso adds extra money to your reward and walks away, trying to keep the accordion from making a sound.

            #char:Jackie_neutral_angry|R
            I can't say I'm a fan of exchanges like that... but still, that was some good improv, Kleber.

            #char:Kleber_neutral_sad|L
            Eh, after all the hassle, I'd rather the crew doesn't pay for my prank, y'know.

            #char:Barto_neutral_sad|R
            That's surprisingly mature of you.

            ~ ScreenFlash("white", -1)

            #char:Kleber_happy_sad|L
            And besides, if he wins a contest like that thanks to us, we're more than deserving of something extra.

            #char:Barto_neutral_angry|R
            I take it back. You're incorrigible.

            ~ g_grana += 5000

            #Log: Took a bribe from Afonso to keep the accordion's secret

        - else:

            #char:Afonso|L
            So you did mess with my accordion, then! The Caravan Association will hear about this! {Shake("Big Face", 1, 0.5)}

            #char:Kleber_sad_sad|R
            Uh, wait, can't we work something out, man?
            
            #char:Kleber_sad_happy|R
            Listen, if the music competition judges don't need to hear about this, neither does the Caravan Association, right?

            #char:--
            Afonso seems to ponder Kleber's proposal for a bit.

            #char:Afonso|L
            Fine. But I'm taking the repair money out of your reward! {Shake("Big Face", 1, 0.5)}

            #char:Barto_angry_angry|R
            WHAT!? Why, you litlchtnbast- {Emotion("Outer", "red")}

            #char:--
            Barto seems so angry he can barely speak properly.

            #char:Jackie_angry_neutral|R
            Easy, Barto. It sucks, but we don't have a way to bargain.

            #char:Kleber_sad_sad|R
            Afraid she's right, chef. We don't have a way to prove we didn't tamper with the cargo. {Emotion("Inner", "blue")}

            #char:Kleber_angry_angry|R
            Alright, Afonso. Take your money for repairs.

            #char:--
            Afonso gives you the Grana - minus the repair money - and leaves.

            #char:Kleber_sad_sad|R
            I don't like this either, but it's the best bargain we could get.

            ~ g_grana += 3000

            #Log: Had to pay a compensation to Afonso
    }

    ~ FadeTo("black", 1, 1)

-   #char:--
    As the crew prepares the ship for a short trip to the nearest Capy-Bar, you notice Barto talking to Kleber.

    #char:Barto_sad_sad|L
    Kleber, I must apologize to you. 

    {
        - believe_kleber_played || blamed_kleber:
            #char:Barto_sad_angry|L
            While I don't appreciate you using our cargo to pull a prank, it was unfair to blame you without proof.

            #char:Kleber_neutral_sad|R
            Eh, it's water under the bridge for me, man. At least we finished the job. 
            
            #char:Kleber_sad_sad|R
            Besides, now that I think about it, I could have botched our delivery by breaking the cargo or something. So I gotta apologize too.

        - else:
            #char:Barto_sad_angry|L
            I suppose it was unfair of me to blame you without proof.

            #char:Kleber_neutral_sad|R
            Oh, uh, no problem, chef. I get that I can be a handful sometimes.

            #char:Kleber_neutral_happy|R
            And I know y'all are just thinking of the best for our Caravan, so no problem!
    }

    #char:Kleber_happy_happy|R
    But hey, if you really want to apologize, I can take some coxinhas. /*{-E_Environment_BotaFoodMarket.bota_food_feast: Like the ones you made for Bota Food.}*/ {Emotion("Outer", "yellow")}

    #char:Barto_neutral_angry|L
    ...Don't push it, you buffoon. Or <i>I</i> might play a prank myself by putting more pepper on your food someday.

-> MISSION_END