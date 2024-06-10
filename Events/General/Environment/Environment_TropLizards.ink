===E_Environment_TropLizards===

#scope: General
#category: Environment
#tier: Rookie, Intermediate, Expert
#intensity: Low

#char:--
As the 41-Biz flies between mountains, you suddenly hear a shrill cry in the distance.

~ ScreenFlash("white", -1)

#char:--
Before you know it, there's about two dozen raging lizards chasing after your vehicle from the ground.

#char:Kleber_angry_angry|L
BLOODY HELL! Looks like it's a bunch of Trop Lizards! We must have wandered close to a nest! {Emotion("Outer", "red")}

#char:Kleber_angry_angry|L
Quick, let's grab some food to throw at them! 

#char:Barto_angry_neutral|R
<shake>Excuse me?</shake> 

#char:Barto_angry_neutral|R
Why don't you act like a decent pilot and just go "pedal to the metal", heh?

#char:Jackie_happy_sad|R
These things could chase us for hours. Best to take care of them with our gun turrets.

#char:Jackie_happy_sad|R
Are you in, Captain?

+ [BARTO>F>]

    #log: Ran away from a group of Trop Lizards.

    #char:--
    Barto is right. You order Kleber to step on the accelerator as far as it will go.
    
    ~ g_affinity_Barto += 20
    
    #char:--
    You take some time to lose them, going far away from the original path, but at least you're all safe. {Shake("All", 1, 1)}

    ~ g_fuel -= 30


-> EVENT_END

+ [JACKIE>M>]

    #log: Shot at Trop Lizards with your turret.

    #char:--
    You took one of the turrets and shoot at the lizards. You manage to hit a few, but the rest become even angrier.

    ~ g_affinity_Jackie +=20

    #char:--
    Jackie, on the other hand, seems to be dealing with them more easily.

    #char:--
    Eventually, the lizards flee, perhaps because they had way too many casualties.

    #char:Jackie_happy_happy|L
    Holy crap, Captain, we actually scared them off! Gimme five! {Emotion("Outer", "yellow")}

    ~ g_morale += 30

-> EVENT_END

+ [KLEBER>S>]

    #log: Distracted approaching Trop Lizards with your supplies.

    #char:--
    Desperate, you throw some of your supplies to the lizards. It seems to calm them, especially the meat.

    ~ g_affinity_Kleber += 20

    #char:--
    You escape safe and sound, though Barto looks mad at you for throwing away supplies. 

    #char:--
    He doesn't say it because you manage to get out of that alive, but you can see it in his eyes.

    ~ g_supplies -= 20

-> EVENT_END