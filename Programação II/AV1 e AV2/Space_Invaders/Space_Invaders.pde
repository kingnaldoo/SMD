Inimigo[] aliens = new Inimigo[10];
Jogador j1 = new Jogador(40, 400);
Bala b = new Bala(j1.getPosX(), j1.getPosY());

void setup() {
    size(500, 500);
    //cria as posições dos inimigos
    for(int i = 0; i <= aliens.length-1; i++){
        aliens[i] = new Inimigo(20+i*40, 30);
    }
}

void draw() {
    background(255);
    desenhaInimigos();
    desenhaJogador();
    desenhaBala();
}

void desenhaInimigos(){
    for(int i = 0; i <= aliens.length-1; i++){
        aliens[i].inserirInimigo(); //desenha os inimigos nas posições   
        if(b.getPosXBala()>=aliens[i].getPosX() && b.getPosXBala()<=aliens[i].getPosX()+20
        && b.getPosYBala()>=aliens[i].getPosY() && b.getPosYBala()<=aliens[i].getPosY()+20){
            aliens[i].setStatus(false);
            b.setPARADO(true);
        }
    }
}

void desenhaJogador(){
    j1.inserirJogador();
}

void desenhaBala(){
    if(b.getPARADO()){
        b.setPosXBala(j1.getPosX());
        b.setPosYBala(j1.getPosY());
    }
    else{
        b.atirar();
        if(b.getPosYBala() <= 0)
            b.setPARADO(true);
    }
}

void keyPressed() {
    switch (keyCode) {
        case 65: //a
            b.setPARADO(false);
    }
}

