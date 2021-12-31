class Walker {
  
  float mass;
  PVector A = new PVector(0,0);
  PVector V = new PVector(0,0);
  PVector pos = new PVector(random(width), random(width));
  
  Walker(float tempMass) {
   mass = tempMass; 
  }
  
  void display() {
   fill(0);
   ellipse(pos.x, pos.y, mass, mass);
  }
    
  void move() {
    edge(); //edge detection
    V.add(A);
    V.limit(2); //Velocity limit at 5
    pos.add(V);
    A = new PVector(0,0);
  }
  
  void edge() {
    if (pos.x>width) pos.x-=width;
    else if (pos.x<0) pos.x+=width;
    else if (pos.y>height) pos.y-=height; 
    else pos.y+=height; 
  }

  void applyForce(float x, float  y) {
    PVector force = new PVector(x, y);
    A.add(force);
  }
  
  void applyForce(PVector force) {
    A.add(force);
  }
  
}
