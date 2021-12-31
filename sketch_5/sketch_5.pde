void setup(){
  size(300,300);
}

float dimX = 2;
float dimY = 2;
float velX = random(width);
float velY = random(height);
float size = height/10;

void draw(){
  background(255);
  circle(velX,velY,size);
  velX = velX + dimX;
  velY = velY + dimY;
  if(velX>height-size/2 || velX<0+size/2){
    dimX = dimX*-1;
  }
  if(velY>width-size/2 || velY<0+size/2){
  dimY = dimY*-1;
  }
}
