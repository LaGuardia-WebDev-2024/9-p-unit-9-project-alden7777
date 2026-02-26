setup = function() {
    size(400, 400);
};

var answer = 1;

draw = function(){
  background(100,100,100);
  fill(200,200,200)
  strokeWeight(4)
 rect(120,180,30,100);//support
 rect(250,180,30,100);//support
 rect(100,140,200,40);//top rectangle
 rect(300,240,30,20);//handle base
 rect(319,160,11,100);//handle
 rect(100,200,200,100);//bottom rect
 rect(110,210,50,80);//slot 1
 rect(175,210,50,80);//slot 2
 rect(240,210,50,80);//slot 3
 fill(200,0,0)
  ellipse(325,160,30,30);//knob
text();
  if (answer == 1) {
    text("", 176, 200);
    text("", 159, 229); 
  }
  
};

mouseClicked = function(){
  answer = round(random(1, 5));
};




