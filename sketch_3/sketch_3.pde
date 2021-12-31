float posX = 0;
float posY = 0;

void setup(){
  size(640, 380);
  background(0);
}

void draw(){
  noFill();
  ellipse(random(posX), random(posY), 20, 20);
  if(posX<width){
  posX = posX+10;
  }
  else{
    posX = 0;
  }
  if(posY<height){
  posY = posY+1;
  }
  else{
    posY = 0;
  }
  stroke(posY+mouseX, mouseX+mouseY, posX+mouseY);
}

void mousePressed(){
  posX = 0;
}
