class Entity {
   
  float xPos = random(width);
  float yPos = random(height);
  float vel;
  float velocityX;
  float velocityY;
  float size;
  int score = 0;
  
  Entity(float tempSize, float tempVel) {
    size = tempSize;
    vel = tempVel;
    velocityX = vel;
    velocityY = vel;
  }
  
  void display() {
   fill(0);
   circle(xPos, yPos, size); 
  }
  
  void display(String scoreShow) {
    if(scoreShow == "ScoreShow") {
      text(score, 10, 60);
    }
    fill(0);
    circle(xPos, yPos, size); 
  }
  
  void move(boolean edges) {
    xPos+=velocityX;
    yPos+=velocityY;
    
    if(edges == true){
      if(xPos>width | xPos<0) {
        velocityX= velocityX*-1;
      } 
      else if(yPos>width | yPos<0) {
        velocityY= velocityY*-1;
      }
    }
  }
  void hit(Paddle p) {
    
    float Xhb = mouseX;
    float Yhb = width-p.yPos; //HitBox
   
    
    if(yPos>=Yhb-10 && Xhb+20 > xPos && Xhb-20 < xPos){
        yPos-=1;
        print("okay");
        print(yPos+size+1, width);
        velocityY= velocityY*-1;
        score+=1;
       } else if(yPos+size>=width) {
         xPos = width/2;
         yPos = width/2;
       }
   }
 }
  
