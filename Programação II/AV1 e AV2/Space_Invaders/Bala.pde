class Bala{
    //atributos
    boolean PARADO = true;
    int ACELERACAO = 10;
    int posXBala, posYBala;
    
    //construtor
    Bala(int x, int y){
        setPosXBala(x);
        setPosYBala(y);
    }

    //métodos
    void atirar(){
        setPosYBala(getPosYBala()-ACELERACAO);
        fill(255, 0, 0);
        circle(getPosXBala(), getPosYBala(), 10);
    }

    //getters e setters
    boolean getPARADO(){
        return this.PARADO;
    }

    void setPARADO(boolean x){
        this.PARADO = x;
    }

    
    int getPosXBala(){
        return this.posXBala;
    }

    void setPosXBala(int x){
        this.posXBala = x;
    }

    int getPosYBala(){
        return this.posYBala;
    }

    void setPosYBala(int y){
        this.posYBala = y;
    }

    int getAceleracao(){
        return this.ACELERACAO;
    }

    void setAceleracao(int a){
        this.ACELERACAO = a;
    }
}

