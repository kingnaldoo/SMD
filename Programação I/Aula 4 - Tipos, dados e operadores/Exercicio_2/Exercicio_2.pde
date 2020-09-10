size(400, 400);
noStroke();

colorMode(HSB, 360, 100, 100);
color azul = color(200, 100, 100, 250);
color vermelho = color(0, 100, 100, 190);
int x = width;
int y = height;

background(0,0,100);
fill(azul);
triangle(0,0,x/1.081,0,0,y/1.6);
fill(vermelho);
triangle(x/1.6,0,x/2.66,y,x/1.6,y);
rect(x/1.6,0,x,y);
