int x0, x1, x2, x3, y0, y1, y2, y3;
float matiz1, matiz2;

void setup(){
  size(512,512);
  noStroke();
  colorMode(HSB, 360, 100, 100); 

  x0 = y0 = 0;
  x1 = y1 = 16;
  x2 = y2 = 32;
  x3 = y3 = 64;
  
  background(10,25,95);
  for(y3=64;y3<=height;y3+=64){
    x0 = 0;
    x1 = 16;
    x2 = 32;

    for(x3=64;x3<=width;x3+=64){
      fill(170, 35,75);
      quad(x2, y0,x3,y2,x2,y3,x0,y2);
      fill(10,25,95);
      rect(x1,y1,32,32);
      x0 +=64;
      x1 +=64;
      x2 +=64;
    }
    y0 += 64;
    y1 += 64;
    y2 += 64;
  }
}
