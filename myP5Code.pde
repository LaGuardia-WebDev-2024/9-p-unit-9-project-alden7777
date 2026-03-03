setup = function() {
    size(500, 400);
    frameRate(15)
};
var Slot1 = round(random(3))
var Slot2 = round(random(3))
var Slot3 = round(random(3))
var cashX = random(400)
var cashY = random(400)
var clickCounter = 0
Slot1=1
Slot2=1
Slot3=1
var Money = 2000000
var KiwiCounter=0
var MelonCounter=0
var BananaCounter=0
var AppleCounter=0
var LemonCounter=0
draw = function(){
var LGamb = color(1,1,1)
var KiwiColor = color(159, 240, 29)
var MelonColor = color(157, 240, 29)
var BananaColor = color(152, 240, 29)
var AppleColor = color(149, 240, 29)
var LemonColor = color(146, 240, 29)
var LetsGamble = color(0,255,0)
var NoThanks = color(255,0,0)
var knobRed = color(200,0,0);
var collect = color(10,100,0);
var counter = 0
var mousePosition = get(mouseX, mouseY);
var collectSmall = color(11,100,0)
  background(100,100,100);


if(Slot1==Slot2 && Slot1==Slot3){ 
  stroke(255,255,255)
  rect(80,40,240,70)
  fill(255,255,255)
  textSize(30)
  text("YOU WIN!",130,68)
  text("JACKPOT!",130,98)
  textSize(12)
  text("PRESS HERE->", 6, 344)
  
  fill(collect)
  
}
else{
  fill(0,0,0)
  
}

stroke(0,0,0)
rect(100,320,200,40);
textSize(30)
fill(0,0,0)
text("$",7,30)
text(Money, 25,30)

  fill(200,200,200)
  strokeWeight(4)
 rect(120,180,30,100);//support
 rect(250,180,30,100);//support
 rect(100,140,200,40);//top rectangle
 if(mousePressed && mousePosition==knobRed && Money>0 || mousePressed && mousePosition==collect && Money>0){
   rect(319,260,11,100);//handle
 fill(200,0,0)
  ellipse(325,360,30,30);//knob
 counter=counter+5
  }
else{

 rect(319,160,11,100);//handle
 fill(200,0,0)
  ellipse(325,160,30,30);//knob
};


fill(200,200,200)
 rect(300,240,30,20);//handle base
 rect(100,200,200,100);//bottom rect
 rect(110,210,50,80);//slot 1
 rect(175,210,50,80);//slot 2
 rect(240,210,50,80);//slot 3
 
  fill(0,0,0)
 textSize(25) 
 textFont(createFont('Courier New'))
text("SLOT MACHINE", 108,167);
  if(mousePressed && mousePosition==knobRed && Money>0){
    Slot1 = round(random(3))
    Slot2 = round(random(3))
    Slot3 = round(random(3))
    Money--

  };
 fill(0,0,0)
    textSize(40)
   text(Slot1,120,260)
   text(Slot2,188,260)
   text(Slot3,253,260);
//win conditions
if(mousePosition==collect && mousePressed){
Money=Money+70+counter
    Slot1 = round(random(3))
    Slot2 = round(random(3))
    Slot3 = round(random(3))

};
fill(0,0,0)
textSize(30)
text("COLLECT$$",118,350);
if(Slot1==Slot2 && Slot1==Slot3){
 fill(0,0,100)
  ellipse(325,160,30,30)
};

//PRIZES
fill(200,200,200)
rect(380,70,110,250)
fill(0,0,0)
textSize(20)
text("PRIZES",402,88)

//KIWI PRIZE
text("🥝", 385, 120)
fill(159, 240, 29)
strokeWeight(1)
rect(419,105,63,16)
fill(0,0,0)
text("$25", 419, 120)
textSize(25)
text("🥝",5,90)
text(KiwiCounter,44,90)
textSize(17)
text("x",35,88)

//WATERMELON
textSize(20)
text("🍉", 385, 160)
fill(157, 240, 29)
strokeWeight(1)
rect(419,145,63,16)
fill(0,0,0)
text("$100", 419, 160)
textSize(25)
text("🍉",3,140)
text(MelonCounter,44,140)
textSize(17)
text("x",35,138)

//BANANA
textSize(20)
text("🍌", 385, 200)
fill(152, 240, 29)
strokeWeight(1)
rect(419,185,63,16)
fill(0,0,0)
text("$1k", 419, 200)
textSize(25)
text("🍌",3,185)
text(BananaCounter,44,185)
textSize(17)
text("x",35,183)

//APPLE
textSize(20)
text("🍎", 385, 240)
fill(149, 240, 29)
strokeWeight(1)
rect(419,225,63,16)
fill(0,0,0)
text("$20k", 419, 240)
textSize(25)
text("🍎",3,225)
text(AppleCounter,44,225)
textSize(17)
text("x",35,223)

//LEMON 🍋
textSize(20)
text("🍋", 385, 280)
fill(146, 240, 29)
strokeWeight(1)
rect(419,265,63,16)
fill(0,0,0)
text("$200k", 419, 280)
textSize(25)
text("🍋",3,265)
text(LemonCounter,44,265)
textSize(17)
text("x",35,263)
fill(224, 199, 40);

//HOUSE
textSize(20)
fill(0,0,0)
text("??", 385, 310)
fill(146, 240, 29)
strokeWeight(1)
rect(419,295,63,16)
fill(0,0,0)
text("$999k", 419, 310)
textSize(25)
text("🍋",3,265)
text(LemonCounter,44,265)
textSize(17)
text("x",35,263)
fill(224, 199, 40);

//lose conditions
if(Money==0){
fill(200,5,5)
rect(1,1,500,400)
fill(0,0,0)
text("YOU'RE BROKE!",50,200)
text("RELOAD PAGE TO RETRY.",50,230)
};

if(Money>=25 && mousePressed && mousePosition==KiwiColor){
KiwiCounter=KiwiCounter+1
Money= Money-25
};

if(Money>=100 && mousePressed && mousePosition==MelonColor){
MelonCounter= MelonCounter+1
Money= Money-100
};
if(Money>=1000 && mousePressed && mousePosition==BananaColor){
BananaCounter= BananaCounter+1
Money= Money-1000
};
if(Money>=20000 && mousePressed && mousePosition==AppleColor){
AppleCounter=AppleCounter+1
Money= Money-20000
};
if(Money>=200000 && mousePressed && mousePosition==LemonColor){
LemonCounter=LemonCounter+1
Money= Money-200000
};

if(clickCounter==10 || clickCounter==11 || clickCounter==12){
  fill(0,0,0)
  rect(4,40,491,340)
  fill(255,255,255)
  textSize(20)
  text("SPECIAL OPPORTUNITY", 20,100)
  text("GAMBLE IT ALL FOR A BIG WIN?", 20,200)
  text("ODDS TO TRIPLE SAVINGS:66-33", 20, 300)
  fill(0,255,0)
  rect(60,320,90,30)
  fill(1,1,1)
  textSize(11)
  text("Let's GAMBLE",66,340)
  fill(255,0,0)
  rect(300,320,90,30)
  fill(0,0,0)
  text("No Thanks", 317,340)
};
fill(189,0,0);
if(clickCounter==10 && mousePosition==LetsGamble && mousePressed){
Money=0
};
if(clickCounter==11 && mousePosition==LetsGamble && mousePressed){
Money=Money+Money+Money
};
if(clickCounter==12 && mousePosition==LetsGamble && mousePressed){
Money=Money+Money+Money
};
if(clickCounter==10 && mousePosition==LGamb && mousePressed){
Money=0
};
if(clickCounter==11 && mousePosition==LGamb && mousePressed){
Money=Money+Money+Money
};
if(clickCounter==12 && mousePosition==LGamb && mousePressed){
Money=Money+Money+Money
};
if(mousePosition=NoThanks && mousePressed){
clickCounter=0
};
text(clickCounter, 30, 380);

};

mouseClicked = function(){
clickCounter= round(random(100))


};




