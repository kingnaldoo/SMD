void setup() {
    size(500,500);
    background(0);
    noStroke();
    for(int j=0;j<height;j+=50){
        for(int i=0;i<width;i+=50){
        desenho(i, j, 46);
        }
    } 
}

void desenho(int x, int y, int l){
    for(int i=15; i>=0; i--){
        fill(abs(i-15)*17);
        ellipse(x+25, y+25, (46/15)*i, (46/15)*i);
    }
}