int x = 0;
boolean a = true;

void setup(){
    size(500, 100);
    noStroke();
    colorMode(HSB, 360, 100, 100);
    for(int i=0;i<=5;i++){
        fill((a ? 280 : 100), 100, 100); 
        quad(x, 0, x+100, 0, x+100, 100, x, 100);
        fill((a ? 100 : 280), 100, 100);
        quad(x+50, 0, x+100, 50, x+50, 100, x, 50);
        fill((a ? 280 : 100), 100, 100); 
        quad(x+25, 25, x+75, 25, x+75, 75, x+25, 75);
        x+=100;
        a = a ? false : true;
    }
}