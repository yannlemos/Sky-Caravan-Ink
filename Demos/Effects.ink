===Demo_Effects===

#char:Jackie_neutral_neutral|L 
Hey there, captain! I'm here to show you how to use effects while writing your inks.

#char:Kleber_neutral_happy|R
We're really smashing the fourth wall over here, huh?

#char:Jackie_neutral_angry|L 
Kleber, this is important, pay attention you too!

#char:Kleber_neutral_sad|R
Relax, I'm just here to enjoy the show.

#char:Jackie_neutral_neutral|L 
Ok then, let's go:

#char:Jackie_neutral_neutral|L 
An Effect is a Unity function that you call inside Ink. Effects can be separated in two categories: Component Effects and Screen Effects.

#char:Jackie_neutral_happy|L 
Component Effects are triggered inside dialogue components. This means the Textbox, Emoji Stand and even us, Big Faces! The effects are the <b>Shake</b>, <b>Blink</b> and <b>Emotion</b>.

#char:Kleber_sad_sad|R
What, that's all we are? Just a bunch of rect transforms named "big faces"? My face ain't even big, I'm a skinny dude!

#char:Jackie_neutral_angry|L 
Control yourself, man! 

#char:Kleber_angry_angry|R
Ouch! {Shake("Big Face", 2, -1)} {Blink("Big Face", 1, -1, "white")}

#char:Jackie_neutral_happy|L 
Oh, great timing for a punch! That was a Component Effect. Take a look at the ink file so you can see how it is being called.

#char:Jackie_happy_happy|L 
We called two of the available Component Effects at the same time: Shake and Blink. Shake makes a little tremor in the component, while Blink changes the color of the component really fast with the color you wish.

#char:Jackie_neutral_neutral|L 
Here's some examples: that was the Stat Panel blinking red. {Blink("Stat Panel", 0.8, 0.3, "red")}

#char:Jackie_neutral_neutral|L 
Here's the Grana Counter blinking white, slower this time. {Blink("Grana Counter", 1, 0.5, "white")}

#char:Jackie_neutral_neutral|L 
Here's me shaking real hard. {Shake("Big Face", 10, -1)}

#char:Jackie_neutral_neutral|L 
Here's the Textbox shaking a little bit. {Shake("Textbox", 3, 1)}

#char:Jackie_neutral_happy|L 
Now for the Emotions: Kleber is already kind of pissed, so let's hear him out.

#char:Kleber_sad_sad|R
You could have punched with your fleshy hand. Metal hurts like hell. {Emotion("Inner", "blue")}

#char:Jackie_happy_happy|L 
Hehe, sorry, it was just the perfect example! {Emotion("Outer", "yellow")}

#char:Jackie_neutral_happy|L 
Those were the Emotions! As you could see, there were two types: Inner and Outer. Inner is the downer one and Outer is the lively one. Both can be called in specific colors. Important: they can only be called in Big Faces!

#char:Kleber_angry_angry|R
You can even make weird combinations and create interesting stuff. This is me plotting revenge. {Emotion("Inner", "red")}

#char:Jackie_happy_happy|L 
You can also trigger Shake and Blink in all components at the same time. Take a look!

#char:Jackie_happy_happy|L 
Kaboom! {Blink("All", 1, -1, "White")} {Shake("All", 5, -1)}

#char:Kleber_neutral_neutral|R
Great for ship wide effects. If I ever crash the ship, please use this effect!

#char:Jackie_neutral_happy|L 
You're so weird. Well, now for the Screen Effects.

#char:Jackie_neutral_neutral|L 
Screen Effects are triggered in the whole screen, and they hide the player's view of the HUD. That's why they always play first and the line only advances when the effect is over.

#char:Jackie_neutral_neutral|L 
We have the FadeTo, which created a fade out with the given duration, color and time for the screen to stay put, and also the <b>ScreenFlash</b>, which is a really fast transition, great for impacts.

~ FadeTo("black", 1, 1)

#char:Jackie_neutral_neutral|L 
That was a FadeTo. As you see, it freezes the gameplay. It's good when you want to show changes of environment or time without necessarily changing the day.

~ ScreenFlash("white", -1)

#char:Jackie_neutral_neutral|L 
That was a ScreenFlash. It's fast. You can also change colors.

~ ScreenFlash("red", -1)

#char:Kleber_neutral_happy|R
This might be good for when someone is hurt.

#char:Jackie_neutral_neutral|L 
To wrap it up: Component Effects are Blink, Shake and Emotion. Blink and Shake can be called in any component, while Emotion only in Big Faces. They can all be called at the same time. 

#char:Jackie_neutral_neutral|L 
Screen Effects are FadeTo and ScreenFlash. When they are called, they stop the line reading, and cannot be called at the same time.

#char:Jackie_neutral_neutral|L 
Well, the system is very flexible. So read the documentation, and be creative! We're excited to see the effects you'll come up with and in which situations.

#char:Kleber_happy_happy|R
Yeah, maybe I could punch Jackie next time. Call it good old justice.

#char:Kleber_angry_angry|R
Goddamit! {Shake("Big Face", 1, -1)} {Blink("Big Face", 1, -1, "white")}

#char:Jackie_happy_happy|L 
You just asked for it this time and you know it.

-> END