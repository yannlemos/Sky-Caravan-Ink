===E_Ship_Pelicannons===

#scope: General
#category: M4_General1
#tier: Rookie, Intermediate, Expert
#intensity: High

// Mabel check: Ready to be localized!

VAR gotPelicannonMeat = false

#char:--
It's early morning in the Skyways.

#char:--
Things have been quite calm since the troubles with the other caravan.

#char:--
Barto is cooking tapioca with cheese and some weird orange fruits for breakfast. {PlayMusic("Sad")} 

// #char:--
// They're a bit salty, with a bitter aftertaste. He has made a few sandwiches with them before.

#char:--
Jackie is telling him about all the pool tournaments she won back at the skyport.

#char:--
Kleber is reading an issue of a racing magazine, while picking on Jackie and Barto, as always.

#char:--
For your crew, it's just another day in the Skyways.

#char:--
But for you, this is probably your last delivery before Marimbondo comes for his money. 

#char:--
Maybe your last trip together.

#char:--
There's already a taste of nostalgia to this moment. 

#char:--
This pretty typical day. {StopMusic()}

#char:--
But nothing is <bounce>exactly</bounce> typical in the Skyways.

#char:--
Bullets come out of nowhere. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} {PlayMusic("Tension")}

~ g_supplies -= g_statChangeLow/2

#char:Barto_fear_neutral|L
FLIPPING HECK! <shake>MY EGG JARS!</shake> {Emotion("Explosion", "39f2d6")} {PlaySFX("Hit2")}

#char:--
Everyone goes to the floor quickly. Except for Barto.

#char:Kleber_fear_sad|R
<shake>Uhh... What's going on?!</shake> {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

#char:Jackie_angry_sad|L
Barto, get down, someone's shooting at us! {PlaySFX("LightWoosh")} {PlaySFX("Hit1")} {Emotion("Explosion", "ffb71b")}

#char:Barto_angry_neutral|L
<shake>Stray bullets</shake> came flying through <shake>MY</shake> kitchen! {PlaySFX("StrongWoosh")} {Emotion("Explosion", "ea2929")} 

#char:Barto_attack_anime|L
Destroyed <shake a=2>MY EGGS</shake>! {Shake("Big Face", 0.5, 0.3)} {Blink("Big Face", 0.5, -1, "white")} {PlaySFX("Hit2")}

#char:Barto_angry_angry|L
I thought the routes to Azure were safe! Where the heck are you taking us, Kleber? {Shake("Big Face", 0.5, 1)} {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")} {PlaySFX("Hit1")}

#char:Kleber_angry_sad|R
Whoa, whoa, calm down, buddy. We're following the C.C.A.'s maps. No unusual detours this time.

#char:Jackie_sad_sad|L
Captain, leaving now might put us in greater danger. We need to find out what's happening!

#char:Kleber_surprised_angry|R
I don't know Jackie, I think we should just beat it.

#char:Kleber_sad_angry|R
Whoever is shooting already has the upper hand. If it's that caravan from before then...

#char:Barto_angry_angry|L
I'm all in for a close encounter with whoever shot my kitchen!

#char:--
Will you agree with Jackie and go investigate the issue or listen to Kleber and run away?

    + [JACKIE¬Investigating is safer.>S_M>]
        #char:--
        You agree with Jackie. You can't just leave without understanding the situation.

        ~ g_affinity_Jackie += g_affinityChangeMid
        ~ g_affinity_Kleber -= g_affinityChangeMid

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_surprised_sad|L
                Jackie, {g_name}, I really respect your prudence. <>

            - g_affinity_Barto < 25 && g_affinity_Barto >= 0:
                #char:Barto_surprised_sad|L
                Thank you for the consideration, Jackie and {g_name}. <>

            - g_affinity_Barto < 0 && g_affinity_Barto > -25:
                #char:Barto_neutral_angry|L
                Good to see <i>most</i> of you still care for my supplies. <>

            - else:
                #char:Barto_angry_sad|L
                I am glad you could be bothered to care for my supplies <i>this time</i>, {g_name}. <>
        }

        If they shoot again—
        
        ~ g_affinity_Barto += g_affinityChangeHigh

        #char:--
        Just as Barto finishes his words, more shots! {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)} 

        #char:Kleber_fear_sad|R
        <shake>O-Okay!</shake> I think I might've underestimated the situation a <wave>liiiittle</wave> bit... {Emotion("WaveIn", "2c2b30")} {PlaySFX("Funny2")}

        #char:Barto_angry_sad|L
        Now, <shake>WHERE ARE THESE BASTARDS?</shake> {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Hit2")}

        #char:--
        Kleber runs to the cockpit and maneuvers around, trying to find anyone — or anything — hiding in the clouds.

        ~ ScreenFlash("white", -1)

        #char:--
        You hear something like the flapping of wings. <i>Lots</i> of wings.

        ~ g_supplies -= g_statChangeLow/2

        #char:--
        The 41-Bis is pierced one more time. Several winged silhouettes emerge from the clouds! {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}  {PlaySFX("Pelicannons")}


        #char:Jackie_fear_angry|R
        Those are... <shake>Pelicannons!</shake> Guess that's your "stray bullet", Barto!
        
        #char:Barto_fear_angry|L
        These darned creatures! Captain, they carry rocks in their beaks and shoot them at high speeds!

        #char:Barto_angry_neutral|L
        Makes it hard to clean their meat... though I could gut them all right now.
        
        #char:Barto_angry_angry|L
        We must be near a nest!

        #char:Barto_fear_angry|L
        Someone get to the turret! Let's take them down! {Emotion("Explosion", "FFFFFF")} {PlaySFX("StrongWoosh")} {PlaySFX("Funny1")}

        #char:Jackie_surprised_sad|R
        Wait, you want us to waste ammo on a bunch of birds? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")}

        #char:Jackie_angry_angry|R
        Let's just drop some supplies to distract them or something!

        #char:Barto_angry_sad|L
        You want these birds to ruin <shake>more</shake> of my ingredients?

        #char:--
        What should you do?

        ++ [BARTO¬Shoot back at those birds!>S_M>]

            #char:--
            Barto's right. They're nothing your turret can't handle. 

            ~ g_affinity_Barto += g_affinityChangeMid
            ~ g_affinity_Jackie -= g_affinityChangeLow

            #char:--
            Now, should you shoot those birds yourself or ask someone else? 

            +++ [SHOOT¬Better take care of it yourself.>>]
                #char:--
                The birds will be good target practice. You can try to scare them off, at least. 

                #char:--
                You take aim and shoot. <>

                {shuffle:

                    //- The birds manage to fly clear of the danger. {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")} {PlayMusic("Action")}

                    - The projectile flies close enough to scare them! {Shake("All", 1, 0.5)} {PlaySFX("Bullets")} {PlayMusic("Action")}

                    - You manage to hit some of them! {Shake("All", 1, 0.5)} {PlaySFX("Bullets")} {PlayMusic("Action")}

                }

                ~ g_supplies -= g_statChangeShot

                /*#char:--
                The Pelicannons get angrier, and you're almost pierced by about two or three more rocks. {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}  {PlaySFX("Pelicannons")}

                #char:--
                It takes another round from the turret to make them give up.

                ~ g_supplies -= g_statChangeLow

                */

                //AFFINITY PASS
                { 
                    - g_affinity_Barto >= 0:

                        #char:Barto_happy_angry|L
                        Great shooting, Captain. 
                
                }
                
                #char:Barto_happy_angry|L
                My eggs are avenged. I don't think they will bother us anymore. {StopMusic()}

                ~ g_morale += g_statChangeLow
                ~ g_affinity_Barto += g_affinityChangeLow

                #char:Kleber_happy_sad|R
                Well, if we're done duck hunting, let's get out of here before more show up!

            -> pelicannons_end

            +++ [CREW¬Leave it to your crew.>>]

                #char:--
                Which crewmember should use the turret?

                ++++ (barto_shot_pelicannons) [BARTO¬Let Barto surprise you.>>]

                    #char:--
                    For once, your cook seems a little <i>too</i> eager for violence. {PlayMusic("Action")}

                    #char:Barto_angry_happy|L
                    They thought they could mess with my ingredients, but now they're <i>becoming</i> one of them!

                    ~ ScreenFlash("white", 0.5)

                    #char:--
                    Somehow, Barto's desire to avenge his ingredients gives him a better aim. {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                    ~ g_supplies -= g_statChangeShot

                    /* {shuffle:
                        -
                            #char:--
                            Somehow, Barto's desire to avenge his ingredients gives him a better aim. {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                            ~ g_supplies -= g_statChangeLow

                            #char:--
                            He manages to scare them away with just one shot! 

                        -
                            #char:--
                            Unfortunately, Barto's enthusiasm doesn't really translate to better aim.

                            { shuffle:
                            
                                -
                                    #char:--
                                    He misses once... {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                                    ~ g_supplies -= g_statChangeLow
                                    
                                    #char:--
                                    ...But his second shot clips one Pelicannon in the wing!{Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                                    ~ g_supplies -= g_statChangeLow

                                    #char:--
                                    The others scatter in response, flying away from the 41-Bis.

                                -
                                    #char:--
                                    He misses once... {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}
                                    
                                    ~ g_supplies -= g_statChangeLow

                                    #char:--
                                    Then twice. {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                                    ~ g_supplies -= g_statChangeLow

                                    #char:--
                                    His third shot finally clips one Pelicannon in the wing. {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                                    ~ g_supplies -= g_statChangeLow

                                    #char:--
                                    The others scatter in response, flying away from the 41-Bis.
                            }
                    }

                    */

                    #char:Barto_surprised_sad|L
                    I-I did it! {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer1")} {StopMusic()}

                    ~ g_morale += g_statChangeLow
                    ~ g_affinity_Barto += g_affinityChangeMid

                    #char:Kleber_happy_sad|R
                    Well, if we're done duck hunting, let's get out of here before more show up!

                -> pelicannons_end

                ++++ [JACKIE¬Jackie is the most reliable one.>>]

                    //AFFINITY PASS:

                    { 
                        
                        - g_affinity_Jackie >= 0:

                        #char:Jackie_surprised_neutral|R
                        ...Sure, Captain. I'll do my best! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} {PlayMusic("Action")}
                    
                        - else:

                        #char:Jackie_neutral_neutral|R
                        ...Sure, sure. {PlayMusic("Action")}
                    
                    }


                    #char:Jackie_happy_angry|R
                    I mean, I've programmed quite a lot of turrets before. I hope that actually <i>using</i> them won't be too hard.

                    #char:--
                    Your engineer uses the 41-Bis's gun turrets to shoot the aviary menace down. {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                    #char:--
                    She misses, but manages to scare them away. {PlaySFX("Pelicannons")}

                    ~ g_supplies -= g_statChangeShot

                    #char:Jackie_happy_happy|R
                    Nice! They're gone! {StopMusic()}

                    ~ g_affinity_Jackie += g_affinityChangeLow

                    #char:Barto_happy_happy|L
                    Perfect. You have avenged my ingredients, Jackie. I thank you.

                    ~ g_affinity_Barto += g_affinityChangeLow

                    ~ g_morale += g_statChangeLow

                    #char:Kleber_happy_sad|R
                    Well, if we're done duck hunting, let's get out of here before more show up!

                -> pelicannons_end

                ++++ [KLEBER¬Kleber should try... Maybe.>>]

                    #char:-- 
                    Kleber gets off his chair. {PlayMusic("Action")}

                    #char:Kleber_surprised_sad|R
                    Uh, sure! Just let me put this on autopilot.

                    ~ g_affinity_Kleber += g_affinityChangeLow

                    #char:--
                    Kleber prepares to fire. 

                    ~ g_supplies -= g_statChangeShot

                    #char:--
                    Judging by the screech you hear from outside, Kleber managed to hit a Pelicannon! {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                    /*
                    {shuffle:

                        -
                            #char:--
                            Judging by the screech you hear from outside, Kleber managed to hit a Pelicannon! {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                        -
                            #char:--
                            Judging by the curse you hear from Kleber, he missed. {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                            #char:--
                            The Pelicannons immediately reply with another rock that almost hits the ship! {Blink("All", 1, -1, "white")} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {UniqueEffectActivate("FlyingBullets")} {ScreenFlash("white", -1)}  {Shake("All", 2, 1)}  {PlaySFX("Pelicannons")}

                            #char:--
                            A second shot from Kleber apparently hits its mark, though, and the pelting stops. {Shake("All", 1, 0.5)}  {PlaySFX("Bullets")}

                            ~ g_supplies -= g_statChangeLow
                    }

                    */

                    #char:Barto_happy_angry|L
                    Looks like the others are retreating, too. You've avenged my ingredients, Kleber. I'm surprised. {StopMusic()}

                    ~ g_affinity_Barto += g_affinityChangeLow

                    #char:Kleber_happy_angry|R
                    Just make me that extra special grilled cheese and we're good, chef.

                    ~ g_morale += g_statChangeLow

                    #char:--
                    That's the end of it, then. Better keep going — you haven't even reached the Floating Ocean yet.

                -> pelicannons_end

        ++ [JACKIE¬Better to let them have the food.>S_M>]

            #char:--
            You'd rather just get rid of them quickly and be on your way.

            ~ g_affinity_Jackie += g_affinityChangeMid

            //AFFINITY PASS
            {
                - g_affinity_Barto >= 25:
                    #char:Barto_fear_happy|L
                    I cannot fault you for running from conflict, {g_name}, but we need our food! {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

                - g_affinity_Barto < 25 && g_affinity_Barto >= 0:
                    #char:Barto_sad_sad|L
                    Such disregard for my work... I am disappointed in you, Captain. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                - g_affinity_Barto < 0 && g_affinity_Barto > -25:
                    #char:Barto_angry_sad|L
                    Hmph. Do not complain to me if my meals become worse because barely have ingredients left. {Emotion("WaveOut", "ea2929")} {PlaySFX("LightWoosh")} {PlaySFX("Bad1")}

                - else:
                    #char:Barto_angry_angry|L
                    Of course <i>you</i> would choose to waste more of my food! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")} {PlaySFX("Bad1")}
            }

            ~ g_affinity_Barto -= g_affinityChangeMid

            #char:Jackie_surprised_neutral|R
            Oh, come on, we don't have to throw <>that</i> much! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Woosh")}
            
            ~ FadeTo("black", 1, 1)

            #char:--
            You throw the food away through an exhaust vent and watch as it falls through the clouds.

            ~ g_supplies -= g_statChangeLow

            #char:--
            Little by little, the Pelicannons dive beneath the clouds after their prize. {StopMusic()}

            #char:Jackie_happy_happy|R
            There! It worked! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

            ~ g_morale += g_statChangeMid

            #char:Barto_sad_sad|L
            ...Guess I will have to get creative at dinner tonight. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        -> pelicannons_end

    + [KLEBER¬Better leave while you can.>M>]

        #char:--
        You agree with Kleber. It's best to just leave.

        #char:--
        As soon as 41-Bis picks up speed, you hear something hitting the right side of the ship— {Blink("All", 1, -1, "white")} {Shake("All", 2, 1)} {PlaySFX("SmallDamage")} {PlaySFX("Bullets")} {ScreenFlash("white", -1)} {UniqueEffectActivate("FlyingBullets")}

        #char:--
        The ship falters a bit, but Kleber manages to maintain altitude and create some distance.

        #char:--
        The bullets finally stop. {StopMusic()}

        ~ FadeTo("black", 1, -1)

        //AFFINITY PASS
        {
            - g_affinity_Barto >= 25:
                #char:Barto_sad_happy|L
                Well, I suppose I should be happy that my remaining supplies will be safe. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 25 && g_affinity_Barto >= 0:
                #char:Barto_sad_sad|L
                I can understand avoiding conflict, {g_name}, but not at the cost of our food! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - g_affinity_Barto < 0 && g_affinity_Barto > -25:
                #char:Barto_sad_angry|L
                I expected more companionship of this crew. I'm going to clean the mess in the kitchen. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            - else:
                #char:Barto_angry_angry|L
                I do not know why I expected more companionship out of this crew! {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
        }

        
        ~ g_affinity_Barto -= g_affinityChangeHigh

        #char:--
        He doesn't leave margin for conversation, closing the door behind him. {PlaySFX("Door")}

        #char:Jackie_sad_sad|R
        ...Guess I'll spend the rest of the day on repairs.

        ~ g_affinity_Jackie -= g_affinityChangeMid

        ~ g_morale -= g_statChangeMid

        #char:Kleber_neutral_angry|L
        Don't worry, Cap. You did right back there.

        ~ g_affinity_Kleber += g_affinityChangeMid


    -> pelicannons_end



= pelicannons_end

~ FadeTo("black", 1, 1)

#char:--
In the afternoon, you meet Jackie in the bridge, finishing the repairs. 

//AFFINITY PASS
{
    - g_affinity_Jackie >= 0:

        #char:Jackie_surprised_angry|L
        Oh, hey {g_name}! Just finishing up here.

        #char:Jackie_happy_angry|L
        Never a dull day in the Skyways, right?
}

#char:Jackie_neutral_neutral|L
...

//AFFINITY PASS
{
    - g_affinity_Jackie >= -25:
        #char:Jackie_surprised_neutral|L
        ...{g_name}, let me ask you something, if that's okay.

    - else:
        #char:Jackie_neutral_neutral|L
        Hi, {g_name}. I know we aren't close or anything, but I have a question.
}

#char:Jackie_neutral_angry|L
You had to leave your family behind when you came to the Skies, right? And you ended up becoming a caravaneer.

#char:Jackie_sad_sad|L
Even if it wasn't in your plans... do you regret joining a caravan? {Emotion("Question", "fd97c9")} {PlaySFX("Mistery1")} {Blink("Big Face", 0.5, -1, "white")}

+ [YES¬You do, unfortunately.>>]
    #char:--
    You want to pay your debt, of course.

    { 
        - g_affinity_Jackie >= 25:
            #char:--
            Plus, working with Jackie has been nice.
    
    }

    #char:--
    But if you could do something less risky to get Grana, it's hard to say you wouldn't.

    //AFFINITY PASS
    {
        - g_affinity_Jackie >= 0:
            #char:Jackie_sad_sad|L
            I see. It does get hard sometimes. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}

        - else:
            #char:Jackie_sad_sad|L
            That... actually explains a lot of your decisions. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad2")}
    }

    #char:Jackie_neutral_neutral|L
    ...Well. I should get going. Good night, {g_name}.

    -> EVENT_END

+ [NO¬You don't regret it. You're glad you're here.>>]
    #char:--
    Regardless of how you've joined them, you're glad you've had this experience.

    #char:--
    Sure, you still have your own goals, but you're going to look back on these crazy days with fondness.

    #char:Jackie_happy_happy|L
    Heh. Glad to hear it, Captain! {Emotion("Shine", "ffb71b")} {PlaySFX("Love2")}

    ~ g_affinity_Jackie += g_affinityChangeHigh

    //AFFINITY PASS
    {
        - g_affinity_Jackie >= 0:
            #char:Jackie_happy_happy|L
            We make a good team, right?

            #char:Jackie_happy_neutral|L
            Who knows, maybe we can keep working together after you pay your debt!

    }

    #char:Jackie_neutral_neutral|L
    Well, guess I should get going. Good night, {g_name}.

- #char:--
Jackie have always dreamed of being a caravaneer... You can ask her the same question.

#char:--
Do you ask if she regrets joining a caravan or say good night and end the conversation?

    + [QUESTION¬Ask about her dreams of being a caravaneer.>>]

        #char:--
        You ask Jackie about her experience as a caravaneer. Is it like she hoped?

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 0:
                #char:Jackie_surprised_angry|L
                Oh...

            - else:
                #char:Jackie_surprised_angry|L
                Oh? Didn't think you'd ask that back.
        }

        #char:Jackie_sad_neutral|L
        You know, I put a lot of pressure on myself. I have big, big shoes to fill. My grandma being a great caravaneer and all.

        #char:Jackie_neutral_angry|L
        So I don't know... I sure do enjoy being part of a caravan.

        #char:Jackie_sad_angry|L
        But something tells me that when I'm most needed, I'm gonna freeze from the pressure. It's been bothering me a lot. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        //AFFINITY PASS
        {
            - g_affinity_Jackie >= 0:
                #char:Jackie_surprised_angry|L
                But please, don't worry, Captain! {Emotion("Explosion", "ffb71b")} {PlaySFX("LightWoosh")}
        
                #char:Jackie_happy_neutral|L
                You can absolutely count on me. I'll figure it out.

            - else:
                #char:Jackie_neutral_sad|L
                Well, I'll figure it out eventually.
        }

        -> shortcut

    + [WAVE¬Say good night.>>]

        #char:
        You say good night to her. Maybe another time.

        -> shortcut

    = shortcut

    -#char:--
    She exits to her quarters, leaving you alone with your thoughts. 

   -> EVENT_END

