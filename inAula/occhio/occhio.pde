// dichiaro le variabili
float occhioX;
float occhioY;
float occhioD; // diametro


void setup() {
  size(600, 600);
  // assegno valori alle variabili
  occhioX = 300;
  occhioY = 200;
  occhioD = 300;
}


void draw() {
  background(100); // colore del fondo

  stroke(255);
  // line(20,20,mouseX,mouseY);

  // occhio
  noStroke();
  fill(128, 0, 0);
  ellipse(occhioX, occhioY, occhioD, occhioD);
  // bianco
  fill(255);
  ellipse(occhioX, occhioY, occhioD*2/3, occhioD*2/3);
  // pupilla nera
  fill(0);
  ellipse(occhioX, occhioY, occhioD/6, occhioD/6);
}

