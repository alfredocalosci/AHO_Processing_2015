class pallina {

  float x, y, w;
  float vx, vy;

  // costruttore della classe pallina
  // é il setup di ogni pallina
  
  pallina(float _x, float _y, float _w) {

    x = _x;
    y = _y;
    w = _w;

    vx = random(-3, 3);
    vy = random(-3, 3);
  }

  void display() {

    fill(255, 0, 0);
    ellipse(x, y, w, w);

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

