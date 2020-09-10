boolean direction=true;
int cor1, cor2;

void setup() {
    size(420, 420);
    noStroke();
    for(int j=0;j<=432;j+=25){
        if(direction==true){
            cor1 = cor2 = 0;
            for(int i=30;i<=420;i+=60){
                if(cor1==0){
                    fill(255);
                    cor1=1;
                }
                else if(cor1==1){
                    fill(0);
                    cor1=2;
                }
                else{
                    fill(128);
                    cor1=0;
                }
                circle(i,j,60);
                }
            direction=false;
        }
        else{
            for(int i=0;i<=420;i+=60){
                if(cor2==0){
                    fill(0);
                    cor2=1;
                }
                else if(cor2==1){
                    fill(128);
                    cor2=2;
                }
                else{
                    fill(255);
                    cor2=0;
                }
                circle(i,j,60);
            }
            direction=true;
        } 
    }  
}