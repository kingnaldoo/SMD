int numeroDeCarros = 2;
float [] posicaoXCarro = new float[numeroDeCarros];
float [] posicaoYCarro = new float[numeroDeCarros];
float posicaoYPersonagem;
float posicaoXPersonagem;
color cinzaEscuro = color(220, 220, 220);
color cinzaClaro = color(250, 250, 250);
color branco = color(255);
color amarelo = color(255, 255, 0);
color vermelho = color(255, 0, 0);
color azul = color(0, 0, 255);
int contador = 0;

void setup() {
    size(900, 600);
    for(int i = 0; i<numeroDeCarros; i++){
        posicaoXCarro[i] = random(0, width);
    }
    posicaoYCarro[0] = height/2.32;
    posicaoYCarro[1] = height/1.55;
    posicaoYPersonagem = height-(height*0.05);
    posicaoXPersonagem = width/4;
}

void draw() {
    desenhaCenario();
    desenhaCarro(posicaoXCarro[0], posicaoYCarro[0], azul);
    desenhaCarro(posicaoXCarro[1], posicaoYCarro[1], vermelho);
    desenhaPersonagem(posicaoYPersonagem);
    pontuacao();
    if(contador == 5){
        noLoop();
        telaFinal();
    }
}

void desenhaCenario(){
    float medidaDoScore = height*0.05; //5% da altura
    float medidaDaPista = height-(medidaDoScore*3); 
    float medidaDeCadaFaixa = medidaDaPista/8;
    println();

    //faixa da pontuação
    noStroke();
    fill(cinzaEscuro);
    rect(0, 0, width, medidaDoScore);
    
    //estrada
    noStroke();
    rect(-2, medidaDoScore*2, width+2, height-medidaDoScore);

    //calçada superior
    stroke(1);
    strokeWeight(2); //linha de 2 pixels de espessura
    fill(cinzaClaro);
    rect(-2, medidaDoScore, width+3, medidaDoScore);
    //calçada inferior
    rect(-2, height-medidaDoScore, width+3, medidaDoScore);
    
    //listras
    float posicaoDaLinha = medidaDeCadaFaixa;
    for(int i = 1; i<=7; i++){
        posicaoDaLinha+=medidaDeCadaFaixa;
        stroke((i == 4) ? amarelo : branco);
        if(i != 4){
            line(0, posicaoDaLinha, width, posicaoDaLinha);
        }
        else{
            line(0, posicaoDaLinha-2, width, posicaoDaLinha-2);
            line(0, posicaoDaLinha+2, width, posicaoDaLinha+2);
        }
    }

    //espaçamento das listras
    noStroke();
    fill(cinzaEscuro);
    
    float larguraDoBloco = width/20;
    float posicaoInicial = -larguraDoBloco/2;
    for(int i = 0; i<=20; i++){
        if(i % 2 == 0)
            rect(posicaoInicial, medidaDoScore*3, larguraDoBloco, medidaDaPista-medidaDoScore*2);
        posicaoInicial+=larguraDoBloco;
    }
}

void desenhaCarro(float posX, float posY, color cor){
    final float larguraCarro = width/8;
    final float alturaCarro = height/11;
    fill(cor);
    rect(posX, posY, larguraCarro, alturaCarro);
    if(cor == azul){
        posicaoXCarro[0]-=5;
        if(posicaoXCarro[0]<-larguraCarro){
            posicaoXCarro[0]=width;
        }
    }
    else if(cor == vermelho){
        posicaoXCarro[1]+=5;
        if(posicaoXCarro[1]>width){
            posicaoXCarro[1] = -larguraCarro;
        }
    }  
    
    //colisão
    if(posicaoXPersonagem < posX+larguraCarro && posicaoYPersonagem < posY+alturaCarro && posicaoXPersonagem > posX && posicaoYPersonagem >posY || posicaoXPersonagem+24 > posX && posicaoYPersonagem < posY+alturaCarro && posicaoXPersonagem+24 < posX+larguraCarro && posicaoYPersonagem >posY || posicaoXPersonagem < posX+larguraCarro && posicaoYPersonagem+24 > posY && posicaoXPersonagem > posX && posicaoYPersonagem+24<posY+alturaCarro || posicaoXPersonagem+24 > posX && posicaoYPersonagem+24 > posY && posicaoXPersonagem+24 < posX+larguraCarro && posicaoYPersonagem+24 < posY+alturaCarro){
        posicaoYPersonagem+=5;
    }
}

void desenhaPersonagem(float posY){
    fill(amarelo);
    final float posX = width/4;
    square(posX, posY, 24);
    if(keyPressed){
        if(keyCode == UP){
            posicaoYPersonagem-=5;
        }
        else if(keyCode == DOWN){
            posicaoYPersonagem+=5;
        }
    }

    if(posicaoYPersonagem>height-(height*0.05)){
        posicaoYPersonagem = height-(height*0.05);
    }
}

void pontuacao(){
    if(posicaoYPersonagem <= height*0.06){
        contador++;
        posicaoYPersonagem = height-(height*0.05);
    }
    fill(0);
    textSize(height/20);
    text(contador, width/4, height*0.045);
}

void telaFinal(){
    text("ACABOU", width/4+width/6, height/2);
}
