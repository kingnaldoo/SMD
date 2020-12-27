int numeros[] = new int[101];
int contarPares;
int auxIndex = 0;

for (int i = 0; i<=100; i++){
numeros[i] = i;
}

for (i : numeros){
  if(i % 2 == 0){
    contarPares +=1;
  }
}

int aux[] = new aux[contarPares];

for (i : numeros){
  if(numeros[i] % 2 != 0){
    aux[auxIndex] = i;
    auxIndex++;
  }
}

numeros = aux;
print(numeros);