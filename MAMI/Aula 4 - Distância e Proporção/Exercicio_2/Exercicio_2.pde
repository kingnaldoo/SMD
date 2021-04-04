float x, y;

void setup() {
    size(400, 300);
    rectMode(CENTER);
}

void draw() {
    background(255);
    fill(255);
    rect(width/2, height/2, 320, 180);
    fill(255, 0, 0);
    
    //utilizando dist:
    if(mouseX >= (width/2)-160 && mouseX <= (width/2)+160 && mouseY >= (height/2)-90 && mouseY <= (height/2)+90){
        x = mouseX;
        y = mouseY;
    }
    circle(x, y, 20);
}