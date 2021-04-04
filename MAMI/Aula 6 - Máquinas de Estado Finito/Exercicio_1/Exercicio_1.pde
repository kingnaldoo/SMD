final int PARADO = 0;
final int MARTELANDO = 1;

int estadoMario = PARADO;

PImage imgParado, imgMartelando;

void setup() {
    size(600, 600);
    imgParado = loadImage("1.png");
    imgMartelando = loadImage("2.png");
}

void draw() {
    mostraMario(estadoMario);
    MEF();
    println(estadoMario);
}

void MEF(){
    if(keyPressed){
        if(key == ' '){
            estadoMario = MARTELANDO;
        }
    }
    else{
            estadoMario = PARADO;
        }
}

void mostraMario(int estado){
    background(255);
    if(estado == PARADO){
        image(imgParado, 0, 0);
    }
    else if(estado == MARTELANDO){
        image(imgMartelando, 0, 0);
    }
}

