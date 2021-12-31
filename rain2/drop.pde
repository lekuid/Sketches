class Drop {
  
  float xPos = random(width);
  float yPos = random(width);
  float vel;
  float len = random(10);
  
  Drop(float tempVel) {
    vel = tempVel;
  }
  
  void display() {
    stroke(255);
    line(xPos, yPos, xPos, yPos+len);
  }
  
  void rain() {
   yPos+= vel+len;
   if (0>yPos || yPos>width){
     yPos=0;
   }
  }
  
}
