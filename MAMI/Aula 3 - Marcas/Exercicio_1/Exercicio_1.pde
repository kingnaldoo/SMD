final color BLACK = color(0);
final color WHITE = color(255,255, 255);
int scale = 82;

void setup() {
  size(600, 600); 
  noStroke();
}

void draw() {
  background(120);
  yingYang(width/2, height/2, scale);
}

void yingYang(int cx, int cy, int prop) {
  colorCircle(cx, cy, 8*prop, BLACK);

  fill(WHITE);
  arc(cx, cy, 8*prop, 8*prop, PI/2, 3*PI/2);  
  
  //      Circulos intermediarios        //
  colorCircle(cx, cy - prop*2, 4*prop, BLACK);
  colorCircle(cx, cy + prop*2, 4*prop, WHITE);
  
  //        Circulos menores             //
  colorCircle(cx, cy + prop*2, prop, BLACK);
  colorCircle(cx, cy - prop*2, prop, WHITE);
}

void colorCircle(int cx, int cy, int prop, color col) {
  fill(col);
  circle(cx, cy, prop);
}

void keyPressed() {
  if ( keyCode == 87 ) scale+= 10; 
  if ( keyCode == 83 && scale > 10) scale-= 10;
}