class Blob {
  PVector loc = new PVector(width/2, height/2);
  PVector A = new PVector(0,0);
  PVector V = new PVector(0,0);
  float mass;
  float velocity; 
  //Blob b2;
  
  Blob(float tempMass, float tempVelocity) {
    mass = tempMass;
    velocity = tempVelocity;
  }
  
  void display() {
   fill(0);
   circle(loc.x,loc.y, mass); 
  }
  
  void move() {
   V.add(A);
   A = new PVector(0,0);
   loc.add(V);
   V.limit(2);
   //acceleration type
   acceleration();
   
   if(loc.x>width) loc.x = 0;
   else if (loc.x<0) loc.x = width;
   else if (loc.y>height) loc.y = 0;
   else if (loc.y<0) loc.y = height;
  }
  
  void acceleration() {
    //PVector dir = b2.loc.sub(loc);
    //randomWalker
    A = new PVector(random(-width/velocity, width/velocity),
                    random(-height/velocity, height/velocity));
  }
}
