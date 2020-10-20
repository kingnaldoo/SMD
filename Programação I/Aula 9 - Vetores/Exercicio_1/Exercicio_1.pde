String []inteiros = new String[15];

for(int i = 0; i<15; i++) {
  inteiros[i] = str((int) random(0, 100));
}

print("a) ");
println(inteiros);
print("\nb) ");
println(inteiros[0]);
print("\nc) ");
println(inteiros[inteiros.length-1]);
print("\nd) ");
println(inteiros[(inteiros.length-1)/2]);
