float []inteiros = new float[5];
String []inteiros2 = new String[5];
float media, maior, menor;
int posMaior, posMenor;
media = maior = menor = posMaior = posMenor = 0;

for(int i = 0; i<5; i++) {
  inteiros[i] = (float) random(20, 80);
  inteiros2[i] = str(inteiros[i]);
  media+=inteiros[i];
  posMaior = (inteiros[i]>maior) ? i : posMaior;
  maior = (inteiros[i]>maior) ? inteiros[i] : maior;
  posMenor = (inteiros[i]<menor) ? i : posMenor;
  menor = (inteiros[i]<menor) ? inteiros[i] : inteiros[i];
    
}
media=media/5;

print("vetor = ");
println(inteiros2);
print("média dos elementos = ");
println(media);
print("Maior valor = ");
println(maior);
print("Posição do maior valor = ");
println(posMaior);
print("Menor valor = ");
println(menor);
print("Posição do menor valor = ");
println(posMenor);
