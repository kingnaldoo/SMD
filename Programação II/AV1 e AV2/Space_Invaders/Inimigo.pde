class Inimigo{
    //atributos
    boolean VIVO = true;
    int posX, posY;
    int ACELERACAO = 2;
    final int TAMANHO = 20;
    
    //construtor
    Inimigo(int x, int y){
        setPosX(x);
        setPosY(y);
    }

    //métodos
    void inserirInimigo(){
        if(getPosX() >= width || getPosX() <= 0)
            ACELERACAO = -ACELERACAO;
        setPosX(getPosX() + ACELERACAO);
        fill(0, 255, 0);
        if(getStatus())
            square(getPosX(), getPosY(), TAMANHO);
    }

    //getters e setters
    boolean getStatus(){
        return this.VIVO;
    }

    boolean setStatus(boolean status){
        return this.VIVO = status;
    }

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








