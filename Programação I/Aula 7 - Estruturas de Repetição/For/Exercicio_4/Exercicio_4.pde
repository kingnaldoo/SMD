boolean a; //<>//
void setup() {
  strokeWeight(37);
  rectMode(CENTER);
  size(600, 600);
  stroke(148, 127, 255);
  for (int i=10; i>0; i--) {
    if (a==true) {
      fill(63, 127, 74);
      a=false;
    } else {
      fill(204, 135, 122);
      a=true;
    }
    circle(300, 300, i*150);
  }
}
