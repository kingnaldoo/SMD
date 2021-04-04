int x, y;
int contB, contP;
int sorteio; //escolha da cor para cada ponto

void setup() {
    size(400, 400);
    strokeWeight(8);
    contB = 0;
    contP = 0;
}

void draw() {
    y = (int)random(400);
    sorteio = (int)random(100);

    if(sorteio < 50){
        x = (int)random(200);
        contB++;
        stroke(255);
    }
    else{
        x = (int)random(200, 400);
        contP++;
        stroke(0);
    }
    point(x, y);
    println(contB, contP);
}
