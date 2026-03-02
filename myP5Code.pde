setup = function() {
    size(400, 400);
    frameRate(15)
};
var Slot1 = round(random(3))
var Slot2 = round(random(3))
var Slot3 = round(random(3))
Slot1=1
Slot2=1
Slot3=1
var Money = 10
draw = function(){
var knobRed = color(200,0,0);
var collect = color(10,100,0);
var mousePosition = get(mouseX, mouseY);

  background(100,100,100);

if(Slot1==Slot2 && Slot1==Slot3){
  fill(collect)
}
else{
  fill(200,200,200)
}
rect(100,320,200,40);

fill(0,0,0)
text("$",4,30)
text(Money, 20,30)

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
 fill(200,0,0)
    textSize(40)
   text(Slot1,120,260)
   text(Slot2,188,260)
   text(Slot3,253,260);
//win conditions
if(mousePosition==collect && mousePressed){
Money=Money+30
    Slot1 = round(random(3))
    Slot2 = round(random(3))
    Slot3 = round(random(3))
};



};

mouseClicked = function(){


};




