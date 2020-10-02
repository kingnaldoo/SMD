void setup() {
    size(500,500);
    background(0);
    noStroke();
    for(int j=0;j<height;j+=50){
        for(int i=0;i<width;i+=50){
        desenho(i, j, 50);
        }
    } 
}

void desenho(int x, int y, int l){
    fill(255);
    ellipse(x+25, y+25, l, l);
    fill(0);
    rect(x+25/2, y+25/2, l/2, l/2);
}