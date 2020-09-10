void setup(){
  strokeWeight(25);
  rectMode(CENTER);
  size(600, 600);
  for(int i=10;i>0;i--){
    rect(300,300,i*100,i*100);
  }
}
