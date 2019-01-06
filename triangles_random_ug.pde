void setup(){
  size(600,600,P3D);
  background(255);
  colorMode(RGB);
 // rectMode(CENTER);
}

float angle=0;
float da=0;
float sw=1000;

void draw(){
  
  translate(300,300,da);
  rotate(da);
  rotateX(da);
  
  noStroke();
  
  fill(random(255), random(255), random(255), random(255));
  if(frameCount%2==0)
    fill(random(255), random(255), random(255), random(255));
    
  triangle(100, 100, 200, 100,sw,sw);
  
  da=lerp(da,angle,0.05);
  
  if(angle-da<0.1){
    sw=sw/sqrt(2);
    angle+=PI/4;
  }
  //if (frameCount < 60) {
//saveFrame("frames/SaveExample-####.tif");
//} else {
//exit();
//}
  
}
