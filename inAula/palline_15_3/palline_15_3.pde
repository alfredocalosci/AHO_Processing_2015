pallina p,q;
ArrayList <pallina> Contenitore; // è un contenitore di palline

void setup(){
  size(600,600);
  
  p = new pallina(100,200,64);
  q = new pallina(400,200,120);
  
  Contenitore = new ArrayList();
  Contenitore.add(p);
  Contenitore.add(q);
  
  // altre 300
  for(int n = 0; n < 300; n++){
    pallina nuova = new pallina(300,300,random(8,32));
    Contenitore.add(nuova);
  }
  
  frameRate(24);
}

void draw(){
  background(255);
  
  //p.display();
  //q.display();
  
  // disegna tutte le palline del contenitore
  for(int n = 0; n < Contenitore.size(); n++){
    // prendi una pallina
    pallina questa = Contenitore.get(n);
    // disegnala sullo schermo
    questa.display();
    questa.update();
    
  }
  
}



void keyPressed(){
  
  // cambia modoImmagine di tutte le palline
  for(int n = 0; n < Contenitore.size(); n++){
    pallina questa = Contenitore.get(n);
    questa.modoImmagine = !questa.modoImmagine;
  }
  
}
