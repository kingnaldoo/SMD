PImage imgGrama, imgMuro, imgSombra;

int[][] mapa = { 
    {0, 0, 0, 0, 0, 0, 0, 0} , 
    {0, 1, 1, 1, 1, 1, 0, 0} , 
    {0, 1, 0, 0, 0, 0, 0, 0} , 
    {0, 0, 0, 0, 0, 1, 0, 0} , 
    {0, 1, 0, 0, 0, 1, 0, 0} , 
    {0, 1, 0, 0, 0, 0, 0, 0} , 
    {0, 1, 1, 1, 1, 1, 0, 0} , 
    {0, 0, 0, 0, 0, 0, 0, 0} 
};

void setup() {
    size(256, 256);
    imgGrama = loadImage("grama.png");
    imgMuro = loadImage("muro.png");
    imgSombra = loadImage("sombra.png");
    mostraMapa();
}

void mostraMapa() {  
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            if (mapa[j][i] == 1 && mapa[j][i + 1] == 0) {
                mapa[j][i + 1] = 2;
            }
            
            switch(mapa[j][i]) {
                case 0 : 
                image(imgGrama, i * 32, j * 32);
                break;
                case 1:
                image(imgMuro, i * 32, j * 32);
                break;
                case 2:
                image(imgSombra, i * 32, j * 32);
                break;
            }
        }
    }
}