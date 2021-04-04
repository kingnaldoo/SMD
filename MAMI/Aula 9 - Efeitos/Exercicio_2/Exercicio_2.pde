PImage imgOriginal;
PImage imgDestino = createImage(320, 240, HSB);
color corOriginal, corDestino;
float a = 0;

void setup() {
    size(640, 240);
    colorMode(HSB, 360, 100, 100);
    imgOriginal = loadImage("original.png");
    image(imgOriginal, 0, 0);
    frameRate(30);
}

void draw(){
    processaImagem(a);
    image(imgDestino, 320, 0);
    a += 0.01;
}

void processaImagem(float valor){
    float h, s, b;
    for (int x = 0; x < 320; x++){
        for (int y = 0; y < 240; y++){
            corOriginal = imgOriginal.get(x, y);
            h = hue(corOriginal);
            s = saturation(corOriginal);
            b = brightness(corOriginal) * valor;
            corDestino = color(h, s, b);
            imgDestino.set(x, y, corDestino);
        }
    }
}
