int numeros[] = {2, 2, 3, 7, 8, 9, 9};

void setup() {
    println("A moda do vetor: ", moda(numeros));
}

float moda(int[] valores) {
    int qtdModa, numModa, contador;
    qtdModa = numModa = contador = 0;
    valores = sort(valores);
    for (int i = 0; i < (valores.length - 1); i++) {
        if (valores[i] == valores[i+1])
            contador++;
        else
            contador = 0;
        if (contador > qtdModa) {
            qtdModa = contador;
            numModa = valores[i];
        }
    }
    return numModa;
}