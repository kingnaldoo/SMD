int numeros[] = {8, 8, 3, 4, 5};

void setup() {
    println("A amplitude do vetor: ", amplitude(numeros));
}

int amplitude(int[] valores) {
    valores = sort(valores);
    int minimo = valores[0];
    int maximo = valores[valores.length-1];
    return maximo - minimo;
}