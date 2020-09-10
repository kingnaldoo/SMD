int x, y;

void setup() {
    size(480, 480);
    noStroke();
    background(255);
    fill(0);
    do{
        quad(x, y, x+40, y, x+80, y+40, x+40, y+40);
        quad(x+40, y+40, x+80, y+40, x+40, y+80, x, y+80);
        x = (x<=width) ? (x+80) : 0;
        y = (x<=width) ? y : (y+80);
    } while(y<height);
}

