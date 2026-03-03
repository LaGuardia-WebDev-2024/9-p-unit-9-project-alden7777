setup = function() {
    size(500, 400);
    frameRate(15)
};
var Slot1 = round(random(3))
var Slot2 = round(random(3))
var Slot3 = round(random(3))
var cashX = random(400)
var cashY = random(400)
Slot1=1
Slot2=1
Slot3=1
var Money = 20
var KiwiCounter=0
var MelonCounter=0
draw = function(){
var KiwiColor = color(159, 240, 29)
var MelonColor = color(157, 240, 29)
var knobRed = color(200,0,0);
var collect = color(10,100,0);
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
Money=Money+Money
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
};

mouseClicked = function(){


};




