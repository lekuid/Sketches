class Drop {
  
  float x;
  float y;
  float len;
  
  Drop(){
    x = random(width);
    y = random(width);
    len = random(5);
  }
  
  void display() {
    stroke(220, 200, 255);
    line(x, y, x, y+len);
  }
  
  void fall(float velocity) {
   y+=velocity+len;
   if(y>width){
     y=0;
   } else if(y<0) {
     y=width;
   }
  }
}
