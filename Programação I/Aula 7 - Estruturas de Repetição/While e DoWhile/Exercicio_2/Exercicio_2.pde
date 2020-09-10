int x, y;

void setup() {
    size(400, 170); //10 e 17
    background(255);
    x = y = 0;
    do{
        line(x, y, x+20,y+20);
        line(x+20,y+20, x+40, y);
        x = (x<width) ? (x+40) : 0;
        y = (x<width) ? y : (y+20);
    }
    while(y<height);
}