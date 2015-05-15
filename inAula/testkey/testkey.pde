import deadpixel.keystone.*;

Keystone ks;
CornerPinSurface surface;
PGraphics offscreen;

float occhioX;
float occhioY;
float occhioD;

void setup() {
  size(800, 600, P3D);
  
  ks = new Keystone(this);
  surface = ks.createCornerPinSurface(600, 600, 20);
  offscreen = createGraphics(600, 600, P3D);
  
  //ks.load();
  occhioX = 450;
  occhioY = 200;
  occhioD = 400;
}


void draw() {
  background(0);
  
  offscreen.beginDraw();
  offscreen.background(128);
  
  offscreen.noStroke();
  offscreen.fill(128, 0, 0);
  offscreen.ellipse(occhioX, occhioY, occhioD, occhioD);
  // bianco
  offscreen.fill(255);
  offscreen.ellipse(occhioX, occhioY, occhioD*2/3, occhioD*2/3);
  // pupilla nera
  offscreen.fill(0);
  offscreen.ellipse(occhioX, occhioY, occhioD/6, occhioD/6);
  
  
  offscreen.endDraw();  
  
  surface.render(offscreen);
}

void keyPressed() {
  switch(key) {
  case 'c':
    // enter/leave calibration mode, where surfaces can be warped 
    // and moved
    ks.toggleCalibration();
    break;

  case 'l':
    // loads the saved layout
    ks.load();
    break;

  case 's':
    // saves the layout
    ks.save();
    break;

  
  }
}


