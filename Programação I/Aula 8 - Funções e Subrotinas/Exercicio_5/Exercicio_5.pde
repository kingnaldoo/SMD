void setup() {
    size(500,500);
    background(0);
    noStroke();
    for(int j=0;j<height;j+=50){
        for(int i=0;i<width;i+=50){
        desenho(i, j);
        }
    } 
}

void desenho(int x, int y){
    fill(255);
    quad(x+25, y, x+50, y+25, x+25, y+50, x, y+25);
    fill(0);
    rect(x+(25/2), y+(25/2), 25, 25);
}