=== E_Emergency_Morale_ConvinceOrLeave ===

/*TO DO PRO FUTURO: os emergencies de moral são os que mais pedem variância pra fazer sentido, já que a morale é muito abstrata. Por exemplo, 
testar qual dos personagens vc tem menor afinidade, para que esse seja o personagem que vai te abandonar numa missão de morale 
e forçar a equipe a desistir da missão*/

#emergency:morale

#char:--
On the next day, you stop by an outpost to refill your tank and snatch some supplies.

#char:--
Jackie and Kleber are the first to exit the ship, but Barto is still onboard.

#char:--
Your cook might not be the most talkative of all, but the silence this morning is worrisome.

#char:--
You walk towards the kitchen to find Barto staring blankly at the wall. 

#char:Barto_sad_sad|L
Sometimes I wonder if I was made for the caravan life. 

#char:Barto_sad_sad|L
We keep getting in trouble all the time.

#char:Barto_neutral_neutral|L
I have to be honest, Captain. 

#char:Barto_angry_angry|L
I don't really agree with the way you've been handling things. {Emotion("Outer", "red")}

+ [FLEX>>]

#char:--
You tell Barto not to worry. 

#char:--
You have a cool ship, a competent crew and clients to serve. 

#char:--
<i>What could go wrong?</i>

#char:Barto_neutral_angry|L
You sound confident, Captain.

#char:Barto_angry_neutral|L
<i>Way too confident.</i> {Emotion("Outer", "red")}

#char:--
Barto leaves the kitchen, disappointment in his eyes.

#char:--
He locks himself in his chamber.

#char:--
All you can hear is the noise of things moving.

#char:--
Half an hour later, the door opens.

#char:--
You can't help but notice the suitcase in his hand.

#char:Barto_neutral_sad|L
I apologize, Captain. But I must leave.

#char:Barto_neutral_sad|L
I just called the guild. They will arrive soon.

#char:Barto_neutral_sad|L
Seems like that life wasn't for me, after all.

#char:Barto_sad_sad|L
<i> Farewell. </i> {Emotion("Inner", "blue")}

~ g_outcome = "You lost your cook"

-> ODYSSEY_END

+ [MOTIVATE>>]
 
#char:--
You apologize to Barto, but say you're confident things will get better from now on.

#char:--
After all, you have the best cook of the skies by your side. 

#char:Barto_neutral_sad|L
I appreciate the recognition.

#char:Barto_neutral_angry|L
Still, you better rethink some of your actions on behalf of the crew. 

#char:Barto_angry_angry|L
You're our captain. We trust you to make things right. {Emotion("Outer", "red")}

#char:--
Kleber and Jackie come right after with the extra fuel and supplies.

#char:--
That night, you find yourself having a bit of trouble falling asleep. 

~ g_fuel += 20
~ g_supplies += 20
~ g_morale += 50

-> EVENT_END
