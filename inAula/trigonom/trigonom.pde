float angolo;

void setup(){
 size(600,600);
 angolo = 0;
}

void draw(){
  background(255);
  
  fill(200,0,0);
  noStroke();
  // questo é il centro
  ellipse(300,300, 32,32);
  
  fill(0,0,200);
  // angolo = 0
  // raggio = 100
  ellipse(300 +cos(angolo)*100, 300 + sin(angolo)*100, 32,32);
  
  ellipse(300 +cos(angolo + PI/4)*100, 300 + sin(angolo + PI/4)*50, 16,16);
  
  ellipse(60,300,50 + cos(angolo)*30,32);
  
  stroke(0,128);
  line(300,300,mouseX,mouseY);
  line(300 +cos(angolo)*100,300 + sin(angolo)*100,300 +cos(angolo + PI/4)*100,300 + sin(angolo + PI/4)*50);
  line(60, 300,300 +cos(angolo)*100, 300 + sin(angolo)*100 );
  
  // cambio il valore dell' angolo
  angolo = angolo + 0.01;
}
