import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Exercicio_1 extends PApplet {

int x, y;

public void setup() {
    
    background(255);
    x = y = 0;
    while(x<width){
        y=0;
        while(y<height){
            line(x, y, x+30, y+30);
            y+=30;
        }
        x+=30;
    }
    saveFrame("Exercicio_1.png");
}
  public void settings() {  size(600, 180); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Exercicio_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
