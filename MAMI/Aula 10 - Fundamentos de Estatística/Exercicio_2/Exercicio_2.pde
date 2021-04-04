PImage original;


void setup() {
    size(252, 190);
    original = loadImage("einstein.jpg");
    mediaDeTons();
    image(original, 0, 0);
}

void mediaDeTons(){
    color cor;
    float t, mediaT;
    float somaT = 0;
    
    for (int x=0; x<252; x++){
        for(int y=0; y<190; y++){
            cor = original.get(x, y);
            t = red(cor);
            somaT = somaT + t;
        }
    }    
    mediaT = somaT/(252*190);
    println("Media de Tons: ", nf(mediaT, 0, 2));
}
