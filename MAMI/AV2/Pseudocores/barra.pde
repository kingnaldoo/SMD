class Barra {
    //atributos
    float posX, posY, largura, altura;
    color cor;

    //construtor
    Barra(float x, float y, float l, float a, color c){
        setPosX(x);
        setPosY(y);
        setLargura(l);
        setAltura(a);
        cor = c;
    }

    //função
    void desenhaBarra(){
        fill(cor);
        rect(getPosX(), getPosY(), getLargura(), getAltura());
    }

    //getters e setters
    public float getPosX() {
        return this.posX;
    }

    public void setPosX(float posX) {
        this.posX = posX;
    }

    public float getPosY() {
        return this.posY;
    }

    public void setPosY(float posY) {
        this.posY = posY;
    }

    public float getLargura() {
        return this.largura;
    }

    public void setLargura(float largura) {
        this.largura = largura;
    }

    public float getAltura() {
        return this.altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }
    
}
