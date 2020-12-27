String data;
void setup() {
    size(500, 200);
    data = "xx";
}

void draw() {
    background(0);
    fill(50);
    stroke(50);

    text(data, 10, 10);
}

//nf, match, split

//entrada do usuário
//teclado
void keyPressed() {
    print(key);
    print(keyCode);
    data += String(key);
    if(key==10){
        String div = split(data, ",");
        int pos = data.indexOf(",");
        data = nf(pos, 3 + ":" + nf(div.lenght, 5));
    }    
}