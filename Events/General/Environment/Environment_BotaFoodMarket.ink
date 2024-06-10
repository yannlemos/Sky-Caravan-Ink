===E_Environment_BotaFoodMarket===

#scope: General
#category: Environment
#tier: Rookie, Intermediate, Expert
#intensity: Medium

/*Synopsis: Barto é convidado para expôr uma criação culinária em uma feira de degustação no "Baixo Botafogo".
Barto pede que o crew prove três opções de prato para ajudá-lo a escolher qual será usado na feira.
Dependendo de qual prato escolher para vender, é possível que ganhe mais ou menos dinheiro, ao mesmo tempo que gasta mais ou menos suprimentos.*/

#char:--
A large advertisement aircraft moves past your ship, with its huge speakers announcing a food fair.  

~ ScreenFlash("white", -1)

#char:--
You hear a noise coming from the kitchen and notice Barto approaching you. 

#char:--
Seeing the cook with such a bright face is definitely not usual. 

#char:Barto_happy_neutral|L 
Captain, I believe we are near Bota Food Market. Their annual fair is always thriving with customers. 

#char:Barto_happy_sad|L
What if we stopped by briefly this evening? {Emotion("Outer", "yellow")}

{  
    - E_Mission_Rookie_GraspOfTheOctornado:

        #char:Kleber_neutral_sad|R 
        Come on, shouldn't we be focusing on the ore delivery? Our deadline is a bit tight, you know! {Emotion("Inner", "black")}

        #char:Barto_angry_angry|L
        Stop being a fuss, Kleber. You'll see it's worth to go.

    - else:

        #char:Jackie_happy_happy|R
        Wait wait wait, you're talking about Bota Food over there!? {Shake("Big Face", 0.5, 1)}
        
        #char:Jackie_happy_happy|R
        They have the <wave>best Açaí of the skies</wave>! {Emotion("Outer", "yellow")}
        
        #char:Jackie_happy_happy|R
        I used to go there ALL the time with grandma as a kid! 
        
        #char:Jackie_happy_neutral|R
        Plus, we totally deserve a rest, right? 
}

+ [NO>>]

    #log: Denied Barto the chance to go to Bota Food Market.

    #char:--
    You tell him you should focus on the mission at hand.

    { 
        - E_Mission_Rookie_GraspOfTheOctornado:

            ~ g_affinity_Kleber += 10
            ~ g_affinity_Barto -= 10

        - else:

            ~ g_affinity_Barto -= 10

    }

    #char:Barto_angry_angry|L 
    Making your chef happy is not a priority, eh? I'll remember that while cooking your dinner tonight. {Emotion("Inner", "purple")}

-> EVENT_END

+ [YES>>]

    #log: Taste-tested Barto's food for the Market.

    #char:--
    You agree with Barto's idea — the team could use a little rest.

    #char:Barto_neutral_sad|L
    I appreciate your consideration, Captain.

    ~ ScreenFlash("white", -1)

    #char:Barto_neutral_sad|L|R
    I was actually thinking we could stay there for a bit to sell some of my delicacies.

    #char:Barto_happy_sad|L
    I can assure you the visitors would be swept of their feet with my <b>stupendous creations</b>! {Shake("Big Face", 0.5, 1)}

    { 
        - E_Mission_Rookie_GraspOfTheOctornado:

            ~ g_affinity_Kleber -= 10
            ~ g_affinity_Barto += 10

        - else:

            ~ g_affinity_Barto += 10
    }

+ [QUESTION>>]

    #char:--
    You ask why you should stop by.

    #char:Barto_neutral_sad|L
    There are a lot of exhibitors in the fair. I could set up a small stand to to sell some of my delicacies.

    #char:Barto_neutral_sad|L
    The process is fairly easy if you are a member of the Mandioca Cooks Guild like me. 
    
    #char:Barto_happy_sad|L
    I just have to sign up at the entrance. I can assure you the visitors would be swept off their feet with my stupendous creations!

    ++ [NO>>]

        #log: Denied Barto the chance to go to Bota Food Market.

        #char:--
        You tell him you should focus on the mission at hand.

        { 
            - E_Mission_Rookie_GraspOfTheOctornado:

                ~ g_affinity_Kleber += 10
                ~ g_affinity_Barto -= 10

            - else:

                ~ g_affinity_Barto -= 10
        }

        #char:Barto_angry_angry|L
        Making your chef happy is not a priority, eh? I'll remember that while cooking your dinner tonight. {Emotion("Inner", "purple")}

    -> EVENT_END

    ++ [YES>>]

        #log: Taste-tested Barto's food for the Market.

        #char:--
        You agree to visit the fair — the team could use a little rest.

        #char:Barto_neutral_sad|L
        I appreciate your consideration, Captain.

        { 
            - E_Mission_Rookie_GraspOfTheOctornado:

                ~ g_affinity_Kleber -= 10
                ~ g_affinity_Barto += 10

            - else:

                ~ g_affinity_Barto += 10
        }

- (bota_food_feast) #char:Barto_neutral_sad
    Let me go back to the kitchen for a minute. I have a few ideas for you to try.

    ~ FadeTo("black", 1, 1)

    #char:--
    After a while, Barto comes back with three dishes.

    #char:Barto_happy_neutral|L
    You now have the privilege to taste the food and help me decide which one to sell.

    #char:Jackie_happy_neutral|R
    Alright, Chef. What do you have for us?

    #char:Barto_happy_neutral|L
    First is Coxinha, filled with shredded pelican meat and delicious cream cheese. 

    #char:Barto_happy_angry|L
    The second option is my rich black bean stew, Feijoada. I added some gnu meat and orange slices for a twist.

    #char:Barto_happy_sad|L
    And here's Shrimp Bobó, made with the finest purple sea prawns and cassava cream.

    #char:Kleber_happy_neutral|R
    Ok, ok, enough talking. My stomach is growling! {Shake("Big Face", 0.5, 1)} -> tasting_food



= tasting_food

* [COXINHA>>]

    #char:--
    You snatch a Coxinha.

    #char:--
    The deep fried snack's filling tastes amazing. 
    
    #char:--
    You recall Coxinhas to be popular at children's birthday celebrations, although it's just a simple snack to sell instead of a full meal.
    
-> tasting_food

* [FEIJOADA>>]

    #char:--
    You take a spoonful of Feijoada.

    #char:--
    Barto's feijoada is definitely appetizing. 
    
    #char:--
    The unusual combination of beans, gnu meat and orange slices is perfect for family gatherings, although it might be a bit heavy.

-> tasting_food


* [SHRIMP_BOBO>>]

    #char:--
    You grab a plate of Shrimp Bobó.

    #char:--
    The flavorful dish is perfectly seasoned and its shrimps are quite huge, but it might be a bit too spicy for some people.

-> tasting_food

* ->
    {
        - gotPelicannonMeat == true:
            #char:Kleber_happy_happy|L
            Can't believe you found a new way to use Pelicannon meat, chef! {Emotion("Outer", "yellow")}

            #char:Kleber_happy_neutral|L
            Guess you can afford to not cook by the book, huh?

            #char:Barto_neutral_angry|R
            Of course. Not to mention I have the <i>obligation</i> to use ingredients to the fullest! {Shake("Big Face", 0.5, 1)}
        
        - else:
            #char:Kleber_happy_neutral|L
            Geez, Barto, you can actually cook some odd stuff, not gonna lie! {Emotion("Outer", "yellow")}

            #char:--
            Barto rolls his eyes.

            #char:Barto_angry_sad|R
            What a shame... You're not worth the passion I put into each of the meals anyway.
    }

    #char:Jackie_happy_happy|L
    I gotta admit, Chef. You might be quite a grumpy guy, but there's no denying you make pretty nice dishes! {Emotion("Outer", "yellow")}

    #char:Barto_neutral_sad|R
    Was that supposed to be a compliment, Miss? Well, at least I'm glad someone recognizes my exceptional skills in this place.

    #char:--
    Barto turns to you.

    #char:Barto_happy_angry|R
    You're too quiet, Captain. Guess my dishes took your breath away, uh?

    #char:Barto_happy_angry|R
    So, which one do you suggest we sell?

-> suggestions



= suggestions
    
+ [COXINHA>M_S_G>]

    #char:--
    You suggest selling Chicken Coxinha.

    #char:--
    It seems to be the safer choice. Might earn you less money per sale, but it's easier to make. 
    
    #char:Barto_neutral_neutral|R
    Personally, I have more fun making the other dishes, but this is a fair, not a restaurant.

    #char:Barto_neutral_angry|R
    I think your choice makes sense, captain.

    #char:--
    With that choice settled, you go to the fair.

    ~ FadeTo("black", 1, 1)

->choose_coxinha

+ [FEIJOADA>M_S_G>]

    #char:--
    You suggest selling Feijoada.

    #char:--
    It's not that simple of a dish, but it could definitely be sold for a good price. 

    #char:Barto_neutral_neutral|R
    It's not that easy to make, but it's hard to not find it filling.

    #char:--
    With that choice settled, you go to the fair.

    ~ FadeTo("black", 1, 1)
        
-> choose_feijoada

+ [SHRIMP_BOBO>M_S_G>]

    #char:--
    You suggest selling Shrimp Bobó.

    #char:--
    You go with the robust cream. It takes a bit more ingredients to make, but you can easily charge a higher price. 

    #char:Barto_neutral_neutral|R
    Ah, your taste is indeed refined, Captain! A dish like this is sure to attract many curious customers! {Shake("Big Face", 0.5, 1)}

    #char:--
    With that choice settled, you go to the fair.

    ~ FadeTo("black", 1, 1)
        
-> choose_bobo



= choose_coxinha

#log: Got run over by 50 children.
    
#char:--
The place is booming.

#char:--
As soon as Barto sets his coxinha stall, a flock of children come running.

#char:--
You run out of food in less than an hour. 

#char:Kleber_happy_sad|L
We sold <wave>EVERYTHING</wave>? Gosh, that was some easy cash! I wish this event happened every week! {Shake("Big Face", 0.5, 1)}

#char:Kleber_happy_sad|L
Guess our cook is actually decent, huh?

#char:Barto_happy_angry|R
So you've finally coming to accept the truth? Great.

#char:Barto_happy_angry|R
Still, better step up the compliments if you want me to keep cooking for you, sir... {Emotion("Outer", "yellow")}

~ g_supplies -= 10
~ g_morale += 20
~ g_grana += 300

-> EVENT_END



= choose_feijoada

#log: Sold only some of the Feijoada and took the leftovers back.

#char:--
The place is booming.

#char:--
Barto starts setting his feijoada stall.

#char:--
You manage to sell a couple of bowls, but not as much as planned.

#char:Jackie_sad_neutral|L
Well, don't get me wrong, Barto...

#char:Jackie_sad_neutral|L
Your feijoada tastes amazing, but I guess such a heavy dish is not that good of a pick for hot summer days.

#char:Barto_sad_sad|R
This is honestly embarrassing. I should've known better... {Emotion("Inner", "blue")}

#char:Kleber_happy_happy|L
On the bright side, I guess we know what we're eating tonight, huh? {Emotion("Outer", "yellow")}

~ g_supplies -= 30
~ g_morale -= 20
~ g_grana += 50

-> EVENT_END 



= choose_bobo

#log: Sold a lot of Shrimp Bobó.

#char:--
The place is booming.

#char:--
Barto's Bobó was a sellout!

#char:Kleber_happy_neutral|L
How did you manage to get purple sea prawns? No wonder it was a success! {Emotion("Outer", "yellow")}

#char:Barto_happy_sad|R
A chef has their secrets.

#char:Kleber_happy_sad|L
Guess our cook is actually decent, huh?

#char:Barto_happy_angry|R
So you've finally coming to accept the truth? Great.

#char:Barto_happy_angry|R
Still, better step up the compliments if you want me to keep cooking for you, sir... {Emotion("Outer", "yellow")}

~ g_supplies -= 50
~ g_morale += 20
~ g_grana += 500
    
-> EVENT_END 