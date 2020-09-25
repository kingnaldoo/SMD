int x, y;

void setup(){
    size(500, 100);
    noStroke();
    colorMode(HSB, 360, 100, 100);
    background(280, 100, 100);
    x = y = 0;
    for(int i=0;i<=5;i++){
        fill(100, 100, 100);
        quad(x+50, y, x+100, y+50, x+50, y+100, x, y+50);
        fill(280, 100, 100); 
        quad(x+25, y+25, x+75, y+25, x+75, y+75, x+25, y+75);
        x+=100;
    }
}