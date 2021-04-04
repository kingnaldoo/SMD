String[] nomes = {"img01.png", "img02.png", "img03.png", "img04.png", "img05.png", "img06.png", "img07.png", "img08.png", "img09.png", "img10.png", "img11.png"};
PImage[] imagens = new PImage[nomes.length];
PImage resultado = createImage(824, 548, RGB);

void setup() {
    size(824, 548);
    for (int i = 0; i < nomes.length; i++) {
        String nm = nomes[i];
        imagens[i] = loadImage(nm);
    }
    media();
    image(resultado, 0, 0);
}

void media() {
    float somaR, somaG, somaB;
    for (int x = 0; x < 824; x++){
        for (int y = 0; y < 548; y++) {
            somaR = 0;
            somaG = 0;
            somaB = 0;
            for (int i = 0; i < nomes.length; i++){
                color cor = imagens[i].get(x, y);
                somaR += red(cor);
                somaG += green(cor);
                somaB += blue(cor);
            }
            resultado.set(x, y, color(somaR/7, somaG/7, somaB/7));
        }
    }
}


