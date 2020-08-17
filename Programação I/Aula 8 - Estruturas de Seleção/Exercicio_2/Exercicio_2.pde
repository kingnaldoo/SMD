int x, y, tam;
float matiz1, matiz2;

void setup() {
  size(600, 600);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  ellipseMode(CORNER);
  tam = width/20;
}

void draw() {
  if(mousePressed){
    x = (int) random(0, 20);
    y = (int) random(0, 20);
    
    matiz1 = random(0, 360);
    matiz2 = matiz1+180;
    if (matiz2>360)
      matiz2-=360;
    color cor1 = color(matiz1, 70, 90);
    color cor2 = color(matiz2, 70, 90);

    fill(cor1);
    rect(x*tam, y*tam, tam, tam);
    fill(cor2);
    ellipse(x*tam, y*tam, tam, tam);
  }
}
