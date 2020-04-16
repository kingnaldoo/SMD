void setup(){
  size(400, 400);
  noStroke();
  background(150);
  fill(255);
  triangle(0,0,100,100,0,200);
  triangle(200,0,100,100,200,200);
  fill(0);
  triangle(200,0,300,100,200,200);
  triangle(300,0,400,100,400,0);
  triangle(300,200,400,100,400,200);
  rect(0,200,200,400);
  fill(255);
  circle(200,400,400);
  fill(0);
  circle(200,400,250);
}
