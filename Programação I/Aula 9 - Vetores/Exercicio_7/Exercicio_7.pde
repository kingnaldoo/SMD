String palavra = "SONHAR";
String []verbo = new String[palavra.length()];

for(int i = 0; i<palavra.length(); i++){
    verbo[i] = str(palavra.charAt(i));
}

String conjugacao = verbo[palavra.length()-2] + verbo[palavra.length()-1];

switch(conjugacao){
    case "AR" :
        print("O verbo "+palavra+" é da 1ª conjugação.");
    break;	

    case "ER" :
        print("O verbo "+palavra+" é da 2ª conjugação.");
    break;	

    case "IR" :
        print("O verbo "+palavra+" é da 3ª conjugação.");
    break;	
}