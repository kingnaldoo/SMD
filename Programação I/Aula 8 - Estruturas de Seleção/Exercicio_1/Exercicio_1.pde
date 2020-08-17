int tam, x, y;

void setup() {
  size(600, 600);
  noStroke();
  ellipseMode(CORNER);
  tam = width/10;
}

void draw() {
  if(keyPressed){
    x = (int) random(0, 10);
    y = (int) random(0, 10);
    if (x==y)
      fill(50);
    else
      fill(255);
    ellipse(x*tam, y*tam, tam, tam);
  }
}
