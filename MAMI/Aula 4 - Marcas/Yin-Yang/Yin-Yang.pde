float a;

void keyPressed(){
  if(a > 10)
    a /= 2.;
}

void setup() {
  size(800, 800);
  noStroke();
  a = 800;
}

void draw() {
  background(127);
  YinYang(a);
}

void YinYang(float a) {
  fill(0);
  ellipse(width/2, height/2, a, a);
  fill(255);
  arc(width/2, height/2, a, a, 3.14/2., 3*3.14/2);
  fill(0);
  ellipse(width/2, height/2-a/4., a/2., a/2);
  fill(255);
  ellipse(width/2, height/2+a/4., a/2., a/2.);
  ellipse(width/2, height/2-a/4., a/8., a/8.);
  fill(0);
  ellipse(width/2, height/2+a/4., a/8., a/8);
}