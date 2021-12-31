class moverBase {
  PVector pos;
  PVector A = new PVector(0,0);
  PVector V = new PVector(0,0);
  float sight = 100;
  float health = 100;
  float thirst;
  float hunger;
  float speed = 4;
  
  moverBase(PVector tempPos) {
    pos = tempPos;
  }
  
  void acceleration() {
    A = new PVector(random(-1*speed,speed),random(-1*speed,speed));
  }
 
  void show() {
    fill(0);
    circle(pos.x, pos.y, 2);
    noFill();
    strokeWeight(0.1);
    stroke(255);
    circle(pos.x, pos.y, sight);
  }
 
  void move() {
    V.add(A);
    V.limit(2);
    pos.add(V);
    A.mult(0);
    edge();
    acceleration();
  }
  
  void edge() {
   if(pos.x>width) pos.x = 0;
   else if(pos.x<0) pos.x = width;
   else if(pos.y<0) pos.y = height;
   else if(pos.y>height) pos.y = 0;
  }
  
}
