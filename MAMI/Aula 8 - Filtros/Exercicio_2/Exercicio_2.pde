PImage imgOriginal;
PImage imgDestinoRed, imgDestinoGreen, imgDestinoBlue;


void setup() {
    size(1280, 240);
    imgDestinoRed = createImage(320, 240, RGB);
    imgDestinoGreen = createImage(320, 240, RGB);
    imgDestinoBlue = createImage(320, 240, RGB);
    imgOriginal = loadImage("original.png");
    processarImagem();
    image(imgOriginal, 0, 0);
    image(imgDestinoRed, 320, 0);
    image(imgDestinoGreen, 640, 0);
    image(imgDestinoBlue, 960, 0);
    saveFrame("Exercicio_2.png");
}


void processarImagem() {
    color corOriginal, corRed, corGreen, corBlue;
    float r, g, b;
    for(int x = 0; x < 320; x++){
        for(int y = 0; y < 240; y++){
            corOriginal = imgOriginal.get(x, y);
            r = red(corOriginal);
            corRed = color(r, r, r);
            imgDestinoRed.set(x, y, corRed);

            g = green(corOriginal);
            corGreen = color(g, g, g);
            imgDestinoGreen.set(x, y, corGreen);

            b = blue(corOriginal);
            corBlue = color(b, b, b);
            imgDestinoBlue.set(x, y, corBlue);
        }
    }

}