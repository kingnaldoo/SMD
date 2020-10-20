String palavra = "BANANA";
char []nome = new char[palavra.length()];
int a = 0;
String inverso = "";

for(int i=palavra.length()-1; i>=0;i--){
    nome[a] = palavra.charAt(i);
    inverso+=nome[a];
    a++;
}

print("O inverso de "+palavra+" é "+inverso+".");