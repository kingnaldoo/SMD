void setup(){
  size(550,300);
  noStroke();
  background(0);
  
}

void draw(){
  if(mouseX>50 && mouseX<250 && mouseY>50 && mouseY<250){
    background(255, 255, 25);
  }
  else if(mouseX>300 && mouseX<500 && mouseY>50 && mouseY<250){
    background(68, 0, 138);
  }
  else{
    background(0);
  }
  fill(255,255,25);
  rect(50,50,200,200);
  fill(68, 0, 138);
  rect(300,50,200,200);
}
