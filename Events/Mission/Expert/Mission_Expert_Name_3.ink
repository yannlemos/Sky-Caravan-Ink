===E_mission_expert_name_3===

#location: Skyways
#tier: Expert
#scope: Mission

~ temp storyDirection = -> part1

{
    - part4 > 0:
        ~ storyDirection = -> part5
    - part3 > 0:
        ~ storyDirection = -> part4
    - part2 > 0:
        ~ storyDirection = -> part3
    - part1 > 0:
        ~ storyDirection = -> part2
}

-> storyDirection

= part1

{DefaultMissionStart()}

This is part 1 of Expert misson 3.

This is the second line of this event. After this line, the event will end.

-> EVENT_END

= part2

This is part 2 of Expert misson 3.

This is the second line of this event. After this line, the event will end.

-> EVENT_END

= part3

This is part 3 of Expert misson 3.

This is the second line of this event. After this line, the event will end.

-> EVENT_END

= part4

This is part 4 of Expert misson 3.

This is the second line of this event. After this line, the event will end.

-> EVENT_END

= part5

This is part 5 of Expert misson 3.

This is the second line of this event. After this line, the event will end. 

-> MISSION_END