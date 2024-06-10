// Includes

    // Demos

        INCLUDE Demos/Effects.ink

    // Outpost
     
        INCLUDE Outpost/Outpost_Barto.ink
        INCLUDE Outpost/Outpost_Jackie.ink
        INCLUDE Outpost/Outpost_Kleber.ink
        INCLUDE Outpost/Outpost_Capybarman.ink

    // Events

        // Mission

            // Rookie

                INCLUDE Events/Mission/Rookie/Mission_Rookie_TheCursedCachaca.ink
                INCLUDE Events/Mission/Rookie/Mission_Rookie_CrystalsOfBygoneTimes.ink
                INCLUDE Events/Mission/Rookie/Mission_Rookie_GraspOfTheOctornado.ink
                INCLUDE Events/Mission/Rookie/Mission_Rookie_AccordionInTheNight.ink
                INCLUDE Events/Mission/Rookie/Mission_Rookie_TheMafagafoPassenger.ink

            // Intermediate

                INCLUDE Events/Mission/Intermediate/Mission_Intermediate_Name_1.ink
                INCLUDE Events/Mission/Intermediate/Mission_Intermediate_Name_2.ink
                INCLUDE Events/Mission/Intermediate/Mission_Intermediate_Name_3.ink
                INCLUDE Events/Mission/Intermediate/Mission_Intermediate_Name_4.ink
           
            // Expert

                //INCLUDE Events/Mission/Expert/Mission_Expert_Name_1.ink
                //INCLUDE Events/Mission/Expert/Mission_Expert_Name_2.ink
                //INCLUDE Events/Mission/Expert/Mission_Expert_Name_3.ink

            // Final

                INCLUDE Events/Mission/Final/Mission_Final_Name.ink

        // General

            // Crew

                //INCLUDE Events/General/Crew/Crew_LinceSpeedRace.ink
                INCLUDE Events/General/Crew/Crew_DeuRuim.ink
                //INCLUDE Events/General/Crew/Crew_RockyDetour.ink
                //INCLUDE Events/General/Crew/Crew_PoolWithJackie.ink
                INCLUDE Events/General/Crew/Crew_BartosBananaPastels.ink
                INCLUDE Events/General/Crew/Crew_WhatsForDinner.ink
                // INCLUDE Events/General/Crew/Crew_KlebersNumberGame.ink
                //INCLUDE Events/General/Crew/Crew_TaxiStationTroubles.ink
                //INCLUDE Events/General/Crew/Crew_Name_9.ink
                //INCLUDE Events/General/Crew/Crew_Name_10.ink
                //INCLUDE Events/General/Crew/Crew_Name_11.ink
                //INCLUDE Events/General/Crew/Crew_Name_12.ink
                //INCLUDE Events/General/Crew/Crew_Name_13.ink
                //INCLUDE Events/General/Crew/Crew_Name_14.ink
                //INCLUDE Events/General/Crew/Crew_Name_15.ink
                //INCLUDE Events/General/Crew/Crew_Name_16.ink
                //INCLUDE Events/General/Crew/Crew_Name_17.ink
                //INCLUDE Events/General/Crew/Crew_Name_18.ink
                //INCLUDE Events/General/Crew/Crew_Name_19.ink
                //INCLUDE Events/General/Crew/Crew_Name_20.ink
                //INCLUDE Events/General/Crew/Crew_Name_21.ink
                //INCLUDE Events/General/Crew/Crew_Name_22.ink
                //INCLUDE Events/General/Crew/Crew_Name_23.ink
                //INCLUDE Events/General/Crew/Crew_Name_24.ink

            // Environment

                //INCLUDE Events/General/Environment/Environment_HermitsHut.ink
                INCLUDE Events/General/Environment/Environment_ThroughTheThunderCloud.ink
                //INCLUDE Events/General/Environment/Environment_TropLizards.ink
                //INCLUDE Events/General/Environment/Environment_GodWhaleHunt.ink
                //INCLUDE Events/General/Environment/Environment_BotaFoodMarket.ink
                //INCLUDE Events/General/Environment/Environment_Name_6.ink
                //INCLUDE Events/General/Environment/Environment_Name_7.ink
                INCLUDE Events/General/Environment/Environment_MagicLizard.ink
                INCLUDE Events/General/Environment/Environment_FloatingTerrors.ink
                INCLUDE Events/General/Environment/Environment_GiantPirarucu.ink
                //INCLUDE Events/General/Environment/Environment_IronObelisk.ink
                INCLUDE Events/General/Environment/Environment_FavelaFestival.ink

            // Ship

                INCLUDE Events/General/Ship/Ship_RoadMerchant.ink
                //INCLUDE Events/General/Ship/Ship_ChamaleonicVulture.ink
                //INCLUDE Events/General/Ship/Ship_BrokenStorage.ink
                INCLUDE Events/General/Ship/Ship_Pelicannons.ink
                INCLUDE Events/General/Ship/Ship_DistressCall.ink
                //INCLUDE Events/General/Ship/Ship_StruckByRock.ink
                //INCLUDE Events/General/Ship/Ship_PotatoFuel.ink
                //INCLUDE Events/General/Ship/Ship_Name_8.ink
                //INCLUDE Events/General/Ship/Ship_Name_9.ink
                //INCLUDE Events/General/Ship/Ship_Name_10.ink
                //INCLUDE Events/General/Ship/Ship_Name_11.ink
                //INCLUDE Events/General/Ship/Ship_Name_12.ink
                //INCLUDE Events/General/Ship/Ship_Name_13.ink
                //INCLUDE Events/General/Ship/Ship_Name_14.ink
                //INCLUDE Events/General/Ship/Ship_Name_15.ink
                //INCLUDE Events/General/Ship/Ship_Name_16.ink
                //INCLUDE Events/General/Ship/Ship_Name_17.ink
                //INCLUDE Events/General/Ship/Ship_Name_18.ink
                //INCLUDE Events/General/Ship/Ship_Name_19.ink
                //INCLUDE Events/General/Ship/Ship_Name_20.ink
                //INCLUDE Events/General/Ship/Ship_Name_21.ink
                //INCLUDE Events/General/Ship/Ship_Name_22.ink
                //INCLUDE Events/General/Ship/Ship_Name_23.ink
                //INCLUDE Events/General/Ship/Ship_Name_24.ink

        // Backstory

            INCLUDE Events/General/Backstory/Backstory_Part1.ink
            INCLUDE Events/General/Backstory/Backstory_Part2.ink
            INCLUDE Events/General/Backstory/Backstory_Part3.ink

    // Various

        INCLUDE Various/Intro.ink
        INCLUDE Various/Demo.ink

// External functions

    EXTERNAL ChangeScreen(screenName, duration, interval)
    EXTERNAL SetNextEvent()
    EXTERNAL SetTestEvent()
    EXTERNAL SetTestMission()
    EXTERNAL EndMission()
    EXTERNAL EndOdyssey()
    EXTERNAL EnterDialogueComponent(componentName)
    EXTERNAL ExitDialogueComponent(componentName)
    EXTERNAL SetCurrentStitch(stitch)

    EXTERNAL Shake(component, intensity, duration)
    EXTERNAL Blink(component, intensity, duration, color)
    EXTERNAL Emotion(emotionType, color)
    EXTERNAL FadeTo(color, duration, interval)
    EXTERNAL ScreenFlash(color, duration)
    EXTERNAL PostProcess(name,fadein)
    EXTERNAL UniqueEffectActivate(name)
    EXTERNAL UniqueEffectDeactivate(name)

    EXTERNAL Die(cause)
    EXTERNAL AdvanceIntro()

    EXTERNAL PlayMusic(name)
    EXTERNAL StopMusic()
    EXTERNAL PlaySFX(name)
    EXTERNAL StopSFX(name)
    EXTERNAL PlayAmbience(name)
    EXTERNAL StopAmbience()

    EXTERNAL DayTransition(amountOfDaysToPass)

    EXTERNAL StartDemo()

    EXTERNAL WarnAllStats()
    EXTERNAL UnwarnAllStats()

    EXTERNAL CleanTextbox()

    EXTERNAL UnlockAchievement(nameid)
    EXTERNAL AdvanceAchievement(nameid, value)

    EXTERNAL Fine()
    EXTERNAL CompleteDelivery()

    EXTERNAL FlipBackground()
    EXTERNAL EldritchOverride()

    EXTERNAL SetToNight()
    EXTERNAL SetToDay()

    EXTERNAL ShipIn()
    EXTERNAL ShipOut()
    EXTERNAL ShipFixed()

// Variables

    // General Variables

        // Character

        VAR g_name = "Placeholder"
        VAR g_pronoun = ""

            // He
            // She
            // They 

        VAR g_family = ""

            // Miner
            // Scavenger
            // Mercenary

        VAR g_interest = ""
        
            // Engineering
            // Piloting
            // Foraging

        VAR g_ownership = ""

            // Gambler
            // Survivor
            // Apprentice

        // Stats

            VAR g_morale = 0
            VAR g_fuel = 0
            VAR g_supplies = 0
            VAR g_grana = 0
            VAR g_time = 0
            VAR g_globalDay = 1

        // Stat change per day

            VAR g_fuelChange = 5
            VAR g_suppliesChange = 5
            VAR g_moraleChange = 5
            VAR g_timeChange = 1

        // Initial Stats

            VAR g_initialMorale = 80
            VAR g_initialFuel = 80
            VAR g_initialSupplies = 80
            VAR g_initialGrana = 500

        // Stat change tiers

            VAR g_statChangeLow = 10
            VAR g_statChangeMid = 20
            VAR g_statChangeHigh = 30
            VAR g_statChangeShot = 5

        // Grana change tiers

            VAR g_granaChangeLow = 200
            VAR g_granaChangeMid = 500
            VAR g_granaChangeHigh = 1000

        // Affinity change tier

            VAR g_affinityChangeLow = 5
            VAR g_affinityChangeMid = 10
            VAR g_affinityChangeHigh = 20

        // To be assigned every mission differently

            VAR g_timeLimit = 0
            VAR g_location = ""
            VAR g_nextEvent = -> DEFAULT

        // Affinities Player

            VAR g_affinity_Kleber = 0
            VAR g_affinity_Barto = 0
            VAR g_affinity_Jackie = 0

        // Affinities Kleber

            VAR g_affinity_Kleber_Barto = 0
            VAR g_affinity_Kleber_Jackie = 0

        // Affinities Barto

            VAR g_affinity_Barto_Kleber = 0
            VAR g_affinity_Barto_Jackie = 0

        // Affinities Jackie

            VAR g_affinity_Jackie_Kleber = 0
            VAR g_affinity_Jackie_Barto = 0

        // Affinities Capybarman

            VAR g_affinity_Capybarman = 0

        // Caravan

            VAR g_license = ""
            VAR g_outcome = ""
            VAR g_missionsCleared = 0
            VAR g_lastMissionCleared = "Placeholder"

        // Rewards & Debt

            VAR g_reward_M1 = 4000
            VAR g_reward_M2 = 5500
            VAR g_reward_M3 = 7000
            VAR g_reward_M4 = 8500
            VAR g_debt = 20000

        // Deadlines

            VAR g_deadline_M1 = 8
            VAR g_deadline_M2 = 6
            VAR g_deadline_M3 = 3
            VAR g_deadline_M4 = 5
            VAR g_deadline_M5 = 3

        // Background

            VAR g_background = ""

        // Delivery Results

            VAR g_currentReward = 0
            VAR g_isFined = false 

        // Story Keypoints

            VAR kleberDebt = 5000
            VAR g_mafagafo_was_delivered = false
            VAR g_cursed_bottle_was_broken = false
            VAR g_stayed_at_refinery = false
            VAR g_ate_lunch_at_refinery = false
            VAR g_helped_horacio_escape = false
            VAR g_outran_azurian_pursuers = false

        // State of ship

            VAR g_shipOut = false

        // Debug

            VAR g_isTesting = false
            VAR g_testMode = ""

// Story Controls

    === DEFAULT ===
    
    This is the default knot, used for testing. If you are here, something went wrong.
    
    -> DONE

        // Transition Knots

            //////////////////////////////////////

                === TEST_EVENT ===

                ~ g_isTesting = true
                
                {DefaultMissionStart()} 
                
                ~ SetTestEvent()

                -> g_nextEvent

            /////////////////////////////////////

                === EVENT_END ===

                {
                    - g_isTesting == true && g_testMode == "Event":
                        -> END
                    - else:
                        ~ DayChange()
                        ~ SetNextEvent()

                        -> g_nextEvent
                }

            //////////////////////////////////////

                === MISSION_END ===

                ~ EndMission()
                ~ g_missionsCleared += 1

                -> END

            //////////////////////////////////////

                === ODYSSEY_END ===

                ~ EndOdyssey()
                { ChangeScreen("OutpostHangar", 2, 2) }

                -> END



// Game Functions

    === function DayChange ===
    
    ~g_supplies -= g_suppliesChange * g_timeChange
    ~g_fuel -= g_fuelChange * g_timeChange
    ~g_morale -= g_moraleChange * g_timeChange
    ~g_time -= g_timeChange

    ~ DayTransition(g_timeChange)

    ~g_timeChange = 1

    {
        - g_time < 0:
            ~ Fine()
            ~ g_isFined = true
    }

    === function DefaultMissionStart ===

    ~ g_morale += 50
    ~ g_fuel += 100
    ~ g_supplies += 100
    ~ g_grana += 500
    ~ g_timeLimit = 12
    ~ g_time = 10

    === function CheckCabinet ===

    {
        - g_mafagafo_was_delivered && g_stayed_at_refinery && (g_helped_horacio_escape && g_outran_azurian_pursuers):
            {UnlockAchievement("CABINET_OF_CURIOSITIES")}
    }

// Fallback Functions 

== function SetNextEvent ==   
~ return 1

== function SetTestEvent ==
~ return 1

== function SetTestMission ==
~ return 1

== function EndMission ==
~ return 1

== function EnterDialogueComponent(componentName) ==
~ return 1

== function ExitDialogueComponent(componentName) ==
~ return 1

== function Emotion(emotionType, color) ==
~ return 1

== function Shake(component, intensity, duration) ==
~ return 1

== function Blink(component, intensity, duration, color) ==
~ return 1

== function FadeTo(color, duration, interval) ==
~ return 1

== function ScreenFlash(color, duration) ==
~ return 1

== function PostProcess(name,fadein) ==
~ return 1

== function UniqueEffectActivate(name) == 
~ return 1

== function UniqueEffectDeactivate(name) == 
~ return 1

== function ShipIn == 
~ return 1

== function ShipOut == 
~ return 1

// Emotion Guidelines

/*Shine - Interesse/Animação - Amarelo - {Emotion("Shine", "ffb71b")}

Heart - Amor - Vermelho - {Emotion("Heart", "ea2929")}

Question Mark - Dúvida - Rosa - {Emotion("Question", "fd97c9")}

Explosion - Surpresa, alegria - Azul piscina/Turquesa - {Emotion("Explosion", "39f2d6")}, Branco - {Emotion("Explosion", "FFFFFF")}

WaveIn - Tristeza, Medo - Azul - {Emotion("WaveIn", "0a4de8")}, Cinza - {Emotion("WaveIn", "2c2b30")}

WaveOut - Raiva/Frustração - Vermelho - {Emotion("WaveOut", "ea2929")}

Spiral - Nojo/Tontura - Verde - {Emotion("Spiral", "53e66b")}*/