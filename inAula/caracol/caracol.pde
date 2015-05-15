float gira;

void setup(){
  size(600,600);
  gira = 0;
}

void draw(){
  background(74,58,71);
  fill(230,240,117);
  //rect(0,0,120,40);
  
  stroke(200);
  
  // acuerdate de donde está el origen
  pushMatrix(); 
  
  translate(300,300);
  rotate(gira);
  
  for(int n = 0; n < 36; n++ ){
    rotate(TWO_PI / 36);
    fill(230,240,117);
    ellipse(100 + (n*3),0,30 + (n*2.5),30 + (n*2.5));
    fill(200,30);
    rect(-40,-40,80,80);
    line(0,0,120,0);
    
  }
  
  
  // vuelve a colocar los ejes en su sitio
  popMatrix();
  
  gira = gira + 0.01;
  //rect(300,300,120,40);
  
}


