
void setup() {
  size(600, 600);
}

void draw() {
  background(255);

  fill(255, 0, 0);
  noStroke();
  rect(0, 0, 120, 40);

  pushMatrix(); // ricordati dove é il pinto di origine
  translate(300, 150); // muove il punto di origine
  rotate(-PI/4);
  // disegno qualcosa
  rect(0, 0, 120, 40);
  popMatrix(); // riporta il punto di origine dove era
  
}

