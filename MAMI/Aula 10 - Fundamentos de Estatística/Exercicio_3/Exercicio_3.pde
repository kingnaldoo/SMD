int[] posX = new int[30];
int cont;

void setup() {
    size(100, 100);    
}

int funcX(){
    int somaX = 0;
    for(int i=0; i<30; i++)
        somaX = somaX + posX[i];
    return int(somaX/30);
}

void draw() {
    background(0);
    posX[cont % 30] = mouseX;
    rect(funcX(), 45, 10, 10);
    cont++;
    println(width, height);
}
