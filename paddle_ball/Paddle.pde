class Paddle {
 
  float yPos = 10;
  float len;
  
  Paddle(float tempLen) {
   len = tempLen; 
  }
  
  void display() {
    float xPos = mouseX;
    fill(0);
    rectMode(CENTER);
    rect(xPos, width-yPos, yPos+len, yPos); 
  }
  
  void gameLevel(Entity e) {
    for(int level = 1; level<999; level+=1) {
       if (e.score>10) {
         text("Level up!!", 10, 30);
         e.score=0;
         e.velocityX*=1.05;
         e.velocityY*=1.05;
       }
     }
  }
}
