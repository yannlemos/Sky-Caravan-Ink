===E_Environment_IronObelisk===

#scope: General
#category: Environment
#tier: Rookie, Intermediate, Expert
#intensity: High
#location:Skyways

VAR got_lost = false

VAR last_junction_visited = 0.0

#char:--
Kleber calls everyone to the cabin and points to a massive floating chunk of black rock directly in front of 41-Biz.

#char:Kleber_neutral_neutral|L
You guys see that? It's one of these Iron Obelisk things.

#char:Jackie_happy_neutral|R
<wave>Oooh</wave>, I've heard of those! {Emotion("Outer", "white")}

#char:Jackie_happy_angry|R
People say they actually came from space, right?

#char:Kleber_neutral_happy|L
That's right! And we're going inside it! {Emotion("Outer", "white")}

#char:Jackie_neutral_neutral|R
Wait, <i>what</i>? 

+ [FEAR>>]

    #char:--
    Why would you go in there in the first place!?

    #char:Barto_angry_angry|R
    I know you're not one for prudence, but do we even have anything to gain from <i>this</i>? {Emotion("Outer", "red")}

    #char:Kleber_happy_sad|L
    Look, we don't really have a choice. 
    
    #char:Kleber_neutral_neutral|L
    Going around is going to burn too much fuel and time. Our best option is to try our luck inside.

+ [QUESTION>>]

    #char:--
    How would the 41-Biz even get inside this rock?

    #char:Kleber_neutral_neutral|L
    Earlier, I could spy an opening in the side we're facing.

    #char:Kleber_neutral_neutral|L
    Getting in is the easy part, actually. 

    #char:Kleber_happy_sad|L 
    The problem is the inside.

-   #char:Kleber_happy_sad|L
    The inner passageways are probably... well, easy to get lost in. {Emotion("Inner", "blue")}

    #char:Jackie_sad_sad|R
    Yeah, no wonder, we're dealing with a huge natural maze then. {Emotion("Inner", "blue")}

    #char:Barto_neutral_angry|R
    How do you even <i>know</i> if there's an exit, Kleber? 
    
    #char:Barto_angry_angry|R
    For all we know, we could get lost for nothing! {Emotion("Outer", "red")}

    #char:Kleber_happy_happy|L
    Ah, that's where a pilot's experience comes in, dear Chef! {Emotion("Outer", "white")}
    
    #char:Kleber_happy_happy|L
    Look, the entrance is real close!

    #char:--
    Kleber drives to the opening in the Iron Obelisk's side. 
    
    #char:--
    It takes you a second to see what he means.

    #char:Barto_neutral_angry|R
    Ah, I see. There's wind blowing dust from the inside out. Meaning...

    #char:Jackie_happy_angry|R
    There's an opening somewhere else! {Emotion("Outer", "white")}
    
    #char:Kleber_neutral_neutral|L
    And judging by how big it is, I wouldn't worry about our exit, just about getting there.

    #char:Kleber_happy_sad|L
    Which is why I need you with me, Cap - to help me locate the exit! 
    
    #char:Kleber_happy_sad|L
    Two heads navigate better than one, right? {Emotion("Outer", "white")}

    + [FEAR>>]

        #char:--
        You don't really like the idea of braving an alien obelisk, but it seems like it's the only option.

        #char:Kleber_neutral_happy|L
        Trust me, Cap. I got this.

    + [MOTIVATE>>]

        #char:--
        Kleber's right. Let's give this a shot - it's far from the worse thing you've been through.

        ~ g_affinity_Kleber += 10

        #char:Kleber_happy_happy|L
        That's the spirit, Cap! Let's go in, then! {Emotion("Outer", "white")}

    + [RELAX>>]

        #char:--
        You're confident in your abilities and Kleber's. You're sure you can handle it.

        ~ g_affinity_Kleber += 10

        #char:Kleber_happy_happy|L
        That's the spirit, Cap! Let's go in, then! {Emotion("Outer", "white")}

    -   

        #char:--
        You enter the Iron Obelisk.

        ~ ScreenFlash("white", 1)

        -> maze_junction_1



= maze_junction_1

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

{
    - maze_junction_2 || maze_junction_4:
        #char:--
        This junction looks... familiar.
        
        #char:--
        Looks like you're back at the start. 
        
        #char:--
        Better turn around and try another route.

    - else:
        #char:--
        Soon after you get inside, you come across an intersection. 
        
        #char:--
        The path branches forward and left.

        #char:--
        You contemplate your choices, illuminated by the lights of the 41-Biz.

        #char:Kleber_happy_neutral|L
        Alright. Where should we go, Cap?
}

+ [POINT_LEFT>>]

    ~ last_junction_visited = 1.0

-> maze_junction_4

+ [POINT_UP>>]

    ~ last_junction_visited = 1.0

-> maze_junction_2



= maze_junction_2

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    You reach another branch in the path. 
    
    #char:--
    Right and forward, this time.

    #char:--
    The path leading forward has a very faint light,<>

    {
        - junction_2_dead_end:
        <> while the one going right is completely dark.

        - else:
        .
    }

+ [POINT_DOWN>>]

    ~ last_junction_visited = 2.0

-> maze_junction_1

+ [POINT_UP>>]

    ~ last_junction_visited = 2.0

-> maze_junction_3

* [POINT_RIGHT>>]

    ~ last_junction_visited = 2.0

-> junction_2_dead_end



= junction_2_dead_end

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    After a minute or two, you reach a dead end. 
    
    #char:--
    Looks like this path doesn't lead anywhere.

    #char:Jackie_sad_neutral|L
    Maybe we should go back to where we came... {Emotion("Inner", "blue")}


+ [POINT_DOWN>>]

    ~ last_junction_visited = 2.5

-> maze_junction_2



= maze_junction_3

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    The light from further on has gotten stronger.

    #char:--
    But there's another longer tunnel leading right. 
    
    #char:--
    It keeps going, rounding a corner further ahead.

+ [POINT_DOWN>>]

    ~ last_junction_visited = 3.0

-> maze_junction_2

+ [POINT_UP>>]

    ~ last_junction_visited = 3.0

-> maze_junction_4

+ [POINT_RIGHT>>]

    ~ last_junction_visited = 3.0

-> maze_junction_5



= maze_junction_4

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    The light is really strong now. If there's an opening ahead, it's close now.

    #char:--
    To your left is a winding path that's narrow and looks kind of hard to navigate.

+ [POINT_LEFT>>]

    ~ last_junction_visited = 4.0

-> maze_junction_1

+ [POINT_UP>S>]

    ~ last_junction_visited = 4.0

-> maze_west_exit



= maze_junction_5

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    The way ahead branches in two straight paths. 
    
    #char:--
    One to your front, another to your right.

+ [POINT_DOWN>>]

    ~ last_junction_visited = 5.0

-> maze_junction_3

+ [POINT_UP>>]

    ~ last_junction_visited = 5.0

-> maze_junction_6

+ [POINT_RIGHT>>]

    ~ last_junction_visited = 5.0

-> maze_junction_7



= maze_junction_6

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    You're in one large corridor-like path. 
    
    #char:--
    It extends a long way to both your left and your right.

+ [POINT_LEFT>>]

    ~ last_junction_visited = 6.0

-> maze_junction_11

+ [POINT_RIGHT>>]

    ~ last_junction_visited = 6.0

-> maze_junction_7



= maze_junction_7

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    You're in one large corridor-like path. 
    
    #char:--
    It extends a long way to both your left and your right.

+ [POINT_LEFT>>]

    ~ last_junction_visited = 7.0

-> maze_junction_6

+ [POINT_RIGHT>>]

    ~ last_junction_visited = 7.0

-> maze_junction_8



= maze_junction_8

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    Looks like you're close to the end of the big corridor.
    
    #char:--
    The path narrows down <>

    {
        - junction_8_dead_end:
            to your left.

        - else:
            to both your left and your front.
    }

+ [POINT_LEFT>>]

    ~ last_junction_visited = 8.0

-> maze_junction_9

+ [POINT_DOWN>>]

    ~ last_junction_visited = 8.0

-> maze_junction_7

* [POINT_UP>>]

    ~ last_junction_visited = 8.0

-> junction_8_dead_end


= junction_8_dead_end

    #char:--
    Looks like you've hit another dead end.

    #char:Kleber_sad_sad|L
    Must've made a wrong turn somewhere. Let's go back. {Emotion("Inner", "blue")}

+ [POINT_DOWN>>]

    ~ last_junction_visited = 8.5

-> maze_junction_8



= maze_junction_9

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    There's wind coming from your left. You can hear it flapping 41-Biz' sails.

    {
        - !junction_9_dead_end:
            #char:--
            There's another route in front of you, also giving a smaller breeze.
    }

+ [POINT_LEFT>>]

    ~ last_junction_visited = 9.0

-> maze_junction_10

+ [POINT_DOWN>>]

    ~ last_junction_visited = 9.0

-> maze_junction_8

* [POINT_UP>>]

    ~ last_junction_visited = 9.0

-> junction_9_dead_end



= junction_9_dead_end

    #char:--
    There is a hole to the outside... but it's really small, barely the size of one of your thrusters.

    #char:Barto_angry_sad|L
    A shame. Let's hope this isn't the only other opening there is. 

+ [POINT_DOWN>>]

    ~ last_junction_visited = 9.5

-> maze_junction_9



= maze_junction_10

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    You reach the middle of another long corridor.

    #char:--
    The path to the right has some natural light at the end. The one in the left goes a long way and then turns a corner.

+ [POINT_LEFT>>]

    ~ last_junction_visited = 10.0

-> maze_junction_11

+ [POINT_DOWN>>]

    ~ last_junction_visited = 10.0

-> maze_junction_9

+ [POINT_RIGHT>>]

    ~ last_junction_visited = 10.0

-> maze_east_exit



= maze_junction_11

{check_for_maze_end()}

{
    - got_lost == true:
        -> maze_got_lost
}

    #char:--
    Yet another long, narrow space. 
    
    #char:--
    There's a strong light right in front of you.

    #char:--
    The path on the left seems long, you can't even see the end.

+ [POINT_LEFT>>]

    ~ last_junction_visited = 11.0

-> maze_junction_6

+ [POINT_DOWN>>]

    ~ last_junction_visited = 11.0

-> maze_junction_10

+ [POINT_UP>>]

    ~ last_junction_visited = 11.0

-> maze_north_exit


= maze_north_exit

    #log: Found some fuel gallons outside the Iron Obelisk.

    ~ ScreenFlash("white", 1)

    #char:--
    You can see an exit from where you are! And next to it... an abandoned ship?

    #char:Kleber_happy_neutral|L
    Whoa, that's an old Omnibus-model ship! {Emotion("Outer", "white")}
    
    #char:Kleber_neutral_neutral|L
    They made these back in my <i>grandpa's</i> time!

    #char:Kleber_neutral_sad|L
    What's it doing here, though? There's a few crates around it, too.

    #char:--
    You and the crew take a quick stop next to it, to see if anyone is nearby.

    #char:Kleber_happy_happy|L
    Oh wow! Look, there are some fuel gallons here! {Emotion("Outer", "white")}
    
    #char:Kleber_happy_happy|L
    And back in the day, these could last a long time!

    #char:Jackie_neutral_neutral|R
    Hm... The thrusters look damaged and there's a huge scratch on the side facing the wall. 
    
    #char:Jackie_sad_neutral|R
    Maybe that's why it's abandoned here. {Emotion("Inner", "blue")}

    #char:Barto_neutral_sad|L
    I just had a look inside the ship, there was no one there.
    
    #char:Barto_neutral_angry|L
    But... I found this in the driver's seat.

    #char:--
    Barto hands you a small chip. 
    
    #char:--
    It's not labeled, and seems to be an older model from the ones you get from clients.

    #char:Kleber_happy_sad|R
    Uh, can we even use this thing?

    #char:Jackie_happy_neutral|L
    Only one way to find out!

    #char:Kleber_neutral_sad|R
    All right, then. 
    
    #char:Kleber_neutral_sad|R
    Let's take this and the fuel, then. Looks like there's no one around to miss it.

    ~ g_fuel += 30

    #char:--
    You go back into the ship and try to insert the chip in 41-Biz' terminal.

    #char:--
    It's a logbook. 
    
    #char:--
    It details how the crew of the Omnibus got stranded here after a crash.

    #char:Kleber_sad_sad|L
    So they probably couldn't fly off from here and help never arrived, huh. {Emotion("Inner", "blue")}

    #char:Jackie_sad_angry|R
    They must have run out of everything... except fuel, which they couldn't use. {Emotion("Inner", "blue")}

    #char:--
    So yet another Caravan that met an unfortunate fate. You're thankful the same didn't happen to you inside the Obelisk.

-> EVENT_END



= maze_east_exit

    #log: Found precious gemstones inside of a Iron Obelisk.

    ~ ScreenFlash("white", 1)

    #char:--
    Looks like you've made it to an exit!

    #char:Kleber_happy_neutral|L
    There it is! <bounce>Told you</bounce> there had to be a way out! {Emotion("Outer", "white")}

    #char:Jackie_happy_neutral|R
    Nice! That was some good navigati- {Emotion("Outer", "white")}
    
    #char:Jackie_neutral_neutral|R
    Hang on, what's that on the wall?

    #char:--
    It takes a few moments to see what Jackie is talking about. There are some shiny spots on the wall, reflecting the lights from the outside and 41-Biz.

    #char:Kleber_happy_neutral|L
    Whoa, whoa, <wave>whoa</wave>! Are these... <i>gemstones</i>!? {Emotion("Outer", "white")}

    #char:Jackie_happy_happy|R
    I think they are! I had no idea you could find them in Iron Obelisks! {Emotion("Outer", "white")}

    {
        - E_Ship_StruckByRock.stuck_break_rock:
            #char:Kleber_happy_happy|L
            Let's try to get them! 
            
            #char:Kleber_happy_happy|L
            We still have the tools we used to break that rock we hit, right?

        - else:
            #char:Kleber_happy_happy|L
            Let's try to get them! We have some tools we can use, right? 
    }

    #char:Jackie_happy_happy|R
    You bet we do! 
    
    #char:Jackie_happy_neutral|R
    Can you fly us a little closer and hit the stabilizers, Kleber?

    #char:Barto_neutral_sad|R
    You know, I take back what I said before. 
    
    #char:Barto_happy_angry|R
    Looks like your lack of self-preservation paid off for once. {Emotion("Outer", "white")}

    #char:Kleber_happy_neutral|L
    Oho! Is that a <i>compliment</i> from the Chef I'm hearing? {Emotion("Outer", "white")}

    #char:Barto_neutral_angry|R
    ...Don't get used to it.

    #char:--
    A few minutes and some hammering later, and the crew probably has enough money for a whole week.

    ~ g_grana += 1000

-> EVENT_END


= maze_west_exit

    #log: Found old pasta outside the Iron Obelisk's maze.

    ~ ScreenFlash("white", 1)

    #char:--
    After following the strong light, you find another exit from the Obelisk.
     
    #char:-- 
    And close to it, a ledge with some kind of camp.

    #char:Barto_neutral_angry|L
    What's that? Some sort of construction barracks?

    #char:Jackie_neutral_neutral|R
    Not construction. Mining.

    #char:Jackie_happy_angry|R
    It used to be commonplace in Obelisks a few years back - grandma delivered a few cargos of iron ore from some of these.

    #char:Jackie_happy_neutral|R
    Let's check it out! {Emotion("Outer", "white")}
    
    #char:Jackie_happy_neutral|R
    Maybe there's someone in there.

    #char:--
    Kleber manages to land the 41-Biz in the ledge - looks like it was excavated so ships could use it. 
    
    #char:--
    You leave the ship, but there's no one around the barracks.

    #char:Barto_neutral_happy|L
    Hang on. Do you... smell that?

    #char:Jackie_sad_neutral|R
    Uh, smell what?

    #char:Barto_neutral_sad|L
    I recognize that smell anywhere! 
    
    #char:Barto_happy_sad|L
    It's from a specific brand of pasta I haven't seen in a long time! {Emotion("Outer", "white")}

    #char:Jackie_happy_neutral|R
    Huh, you must have a good sense of smell, chef!

    #char:Barto_neutral_angry|L
    Hmph, of course I do. It's part of my job.

    #char:--
    You follow Barto to what you assume is the miners' abandoned storage unit.

    #char:--
    And miraculously, there's almost a dozen boxes of said pasta.
    
    #char:Barto_happy_angry|L
    This is a great find, they aren't even <i>made</i> en masse anymore. {Emotion("Outer", "white")} 

    #char:Kleber_happy_sad|R
    Uh, chef, I don't think they get better with age- {Emotion("Inner", "blue")}

    #char:Barto_neutral_happy|L
    Rejoice, everyone! {Emotion("Outer", "white")}
    
    #char:Barto_neutral_happy|L
    We have more quality food to add to our supplies!

    #char:--
    And with that, Barto happily grabs the boxes and takes them back to the 41-Biz... not without getting stares from the crew.

    ~ g_supplies += 30

-> EVENT_END



= maze_got_lost

    #log: Got lost inside the Iron Obelisk.

    #char:--
    After a long time has passed, the crew has started to get impatient.

    #char:Jackie_sad_sad|L
    Are you guys <wave>really</wave> sure you know where we're going?

    #char:Kleber_happy_sad|R
    ...

    #char:Kleber_sad_sad|R
    Uh, okay, I'm not so sure anymore.

    #char:Barto_angry_angry|L
    Judging by the time we've wasted, we might as well have gone around the Obelisk!

    #char:Kleber_sad_sad|R
    I, uh, yeah. I think that one's on me.

    #char:Jackie_sad_sad|L
    Can you get us back to the entrance?

    #char:Kleber_sad_happy|R
    I... alright, just gimme a minute.
    
    #char:--
    Jackie looks between you and Kleber, frowning.

    #char:Jackie_sad_neutral|L
    Then let's do this. 
    
    #char:Jackie_sad_neutral|L
    And you two? No more shortcuts until we're done with this delivery, ok?

    #char:--
    The next few minutes are mostly uneventful until Kleber finds his way back out of the Obelisk.

    #char:--
    So are the few hours until you finish circling it from the outside.

~ g_time -= 1
~ g_morale -= 30

-> EVENT_END



=== function check_for_maze_end ===

{
    - TURNS_SINCE(-> E_Environment_IronObelisk) >= 15:
        ~ got_lost = true
}
