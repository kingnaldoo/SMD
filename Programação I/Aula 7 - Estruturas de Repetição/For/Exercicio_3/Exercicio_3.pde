boolean a; //<>//
void setup() {
  strokeWeight(22);
  rectMode(CENTER);
  size(600, 600);
  for (int i=10; i>0; i--) {
    if (a==true) {
      fill(138, 19, 189);
      a=false;
    } else {
      fill(13, 212, 39);
      a=true;
    }
    circle(300, 300, i*100);
  }
}
