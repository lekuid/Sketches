class Bubble{
  float x;
  float y;
  
  Bubble() {
   x = random(width);
   y = random(height);
  }
  
  void ascend() {
    y--;
  }
  
  void display() {
    stroke(0);
    fill(127);
    ellipse(x, y, 10, 10);
  }
  
  void top() {
    if(y<0){
       y=height;
    }
  }
    
   
  }
