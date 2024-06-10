===E_Environment_ThroughTheThunderCloud===

//Mabel check: Ready to be localized!

#scope: General
#category: DemoGeneral1
#tier: Rookie, Intermediate, Expert
#intensity: Low
#location: Skyways

#char:--
You all wake up earlier than usual the next morning with the roar of a colossal thundercloud approaching your route. 

~ UniqueEffectActivate("Rain")

//TO DO Unique effects pass - Chuva, mudança de cor do BG

#char:Kleber_neutral_sad|L
Don't panic, people! It'll just be a small course correction! {PlaySFX("Thunder")} {Shake("All", 1, 0.5)} {PlaySFX("Rain")}

#char:Kleber_neutral_angry|L
Two ways we could deal with this, Cap. {PlayMusic("Tension")}

#char:Kleber_neutral_sad|L
One: we could take a longer way, going <i>around</i> the storm.

#char:Kleber_happy_happy|L
Or two: we could just go <i>through</i> it as fast as we can! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")}

#char:Jackie_fear_angry|R
And face <shake>that</shake> storm? Are you out of your mind? {Emotion("WaveIn", "2c2b30")} {PlaySFX("Bad1")}

//TODO SFX: Efeito de fear/surprise. Exemplo do Animal Crossing: (https://youtu.be/Z0DZPwFciX4?t=56)

#char:Jackie_neutral_angry|R
I vote going <i>around</i> it. Better than facing the storm. 

#char:Jackie_neutral_angry|R
We'll have to burn a bit more fuel for that, but it's definitely a safer choice.

#char:Barto_angry_angry|L
I say the safest option would actually be latching to one of the emergency beacons nearby.

#char:Barto_neutral_neutral|L
We can spend the night there and wait for the storm to pass.

#char:Barto_neutral_sad|L
We're about three or four days away from the marketplace in Aquarela. Isn't that right, Kleber?

//AFFINITY PASS
{
    - g_affinity_Kleber_Barto > 0 && g_affinity_Kleber_Jackie > 0:
        #char:Kleber_neutral_sad|L
        I get what you guys are saying, but there's no reason to fear! {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

    - g_affinity_Kleber_Barto > 0 || g_affinity_Kleber_Jackie > 0:
        #char:Kleber_neutral_sad|L
        That's right, but we're making good time and I'd rather not lose it. {Emotion("Explosion", "FFFFFF")} {PlaySFX("LightWoosh")}

    - else:
        #char:Kleber_angry_neutral|L
        Stop fretting, you two! Are you really caravaneers? {Shake("Big Face", 1, 0.5)} {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}
}

#char:Kleber_neutral_happy|L
I bet I can get us through no problem! No need to waste time or fuel. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

#char:--
Nobody seems to come to an agreement.

#char:--
They all seem to have a point, though. You wonder who you should listen to.

+ [JACKIE¬Go around the storm.>F>]

-> jackie_around_thunder

+ [BARTO¬Wait for the storm to pass.>T>]

-> barto_above_thunder

+ [KLEBER¬Go through the storm.>S>]

-> kleber_through_thunder

= jackie_around_thunder

    #char:Jackie_happy_neutral|R
    Thanks, Captain. Knew you'd listen to reason! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer2")}

    ~ g_affinity_Jackie += g_affinityChangeMid
    
    #char:Jackie_neutral_angry|R
    I know no one wants to waste our resources, but it's the best call for now. {StopMusic()}

    ~ g_affinity_Barto -= g_affinityChangeMid

    //AFFINITY PASS
    {
        - g_affinity_Barto > 0:
        #char:Barto_neutral_angry|L
        ...I hope you're right.

        - else:
            #char:Barto_fear_angry|L
            Best call!? That fuel might be needed later!

            ~ g_affinity_Barto_Jackie -= g_affinityChangeLow

            {
                - g_fuel > 75:
                    #char:Jackie_neutral_neutral|R
                    Don't worry, I checked and we have plenty! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}

                - g_fuel > 50:
                    #char:Jackie_surprised_angry|R
                    What do you mean? Our tank is still half full! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

                    ~ g_affinity_Jackie_Barto -= g_affinityChangeLow
            }
    }

    #char:Kleber_sad_sad|R
    <bounce>Ugh</bounce>, I knew I could totally make it through.
    
    #char:Kleber_sad_sad|R
    You gotta trust me more, Cap. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    ~ g_affinity_Kleber -= g_affinityChangeMid

    #char:--
    The crew's stares are enough to silence Kleber's complaints.

    #char:--
    The rest of the day goes by slowly, with the storm gradually becoming more distant. {StopSFX("Rain")}

    ~ UniqueEffectDeactivate("Rain")

    ~ g_fuel -= g_statChangeLow

    #log: Burned some fuel to escape the thunderstorm.

-> EVENT_END

= barto_above_thunder

    #char:Barto_neutral_neutral|L
    Good decision, Captain.

    ~ g_affinity_Barto += g_affinityChangeMid
    
    #char:Barto_neutral_angry|L
    The time we will waste is a small price to pay if we want to complete the job <i>and</i> stay away from danger. {StopMusic()}

    //AFFINITY PASS
    {
        - g_affinity_Jackie_Barto > 0:
            #char:Jackie_sad_neutral|R  
            Hopefully we won't end up late. We still have some travel ahead of us. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        - else:
            #char:Jackie_sad_neutral|R
            A <i>small</i> price to pay? Are you forgetting about lateness fines!? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            ~ g_affinity_Jackie_Barto -= g_affinityChangeMid
    }

    ~ g_affinity_Jackie -= g_affinityChangeMid

    //AFFINITY PASS
    {
        - g_affinity_Kleber_Barto > 0:
            #char:Kleber_happy_sad|L
            Yeah, besides, why would you want to stay away from danger? Live a little, man! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        - else:
            #char:Kleber_angry_neutral|L
            We wouldn't even <i>have</i> to think about it if I could just speed through it! {Emotion("WaveOut", "ea2929")} {PlaySFX("Bad1")}

            ~ g_affinity_Kleber_Barto -= g_affinityChangeMid
    }

    ~ g_affinity_Kleber -= g_affinityChangeMid

    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

    #char:--
    The crew's stares are enough to silence Kleber's complaints.

    #char:--
    The night goes by slowly, but you have to admit the sky looks quite beautiful after the storm has passed. {StopSFX("Rain")}

    ~ UniqueEffectDeactivate("Rain")
    
    ~ g_timeChange = 2

    #log:Wait for the storm to pass at the cost of some time.


-> EVENT_END

= kleber_through_thunder

    #char:Kleber_neutral_neutral|L
    Knew you'd agree with me, {g_name}! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Shimmer1")} {StopMusic()}

    ~ g_affinity_Kleber += g_affinityChangeMid

    #char:Jackie_sad_sad|R
    ...Really?

    ~ g_affinity_Jackie -= g_affinityChangeMid
    
    #char:Jackie_sad_angry|R
    The 41-Bis might look sturdy, but its not <i>that</i> durable. 
    
    #char:Jackie_sad_angry|R
    If we get hit... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

    //TODO SFX: Efeito de fear/surprise. Exemplo do Animal Crossing: (https://youtu.be/Z0DZPwFciX4?t=56)

    #char:Kleber_happy_happy|L
    Then all I have to do is <wiggle>not</wiggle> get hit! Simple, right?

    #char:Barto_angry_angry|R
    You better be right with all that confidence, sir. {Emotion("WaveOut", "ea2929")} {PlaySFX("StrongWoosh")} {PlaySFX("Storm")}

    ~ g_affinity_Barto -= g_affinityChangeMid

    #char:--
    Kleber accelerates through the storm, trying to evade any flashes he sees. {PlayMusic("Action")} {Shake("All", 1, 1)}

    #char:--
    As the storm gets stronger, he's barely dodging the lightning strikes. {Shake("All", 2, 1)} {PlaySFX("Thunder")}

    #char:Jackie_fear_happy|L
    <shake>KLEBER!</shake> Be careful, or we're gonna- {Emotion("Explosion", "39f2d6")} {Shake("Big Face", 1, 0.5)}

    //TODO SFX: Efeito de fear/surprise. Exemplo do Animal Crossing: (https://youtu.be/Z0DZPwFciX4?t=56)

    ~ ScreenFlash("white", -1)

    #char:--
    A bolt hits the 41-Bis! {Shake("All", 3, 1)} {PlaySFX("BigDamage")} {PlaySFX("Thunder")}

    ~ ScreenFlash("red", -1)
    ~ UniqueEffectActivate("41BisDamage")
    ~ g_supplies -= g_statChangeLow
            
    #char:--
    Kleber is barely holding the ship upright! {PlaySFX("Hologram")} {PlaySFX("SmallDamage")}

    #char:Kleber_angry_angry|R
    Don't worry, don't worry! <shake>I GOT THIS!</shake> {Shake("Big Face", 1, 0.5)} {Emotion("WaveOut", "ea2929")}

    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

    #char:--
    Kleber manages to stabilize the ship and get out of the storm before things get worse. {StopMusic()} {StopSFX("Storm")} {StopSFX("Rain")} 

    ~ UniqueEffectDeactivate("Rain")

    #char:Jackie_sad_sad|L
    I'm so dizzy... {Emotion("Spiral", "53e66b")} {PlaySFX("Bad1")} 

    //AFFINITY PASS
    {
        - g_affinity_Jackie > 0:
            #char:Jackie_sad_neutral|L
            Captain, I understand not wanting to waste time, but the crew's safety is also important!

        - else:
            #char:Jackie_fear_angry|L
            Next time, we should really take the longer route. This is <shake>not</shake> worth dying for!
    }

    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

    ~ g_affinity_Jackie_Kleber -= g_affinityChangeMid

    #char:Kleber_neutral_sad|R
    Well, uh, we <i>are</i> alive though, aren't we?

    #char:Barto_angry_angry|L
    <shake>Barely</shake>, thanks to you. {Emotion("WaveOut", "ea2929")} {Shake("Big Face", 1, 0.5)} {PlaySFX("Hit1")}

    //TODO SFX "Hit" PHOENIX WRIGHT (https://youtu.be/SD6rUdOQ-L8?t=7)

    ~ g_affinity_Barto_Kleber -= g_affinityChangeMid

    #char:Barto_angry_sad|L
    And now I have to check on the supplies.
            
    #char:Barto_angry_sad|L
    Judging by the smell, I'm sure a part of what was in the storage just <shake>fried</shake>.

    #log:Tried to go through the thunderstorm and got hit by lightning.

-> EVENT_END