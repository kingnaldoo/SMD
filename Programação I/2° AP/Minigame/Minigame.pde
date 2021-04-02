int[][] f = new int[11][11];
int xPlayer = 50;
int yPlayer = 50;
int xVetor;
int yElementos;
int temp = 1000;
int scor = 0;
String fim = "";

void setup() {
    size(600,600);
    noStroke();
    for (int i = 0;i < 15;i++) {
        xVetor =(int) random(11);
        yElementos = (int) random(11);
        f[xVetor][yElementos] = 10;
        //println(x,y);  
    }   
}

void draw() {
    background(0);  
    score();
    tempo();     
    for (int i = 0; i < f.length; i++) {         
        for (int j = 0; j < f[0].length; j++) {
            if (xPlayer == i * 50 + 50 && yPlayer == j * 50 + 50 && f[i][j] == 10) {
                f[i][j] = 0;
                scor +=1;
               if (scor == 5){
                 scor = 0;   
                    fim = "O jogo acabou. Você completou em  " + millis() / temp + "  segundos";
                   temp = 1000000;
                   xPlayer =- 10000;
                   yPlayer =- 10000;
                }
    }                
            fill(155,20,20);     
            comidas(i * 50 + 50, j * 50 + 50, f[i][j],f[i][j]);
        }
        player();
    }
}

void keyPressed() {
    if (keyCode == LEFT) {
        xPlayer -=50;
        if (xPlayer <= 50) {
            xPlayer = 50;
        }
    } else if (keyCode == RIGHT) {
        xPlayer +=50;
        if (xPlayer >= 550) {
            xPlayer = 550;
      }     
    } else if (keyCode == UP) {
        yPlayer -=50;
        if (yPlayer <= 50) {
            yPlayer = 50;       
        }
    }
    else if(keyCode == DOWN) {
        yPlayer +=50;
        if (yPlayer >= 550) {
            yPlayer = 550;   
        }
    }
} 

void player() {
    fill(95,235,235);
    ellipse(xPlayer,yPlayer,50,50);
    fill(0);
}

void comidas(int t, int k, int a, int b) {
    ellipse(t,k,a,b);
}

void score() {
    fill(95,235,235);
    textSize(18);
    text("Score:" + scor,0,18);
    text(fim,80,250);
}

void tempo() {  
    fill(95,235,235);
    textSize(18);
    text("Tempo:" + millis() / temp,500,18);
}

