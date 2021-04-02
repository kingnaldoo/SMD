String []inteiros = new String[15];

for(int i = 0; i<15; i++) {
  inteiros[i] = str((int) random(0, 100));
}

print("a) Vetor de inteiros: ");
println(inteiros);
print("\nb) Primeiro valor: ");
println(inteiros[0]);
print("\nc) Último Valor: ");
println(inteiros[inteiros.length-1]);
print("\nd) Valor do meio: ");
println(inteiros[(inteiros.length-1)/2]);
