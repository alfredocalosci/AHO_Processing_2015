float giri;
float angolo;

void setup(){
  size(600,600);
  giri = 6;
  angolo = 0;
}

void draw(){
  background(255);
  
  pushMatrix();
  translate(width/2,height/2);
  
  
  fill(0,200,0,32);
  
  // 12 volte
  //float giri = 36;
  
  float giri = map(cos(angolo), -1, 1, 24, 72);
  
  for(int n = 0; n<giri*2; n++){
    // gira un po
    rotate(TWO_PI/giri); // un dodicesimo della circonferenza
    // disegna qualcosa
    noStroke();
    rect(0,0,120 + (n*4),40);
    
    stroke(255,128);
    strokeWeight(3);
    line(32,0, 64,64);
    
  }
  
  popMatrix();
  angolo += 0.01;
  
}

void keyPressed(){
  // le cose che scrivo qui
  // succedono quando si schiacciano i tasti della tastiera
  
  if(key == 'a'){
    giri++; // incremento unitario
  }
  
  if(key == 'z'){
    giri--; // incremento unitario
  }
  
}
