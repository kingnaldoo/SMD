String ana = "ANA COME BANANA";
char []newAna = new char[15];
int contador = 0;

for(int i = 0; i<15; i++) {
  newAna[i] = ana.charAt(i);
  contador = (ana.charAt(i)=='A') ? (contador+=1) : contador;
}

String []posicao = new String[contador];
int contador2 = 0;
for(int i = 0; i<15; i++){
  if(ana.charAt(i)=='A'){
    posicao[contador2]=str(i);
    contador2+=1;
  }
}

print("A letra A aparece "+contador+" vez(es)");
print("\nA letra A aparece nas posições: ");
println(posicao);
