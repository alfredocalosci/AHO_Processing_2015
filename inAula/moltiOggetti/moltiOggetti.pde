pallina Marta, Altra;

void setup(){
  size(600,600);
  // creo Marta
  Marta = new pallina(150,300,64,color(128));
  Altra = new pallina(450, 100, 128, color(128,0,0));
}

void draw(){
  background(255);
  
  // disegna Marta sullo schermo
  Marta.display();
  Altra.display();
  
  Marta.update();
  // w = w + 0.5;
}

void keyPressed(){
  
  if(key == 'a'){
    Marta.c = color(0,255,0);
  }
  
  if(key == 'z'){
    Altra.w += 5 ;
  }
  
}
