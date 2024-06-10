===E_Crew_WhatsForDinner===

#scope: General
#category: M3_General1
#tier: Rookie, Intermediate, Expert
#intensity: Low
#location: Skyways

#char:--
You are gathered around the kitchen table, waiting for Barto to finish cooking tonight's meal.

#char:Kleber_happy_angry|R
Gotta tell y'all, I'm—

{PlaySFX("BigDamage")} {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

#char:Kleber_surprised_angry|R
Hungry.

#char:Barto_angry_neutral|L
<shake>FOR GOODNESS SAKE!</shake> {PlaySFX("Hit2")}

#char:Jackie_surprised_angry|R
...Need some help there, Chef? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

#char:Barto_angry_neutral|L
I'm fine, I'm fine. It's just this stupid stove...

#char:Barto_angry_neutral|L
<shake>UGH!</shake> {Emotion("WaveOut", "ea2929")} {PlaySFX("Hit1")}

#char:Jackie_surprised_sad|R
What happened? I can take a closer look at it if you want.

#char:Barto_sad_sad|L
The burners won't light. //

#char:Barto_sad_sad|L
I have no idea why, they were perfectly fine this morning...

#char:Jackie_neutral_sad|R
Hmm... I guess it won't be too hard.

#char:Jackie_happy_angry|R
Give me an hour, tops, and I can fix them! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

~ FadeTo("black", 1, 1)

#char:--
Not half an hour passes—

~ ScreenFlash("white", -1)

#char:Jackie_fear_happy|R
<shake>GEEZ, NOT THAT! </shake> {PlaySFX("Hit2")} {PlaySFX("BigDamage")} {Blink("All", 2, -1, "White")} {Shake("All", 3, -1)}

#char:--
Jackie comes back to the table, her bionic arms spasming uncontrollaby.

#char:Jackie_sad_neutral|R
Sorry Barto, one of my freaking circuits has fried out of nowhere. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")} //

#char:Barto_fear_angry|L
Don't apologize for that! Your safety comes first! 

#char:Barto_neutral_angry|L
Focus on your arms. Dinner could be delayed.

#char:Kleber_happy_sad|L
Dinner might be late, but we've made progress on the clouds! {Emotion("Shine", "ffb71b")} {PlaySFX("LightWoosh")}

#char:Kleber_happy_happy|L
It's been pretty much smooth sailing since— 

~ ScreenFlash("black", -1)
~ UniqueEffectActivate("41BisDamage")

#char:Kleber_surprised_angry|L
Uh— {Shake("All", 3, -1)} {PlaySFX("BigDamage")}

~ ScreenFlash("red", -1) 

#char:Kleber_fear_angry|L
...I just <shake>had</shake> to open my mouth again, didn't I? {PlayMusic("Light")} //

#char:Jackie_fear_neutral|R
Did-did we stop? Those were the emergency lights!

#char:Kleber_surprised_sad|L
Looks like the main sail controls are busted. I guess today is just not our day, huh? //

    + [STERN¬Blame the crew for not doing proper maintenance.>M>]

        #char:--
        You scold them for not doing maintenance.

        ~ g_morale -= g_statChangeLow

        //AFFINITY PASS

        {
            - g_affinity_Barto >= 25:
                #char:Barto_surprised_sad|L
                But we did, Captain! I have no idea why they acted up like this! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

            - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                #char:Barto_angry_sad|L
                Like I said, the burners were working just fine in the morning.  {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}

            - else:
                #char:Barto_angry_angry|L
                Easy for you to say! I do not remember you ever offering to help! {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")}
        }
        
        ~ g_affinity_Barto -= g_affinityChangeMid
        
        // #char:Barto_angry_angry|L
        // You think I don't care about my kitchen?

        //AFFINITY PASS

        {
            - g_affinity_Jackie >= 25:
                #char:Jackie_surprised_neutral|R
                Yeah, we've been doing what we can! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")} {StopMusic()}

            - g_affinity_Jackie < 25 && g_affinity_Jackie > -25:
                #char:Jackie_sad_neutral|R
                I think I know more about the maintenance of my arms than you, {g_name}. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")} {StopMusic()}

            - else:
                #char:Jackie_angry_happy|R
                Look, we've been doing our best with what we have. It's not that simple! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")} {StopMusic()}
        }

        ~ g_affinity_Jackie -= g_affinityChangeMid

        #char:Kleber_happy_angry|L
        Well, the sail was actually my fault, so I deserve the scolding. Sorry, folks! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

    + [EASYGOING¬It happens. You will get out of this.>M>]

        #char:--
        You tell them not to worry. It's just a series of unfortunate events, it's not their fault.

        ~ g_affinity_Barto += g_affinityChangeMid
        ~ g_affinity_Jackie += g_affinityChangeMid

        ~ g_morale += g_statChangeLow

        //AFFINITY PASS

        {
            - g_affinity_Kleber >= 25:
                #char:Kleber_sad_sad|L
                Cap, I'm not gonna lie and pretend I like being scolded. But this sail thing was my fault. {StopMusic()}

                #char:Kleber_neutral_angry|L
                I know it's not cool to badger us with these things, but it's fair every once in a while.

            - g_affinity_Kleber < 25 && g_affinity_Kleber > -25:
                #char:Kleber_surprised_sad|L
                Hey, the sail situation is my fault, Cap. You should hold us accountable sometimes, you know. {StopMusic()}

            - else:
                #char:Kleber_angry_sad|L
                Cap, if you keep letting everyone off the hook, this ship won't fly. {StopMusic()}
        }

        ~ g_affinity_Kleber -= g_affinityChangeLow

        // #char:Jackie_sad_neutral|R
        // Well, I really don't know what happened with my arms.

        #char:Barto_sad_sad|L
        Tonight's menu was my exquisite Alligator Moqueca. What a bummer. {PlaySFX("Bad2")}


    // + [FEAR¬Delivery has barely started and everything is going wrong already?>M>]
    //     #char:--
    //     What now!? You're adrift, without dinner and the one person who can fix it can't move her limbs!

    //     ~ g_morale -= g_statChangeLow

    //     #char:Barto_fear_sad|L
    //     Indeed! Should we not call for help!? {PlaySFX("Bad2")}

    //     #char:Jackie_neutral_neutral|R
    //     Don't worry. We can solve this, we just need time! {PlaySFX("Woosh")}

    //     #char:Jackie_neutral_angry|R
    //     We're not in any immediate danger. Let's sit down and figure this one out!

    //     #char:Kleber_surprised_sad|L
    //     Jackie's right! If we survived storms, shootouts and worse, we'll survive this!

    -   #char:Jackie_neutral_neutral|R
        Anyways, let me try to fix my arms first. Then we'll see about the rest.

        ~ FadeTo("black", 1, 1)

        #char:--
        You all sit in the common room, illuminated by the ship's emergency lights.

        #char:Jackie_happy_angry|L
        Alright! Good news: I could fix my arms easily! {PlayMusic("Decision")} {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}

        #char:Jackie_sad_neutral|L
        Bad news: the oven and sail controls will be harder. I'll probably be up late. //

        #char:Kleber_sad_sad|R
        Well, that put a wrench in the works. Otherwise we'd reach the Refinery tomorrow noon. {Emotion("WaveIn", "0a4de8")} {PlayMusic("LightWoosh")} {PlaySFX("Bad1")}

        #char:Kleber_surprised_sad|R
        <wave>Soooo...</wave> that leaves us with only one question. What's for dinner? 

        #char:Jackie_sad_neutral|L
        Hmm... 
        
        #char:Jackie_neutral_neutral|L
        Well, we do have some canned food in the cabinets. 
        
        #char:Jackie_neutral_sad|L
        It's not the tastiest meal, but at least it won't leave our stomachs empty...

        #char:Kleber_fear_sad|R
        <shake>Yeesh!</shake> That stuff is DISGUSTING. {Shake("Big Face", 1, 0.5)} {PlaySFX("DeuRuim")}

        #char:Barto_neutral_sad|R
        No need for that, Jackie. I can help.
        
        #char:Barto_happy_angry|R
        I have a little trick I learned from when I had my flying restaurant. I'll just need some fuel. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        #char:Kleber_surprised_angry|R
        Flying what? Now I'm curious!

        #char:Jackie_sad_neutral|L
        Are you sure, Barto? It could be quite dangerous.

        #char:--
        Should you let Barto make his fix, risking even more damages, or eat canned food for tonight? 
        
        + (improvise_for_dinner) [BARTO¬Let Barto do the trick.>F>]

            #char:--
            Barto seems experienced enough, so you let him do his trick. {StopMusic()}

            //AFFINITY PASS

            {
                - g_affinity_Barto >= 25:
                    #char:Barto_happy_neutral|R
                    Thank you, {g_name}. I am pretty confident I can do this! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

                - g_affinity_Barto < 25 && g_affinity_Barto > -25:
                    #char:Barto_neutral_neutral|R
                    It has been a while, but I still remember how to do it.

                - else:
                    #char:Barto_angry_neutral|R
                    Oh, so <i>now</i> I have 'enough experience', hm? {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

                    #char:Barto_angry_angry|R
                    ...<i>At least</i> I have your vote of confidence this time, I suppose.

                    #char:Barto_neutral_neutral|R
                    We'll see how it goes from now on.
            }
            
            ~ g_affinity_Barto += g_affinityChangeMid

            #char:Jackie_sad_neutral|L
            <b>Please</b> be careful, Barto.

            ~ g_fuel -= g_statChangeLow

            #char:--
            Barto grabs a fuel can and makes an improvised contraption using a bunch of trinkets from the kitchen.

            #char:Barto_happy_neutral|R
            Ready?

            ~ ScreenFlash("yellow", -1)

            #char:Barto_happy_neutral|R
            <wave>....Aaaand it's done!</wave> {PlaySFX("Hit2")}

            ~ g_morale += g_statChangeLow

            #char:Jackie_surprised_happy|L
            Wait, you did it! Nice job, Chef! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer1")}

            ~ g_affinity_Jackie_Barto += 10

            #char:Barto_happy_angry|R
            Now, allow me to prepare some moqueca for you! {PlaySFX("Love1")} {Emotion("Heart", "ea2929")}

            ~ FadeTo("black", 1, 1)

        + (cans_for_dinner) [JACKIE¬Eat canned food just for tonight.>S_M>]

            #char:--
            You agree with Jackie. Better eat what you have than risk improvising like that. {StopMusic()}

            //AFFINITY PASS

            #char:Jackie_neutral_sad|R
            Yeah, I think that's the safest option at the moment.
 
            ~ g_affinity_Jackie += g_affinityChangeMid

            #char:--
            You grab an opener and some cans from the kitchen cabinet.

            ~ g_supplies -= g_statChangeLow
            ~ g_morale -= g_statChangeLow

            ~ ScreenFlash("green", -1)

            #char:--
            As soon as they're open, an unpleasant smell takes over the kitchen. {PlaySFX("DeuRuim")}

            #char:--
            In fact, unpleasant is an <i>understatement</i>. 

            {
                - g_affinity_Barto >= 0:
                    #char:Barto_fear_sad|R
                    Goodness gracious, this stuff is rotten. {Emotion("Spiral", "53e66b")} {PlaySFX("Bad2")}

                - else:
                    #char:Barto_fear_sad|R
                    I cannot believe you think this is better than letting me cook with an improvised stove! {Emotion("Spiral", "53e66b")} {PlaySFX("Bad2")}
            }
            
            #char:Jackie_fear_neutral|L
            ...Ok. I'd <i>almost</i> rather go to bed hungry. {Emotion("Spiral", "53e66b")} {PlaySFX("Hit1")}

            ~ FadeTo("black", 1, 1)

        -   #char:--
            While eating, <>

            {
                - cans_for_dinner:
                    Barto seems very displeased.

                    #char:Barto_sad_happy|L
                    I'm sorry, crew. There's no seasoning that could save the C.C.A.'s emergency rations. {Emotion("WaveIn", "0a4de8")} {PlaySFX("StrongWoosh")}

                    #char:Barto_sad_sad|L
                    I wish I had done my trick.

                - improvise_for_dinner:

                    Barto seems unhappy.

                    #char:Barto_sad_happy|L
                    Apologies for the lackluster meal. I did the best I could.
            }

            + [MOTIVATE¬Tell Barto he tried his best.>>]
                {
                    - cans_for_dinner:

                        #char:--
                        You tell Barto that you wanted to avoid creating even more problems for the ship. Everyone would love to eat his food.

                        //AFFINITY PASS

                        ~ g_affinity_Barto += g_affinityChangeLow
                        
                        {
                            - g_affinity_Barto >= 0:

                                #char:Barto_neutral_angry|L
                                ...I guess I understand.


                            - else:
                                #char:Barto_sad_angry|L
                                I'm used to being underestimated.
                        }

                    - improvise_for_dinner:

                        #char:--
                        You tell Barto it's great, actually. You've had way worse to eat in the Surface.

                        //AFFINITY PASS

                        ~ g_affinity_Barto += g_affinityChangeLow

                        {
                            - g_affinity_Barto >= 0:
                                #char:Barto_surprised_angry|L
                                I am not sure if that can be called a compliment, Captain.

                            - else:
                                #char:Barto_sad_sad|L
                                Even so, that does not change the fact that we could be eating better.
                        }
                }

            + [FRUSTRATED¬Stay silent.>>]
                {
                    - cans_for_dinner:
                        #char:--
                        It's hard to not be dissatisfied with the canned... <shake>thing</shake> you're eating.

                    - improvise_for_dinner:
                        #char:--
                        You can't help but feel frustrated at everything going wrong tonight.
                }

            - 

                #char:Jackie_neutral_angry|R
                Everyone, I think I've finished eating. I'll take a proper look at the oven now.

                #char:Barto_neutral_sad|L
                Much appreciated, Jackie.

                #char:Kleber_surprised_neutral|R
                Look, beggars can't be choosers, right?

                #char:Kleber_surprised_neutral|R
                Why care so much about the meal quality in an emergency like this?

                #char:Kleber_neutral_angry|R
                Such a fuss about food.

                ~ g_affinity_Barto_Kleber -= g_affinityChangeLow

                #char:Barto_neutral_neutral|L
                ...

                #char:Kleber_surprised_neutral|R
                ...

                #char:Barto_angry_neutral|L
                ...

                #char:Kleber_fear_sad|R
                ...!

                #char:Kleber_surprised_angry|R
                <size=22><wiggle>Psst.</wiggle></size>

                #char:Kleber_fear_angry|R
                <size=22>Cap, what's wrong with Barto? <bounce = 0.5>He looks like he's going to pounce me!</bounce></size>

                #char:Barto_angry_angry|L
                <shake>WHAT</shake>, Kleber!? {PlaySFX("Hit1")}

                #char:Kleber_fear_neutral|R
                <wiggle>HEY</wiggle>, look, man, I'm not trying to pick a fight. Forget I said— {PlaySFX("LightWoosh")}

                #char:Barto_neutral_sad|L
                Lemme— erm, let me tell you a little bit about myself. 

                #char:Kleber_surprised_neutral|R
                Huh? {Emotion("Explosion", "39f2d6")} {PlaySFX("Mistery3")}

                #char:Barto_neutral_neutral|L
                I come from a small clan of foraging anteaters from the Arbor. {PlayMusic("Sad")}

                #char:--
                They pause for a second, remembering you're a Surfacer.

                #char:Kleber_neutral_angry|R
                It's a tangling of giant trees, Captain. Can't miss it. It's on the other side of the world, though.

                #char:Barto_neutral_neutral|L
                We explored the trees and its surroundings for sources of food and rare ingredients, often selling our extra findings.

                #char:Barto_neutral_sad|L
                But I was not content with that lifestyle, you see. It felt like I was missing something.

                #char:Barto_neutral_happy|L
                Then one day, we were making sales near a branch-town. There was a flying restaurant there. 
                
                #char:Barto_happy_angry|L
                And I got my first taste of cooking. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                // {
                //     - E_Environment_FavelaFestival.festival_follow_barto:
                //         #char:Barto_happy_happy|L
                //         Do you recall when I told you about my love of skewers, {g_name}?
                // }

                #char:Barto_happy_angry|L
                I was nothing more than a cub, but they let me come in watch them work.

                #char:Barto_happy_happy|L
                Love at first sight — and bite! The food was delicious. {Emotion("Heart", "ea2929")} {PlaySFX("Love2")}

                #char:Kleber_neutral_neutral|R
                So that's when you decided to become a cook?

                #char:Barto_sad_angry|L
                Yes. I left my clan soon after. Not on good terms.

                #char:Barto_happy_happy|L
                I got in the Mandioca Cooks Guild after some time. A full-fledged cook! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                #char:Barto_happy_neutral|L
                Food is important, Kleber. It is much more than sustenance. It made me want to see the world. My clan didn't understand.

                // {
                //     - E_Environment_FavelaFestival.festival_follow_barto:
                //         #char:Barto_happy_happy|L
                //         Do you recall when I told you about my love of skewers, {g_name}? That was soon after.
                // }

                // #char:Barto_neutral_neutral|L
                // Indeed. I tried to learn as much as I could during our travels.

                // #char:Barto_sad_sad|L
                // My family never stood in my way, but never really understood me either.

                #char:Barto_sad_neutral|L
                I just wanted to go back to as a successful cook.

                #char:Kleber_surprised_neutral|R
                How long ago was that?

                #char:Barto_neutral_sad|L
                Nearly six years ago. That makes me relatively old by anteater standards.

                #char:Barto_neutral_happy|L
                I actually went as far as having a flying restaurant once. Two seats, and I slept on one.

                #char:Barto_happy_happy|L
                Some people in the clouds I visited seemed to like my food.
                
                #char:Barto_neutral_neutral|L
                But unfortunately not enough.

                #char:Barto_sad_happy|L
                I was forced to sell the ship. The repairs were too expensive. 
                
                #char:Kleber_sad_sad|R
                That's a bummer, chef. Also had to get rid of a ride I loved once. It's tough. {Emotion("WaveIn", "0a4de8")} {PlaySFX("LightWoosh")}

                #char:Barto_neutral_neutral|L
                After that, I bounced between jobs. Bars, inns... and the Venom Refinery.

                // #char:Barto_neutral_neutral|L
                // But then my life started to change.
                
                #char:Barto_neutral_sad|L
                Eventually, I found a Capy-Bar and enlisted as a cook.
                
                #char:Barto_neutral_angry|L
                At first they stationed me in the bar itself, managing the kitchen. //TODO LOCALIZATION: Por favor usar "birosca" nessa frase

                #char:Barto_happy_happy|L
                Eventually, however, I got the opportunity to work on this crew, for ten times the Grana.

                #char:Barto_happy_angry|L
                With the money I'm getting from the C.C.A., I think I can give the flying restaurant another shot in the future. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                #char:Kleber_happy_happy|R
                Good to hear, chef! Bet your clan would be proud! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}
                
                ~ g_affinity_Barto_Kleber += g_affinityChangeHigh
                ~ g_affinity_Kleber_Barto += g_affinityChangeHigh

                #char:--
                Barto smiles wistfully and nods.

                #char:--
                Not much later, Jackie comes to you.

                #char:Jackie_happy_happy|R
                There we go! Oven's back. {Emotion("Shine", "ffb71b")} {PlaySFX("LightWoosh")}

                //AFFINITY PASS:

                {   
                    - g_affinity_Barto >= 25:

                        #char:Barto_happy_angry|L
                        Excellent! Tomorrow brings a better dinner for us! {Emotion("Shine", "ffb71b")} {StopMusic()} {PlaySFX("Shimmer1")}
                 
                }


                #char:Kleber_happy_sad|R
                Nice! Shall we take a look at the sails, then?

                #char:--
                Kleber and Jackie leave for repairs. Barto is pensive. {SetToDay()}

                ~ g_morale += g_statChangeMid

                // {
                //     - cans_for_dinner:
                //         #char:--
                //         Good. You'd rather not have canned food again anytime soon.

                //     - improvise_for_dinner:
                //         #char:--
                //         Good. You're sure this will give Barto some respite from going back to the Refinery.
                // }

                #char:--
                He gets up and leaves, without saying another word. His head is low.

-> EVENT_END