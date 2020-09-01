float computer;
int num;

void setup() {
  size(620, 260);
  colorMode(HSB, 100);
}

void draw() {
  //definição do layoult do jogo
  background(0,0,100);
  fill(180, 0, 0);
  text("Pedra, papel, tesoura, lagarto, Spock", 200, 20);
  text("Digite um número", 240, 60);
  for (int i = 20; i<=620; i+=120) {
    fill(i/4, 80, 80);
    square(i, 80, 100);
  }
  fill(0);
  text("(1)Pedra", 50, 135);
  text("(2)Papel", 170, 135);
  text("(3)Tesoura", 285, 135);
  text("(4)Lagarto", 405, 135);
  text("(5)Spock", 530, 135);

  //ação de pressionar a tecla
  if (keyPressed) {
    computer = random(49, 53);
    num = int(computer);
    switch(num){
      case 49:
        text("Computador: Pedra", 240, 205);
        break;
      case 50:
        text("Computador: Papel", 240, 205);
        break;
      case 51:
        text("Computador: Tesoura", 240, 205);
        break;
      case 52:
        text("Computador: Lagarto", 240, 205);
        break;
      case 53:
        text("Computador: Spock", 240, 205);
        break;
    }
    
    switch(keyCode){
      case 49:
        text("Você: Pedra",240,223);
        if (num==51 || num==52) {
          text("Pedra ganhou",240,240);
        } else if (num==49) {
          text("Deu Empate",240,240);
        } else {
          text("Pedra Perdeu",240,240); 
        }
        break;

      case 50:
        text("Você: Papel",240,223);
        if (num==49 || num==53) {
          text("Papel ganhou",240,240);
        } else if (num==50) {
          text("Deu Empate",240,240);
        } else {
          text("Papel Perdeu",240,240);
        }
        break;
     

    case 51:
      text("Você: Tesoura",240,223);
      if (num==50 || num==52) {
        text("Tesoura ganhou",240,240);
      } else if (num==51) {
        text("Deu Empate",240,240);
      } else {
        text("Tesoura Perdeu",240,240);
      }
      break;
     
    case 52:
      text("Você: Lagarto",240,223);
      if (num==50 || num==53) {
        text("Lagarto ganhou",240,240);
      } else if (num==52) {
        text("Deu Empate",240,240);
      } else {
        text("Lagarto Perdeu",240,240);
      }
      break;
   
   default:
     text("Você: Spock",240,223);
      if (num==51 || num==49) {
        text("Spock ganhou",240,240);
      } else if (num==53) {
        text("Deu Empate",240,240);
      } else {
        text("Spock Perdeu",240,240);
      }
   }    
  }
  noLoop();
}

void keyPressed(){
  loop();
}
