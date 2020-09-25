int x, y;
boolean a = true;

void setup(){
    size(500, 500);
    noStroke();
    colorMode(HSB, 360, 100, 100);
    x = y = 0;
    while (y<=width) {
        fill((a ? 280 : 100), 100, 100); 
        quad(x, y, x+100, y, x+100, y+100, x, y+100);
        fill((a ? 100 : 280), 100, 100);
        quad(x+50, y, x+100, y+50, x+50, y+100, x, y+50);
        fill((a ? 280 : 100), 100, 100); 
        quad(x+25, y+25, x+75, y+25, x+75, y+75, x+25, y+75);
        x = (x<width) ? (x+100) : 0;
        y = (x<width) ? y : (y+100);
        a = a ? false : true;
    }
}