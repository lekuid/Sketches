class Circle {
  
  float r=1;
  float xPos = random(width);
  float yPos = random(height);
  boolean edge;
  
  void display() {
   circle(xPos, yPos, r);
  }
  
  void grow() {
   r+=1;
  }
  
  void pack(Circle c) {
    if(dist(xPos, yPos, c.xPos, c.yPos)*2 >= (r+c.r))  {
      r-=1;
    }
  }
  
  
}
