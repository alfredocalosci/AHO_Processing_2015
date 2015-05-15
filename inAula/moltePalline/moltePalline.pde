

void setup(){
  size(600,300);
}

void draw(){
  background(255);
  
  fill(255,0,0);
  noStroke();
  
  float nPalline = 100;
  
  for(int n = 0; n<nPalline; n++){
    // qui le cose si ripetono
     ellipse(width/nPalline/2 + n*(width/nPalline),150,width/nPalline,width/nPalline);
  }
  
}
