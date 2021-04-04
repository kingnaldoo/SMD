PImage imgOriginal;
PImage imgDestino = createImage(320, 240, RGB);

void setup() {
    size(640, 240);
    imgOriginal = loadImage("original.png");
    processarImagem();
    image(imgOriginal, 0, 0);
    image(imgDestino, 320, 0);
}

void processarImagem() {
    color corOriginal, corDestino;
    float r, g, b, mediaPonderadaRGB;
    for(int x = 0; x < 320; x++){
        for(int y = 0; y < 240; y++){
            corOriginal = imgOriginal.get(x, y);
            r = 255-red(corOriginal);
            g = 255-green(corOriginal);
            b = 255-blue(corOriginal);
            corDestino = color(r, g, b);
            imgDestino.set(x, y, corDestino);
        }
    }
}
