PImage img, img2;

void setup() {
    size(640, 240);
    img = loadImage("original.png");
    img2 = loadImage("original.png");
    img2.filter(INVERT);
    image(img, 0, 0);
    image(img2, 320, 0);
}


