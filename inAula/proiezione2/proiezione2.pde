/**
 * This is a simple example of how to use the Keystone library.
 *
 * To use this example in the real world, you need a projector
 * and a surface you want to project your Processing sketch onto.
 *
 * Simply drag the corners of the CornerPinSurface so that they
 * match the physical surface's corners. The result will be an
 * undistorted projection, regardless of projector position or 
 * orientation.
 *
 * You can also create more than one Surface object, and project
 * onto multiple flat surfaces using a single projector.
 *
 * This extra flexbility can comes at the sacrifice of more or 
 * less pixel resolution, depending on your projector and how
 * many surfaces you want to map. 
 */

import deadpixel.keystone.*;

Keystone ks;
CornerPinSurface surface;
CornerPinSurface surface2;

PGraphics offscreen, offscreen2;
//PGraphics offscreen2;

float x,w;

void setup() {
  // Keystone will only work with P3D or OPENGL renderers, 
  // since it relies on texture mapping to deform
  size(800, 600, P3D);

  ks = new Keystone(this);
  surface = ks.createCornerPinSurface(400, 300, 20);
  surface2 = ks.createCornerPinSurface(300, 300, 20);
  
  // We need an offscreen buffer to draw the surface we
  // want projected
  // note that we're matching the resolution of the
  // CornerPinSurface.
  // (The offscreen buffer can be P2D or P3D)
  offscreen = createGraphics(400, 300, P3D);
  offscreen2 = createGraphics(300, 300, P3D);
  
  x = 0;
}

void draw() {

  // Convert the mouse coordinate into surface coordinates
  // this will allow you to use mouse events inside the 
  // surface from your screen. 
  
  PVector surfaceMouse = surface.getTransformedMouse();
  PVector surfaceMouse2 = surface2.getTransformedMouse();

  x = x + 3;
  
  if(x > 400+300){
    x = 0;
  }
  
  
  if(x<400){
    w = map(x,0,400,60,300);
  } else {
     w = map(x,400,700,300,60);
  }


  // Draw the scene, offscreen
  offscreen.beginDraw();
  offscreen.background(255);
  
  offscreen.fill(255,0,0);
  
  if(x <= 400+w/2){
    offscreen.ellipse(x,150,w,w);
  }
  
  
  
  offscreen.endDraw();
  
  // l' altra superf
  
  offscreen2.beginDraw();
  offscreen2.background(128);
  offscreen2.fill(255,0,0);
  
  if(x > 400-w/2){
    offscreen2.ellipse(x-400,150,w,w);
  }
  
  
  
  
  offscreen2.endDraw();

  // most likely, you'll want a black background to minimize
  // bleeding around your projection area
  background(0);
 
  // render the scene, transformed using the corner pin surface
  surface.render(offscreen);
  surface2.render(offscreen2,0,0,300,300);
  //surface2.render(offscreen2);
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
