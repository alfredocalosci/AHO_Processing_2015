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

public class contenitore extends PApplet {

ArrayList <pallina> Contenitore;

public void setup() {
  size(600, 600);
  Contenitore = new ArrayList();

  for (int n = 0; n < 120; n++) {
    // crea una pallina "P"
    pallina P = new pallina(random(width), random(height), random(8,120), color(0,random(255)));
    // mette la pallina P nel contenitore
    Contenitore.add(P);
  }
}

public void draw() {
  background(255);

  // disegna tutte le palline del Contenitore
  for (int n = 0; n<Contenitore.size (); n++) {
    // prendi l' ennesima pallina
    pallina ennesima = Contenitore.get(n);
    // disegnala sullo schermo
    ennesima.display();
    ennesima.update();
  }
}

public void mousePressed(){
  // creo una nuova pallina
  pallina nuova = new pallina(mouseX, mouseY, random(8,120), color(random(255), random(255), random(255)));
  // la aggiungo al contenitore
  Contenitore.add(nuova);
}



class pallina {

  float x, y, w;
  int c;

  float vy;

  // costruttore della classe pallina
  pallina(float _x, float _y, float _w, int _c) {
    x = _x;
    y = _y;
    w = _w;

    c = _c;

    vy = random(-3, 3);
  }

  // cose che si possono far fare alle palline
  public void display() {
    fill(c);
    noStroke();
    ellipse(x, y, w, w);
  }

  // aggiorna le palline
  public void update() {
    // w = w + 0.5;

    y += vy;

    if (y < 0  || y > height) {
      vy = vy * -1;
    }
    
   
    
    
  }
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#000000", "--stop-color=#CCCCCC", "contenitore" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
