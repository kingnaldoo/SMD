float xBola, yBola, velocidadeX, velocidadeY;
float raio = 25/2;

void setup() {
    size(600, 600);
    xBola = random(raio, width-raio);
    yBola = random(raio, height-raio);
    velocidadeX = 40;
    velocidadeY = 45;
    
}

void draw() {
    background(255);
    bola(xBola, yBola, raio);
}

void bola(float x, float y, float raio){
    fill(255, 0, 0);
    xBola+=velocidadeX;
    yBola+=velocidadeY;
    if(xBola<=raio || xBola>=width-raio){
        velocidadeX = -velocidadeX;
    }
    if(yBola<=raio || yBola>=height-raio){
        velocidadeY = -velocidadeY;
    }
    


    circle(xBola, yBola, raio*2);

}