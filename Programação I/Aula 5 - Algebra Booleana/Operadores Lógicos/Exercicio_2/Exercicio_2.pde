void setup(){
  size(400, 400);
  noStroke();
}

void draw(){
  background(128);
  if(mouseX>200 && mouseY>200){
    fill(50);
    rect(0,0,200,200);
  }
  else if(mouseX<200 || mouseY>200){
    fill(50);
    rect(200,0,200,200);
  }else if(mouseX<200 && mouseY<200){
    fill(50);
    rect(0,200,200,200);
  }else if(mouseX>200 && mouseY<200){
  fill(50);
  rect(200,200,200,200);
  }
}
