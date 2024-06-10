===E_Crew_RockyDetour===

#scope: General
#category: Crew
#tier: Rookie
#intensity: Medium

/*Synopsis: Você está de olho no mapa de navegação e Julinho já chega propondo um caminho alternativo.
Parece que vai economizar muito tempo. Você pergunta de onde ele tirou esse caminho e ele desconversa. Você pode topar ou não.*/

#char:--
You and Kleber go through your planned route for the day. You're supposed to travel inside a rock formation that acts like a natural tunnel.

#char:--
It will take a while to cross, but there's not a lot of danger so long as the pilot pays attention.

#char:Kleber_happy_neutral|L
Hey, Cap, I've got a new plan to share! {Emotion("Outer", "orange")}

#char:--
Unfortunately, with a pilot like yours, there's no such thing as a quiet and safe trip.

#char:Kleber_happy_neutral|L
So, here's the thing: we're crossing this tunnel, but maybe there was a way to save our time!

#char:Kleber_happy_neutral|L
That's where this <wave>liiiittle</wave> detour comes in. I totally forgot about it, but it just came back to me. Should we go for it?

+ [QUESTION>>]

    #char:--
    You ask if he's been here before. Kleber looks a bit uncomfortable all of a sudden.

    #char:Kleber_happy_sad|L
    Uh, kind of. In passing. I've been through a lot of places, you know. {Emotion("Inner", "purple")}

    #char:--
    He's obviously not giving the full story, but you don't feel like pressing him right now. And Kleber certainly doesn't look like he wants to be pressed, either.

    #char:Kleber_happy_angry|L
    Let's go straight to the point. Inside these walls, on the left side, there's a hole.
    
    #char:Kleber_happy_neutral|L
    It's just big enough for ships like the 41-Biz to fit through, so we can squeeze in and go to the other side faster!

    #char:Kleber_happy_happy|L
    Sure, we'll have to burn some energy to do it, but we'll arrive faster so it's worth it!

+ [FACEPALM>>]

    #char:--
    You don't seem too convinced.

    #char:Kleber_happy_sad|L
    Wait, just let me tell my idea first! {Shake("Big Face", 0.5, 1)}

    #char:Kleber_happy_neutral|L
    So you know how we're gonna need to turn around after the tunnel because it will take us farther than we need to be, right?
    
    #char:Kleber_happy_angry|L
    Well, inside the walls on the left there's an opening.

    #char:Kleber_happy_neutral|L
    It seems big enough for ships like the 41-Biz to fit through, so we can squeeze in and go to the other side faster!

    #char:Kleber_happy_happy|L
    Sure, we'll have to burn some energy to do it, but we'll arrive faster so it's worth it!

-   #char:Kleber_happy_neutral|L
    So, wanna give it a shot?

    ++ [YES>F>]

        #log: Took the shortcut through a tunnel.
    
        #char:--
        Well, it couldn't be worse than what you've went through already.

        #char:Kleber_happy_happy|L
        That's the spirit, Cap! Just, uh, tell everyone to hold onto something when we go up, yeah? {Emotion("Outer", "yellow")}

        ~ g_affinity_Kleber += 20
        
        #char:--
        You have a feeling you (and everyone else) might regret this, but hey, at least it saves time.

        ~ g_fuel -= 20

    -> EVENT_END
    
    ++ [NO>T>]

        #log: Went through a tunnel's safest path.

        #char:--
        Doesn't sound too safe. Better just stick to the longer route rather than do any risky escapade.

        #char:Kleber_sad_neutral|L
        Ah, so you don't trust me to plan routes, eh? Alright.

        ~ g_affinity_Kleber -= 10

        #char:--
        Kleber goes back to the cockpit, looking a bit disappointed.

        ~ g_timeChange = 2
        ~ DayChange()

    -> EVENT_END
