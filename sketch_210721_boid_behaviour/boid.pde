class Boid {
 
  PVector acc = new PVector(0,0);
  PVector vel = new PVector(0,0);
  PVector loc = new PVector(random(width), random(height));
  float maxSpeed;
  float size;
  
  Boid(float tempMaxSpeed, float tempSize) {
    maxSpeed = tempMaxSpeed;
    size = tempSize;
  }
  
  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(-1*atan2(vel.x, vel.y));
    scale(size);
    triangle(0, 5, -3, -5, 3, -5); 
    popMatrix();
  }
  
  void move() {
    if(loc.x<0) loc.x=width;
    else if(loc.x>width) loc.x=0;
    else if(loc.y<0) loc.y=height;
    if(loc.y>height) loc.y=0;
    
    randomMove();
    
    vel.add(acc);
    acc.mult(0);
    vel.limit(maxSpeed*5);
    loc.add(vel);
  }
  
  void randomMove() {
    acc = PVector.random2D();
  }
}
