int x, y;

void setup() {
    size(600, 180);
    background(255);
    x = y = 0;
    while(x<width){
        y=0;
        while(y<height){
            line(x, y, x+30, y+30);
            y+=30;
        }
        x+=30;
    }
}