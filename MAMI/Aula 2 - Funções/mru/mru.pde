float tAtual = 0;
float vAtual = 10;
float dAtual;

void setup() {
size(600, 600);
background(255);
}

void draw() { 
dAtual = MRU(vAtual, tAtual);
println(tAtual, dAtual);
ellipse(dAtual, 300, 10, 10);
tAtual+= 1.0/60.0;
}

float MRU(float v, float t) {
float d;
d = v * t;
return(d);
}