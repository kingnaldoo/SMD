int[]inteiros = new int[20];
String[]inteiros2 = new String[20];
int contador = 0;

for(int i = 0; i<20; i++){
  inteiros[i] = (int) random(0, 10);
  inteiros2[i] = str(inteiros[i]);
  contador = (inteiros[i]==3) ? (contador+=1) : contador;
}

print("Elementos desse vetor = ");
println(inteiros2);
println("O 3 aparece "+contador+" vez(es)");
