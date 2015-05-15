class pallina {

  float x, y, w;
  color c;

  // costruttore della classe pallina
  pallina(float _x, float _y, float _w, color _c) {
    x = _x;
    y = _y;
    w = _w;

    c = _c;
  }

  // cose che si possono far fare alle palline
  void display() {
    fill(c);
    noStroke();
    ellipse(x, y, w, w);
  }
  
  // aggiorna le palline
  void update(){
    w = w + 0.5;
  }
  
}

