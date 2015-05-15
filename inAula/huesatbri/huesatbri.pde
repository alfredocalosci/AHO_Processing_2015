void setup(){
  size(600,600);
  colorMode(HSB, 360,100,100);
}


void draw(){
  float H = map(mouseX,0,width,0,360);
  float S = map(mouseY,0,height,100,0);
  background(H,S,80);
}
