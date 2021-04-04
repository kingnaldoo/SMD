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
    // Utilizando map:
    x = map(mouseX, 0, width, (width/2)-160, (width/2)+160);
    y = map(mouseY, 0, height, (height/2)-90, (height/2)+90);

    circle(x, y, 20);
}