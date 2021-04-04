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
    float r, g, b, mediaRGB;
    for(int x = 0; x < 320; x++){
        for(int y = 0; y < 240; y++){
            corOriginal = imgOriginal.get(x, y);
            r = red(corOriginal);
            g = green(corOriginal);
            b = blue(corOriginal);
            mediaRGB = (int) ((r+g+b)/3);
            corDestino = color(mediaRGB);
            imgDestino.set(x, y, corDestino);
        }
    }
}
