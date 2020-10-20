String []inteiros = new String[20];
int num;

for(int i = 0; i<20; i++) {
  inteiros[i] = str((int) random(0, 100));
}

print("vetor = ");
println(inteiros);
print("índice escolhido = ");
println(num = (int) random(1, 19));
print("elemento no índice "+num+" = ");
println(inteiros[num]);
print("elemento anterior = ");
println(inteiros[num-1]);
print("elemento seguinte = ");
println(inteiros[num+1]);
