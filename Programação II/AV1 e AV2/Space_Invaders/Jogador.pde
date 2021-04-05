class Jogador{
    //atributos
    int posX, posY;
    int ACELERACAO = 4;
    float LARGURA = 30;
    float ALTURA = 15;
    
    //construtor
    Jogador(int x, int y){
        setPosX(x);
        setPosY(y);
    }

    //funcoes especiais
    void inserirJogador(){
        if(keyPressed){
            switch (keyCode) {
                case LEFT:
                    setPosX(getPosX()-ACELERACAO);
                    break;
                case RIGHT:
                    setPosX(getPosX()+ACELERACAO);
                    break;                     
            }
        }
        //colisao
        if(getPosX() >= width-10)
            setPosX(width-10);
        else if(getPosX() <= 10) 
            setPosX(10); 

        rectMode(CENTER);
        fill(255, 255, 0);
        rect(getPosX(), getPosY()-ALTURA/2, LARGURA/2, ALTURA/2);
        rect(getPosX(), getPosY(), LARGURA, ALTURA);
        
    }
    
    //getters e setters
    int getPosX(){
        return this.posX;
    }

    void setPosX(int x){
        this.posX = x;
    }

    int getPosY(){
        return this.posY;
    }

    void setPosY(int y){
        this.posY = y;
    }

    int getAceleracao(){
        return this.ACELERACAO;
    }

    void setAceleracao(int a){
        this.ACELERACAO = a;
    }
}
