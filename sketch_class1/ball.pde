class Ball {
 
  float xPos;
  float yPos;
  float size;
  float velocity = 50;
  
  Ball(float tempSize){
    size = tempSize;
    xPos = width/2;
    yPos = width/2;
  }
  
 void display() {
   noStroke();
   //fill(random(255));
   ellipse(xPos,yPos,random(size),random(size));
 }
 
 void move() {
   xPos+=random(-1*velocity,velocity);
   yPos+=(random(-1*velocity,velocity));
 }
 
 void edgeReset() {
  if(xPos>width || yPos>width || xPos<0 || yPos<0) {
    xPos = width/2;
    yPos = width/2;
  }
 }
 
 void fillColor() {
   fill(xPos, yPos, random(255));
 }
}
