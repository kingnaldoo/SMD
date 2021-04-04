PImage imgOriginal, img1, img2, img3;
PImage imgDestino = createImage(233, 349, RGB);

void setup() {
    size(931, 350);
    background(0);
    imgOriginal = loadImage("original.jpg");
    img1 = loadImage("h1.png");
    img2 = loadImage("h2.png");
    img3 = loadImage("h3.png");
    processaImagem();
    image(imgOriginal, 0, 0);
    image(imgDestino, 698, 0);
}

void processaImagem() {
    color corDestino ,corImg1, corImg2, corImg3;
    float r, g, b;
    for(int x = 0; x < 234; x++) {
        for(int y = 0; y < 350; y++){
            corImg1 = img1.get(x, y);
            r = red(corImg1);

            corImg2 = img2.get(x, y);
            g = green(corImg2);

            corImg3 = img3.get(x, y);
            b = blue(corImg3);

            corDestino = color(r, g, b);
            imgDestino.set(x, y, corDestino);
        }
    }
}