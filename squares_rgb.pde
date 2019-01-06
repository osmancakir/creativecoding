void setup(){
  size(600,600,P3D);
  background(255);
  colorMode(RGB);
  rectMode(CENTER);
}

float angle=0;
float da=0;
float sw=1000;

void draw(){
  
  translate(300,300,da);
  rotate(da);
  rotateX(da);
  
  noStroke();
  
  if (frameCount%3==2)
    fill(255,0,0);
  else if(frameCount%3==0){
    fill(0,0,255);
    }
  else if (frameCount%3==1){
      fill(0,255,0);
    }
    
    
  rect(0,0,sw,sw);
  
  da=lerp(da,angle,0.05);
  
  if(angle-da<0.1){
    sw=sw/sqrt(2);
    angle+=PI/2;
  }
//  if (frameCount <60 ) {
//saveFrame("frames/SaveExample-####.png");
//} else {
//exit();
//}
  
}
