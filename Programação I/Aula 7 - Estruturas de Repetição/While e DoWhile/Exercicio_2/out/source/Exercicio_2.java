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

public class Exercicio_2 extends PApplet {

int x, y;

public void setup() {
     //10 e 17
    background(255);
    x = y = 0;
    do{
        line(x, y, x+20,y+20);
        line(x+20,y+20, x+40, y);
        x = (x<width) ? (x+40) : 0;
        y = (x<width) ? y : (y+20);
    }
    while(y<height);
}
  public void settings() {  size(400, 170); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Exercicio_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
