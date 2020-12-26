float modulo, largura, altura;
void setup() {
    size(800, 600);
    noStroke();
}

void desenhaCirculo(float m) {
    fill(255, 0, 0);
    ellipse(width/2, height/2, m, m);
}

void desenhaRetangulo(float m) {
    fill(255);
    rect(width/2-largura/2, height/2-altura/2, 3*m, 2*m);
}

void mostraBandeira(float l) {
    float m = l/3.;
    altura = m * 2;
    desenhaRetangulo(m);
    desenhaCirculo(m);
}

void draw() {
    background(128);
    largura = mouseX;
    mostraBandeira(largura);
}

