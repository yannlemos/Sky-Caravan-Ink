===E_Backstory_Part3===

#scope:Backstory
#location:Skyways
#intensity:High

//Ao chegar no Capy-Bar depois da Crystals of Bygone Times, o jogador avança para o próximo mês.
//Ocorre um fade mais longo, seguido do som de chamada da Caravan Network.
//A cena abre com você recebendo uma chamada do Marimbondo no Capy-Bar. Ele te cobra a Grana.

#char:--
While you're on the way to the Capy-Bar, you receive a transmission request.

#char:--
<color=green1><i>The caller's location is unknown.</i></color> {PlaySFX("Mistery3")} {PlayMusic("Marimbondo")}

#char:--
Time to face Marimbondo one last time.

#char:Marimbondo_neutral_hooded_hologram|L
Your time's run out, brat. {PlaySFX("Hologram")} {Blink("Big Face", 1, 0.5, "white")}

#char:Marimbondo_neutral_hooded_hologram|L
Now. Do you have my Grana in hand?

{
    - g_grana >= g_debt:
        //Marimbondo te "parabeniza" por ter conseguido a Grana. Esse caminho assegura que nenhum crewmate irá morrer.
        #char:--
        You do. {g_debt} Grana, earned through months of caravan deliveries.

        #char:Marimbondo_neutral_hooded_hologram|L
        See? I bet that's more Grana than you've ever seen in Surface.

        #char:Marimbondo_neutral_hooded_hologram|L
        So it's only natural that <i>I</i> have it, since <i>I</i> brought you to the Skies.

        #char:Marimbondo_neutral_hooded_hologram|L
        In fact, I think it's time for me to let you make a trip home! {Emotion("Shine", "ffb71b")}

        #char:Marimbondo_neutral_hooded_hologram|L
        You get to pay your debt, see your family again... and do me a<i>little favor</i>, of course.

    -> final_mission_briefing

    - else:
        //Marimbondo te dá um esporro por não ter conseguido a Grana. Esse caminho abre chance para que um dos crewmates morra.
        + [TALK¬Tell the truth.>>]
            #char:--
            You don't. These four months weren't enough to gather {g_debt} Grana.

            #char:Marimbondo_neutral_hooded_hologram|L
            Really, now? <i>What a shame.</i>
            
            #char:Marimbondo_neutral_hooded_hologram|L
            Should've worked harder. Like your <>

            {
                - g_family == "Miner":
                    miner family...

                - g_family == "Scavenger":
                    scavenger family...

                - g_family == "Mercenary":
                    mercenary family...
            }

            #char:Marimbondo_neutral_hooded_hologram|L
            Tell you what... I'm willing to liquidate the loan if you're willing to do me a <i>little favor</i>.

        -> final_mission_briefing

        + (lie_to_marimbondo) [LIE¬Pretend you have the money.>>]
            #char:--
            You don't. But Marimbondo doesn't have to know that.

            #char:Marimbondo_neutral_hooded_hologram|L
            <i>Is that so?</i> 
            
            #char:Marimbondo_neutral_hooded_hologram|L
            Well, then you shouldn't have a problem coming to Surface to pay me, should you?

            #char:Marimbondo_neutral_hooded_hologram|L
            Speaking of that, I need you to do me a <i>little favor</i>.

        -> final_mission_briefing
}



= final_mission_briefing

//Ele pede pra que você entregue a Grana pra ele na superfície, além de fazer um último "servicinho" pra ele:
//a carga é a mesma que você viu na caravana que viu cair quando criança: Amago, a substância usada para "curar" a superfície ao redor (deixando o solo fértil).
//Você explica o que ela é para os crewmembers.

#char:Marimbondo_neutral_hooded_hologram|L
See, I've got a delivery of refined Red Oil straight from the source.

{
    - g_grana >= g_debt:
        #char:Marimbondo_neutral_hooded_hologram|L
        That's where you come in.
        
        #char:Marimbondo_neutral_hooded_hologram|L
        On paper, you'll just be making one more delivery.

    - else:
        {
            - lie_to_marimbondo:
                #char:Marimbondo_neutral_hooded_hologram|L
                One more delivery, and I'll overlook your lack of Grana.

                #char:Marimbondo_neutral_hooded_hologram|L
                ...<waitfor=0.5>And your little attempt at a lie.

            - else:
                #char:Marimbondo_neutral_hooded_hologram|L
                I'd say the cost of those barrels would pay the rest of your debt.
        }
}

#char:Marimbondo_neutral_hooded_hologram|L
All you have to do is bring the cargo to the <color=orange><b>Crumbling Plains</b></color>. Easy, right?

+ [YES¬You're doing it.>>]
    #char:--
    This is your chance to go back to Surface and rescue your family.

    #char:Marimbondo_neutral_hooded_hologram|L
    That's right. You're here because of your family, aren't you?

+ [NO¬You won't do it.>>]
    #char:--
    No. You don't want to put yourself or your crew in danger once again.

    #char:Marimbondo_neutral_hooded_hologram|L
    Did I word it like you had a choice, <shake>brat!?</shake> {Shake("Big Face", 2, 1)}

    #char:Marimbondo_neutral_hooded_hologram|L
    I've taken down way bigger caravan ships for less than that, you know?

-   #char:Marimbondo_neutral_hooded_hologram|L
    Now, I trust you know the place? Close to where you grew up?

    #char:--
    You do. You have no clue how to feel about that.

    #char:--
    But what's worse, you feel like it's another ploy from Marimbondo.

    #char:--
    Yet you don't have a choice.

    #char:Marimbondo_neutral_hooded_hologram|L
    You'll be receiving my request from the capybaras soon enough.

    #char:Marimbondo_neutral_hooded_hologram|L
    I made sure to specify I wanted your little crew to do it. {StopMusic()}

    #char:Marimbondo_neutral_hooded_hologram|L
    Better not screw up now, brat. See you in three days.

    {Blink("Big Face", 1, 0.5, "white")} 

    #char:--
    The smuggler ends the transmission.

    #char:Jackie_fear_happy|L
    A delivery to Surface!? In three days!? {Emotion("WaveIn", "0a4de8")}

    #char:Kleber_fear_neutral|R
    This whole thing reeks of ambush! {Emotion("WaveIn", "0a4de8")}

    #char:Kleber_fear_sad|R
    Our only safety net is that if they shoot us down, they'd destroy the cargo too.

    #char:Barto_fear_sad|L
    But what happens once we give them this Red Oil? {Emotion("WaveIn", "0a4de8")}
    
    #char:Kleber_sad_neutral|R
    Let me guess: they sell the oil at several times the Skies' price in Surface?

    #char:Jackie_sad_angry|L
    Makes sense, unfortunately. Probably easier for him to let us handle all the risk, too.

    #char:--
    You shudder. You remember seeing downed Skyships as a kid.

    {
        - g_family == "Miner":
            #char:--
            You had just left a dig with your family when you saw your first one.

        - g_family == "Scavenger":
            #char:--
            You once had to abandon a foraging expedition because one crashed nearby.

        - g_family == "Mercenary":
            #char:--
            Your family once helped a Surface merchant recover stolen wares. Fought a whole Raider crew.
    }

    #char:--
    It's not unusual for raiders to take down caravans for their cargo. Especially Red Oil.

    //AFFINITY PASS:

    { 
        - g_affinity_Jackie >= -10:

            #char:Jackie_neutral_angry|L
            So to recap, the plan is to make the delivery, pay the debt and get your family, {g_name}?

        - else:

            #char:Jackie_neutral_angry|L
            So to recap, the plan is to make the delivery, pay the debt and get {g_name}'s family.
    
    }

    #char:Kleber_surprised_sad|R
    I guess, but things probably won't be easy...

    #char:--
    You better be well prepared.

    #char:--
    But it will be worth it.
    
    #char:--
    After all, when you finally come back to the Skies... it will be alongside your family.

-> MISSION_END