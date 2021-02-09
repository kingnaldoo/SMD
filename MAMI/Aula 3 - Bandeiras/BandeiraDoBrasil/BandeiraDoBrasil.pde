float largura, altura, modulo;

void setup() {
    size(600, 420);
    noStroke();
}

void draw() {
    background(255);
    largura = mouseX;
    bandeira(largura);
}

void bandeira(float largura){
    modulo = largura/20;
    altura = modulo*14;
    retangulo(modulo);
    losango(modulo);
    circulo(modulo);
}

void retangulo(float m){
    fill(#01A860);
    rect(width/2-largura/2, height/2-altura/2, 20*m, 14*m);
}

void losango(float m){
    fill(#FFFF01);
    float alturaLosango, larguraLosango;
    alturaLosango = m*(14-(1.7*2));
    larguraLosango = m*(20-(1.7*2));
    quad(width/2, height/2-alturaLosango/2, width/2+larguraLosango/2, height/2, width/2, height/2+alturaLosango/2, width/2-larguraLosango/2, height/2);
}

void circulo(float m){
    fill(#0100FE);
    float diametro = m*7;
    circle(width/2, height/2, diametro);
}
