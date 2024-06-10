===E_Environment_GodWhaleHunt===

#scope: General
#category: Environment
#tier: Intermediate, Expert
#intensity: High
#location: Floating Ocean

#char:--
As you approach the outskirts of the Floating Ocean, Barto gets agitated.

~ ScreenFlash("white", -1)

#char:Barto_happy_sad|L
I have a somewhat dangerous idea.

#char:--
Everyone freezes around the table. Barto fidgets in a way you rarely see him do.

#char:Kleber_happy_neutral|R
Well well, color me surprised. Where's our cautious anteater at?

#char:Jackie_happy_sad|L
I bet it's a covert attempt to finally get rid of you, Kleber.

#char:Kleber_happy_neutral|R
Hey, if there's money involved, I'm all ears. {Emotion("Outer", "yellow")}

#char:Barto_neutral_angry|L
There <i>is</i> money involved, you greedy bastard. And yes, Jackie, it might be dangerous.

~ ScreenFlash("white", -1)

#char:Barto_neutral_neutral|L
I propose we take a piece of meat from the God Whale.

#char:--
Kleber stops and then lets out a loud laugh. Jackie is befuddled. Barto is dead serious.

#char:Jackie_neutral_neutral|R
Well, I guess it's an attempt to get rid of all of us, then.

#char:Barto_neutral_angry|L
Miss, stop with the nonsense and just trust me, please.

#char:Jackie_neutral_sad|R
What do you say, Captain? Should we do this?

    + [NO>>]

        #char:--
        You can't take Barto's suggestion seriously. It's too risky.

        #char:Barto_angry_angry|L
        Well, you've just missed the chance of having the best supper of your life. The joke is on you.

        ~ g_affinity_Barto -= 10

    -> EVENT_END

    + [YES>>]

        #char:--
        You're up for some adventure.

        #char:Barto_happy_neutral|L
        Thanks, Captain. You will be astonished.

        #char:Barto_happy_sad|L
        Oh, the God Whale... an edible mountain. One of the most exquisite tastes.
        
        #char:Barto_happy_sad|L
        To prepare it would be to transcend as a cook...

        #char:Jackie_neutral_sad|R
        So, what's your plan then?

        ~ g_affinity_Barto +=10

    -> whale_meat_plan 

    + [QUESTION>>]

        #char:--
        You ask for more information about the God Whale.

        #char:Barto_happy_sad|L
        It's a magnificent creature. Lives simbiotically with the people of the Floating Ocean, maintaining the ecosystem that allows the city to flourish.

        #char:Jackie_neutral_neutral|R
        It's a swimming mountain boss. Guarded by a bunch of ships armed to the teeth. {Emotion("Inner", "black")}

        #char:Barto_happy_happy|L
        <wave>An edible mountain!</wave> One of the most exquisite tastes! {Emotion("Outer", "yellow")}
        
        #char:Barto_happy_sad|L
        To prepare it would be to transcend as a cook...

        #char:Jackie_happy_sad|R
        Well, what's in it for the crew? I'd love to steal some parts from dreadnoughts, but I also like living. 
        
        #char:Jackie_happy_sad|R
        Never asked anyone around here to help me transcend.

        #char:Barto_neutral_angry|L
        Half the meat for the ship, half for selling when we reach our destination. We could buy a new ship with a kilogram of it.

        #char:Kleber_happy_happy|R
        Well, call me a whaler! {Emotion("Outer", "yellow")}

        #char:Jackie_happy_neutral|L
        Okay, okay, that sounds good enough!

        #char:Jackie_neutral_sad|L
        So, what's your plan then?

        ~ g_affinity_Barto += 10

    -> whale_meat_plan



= whale_meat_plan

        #char:Barto_neutral_sad|L
        Well, I met a cook in a tavern at the Sulphur Clouds a year before joining you. He told me of a certain guard ship helmed by a Captain Gilberto.

        #char:Barto_neutral_sad|L
        This fellow is as corrupt as they come, and he runs a meat smuggling ring. There's a certain coral where he stashes the meat and I have the coordinates.

        #char:Kleber_happy_sad|R
        <wave>Yeesh</wave>. What did you do to make this fella talk?

        #char:Barto_happy_neutral|L
        I have claws.

        #char:--
        Kleber lifts his eyebrows, smiling approvingly.

        #char:Barto_neutral_angry|L
        We could run by it and steal a stash. But it needs to be an exquisite performance of thievery.

        #char:Jackie_neutral_neutral|R
        ...<i>Or</i> we could use our clamshell to rip out a piece. More meat that way.

        #char:Kleber_happy_neutral|R
        Yeah Jackie, that's more like it! We snatch a piece of the freaking whale and then y'all trust your pilot to run without a scratch.
        
        #char:Kleber_happy_neutral|R
        I can make this. Had escapes in worse situations!

        #char:Barto_neutral_neutral|L
        This sounds absolutely terrible. But I suppose it's up to the captain.

        ++ [JACKIE>>]

            #char:--
            You agree with Jackie and Kleber. You love a good hit and run.

            ~ g_affinity_Kleber +=10
            ~ g_affinity_Jackie +=10

        -> whale_hunt_outcome_Kleber_Jackie

        ++ [BARTO>>]

            #char:--
            Sounds safer to stick with Barto's plan.

            ~ g_affinity_Barto +=10

        -> whale_hunt_outcome_Barto



= whale_hunt_outcome_Barto

#char:--
The ocean is pitch dark when you arrive at the coordinates. No sign of any ship on the radar. The ship moves to the stash point.

#char:--
Turns out, today is exactly the day that the Floating Ocean's justicars set up a sting operation.

~ ScreenFlash("white", 2)

#char:--
A hundred lights come up at the same time, sirens scream and engines blaze. -> ship_attack



= ship_attack

    #log: Got busted by guardian ships.

    ~ ScreenFlash("white", -1)

    #char:--
    Electrical harpoons hit the 41 Biz's exterior, disabling the engine. {Shake("All", 2, 1)}

    {Blink("All", 1, -1, "black")}

    #char:--
    Soon after, a flock of Guardian Ships come inside. An hour of interrogation and a very through inspection follow. 

    #char:--
    Eventually, they realize that they lit up a giant party for the wrong folks, which means the sting operation has gone under. 
    
    #char:--
    They were aiming for Captain Gilberto.

    #char:--
    The crew escapes with some bruises and a hefty fine for trespassing.

    ~ g_grana -= 500

    #char:--
    Kleber lifts the ship and slowly moves towards the lighter waters. The mood is dour.

    #char:Barto_sad_sad|L
    I'm... terribly sorry. {Emotion("Inner", "blue")}

    #char:Jackie_sad_sad|R
    Hey, we all agreed to it. We're a team, Barto. Get rich together, get screwed together. {Emotion("Inner", "blue")}

    #char:Kleber_sad_neutral|L
    Man, I actually was really curious to taste that whale... but it was out of your hands, my animal friend.

    #char:--
    Barto looks at you, wary of punishment. You didn't think such a huge anteater could shrink like that.

        ++ [RELAX>M>]

            #char:--
            You tell Barto it's not his fault — it was just bad luck.

            #char:--
            The anteater makes a little bow, and retires to the kitchen. 

            #char:Barto_sad_sad|L
            I promise not to use ant sauce this dinner.

            #char:Kleber_happy_angry|R
            Now <i>that</i> is a better reward than if we had gotten the freaking whale meat! {Shake("Big Face", 0.5, 1)}

            ~ g_morale += 10
            ~ g_affinity_Barto +=10
  

        -> EVENT_END

        ++ [ANGRY>M>]

            #char:--
            You show your disappointment by screaming at the cook.

            #char:--
            Barto looks like he's taken a blow. The anteater makes a long bow, and retires to the kitchen. 

            #char:--
            When you turn your back to the kitchen, Kleber and Jackie start pretending they were paying attention to whatever it is they are doing.

            ~ g_morale -= 20
            ~ g_affinity_Barto -= 20

        -> EVENT_END



= whale_hunt_outcome_Kleber_Jackie

#log: Got busted by guardian ships.

#char:--
Getting to the Whale was the easy part: wherever you were in the Floating Ocean, it could always be spotted at least as a distant black dot in the watery scenery.

~ ScreenFlash("white", -1)

#char:--
Being near it is more distressing, however. This floating ocean has a genuinely terrifying dweller.

#char:--
Being a few kilometers close finally allowed the crew to see all the guardian ships. You feel the rise of adrenaline - the shadow of regret.

#char:Kleber_happy_neutral|L
In and out, fellas. People are so afraid of the guardian ships that they don't even try this anymore.

#char:Kleber_happy_happy|L
Well, that's where I come in! {Emotion("Outer", "yellow")}

#char:Jackie_happy_neutral|R
Just don't forget that I'm gonna have to grab it despite your terrible steering.

#char:Kleber_happy_happy|L
Yeah, yeah, I know you love this as much as I do, you three-arm psycho! Captain, I'll need a co-pilot.

#char:--
You sit down watching them both grin, with clenched teeth. They really do work well in terrible situations. It's in the mundane that they're a bad double.

#char:Barto_angry_sad|R
I'd like to say it again: this was not my plan. I think this is preposterous.

#char:Kleber_happy_neutral|L
Shut up and enjoy the view, you're cooking us some whale tonight! {Shake("Big Face", 0.5, 1)}

#char:--
The ship accelerated in that familiar speed of a Caravan either fleeing trouble or looking for it. Today was a day for both.

#char:--
It was like a music band improvising. A swift flyby, a perfect clamshell grab and the instant screams of sirens all around them. No rehearsal, just instinct. {Shake("All", 2, 1)}

~ ScreenFlash("white", -1)

#char:--
Until one shot from a guardian ship fired straight into the gun, launching Jackie to the other wall and knocking her out. {Shake("All", 5, 0.5)}

#char:Kleber_angry_angry|L
<shake>Goddamit</shake>! I can't leave the cockpit and we need your help here, captain! {Emotion("Outer", "red")}

    + [SHOOT>>]

        #char:--
        You decide to try to fire back against the guardian ships yourself.

        #char:--
        As soon as your arms reach the controls, all lights turns off.

        ~ FadeTo("black", 1, 1)

    -> ship_attack

    + [BARTO>>]

        #log: Made your cook fire for the first time.

        #char:--
        You order Barto to man the turret and shoot back at your assailants.

        #char:--
        Barto froze completely. He was already on top of Jackie strapping her to one of the seats and applying healers.

        #char:Kleber_angry_angry|L
        Didn't you hear the Captain? <shake>Go shoot, get them off me!</shake> {Emotion("Outer", "red")}

        #char:--
        Barto jumped straight to the cockpit, wrapping the controls around his long claws.

        #char:Barto_sad_sad|R
        Captain, I've trained, but this is my first combat. <shake>I, I...</shake> {Emotion("Inner", "black")}

        ~ g_affinity_Barto -= 10

        ++ [ANGRY>M_S_G>]

            #log: Snatched a piece of the God Whale and ate the best dinner of your life.

            ~ ateGodwhale = true

            #chat:--
            You scream at him to fire. And fire he does. {Shake("All", 1, 1)}

            #char:--
            You had never seen a screaming anteater before. This job has its perks. {Shake("All", 1, 1)}

            #char:--
            After ten minutes that seemed like a whole day, the ship finally arrived at calmer skies, the guardian ships lost behind them.

            #char:Jackie_happy_sad|L
            I'm alive. My back hurts. Great job. Ouch. {Shake("Big Face", 0.5, 1)}

            #char:Kleber_happy_sad|R
            What a show, fellas! I need a drink. Where's the meat?

            #char:Jackie_happy_happy|L
            I got it in the clamshell, it's inside the storage.
            
            #char:Jackie_happy_happy|L
            I guess our operation was a success, everyone! {Emotion("Outer", "yellow")}

            #char:--
            Everyone stops and looks at Barto, trembling and curved in a seat too small for his body.

            #char:Barto_angry_sad|R
            I... I'm cooking the <shake>best meat</shake> you've ever eaten in your darned lives today. {Shake("Big Face", 0.5, 1)}

            #char:--
            Cheers! Bruised and battered, drinks on the way, God Whale meat on the menu.

            #char:--
            Plus, you'll be able to sell the rest for a really nice price. A caravan life does have its perks.

            ~ g_morale += 50
            ~ g_supplies += 50
            ~ g_grana += 1000

        -> EVENT_END

        ++ [RELAX>M_S_G>]

            #log: Snatched a piece of the God Whale and ate the best dinner of your life.

            ~ ateGodwhale = true

            #char:--
            You try to motivate Barto by saying you belive in his potential.
            
            #char:Barto_sad_sad|R
            <shake>O-ok... let's do this...</shake> {Emotion("Inner", "black")}

            #char:--
            Barto nervously starts firing the turret. {Shake("All", 1, 1)}
            
            #char:--
            You had never seen a screaming anteater before. This job has its perks. {Shake("All", 1, 1)}

            #char:--
            After ten minutes that seemed like a whole day, the ship finally arrived at calmer skies, the guardian ships lost behind them.

            #char:Jackie_happy_sad|L
            I'm alive. My back hurts. Great job. Ouch. {Shake("Big Face", 0.5, 1)}

            #char:Kleber_happy_sad|R
            What a show, fellas! I need a drink. Where's the meat?

            #char:Jackie_happy_happy|L
            I got it in the clamshell, it's inside the storage.

            #char:Jackie_happy_happy|L
            I guess our operation was a success, everyone! {Emotion("Outer", "yellow")}

            #char:--
            Everyone stops and looks at Barto, trembling and curved in a seat too small for his body.

            #char:Barto_angry_sad|R
            I... I'm cooking the <shake>best meat</shake> you've ever eaten in your darned lives today! {Shake("Big Face", 0.5, 1)}

            #char:--
            Cheers! Bruised and battered, drinks on the way, God Whale meat on the menu. 

            #char:--
            Plus, you'll be able to sell the rest for a really nice price. A caravan life does have its perks.

            ~ g_morale += 50
            ~ g_supplies += 50
            ~ g_grana += 1000

    -> EVENT_END