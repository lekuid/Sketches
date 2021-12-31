class Repulse {
  float x;
  float y;
  float size;
  float angle = 0;
  float rad = width*2;
  
  Repulse(float tempSize) {
    size = tempSize; 
  }
  
  void enable() {
    joiner();
    circle(x,y,size); 
    x = sin(angle) * rad + width/2;
    y = cos(angle) * rad + height/2;
    angle+=0.01;
    rad=map(noise(angle),0,1,0,width);
  }
  
  void joiner() {
  line(width/2, height/2, x, y);
  }
  
}
