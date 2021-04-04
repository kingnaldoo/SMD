PImage imgOriginal, imgDestino;
boolean ORIGINAL = true;
final float posXBarra = 700;
final float posYBarra = 340;
final float altura = 40;
final float largura = 255;
Barra [] barra = new Barra[4];
color [] cor = {#666666, #0000ff, #ff0000, #ffff00};
int [] limites = new int[barra.length-1];

void setup() {
    size(1000, 410);
    imgOriginal = loadImage("cerebro.png");
    imgDestino = createImage(imgOriginal.width, imgOriginal.height, RGB);
    for(int i = 0; i < barra.length; i++){
        if(i == 0)
            barra[i] = new Barra(posXBarra, posYBarra, largura, altura, cor[i]);
        else
            barra[i] = new Barra(posXBarra+largura, posYBarra, -(largura-(255/4)*i), altura, cor[i]);
    }
}

void draw() {
    processarImagem();
    desenhaBarras();
}

void keyPressed() {
    // liga e desliga
    if(keyCode == 65){ //a
        if(ORIGINAL) 
            ORIGINAL = false;
        else if(ORIGINAL == false)
            ORIGINAL = true;
    }

    //teclas para aumentar/diminuir limites
    switch(keyCode){
        case 84: //T
            if(barra[1].getPosX()+barra[1].getLargura() < barra[2].getPosX()+barra[2].getLargura())
                barra[1].setLargura(barra[1].getLargura()+1);
            break;
        case 89: //Y
            if(barra[1].getPosX()+barra[1].getLargura() > barra[0].getPosX())
                barra[1].setLargura(barra[1].getLargura()-1);
            break;
        case 85: //U
            if(barra[2].getPosX()+barra[2].getLargura() < barra[3].getPosX()+barra[3].getLargura())
                barra[2].setLargura(barra[2].getLargura()+1);
            break;
        case 73: //I
            if(barra[2].getPosX()+barra[2].getLargura() > barra[1].getPosX()+barra[1].getLargura())
                barra[2].setLargura(barra[2].getLargura()-1);
            break;
        case 79: //O
            if(barra[3].getPosX()+barra[3].getLargura() < barra[0].getPosX()+barra[0].getLargura())
                barra[3].setLargura(barra[3].getLargura()+1);
            break;
        case 80: //P
            if(barra[3].getPosX()+barra[3].getLargura() > barra[2].getPosX()+barra[2].getLargura())
                barra[3].setLargura(barra[3].getLargura()-1);
            break;
    }
}


