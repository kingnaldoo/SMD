PImage imgOriginal;
PImage imgDestino = createImage(480, 369, RGB);

void setup() {
    size(960, 369);
    imgOriginal = loadImage("naruto careca.jpg");
    processarImagem();
    image(imgOriginal, 0, 0);
    image(imgDestino, 480, 0);
}

void processarImagem() {
    color corOriginal, corDestino;
    float r, g, b;
    int granulado = 10;
    for(int x = 0; x < 480; x++){
        for(int y = 0; y < 369; y++){
            corOriginal = imgOriginal.get(x, y);
            r = random(granulado, red(corOriginal));
            g = random(granulado, green(corOriginal));
            b = random(granulado, blue(corOriginal));
            corDestino = color(r, g, b);
            imgDestino.set(x, y, corDestino);
        }
    }
}
