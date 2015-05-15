  PImage laImmagine;
  String unTesto;
  
  String [] nomi;
  
  float [] x;
  float [] y;
  color [] colori;
  
  int numero;
  
  void setup(){
    laImmagine = loadImage("leone.jpg");
    size(laImmagine.width,laImmagine.height);
    unTesto = "Ciao ... ";
    
    nomi = new String[3];
    
    nomi[0] = "Alfredo";
    nomi[1] = "Marta";
    nomi[2] = "Fulvio";
    
    numero = 1200;
    
    x = new float[numero];
    y = new float[numero];
    colori = new color[numero];
    
    // ripeti 500 volte
    
    for(int n = 0; n<numero; n++){
      // n va da 0 a 499
      // scegli una x a caso (e mettila nel contenitore)
      x[n] = random(width);
      y[n] = random(height);
      
      color questo = laImmagine.get(floor(x[n]), floor(y[n]));
      
      
      colori[n] = questo;
    }
    
    
    // scegli una y a caso
    // (un punto a caso)
    // guarda che colore c' è in quel punto
    // aggiungi il colore al contenitore
    
  }
  
  void draw(){
    // image(laImmagine, 0,0);
    
    /*
    color c = laImmagine.get(mouseX,mouseY);
    fill(c);
    noStroke();
    ellipse(mouseX,mouseY,8,8);   
    */
    
    for(int n = 0; n<numero; n++){
      // prendi l' ennesimo colore
      fill(colori[n]);
      
     // brightness();
      
      noStroke();
      ellipse(x[n],y[n],25,25);
      
      // disegna una ellise 
    }
    
    //fill(0);
    text(unTesto + nomi[1], 20,20);
  }
  
  void mousePressed(){
   // saveFrame();
   
     // println(c);
  }
  
  void keyPressed(){
    saveFrame("fotogramma-####.jpg");
    println("salvato il file !!!");
  }
