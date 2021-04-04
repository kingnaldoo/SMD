int[] posY = new int[30];
int cont;

int funcX(){
    int somaY = 0;
    for(int i=0; i<30; i++)
        somaY = somaY + posY[i];
    return int(somaY/30);
}

void draw() {
    background(0);
    posY[cont % 30] = mouseY;
    rect(width/2-5, funcX(), 10, 10);
    cont++;
}
