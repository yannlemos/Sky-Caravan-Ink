=== Outpost_Kleber ===

~ temp storyDirection = -> meet_kleber

{   
    - g_lastMissionCleared == "Crystals":
        {
            - !kleber_after_crystals_of_bygone_times:
                ~ storyDirection = -> kleber_after_crystals_of_bygone_times

            - else:
                ~ storyDirection = -> kleber_lines
        }

    - g_lastMissionCleared == "Octornado":
        {
            - !kleber_after_grasp_of_the_octornado:
                ~ storyDirection = -> kleber_after_grasp_of_the_octornado

            - else:
                ~ storyDirection = -> kleber_lines
        }

    - g_lastMissionCleared == "Cachaça":
        {
            - !kleber_after_the_cursed_cachaca:
                ~ storyDirection = -> kleber_after_the_cursed_cachaca 

            - else:
                ~ storyDirection = -> kleber_lines
        } 

    - g_lastMissionCleared == "Mafagafo":
        {
            - !kleber_after_the_mafagafo_passenger:
                ~ storyDirection = -> kleber_after_the_mafagafo_passenger

            - else:
                ~ storyDirection = -> kleber_lines
        }
    
    - meet_kleber > 0:
	    ~ storyDirection = -> has_met_kleber
}

~ SetCurrentStitch(storyDirection)

-> storyDirection

// Meet Kleber for the first time
= meet_kleber

#char:--
You walk towards the man with the tacky shirt.

#char:--
He's crooning a song, gaze fixed on the window.

#char:Kleber_neutral_angry|L
<wave>"Drinking from this crappy cachaça, all I can think about is you..."</wave>

#char:Kleber_happy_sad|L
Oh! Captain, right? Didn't see you there. {Shake("Big Face", 1, 0.3)} {Emotion("Explosion", "39f2d6")} {PlaySFX("Shimmer2")} {Blink("Big Face", 0.5, -1, "white")}

#char:Kleber_happy_happy|L
I was just singing some Sertanejo. Best genre in the Skyways! {Emotion("Heart", "ea2929")} {PlaySFX("Love1")}

#char:Kleber_neutral_neutral|L
Don't know if you guys have that in Surface.

#char:--
Surface? Was he eavesdropping on your conversation or what? 

#char:Kleber_neutral_neutral|L
My bad, I haven't introduced myself.

#char:Kleber_neutral_happy|L
I'm Kleber, your pilot. Pleased to meet ya! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} {Shake("Big Face", 0.5, 0.3)}

#char:--
A peculiar guy, for sure. You wonder how you should greet him. 

    + [STERN¬This guy is out of line. Time to assert your authority.>>]

        #char:--
        You confront him about eavesdropping on your conversation. Talk about starting with a left foot.

        #char:Kleber_surprised_sad|L
        No need to be on the defensive, Cap. I'm not <i>that</i> bad of a person, I swear! {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")} {Shake("Big Face", 1, 0.7)}

        ~ g_affinity_Kleber -= g_affinityChangeLow

    + [EASYGOING¬It's best to just act cool for now.>>]

        #char:--
        You comment on the corniness of the song and introduce yourself.

        #char:Kleber_happy_neutral|L
        <i>Every</i> song is corny, Cap. Sertanejo just embraces it. {Emotion("Shine", "ffb71b")} {PlaySFX("Funny1")} 

        #char:Kleber_neutral_sad|L
        But yeah, I eavesdropped a bit, sorry about that. 
        
        #char:Kleber_neutral_sad|L
        I'm not <i>that</i> bad of a person, I swear! {Shake("Big Face", 1, 0.7)}

    + [EXCITED¬You can't hide the excitement. He seems like a good addition to your crew.>>]
    
        #char:--
        This one seems like the right combination of shady and experienced. You shake his hand with a big smile and introduce yourself.
        
        #char:Kleber_neutral_happy|L
        Love your energy, Cap!

        ~ g_affinity_Kleber += g_affinityChangeLow
        
        #char:Kleber_neutral_happy|L
        By the way, I was 100% eavesdropping. 
        
        #char:Kleber_happy_happy|L
        But I'm not <i>that</i> bad of a person, I swear! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")} {Shake("Big Face", 1, 0.7)}

-   #char:Kleber_happy_sad|L
    I had to see who I was piloting for, y'know?

    #char:Kleber_neutral_neutral|L
    I've worked for <i>all</i> kinds of folks.

    #char:Kleber_neutral_happy|L
    Best way to know someone? Just be a good listener.

    #char:Kleber_neutral_happy|L
    Especially when they <i>don't know</i> you are listening. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} {Blink("Big Face", 0.5, -1, "white")}

    #char:Kleber_happy_neutral|L
    Aaaanyways, I'm hyped up and ready to fly, Cap!

    #char:--
    This guy is truly something.
    
    #char:--
    Did he hear about your debt, though? Hard to tell.

    #char:--
    In any case, now would be a good time to make some small talk with him. 
    
    #char:--
    You can ask for more information about him, his area of expertise or maybe talk about your ship.

-> get_to_know_kleber

= get_to_know_kleber

{
    - kleber_interest && kleber_himself && kleber_ship:

        -> kleber_talks_about_you

    - kleber_interest || kleber_himself || kleber_ship:

        #char:Kleber_neutral_neutral|L
        Anyway. Anything else you wanna ask me, Cap?
}

    * (kleber_himself) [KLEBER¬Inquire about his past.>>]

        #char:Kleber_neutral_neutral|L
        I'm from a little village near Aquarela - one of the biggest floating cities around here, in case you don't know.

        #char:Kleber_sad_sad|L
        Had a tough childhood. Made some crap choices.

        #char:Kleber_neutral_sad|L
        Came out of it with some useful piloting skills, though. 

        #char:Kleber_neutral_happy|L
        I could fly a fridge from here to the Spore Heights and land it <i>perfectly</i>.

        #char:Kleber_sad_neutral|L
        Well, m-maybe not the Spore Heights. Anyway. {Emotion("WaveIn", "ffb71b")} {PlaySFX("Bad1")}

        #char:Kleber_neutral_neutral|L
        I'm excited to experience caravaneering. Compared to some other stuff I've been through...

        #char:Kleber_neutral_neutral|L
        This could be a good change of pace. Something more official, y'know?

        #char:--
        You wonder how working for a deadly clandestine association of capybaras could be "more official".

        -> get_to_know_kleber

    * (kleber_interest) [PILOTING¬Talk about his role as the crew's pilot.>>]

        {
            - g_interest == "Piloting":

                #char:--
                You tell Kleber about your own interest in piloting and ask him about his experience.

                #char:Kleber_happy_happy|L
                Now THAT'S what I'm talking about! Someone who gets me. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")} {Shake("Big Face", 1, 0.7)}

                #char:Kleber_happy_neutral|L
                I'll show you some mean tricks. I'm also curious to get some of that Surfacer's knowledge!

                ~ g_affinity_Kleber += g_affinityChangeHigh
                
        }

        #char:Kleber_neutral_neutral|L
        I'll be responsible for driving us around. Come storm, spore, pelicannon - I'll get us through.

        #char:Kleber_neutral_neutral|L
        I've been all across the Skies and NEVER crashed.
        
        #char:Kleber_sad_sad|L
        ...Fine, maybe I crashed a <i>few times</i>. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Funny1")} {Shake("Big Face", 1, 0.7)}

        #char:Kleber_neutral_neutral|L
        Anyway. I'm alive.

        #char:Kleber_neutral_happy|L
        If there's some problem regarding navigation, I'm your man. Taking risks is my thing!

        #char:Kleber_neutral_neutral|L
        But if we're in a pickle, make sure you hear everybody.

        #char:Kleber_happy_happy|L
        Before agreeing with <i>me</i>, of course. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        -> get_to_know_kleber

    * (kleber_ship) [SHIP¬Talk about 41-Bis.>>]

        #char:--
        You explain to Kleber your ship's specifications, trying really hard to paint a clear picture.

        #char:Kleber_neutral_happy|L
        Cap, you don't need to give me all that. I just have to sit on that cockpit and it'll be like knowing the 41-Bis for years! {Emotion("Explosion", "FFFFFF")} {PlaySFX("Funny1")} {Shake("Big Face", 1, 0.7)}

        #char:Kleber_neutral_neutral|L
        Trust me: the one piloting matters more than the ship. I'll prove you that.

        -> get_to_know_kleber

    * { kleber_interest || kleber_ship || kleber_himself } [NO¬You're good for now.>>]

        -> kleber_talks_about_you

= kleber_talks_about_you

#char:Kleber_surprised_neutral|L
Okay, real talk now: I respect you. {Shake("Big Face", 0.5, 0.3)} {Blink("Big Face", 0.5, -1, "white")}

#char:Kleber_neutral_neutral|L
You've been through some. I've been too. I think we'll understand each other.

#char:Kleber_neutral_happy|L
Nice to meet ya, Captain {g_name}! Call me when you're ready. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")} 

#char:Kleber_happy_happy|L
I'm dying to meet the 41-Bis!

-> END

// Has met Kleber for the first time, but hasn't gone to a mission yet
= has_met_kleber

#char:Kleber_neutral_sad|L
Just waiting for the rest of the crew, Cap.

-> END


// TO DO: Rewrite os stitches abaixo (diálogos pós cada mission):

= kleber_after_the_mafagafo_passenger

//AFFINITY PASS:
{   
    - g_affinity_Kleber <= -2:
        #char:Kleber_neutral_neutral|L
        Alright, alright. We've made it to the end of the first delivery.

        #char:Kleber_neutral_neutral|L
        ...Let's see how we'll do next.

    - else:
        #char:Kleber_neutral_sad|L
        Well, that's our first delivery done, Cap!

        #char:Kleber_neutral_happy|L
        I bet you'll have the hang of this job in no time! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

}


{
    - E_Mission_Rookie_TheMafagafoPassenger.kleber_watches_eggs:
        #char:Kleber_happy_sad|L
        Oh, by the way. I wanna thank you again for trusting me to take care of the eggs.

        //AFFINITY PASS:
        {   
            - g_affinity_Kleber <= -2:
            #char:Kleber_surprised_neutral|L
            Wasn't really expecting that from you.
        }

    - else:
        //AFFINITY PASS:
        {   
            - g_affinity_Kleber <= -2:
                #char:Kleber_surprised_neutral|L
                But you should've let <i>me</i> watch the cargo. Can't deny I felt disappointed.

            - else:
                #char:Kleber_neutral_neutral|L
                Hey, next time, maybe you can even let me watch the cargo!
        }
}

{
    - E_Mission_Rookie_TheMafagafoPassenger.kleber_bait:
        {
            - E_Mission_Rookie_TheMafagafoPassenger.kleber_watches_eggs:

                //AFFINITY PASS:

                {   
                    - g_affinity_Kleber <= -2:
                        #char:Kleber_surprised_neutral|L
                        You even trusted me with the Mafagafo trap, too. Well, I'm surprised.

                    - else:
                        #char:Kleber_happy_happy|L
                        Oh, and with the Mafagafo trap too!

                }


            - else:

                //AFFINITY PASS:
                {   
                    - g_affinity_Kleber <= -2:
                        #char:Kleber_surprised_neutral|L
                        At least you've trusted me with the trap back there, so there's that.

                    - else:
                        #char:Kleber_happy_sad|L
                        But thanks for trusting me with the Mafagafo trap back there!
                }
        }

        {
            - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_loop:
                {
                    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_caught:
                        #char:Kleber_happy_angry|L
                        Worked just fine, like I said it would, right? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_ran_away:
                        #char:Kleber_neutral_sad|L
                        I mean, sure, it got away after, but don't sweat the small stuff. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
                }

                {
                    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
                        #char:Kleber_happy_happy|L
                        At the end of the day, we delivered the full cargo and got our Grana. That's what matters.

                    - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_animal_sanctuary:
                        #char:Kleber_neutral_sad|L
                        Still, all that work just to take it to an animal sanctuary?

                        //AFFINITY PASS:
                        {   
                            - g_affinity_Kleber >= 5:
                                #char:Kleber_neutral_happy|L
                                Well, you're a noble soul, Cap. I guess I can respect that.

                        }

                    - else:
                        #char:Kleber_neutral_sad|L
                        Shame we ended up losing it.

                        //AFFINITY PASS:
                        {   
                            - g_affinity_Kleber >= 5:
                                #char:Kleber_surprised_sad|L
                                But I don't think any of us is to blame for that.
                        }

                }


            - else:

                //AFFINITY PASS:
                {   
                    - g_affinity_Kleber <= -2:
                        #char:Kleber_neutral_neutral|L
                        Glad the plan worked out.

                    - else:
                        #char:Kleber_happy_happy|L
                        If the plan worked out, it was thanks to you giving me a chance! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}
                }

        }
    
    - else:
        {
            - E_Mission_Rookie_TheMafagafoPassenger.kleber_watches_eggs:
                #char:Kleber_neutral_sad|L
                I just wish you had used my bait too...

            - else:
                #char:Kleber_sad_sad|L
                Speaking of jobs... <i>Maybe</i> you can trust me to do more for the crew next time? Just saying. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
        }
}

#char:Kleber_neutral_neutral|L
But anyway, did you wanna talk about something?

+ {E_Environment_FavelaFestival.festival_follow_kleber} [GAMBLER¬Ask about betting.>>]
    #char:--
    You ask Kleber about his gambling habit. Did it start in Aquarela?

    {
        - bet_win == true:
            #char:Kleber_surprised_sad|L
            Well, uh, kinda. When you get into debt, you get desperate.
            
            #char:Kleber_neutral_sad|L
            And when you get desperate, you find ways to earn big cash fast.

            #char:Kleber_sad_sad|L
            Sometimes these ways can screw you even more, though... {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            #char:Kleber_surprised_sad|L
            Ah, well. It's in the past. Hopefully it'll stay there.

        - else:
            #char:Kleber_surprised_sad|L
            Gee, you're still angry about that soccer bet?

            //AFFINITY PASS:

            {   
                - g_affinity_Kleber <= -2:
                #char:Kleber_neutral_happy|L
                Nah, I'll pay you back.

                #char:Kleber_neutral_neutral|L
                ...One day.

                - else:
                #char:Kleber_sad_sad|L
                I'll pay you back, promise. Or you can discount from my next payment, whatever works for you. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}


            }

    }

    {
        - E_Environment_FavelaFestival.favela_bet_small:
            {
                - bet_win == true:
                    #char:Kleber_happy_happy|L
                    Meanwhile, in the present, that bet netted us some pocket change! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

                    #char:Kleber_neutral_happy|L
                    Don't spend it all in one place, now.

                - else:
                    #char:Kleber_neutral_neutral|L
                    But it wasn't even <i>that</i> much money, Cap.
            }

        - E_Environment_FavelaFestival.favela_bet_big:
            {
                - bet_win == true:
                    #char:Kleber_happy_happy|L
                    Meanwhile, in the present, we got a lot of cash because of betting! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

                    #char:Kleber_neutral_happy|L
                    Don't spend it all in one place, now.

                - else:
                    #char:Kleber_neutral_sad|L
                    I know we lost a lot of money, Cap, but still... Trust me.
            }
    }

+ [CARGO¬Ask about his opinion on the eggs.>>]

    #char:--
    You ask Kleber about his opinion on your client's peculiar cargo.

    #char:Kleber_neutral_neutral|L
    Oh yeah, we saw a lot of stuff in the Marketplace, didn't we?

    #char:Kleber_neutral_sad|L
    I wonder why we ended up delivering eggs, of all things.

    #char:Kleber_neutral_neutral|L
    Not that I'm complaining, it's just that delivering to Aquarela is kinda like gambling.

    #char:Kleber_neutral_angry|L
    Clothes, ingredients, machine parts, books... really, we could've ended up with anything!

    #char:Kleber_neutral_angry|L
    There's always some work for a caravan to do in that place. The capybaras must make a killing there.

    #char:Kleber_surprised_sad|L
    Speaking of the eggs... I gotta say, Cap, I have no idea who had it worse. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

    #char:Kleber_surprised_sad|L
    Us, who had to deal with that pest going around the ship...

    {
        - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_animal_sanctuary:
            #char:Kleber_neutral_sad|L
            Or the people at that animal sanctuary Barto dragged us to.

        - E_Mission_Rookie_TheMafagafoPassenger.mafagafo_delivered:
            #char:Kleber_neutral_sad|L
            Rosana, who's dealing with it now... or whoever buys it and has to deal with it next.

        - else:
            #char:Kleber_neutral_sad|L
            Or whatever merchant is having his food eaten by a <>

            {
                - mafagafoSkin == "redFeather":
                    red-feathered <>

                - mafagafoSkin == "blueScale":
                    blue-scaled <>

                - mafagafoSkin == "greenFur":
                    green-furred <>
            }

            {
                - mafagafoBody == "winged":
                    bird thing hanging around the Marketplace.

                - mafagafoBody == "biped":
                    bipedal bird-thing hanging around the Marketplace.

                - mafagafoBody == "quadruped":
                    bird-thing on four legs hanging around the Marketplace.
            }
    }

+ [SHIP¬Ask about the 41-Bis' condition.>>]
    #char:--
    You ask Kleber if everything is fine with the 41-Bis and if he's adapting to it well enough.

    #char:Kleber_happy_sad|L
    Ha, "adapting"! This pilot doesn't <i>need</i> to adapt! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    #char:Kleber_neutral_sad|L
    Still, could be better. Ol' 41 isn't exactly a new model. Or in pristine condition.

    {
        - E_Mission_Rookie_TheMafagafoPassenger.Rosana_explanations && E_Mission_Rookie_TheMafagafoPassenger.mafagafo_relax:
            #char:Kleber_neutral_neutral|L
            I mean, you heard it from Rosana too, right? Cargo hold is too hot and all that.
    }

    #char:Kleber_neutral_neutral|L
    Some controls don't respond right away either.

    {
        - E_Environment_ThroughTheThunderCloud.kleber_through_thunder:
            #char:Kleber_neutral_sad|L
            Actually, I think it got a bit worse after we got hit by thunder—
    }

    //AFFINITY PASS:

    {   
        - g_affinity_Kleber <= -2:
            #char:Kleber_neutral_happy|L
            Anyway, nothing my reflexes can't deal with.

        - else:
            #char:Kleber_surprised_neutral|L
            Ah, but, er, nevermind that! Nothing my reflexes can't deal with! {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

    }

    #char:Kleber_neutral_sad|L
    You know what they say, "a good pilot can handle any ship"!

    #char:--
    You stare at Kleber, wondering if anyone in the Skies really says that.

-   #char:Kleber_happy_happy|L
    ...Anyway, the pay was good and now we have a Mission in the bag. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

-> END



= kleber_after_the_cursed_cachaca

//AFFINITY PASS:

{   
    - g_affinity_Kleber <= -2:
        #char:Kleber_neutral_neutral|L
        Oh, hi. Ready for another job?

    - else:
        #char:Kleber_neutral_happy|L
        Hey, Cap! Ready for another job?

}

{
    - cursedByTheBottle == "Captain":

        //AFFINITY PASS:

        {   
        - g_affinity_Kleber <= -2:
            #char:Kleber_neutral_happy|L
            At least you look better, I guess. Not hearing the cachaça talk to you?

        - else:
            #char:Kleber_neutral_happy|L
            I mean, you <i>are</i>  okay, right? Not hearing the cachaça talk to you? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

        }


    - cursedByTheBottle == "Kleber":
        #char:Kleber_neutral_happy|L
        And don't worry, without that cachaça around, I'm feeling fine! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    - cursedByTheBottle == "Jackie" || cursedByTheBottle == "Barto":
        #char:Kleber_neutral_happy|L
        I checked with <>

        {
            - cursedByTheBottle == "Jackie":
                Jackie, she's <>

            - cursedByTheBottle == "Barto":
                Barto, he's <>
        }

        fine, too. No more cachaça problems! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

#char:Kleber_happy_sad|L
...Wait, that didn't come out right. Ah, you know what I meant!

{
    - threwAwayTheBottle == true || E_Mission_Rookie_TheCursedCachaca.kleber_stays_on_the_ship || paidTheDebt == true:

        //AFFINITY PASS:
        {
            - g_affinity_Kleber <= -2:

            #char:Kleber_neutral_sad|L
            But yeah, I guess I have to thank you this time.

            - else:
            #char:Kleber_neutral_happy|L
            Before we go, though, I wanna thank you again.
        }

}

{
    - threwAwayTheBottle == true:
        #char:Kleber_neutral_happy|L
        For not throwing the bottle away, like I told you to.
}

{
    - E_Mission_Rookie_TheCursedCachaca.kleber_stays_on_the_ship:
        {
            - paidTheDebt == true || threwAwayTheBottle == false:
                #char:Kleber_neutral_happy|L
                For respecting me and letting me stay on the ship.

            - else:
                #char:Kleber_neutral_happy|L
                ...And for respecting me and letting me stay on the ship.
        }
}

{
    - paidTheDebt == true:
        {
            - threwAwayTheBottle == true || E_Mission_Rookie_TheCursedCachaca.kleber_stays_on_the_ship:
                #char:Kleber_sad_happy|L
                But above all else, for paying my debt.

            - else:
                #char:Kleber_sad_happy|L
                You know, for paying my debt.
        }
}

//AFFINITY PASS:
{
    - g_affinity_Kleber <= -20:
        #char:Kleber_neutral_neutral|L
        But yeah, don't expect to hear me say it out loud so often.

        #char:Kleber_neutral_neutral|L
        Still a long way to go before I <i>really</i> trust you.

        #char:Kleber_neutral_neutral|L
        Anyway. Did you want to say something?

    - else:
        #char:Kleber_surprised_sad|L
        Oh, wait. Did you want to say something?
}


+ [SILVA¬What can he tell you about Silva?>>]
    #char:--
    You ask how he met Silva and got involved with his business.

    #char:--
    He frowns, but you quickly explain you're worried about the crew's safety.

    //AFFINITY PASS:
    {
        - g_affinity_Kleber >= 5:
            #char:Kleber_sad_sad|L
            Yeah, yeah. Sorry. Still a bit jumpy from... everything. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}
    }

    #char:Kleber_sad_angry|L
    So. I know Silva used to run a few illegal gambling schemes before.

    #char:Kleber_sad_angry|L
    That was before I met him, though. When I became his driver, he had already "gone clean".

    #char:Kleber_sad_neutral|L
    It was right after I quit being a Taxi Caravan pilot. Barely any Grana left in my pocket.

    #char:Kleber_sad_neutral|L
    Went to the Heights to look for something and ended up at Champignons.

    #char:Kleber_sad_sad|L
    I was so desperate, I made the worst mistake of my life: took advance credit.

    #char:Kleber_sad_sad|L
    The plan was to take the credit, play some cards and get out with some money.

    #char:Kleber_sad_sad|L
    As you know, that didn't happen.

    #char:Kleber_sad_neutral|L
    You know the rest. I was forced into working for Silva to pay my debt.

    #char:Kleber_sad_neutral|L
    And then, when it became clear I wouldn't be able to, I ended up fleeing the Heights.

    #char:Kleber_surprised_neutral|L
    And, well... here we are.

+ [KLEBER¬Talk about Kleber's relationship with the crew.>>]

    #char:--
    You tell Kleber that Jackie and Barto still feel bad about pressing him about his past with Silva.

    #char:Kleber_surprised_sad|L
    Cap, listen. I'm not perfect. And I don't really wanna be.

    {
        - trustedKleber == true:

            //AFFINITY PASS:
                {
                    - g_affinity_Kleber >= 5:
                        #char:Kleber_neutral_happy|L
                        But I'm glad you can trust me. It means a lot. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

                    - else:
                        #char:Kleber_neutral_neutral|L
                        But at least you trusted me to get us out of the Heights. That's a start.
                }

        - else:
            #char:Kleber_sad_sad|L
            I know you don't fully trust me yet. No need to lie.  {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

            #char:Kleber_sad_sad|L
            But I hope you can do it in the future.

            #char:Kleber_neutral_happy|L
            In the meantime, this pilot will drive the best he can!
    }

    //AFFINITY PASS:
    {
        - g_affinity_Kleber >= 5:
            #char:Kleber_neutral_happy|L
            I have a lot more shortcuts in other places I wanna show you! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

            #char:Kleber_surprised_sad|L
            ...Ah, but not in the Spore Heights, of course.
    }


+ {bought_booster_x} [FUEL¬Talk about Kleber's Batizada.>>]

    //AFFINITY PASS:

    { 
        - g_affinity_Kleber >= -10:
        #char:Kleber_neutral_happy|L
        Glad we ended up buying it! Knew you wouldn't regret it! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

        - else:
        #char:Kleber_neutral_neutral|L
        Oh, yeah. You've listened to me, at least.
    
    }


    {
        - E_Mission_Rookie_TheCursedCachaca.ending_bottle_breaking:
            #char:Kleber_neutral_happy|L
            It ended up saving our hides back in the Heights, too.

            //AFFINITY PASS:
            {   
                - g_affinity_Kleber >= 5:
                    #char:Kleber_neutral_sad|L
                    It's good to see you refer to me with these things.

            }

    }

    {
        - trustedKleber == true:

            //AFFINITY PASS:
            {   
                - g_affinity_Kleber >= 5:
                #char:Kleber_neutral_happy|L
                I'm glad you've grown to trust me. Even if just a bit.
            
                - else:
                #char:Kleber_neutral_neutral|L
                And you trusted me to get us out of the Heights. That's a start, I guess.
            }

        - else:
            #char:Kleber_neutral_sad|L
            Look, I know you and the others don't fully trust me yet.
    
    }

    #char:Kleber_neutral_sad|L
    I told you myself. I'm a risk-taker. Always was, always will be.

    //AFFINITY PASS:
    {
        - g_affinity_Kleber >= 10:
            #char:Kleber_neutral_angry|L
            But it's nice to see my captain and crewmates respect me as a pilot.

            #char:Kleber_happy_sad|L
            So now that I have my Batizada, I'm taking us places! {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}
            
            #char:Kleber_surprised_sad|L
            Er, places that aren't Champignons.
    }


-   #char:Kleber_neutral_sad|L
    I may be banned from the Heights now, but that's a price I'm able to pay.

-> END



= kleber_after_grasp_of_the_octornado

{
    - E_Mission_Rookie_GraspOfTheOctornado.left_refinery:
        #char:Kleber_sad_sad|L
        I don't think I'll drink for a few days with this headache. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Kleber_fear_sad|L
        I don't remember exactly what we went through inside Abyss.

        {
            - E_Mission_Rookie_GraspOfTheOctornado.scanning_faces:
                #char:Kleber_fear_sad|L
                But I kinda have this feeling I had to keep making faces and turn around.

            - E_Mission_Rookie_GraspOfTheOctornado.satisfaction_survey:
                #char:Kleber_fear_sad|L
                I just remember something about "recommending something to a friend".
        }

        {
            - E_Mission_Rookie_GraspOfTheOctornado.not_a_robot:
                #char:Kleber_fear_sad|L
                And having to prove I'm "not a robot" or something.

            - E_Mission_Rookie_GraspOfTheOctornado.teller_machine:
                #char:Kleber_fear_sad|L
                And having to type in a bunch of numbers.
        }

    - E_Mission_Rookie_GraspOfTheOctornado.stayed_at_refinery:
        #char:Kleber_fear_sad|L
        I don't want to sign any document again for a veeeeery long time. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        #char:Kleber_fear_neutral|L
        Seriously, no wonder everyone goes mad in that place.

        #char:Kleber_surprised_neutral|L
        Can't believe I'm saying this, but I'm glad to be back in the same old Capy-Bar atmosphere.
}

#char:Kleber_surprised_sad|L
I think Barto might be even more relieved than me, though. You should talk to him.

//AFFINITY PASS:
{ 
    - g_affinity_Kleber <= -25:
    #char:Kleber_angry_neutral|L
    Just don't be a jerk. Can't deny you make things worse sometimes.
}

#char:Kleber_sad_neutral|L
I mean, being locked away from your goals because of something you can't control?

#char:Kleber_sad_neutral|L
...Yeah, I can definitely sympathize.

//AFFINITY PASS:

{   
    - g_affinity_Kleber >= 25:

    #char:Kleber_neutral_sad|L
    Hey, maybe we should do something for him! Cheer our chef up, y'know? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    + [COOKING¬Maybe you should cook for him for once.>>]
        #char:Kleber_happy_sad|L
        That's... not a bad idea!

        #char:Kleber_happy_sad|L
        I can't make anything too complicated. But if we work <i>together</i>...

        {
            - E_Crew_WhatsForDinner.improvise_for_dinner:
                #char:Kleber_happy_sad|L
                We can make something decent! C'mon!

            - E_Crew_WhatsForDinner.cans_for_dinner:
                #char:Kleber_happy_sad|L
                At least it will be better than the emergency rations.
        }

        #char:Kleber_happy_happy|L
        I'll surprise our chef when he comes in. Maybe strogonoff, what do you think?

    -> END

    + [SUPPLIES¬Maybe you could get Barto better supplies.>>]
        #char:Kleber_happy_sad|L
        That's... not a bad idea!

        #char:Kleber_happy_sad|L
        Maybe buying some of that fancy stuff will give him something to work with!

        #char:Kleber_happy_angry|L
        Let's look around this place for anything good!

        ~ FadeTo("black", 1, 1)

        #char:Kleber_sad_neutral|L
        Huh. Less options than I thought.

        #char:Kleber_happy_happy|L
        But you got a few mushrooms, right?

        #char:Kleber_happy_happy|L
        I found this weird cheese. Kinda smelly, just as chefs like it!

        #char:Kleber_happy_happy|L
        I'll just put it in our storage! Thanks for the help, Cap!

        #char:--
        Well, Kleber's heart is in the right place, at least. Hopefully Barto likes the surprise!

    -> END

}

-> END



= kleber_after_crystals_of_bygone_times

//AFFINITY PASS:
{ 
    - g_affinity_Kleber <= -50:
    #char:Kleber_angry_neutral|L
    To be fair, I'm honestly surprised we've got through four deliveries with <i>you</i> in charge. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

    - g_affinity_Kleber < 0 && g_affinity_Kleber > -50:
    #char:Kleber_surprised_sad|L
    ...That's it. Four deliveries. Whoa.

    - else:
    #char:Kleber_happy_happy|L
    Whoa, that was our fourth delivery already! Seems like we're really doing well, huh? {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}
    
}

#char:Kleber_angry_angry|L
I'm still thinking about that tacky Caravan, though.

{
    - E_Mission_Rookie_CrystalsOfBygoneTimes.expert_caravan_shoot:
        #char:Kleber_angry_angry|L
        I would have shot those idiots again if I could. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}

    - else:
        #char:Kleber_angry_neutral|L
        <i>Really</i> wish you had let me fire that warning shot. {Emotion("WaveOut", "ea2929")} {PlaySFX("Woosh")}
}

{
    - E_Mission_Rookie_CrystalsOfBygoneTimes.expert_caravan_gave_supplies:
        {
            - E_Mission_Rookie_CrystalsOfBygoneTimes.expert_caravan_shoot:
                #char:Kleber_happy_happy|L
                Still, I guess <>

            - else:
                #char:Kleber_happy_sad|L
                At least <>
        }

        <i>I</i> had the last laugh with the fake fuel! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}
}

{
    - E_Mission_Rookie_CrystalsOfBygoneTimes.expert_caravan_gave_fuel:
        #char:Kleber_angry_neutral|L
        And I <i>really </i> wish you hadn't given them our fuel.
}

#char:Kleber_neutral_neutral|L
...Anyways.

#char:Kleber_surprised_sad|L
Not gonna lie, even though I joked around, all that time travel stuff is beyond me. {Emotion("Explosion", "39f2d6")} {PlaySFX("LightWoosh")}

#char:Kleber_surprised_happy|L
It's a miracle Horacio could even do all that. And Jackie too!

#char:Kleber_neutral_sad|L
But still, imagine going back to any point in time and fixing your mistakes...

#char:Kleber_neutral_sad|L
Well, that's a power I'd want, really.

//AFFINITY PASS:

{ - g_affinity_Kleber >= 5:

{
    - savedHoracio == "true":
        #char:Kleber_neutral_sad|L
        Hope you find a good use for that crystal, Cap.

    - else:
        #char:Kleber_neutral_sad|L
        You too, I guess.
}

}

//AFFINITY PASS:

{
    - g_affinity_Kleber >= -2:
        #char:Kleber_neutral_happy|L
        But you have a good shot at taking down your problems <i>now</i>!

        #char:Kleber_happy_happy|L
        Time to pay that debt and see your family again! {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer1")}

    - else:

        #char:Kleber_angry_neutral|L
        Speaking of mistakes, we'll be meeting Marimbondo soon.

        #char:Kleber_angry_sad|L
        Let's see if you have more luck at <i>not</i> making mistakes than I did.
}

-> END



= kleber_lines


{shuffle:

    -
        //AFFINITY PASS:

        { 
            
        - g_affinity_Kleber >= -2:

            #char:Kleber_neutral_happy|L
            Hey, we should all share a drink to celebrate finishing deliveries!{Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

            #char:Kleber_surprised_sad|L
            Just, uh, not from the Capy-Bar's clay filter.

            #char:Kleber_fear_sad|L
            Seriously, whoever thought of putting beer in there was probably drunk.
        
        - else:

            #char:Kleber_surprised_sad|L
            These Capy-Bars surprise me every day.
            
            #char:Kleber_fear_sad|L
            Seriously, whoever thought of putting beer in clay water filters was probably drunk.

        }


    -

        //AFFINITY PASS:
        { 
            
            - g_affinity_Kleber >= -10:

                #char:Kleber_surprised_sad|L
                I wouldn't eat any of the snacks in the bar if I were you, Cap.

                #char:Kleber_surprised_sad|L
                I saw Barto give them a lick and scrunch his face in disgust.

                #char:Kleber_fear_sad|L
                And I could swear that the Caybarman put them back on display right after. {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

        
            - else:

                #char:Kleber_surprised_sad|L
                ...Why are you still here, exactly? Shouldn't we just start the delivery already?
        
        }


    -
        //AFFINITY PASS:
        { 
            
            - g_affinity_Kleber >= -2:

                #char:Kleber_happy_happy|L
                Hey, Cap, you think they'll fix the Capy-Bar's jukebox system anytime soon?

                #char:Kleber_happy_sad|L
                Would be nice to listen to some pagode once in a while, y'know? {Emotion("Shine", "ffb71b")} {PlaySFX("Love1")}

        
            - else:

                #char:Kleber_angry_neutral|L
                Seriously, why don't they fix that jukebox system? {Emotion("WaveIn", "0a4de8")} {PlaySFX("Bad1")}

                #char:Kleber_sad_sad|L
                I'd <i>really</i> like to hear some pagode right now.
                
        
        }

    -
        //AFFINITY PASS:

        {   
            - g_affinity_Kleber >= -20:
                #char:Kleber_happy_happy|L
                Oh, Cap? If you want to, say, give us a little extra money to increase morale...


                #char:Kleber_happy_sad|L
                You can pay us through the Caravan Manager too. <wave>Juuuust</wave> saying. {Emotion("Shine", "ffb71b")} {PlaySFX("Shimmer2")}
        
            - else:
                #char:Kleber_neutral_neutral|L
                Oh. If you want to, say, give us a little extra money to increase morale...

                #char:Kleber_angry_neutral|L
                You can pay us through the Caravan Manager too. I think we deserve some compensation.

        }

}
-> END
