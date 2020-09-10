boolean coord = true;
int a;

void setup(){
    size(400, 400);
    noStroke();
    background(136, 158, 171);
    fill(91, 121, 131);
    for(int j=0;j<=350;j+=70){
        if(coord==true){
            for(int i=0;i<=400;i+=80){
                a = ((i+80)+i)/2; //Média entre as coordenadas de x
                triangle(i, j, i+80, j,a , j+70);
            }
            coord=false;
        }
        else{
            for(int i= -40;i<=400;i+=80){
                a = ((i+80)+i)/2;
                triangle(i, j, i+80, j,a , j+70);
            }
            coord=true;
        }
    }
}


