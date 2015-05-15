class pallina {

  float x, y, w;
  float vx, vy;

  float tx,ty; // target
  
  // costruttore della classe pallina
  // é il setup di ogni pallina

  boolean modoImmagine;

  pallina(float _x, float _y, float _w) {

    x = _x;
    y = _y;
    w = _w;

    vx = random(-3, 3);
    vy = random(-3, 3);

    modoImmagine = false;
    tx = random(width);
    ty = random(height);
    
  }

  void display() {
    noStroke();
    fill(255, 0, 0, 128);
    ellipse(x, y, w, w);
  }


  void update() {

    if (modoImmagine) {
      // va verso il target
      float dx = tx - x; 
      float dy = ty - y;
      
      x += dx *  0.05;
      y += dy *  0.05;
      
      
    } else {
      x += vx;
      y += vy;

      if (x<w/2 || x > width-w/2) {
        vx = vx*-1;
      }

      if (y<w/2 || y > height-w/2) {
        vy = vy*-1;
      }
    }
  }
}

