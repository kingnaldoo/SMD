float x1, x2, x3, y1, y2, y3 = 0;
float b = 50;
size(600, 400);
noStroke();
background(255);
colorMode(HSB, 360, 100, 100);
for(float a = 50;a<=450;a+=200){
  x1 = a;
  y1 = b;
  fill(random(360), random(100), random(100)); 
  rect(x1-40,y1-40,180,180);
  fill(random(360), random(100), random(100)); 
  rect(x1,y1,50,50);
  x2 = x1+50;
  y2 = y1+50;
  x3 = x2+50;
  y3 = y2+50;
  fill(random(360), random(100), random(100)); 
  triangle(x1,y2,x2,y2,x2,y3);
  triangle(x3,y3,x2,y2,x2,y3);
  fill(random(360), random(100), random(100)); 
  triangle(x2,y1,x2,y2,x3,y2);
  triangle(x2,y2,x3,y2,x3,y3);
}
b = 250;
for(float a = 50;a<=450;a+=200){
  x1 = a;
  y1 = b;
  fill(random(360), random(100), random(100)); 
  rect(x1-40,y1-40,180,180);
  fill(random(360), random(100), random(100)); 
  rect(x1,y1,50,50);
  x2 = x1+50;
  y2 = y1+50;
  x3 = x2+50;
  y3 = y2+50;
  fill(random(360), random(100), random(100)); 
  triangle(x1,y2,x2,y2,x2,y3);
  triangle(x3,y3,x2,y2,x2,y3);
  fill(random(360), random(100), random(100)); 
  triangle(x2,y1,x2,y2,x3,y2);
  triangle(x2,y2,x3,y2,x3,y3);
}
