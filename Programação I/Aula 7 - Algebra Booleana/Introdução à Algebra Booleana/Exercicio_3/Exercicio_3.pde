int x0,x1,x2,y0,y1,y2, i, j, x0B;
float ang1, ang2, ang1A, ang2A, ang1B, ang2B, ang1C, ang2C, ang2D, ang1D, matiz1, matiz2;

void setup(){
  size(512,512);
  noStroke();
  colorMode(HSB, 360, 100, 100); 
}

void draw(){
  i = j =1;
  x0 = y0 = x0B = 0;
  x1 = y1 = 32;
  x2 = y2 = 64;
  ang1 = ang1A = ang1B = PI/2;
  ang2 = ang1C = ang1D = -PI/2;
  ang2A = ang2D = 0;
  ang2B = PI;
  ang2C = -PI;
  
  matiz1 = random(0, 360);
  matiz2 = matiz1+180;
  if(matiz2>360)
    matiz2 -= 360;
  color cor1 = color(matiz1, 80, 90);
  color cor2 = color(matiz2, 85, 80);
  background(cor1);
  fill(cor2);
  for(y2 = 64;y2<=height;y2+=64){
    for(x2 = 64;x2<=width;x2+=64){
      arc(x1,y1,64,64,ang2,ang1);
      rect(x0,y0,32,64);
      
      if(x2<width){
        x0+=64;
        x1+=64;
        if(i==1){ //inverte
          ang1+=PI;
          ang2+=PI;
          x0+=32;
          i=0;
        }
        else{ //inverte
         ang1-=PI;
         ang2-=PI;
         x0-=32;
         i=1;
       }
     }
     else{ //pula a linha
       x1=32;
       y1+=64;
       y0+=64;
       j++;
       if(j%2==0){
         x0=32;
       }
       else{
         x0=0;
       }
     }
     
   }
 }
 fill(cor1);
 y0=0;
 for(y2 = 64;y2<=height;y2+=64){
    for(x2 = 64;x2<=width;x2+=64){
      arc(x0B, y0, 64,64,ang2A,ang1A);
      arc(x0B, y0, 64,64,ang1B,ang2B);
      arc(x0B, y2, 64,64,ang2C, ang1C);
      arc(x0B, y2, 64,64,ang1D, ang2D);
      if(x2<width){
        x0B+=128;
      }
      else{ //pula a linha
       y0+=64;
       j++;
       if(j%2==0){
         x0B=64;
       }
       else{
         x0B=0;
       }
     }
   }
 }
 noLoop();
}
 
void mousePressed(){
  loop();
}
