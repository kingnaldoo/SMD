void desenhaBarras(){
    for(int i = 0; i < barra.length; i++){
        barra[i].desenhaBarra();
    }
    desenhaTexto();
}

void processarImagem() {
    color corOriginal;
    color corDestino;
    float r;

    //atualiza os limites
    for(int i = 0; i <= 2; i++){
        limites[i] = ceil(abs(255+barra[i+1].getLargura()));
    }

    //atuliza as informações no canvas
    for(int y = 0; y <= imgOriginal.height; y++){
        for(int x = 0; x <= imgOriginal.width; x++){
            corOriginal = imgOriginal.get(x, y);
            r = red(corOriginal); 
            if(r<=limites[0]){
                imgDestino.set(x, y, corOriginal);
            }
            else if(r > limites[0] && r <= limites[1]){
                corDestino = color(0, 0, 255);
                imgDestino.set(x, y, corDestino);
            }
            else if(r > limites[1] && r <= limites[2]){
                corDestino = color(255, 0, 0);
                imgDestino.set(x, y, corDestino);
            }
            else if(r > limites[2] && r <= 255){
                corDestino = color(255, 255, 0);
                imgDestino.set(x, y, corDestino);
            }
        }
    }  
    image(((ORIGINAL) ? imgOriginal : imgDestino), 0, 0);
}

void desenhaTexto(){
    for(int i = 0; i < barra.length; i++){
        fill(cor[i]);
        if(i == 0){
            text(0, barra[i].getPosX(), barra[i].getPosY()+barra[i].getAltura()+15);
        }
        else{
            text("P"+i, barra[i].getPosX()+barra[i].getLargura(), barra[i].getPosY()-10); //P1, P2, P3
            text(ceil(abs(255+barra[i].getLargura())), barra[i].getPosX()+barra[i].getLargura(), barra[i].getPosY()+barra[i].getAltura()+15); 
        }
    }
    text(255, barra[0].getPosX()+barra[0].getLargura(), barra[0].getPosY()+barra[0].getAltura()+15);
}