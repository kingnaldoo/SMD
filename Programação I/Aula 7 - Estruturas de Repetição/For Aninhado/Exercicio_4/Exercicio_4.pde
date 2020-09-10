boolean coord = true;

void setup() {
    size(400, 400);
    background(255, 245, 169);
    noStroke();
    for(int j=0;j<=400;j+=80){
        if(coord==true){
            for(int i=0;i<400;i+=160){
                fill(191, 25, 37);
                quad(i,j, i+80, j+80, i+40, j+80, i, j+40); //vermelho
                fill(254, 225, 2);
                quad(i,j, i+40, j, i+80, j+40, i+80, j+80); //amarelo
                fill(234, 75, 25);
                quad(i+80,j+80, i+160, j, i+160, j+40, i+120, j+80); //laranja
            }
            coord=false;
        }
        else {
            for(int i= -80;i<400;i+=160){
                fill(191, 25, 37);
                quad(i,j, i+80, j+80, i+40, j+80, i, j+40);
                fill(254, 225, 2);
                quad(i,j, i+40, j, i+80, j+40, i+80, j+80);
                fill(234, 75, 25);
                quad(i+80,j+80, i+160, j, i+160, j+40, i+120, j+80);
            }
            coord=true;
        }   
    }
    saveFrame();
}