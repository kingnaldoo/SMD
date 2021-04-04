int numeros[] = {2, 2, 3, 7, 8, 9, 9};
int numeros2[] = {1, 4, 4, 5, 6, 7, 7, 7};

void setup() {
    println("A media do primeiro vetor: ", media(numeros));
    println("A media do segundo vetor: ", media(numeros2));
}

float media(int[] valores) {
    valores = sort(valores);
    if(valores.length % 2 == 1){
        return (float) valores[(valores.length-1)/2];
    }
    else{
        return (float) (valores[valores.length/2] + valores[(valores.length/2)-1])/2;
    }
}