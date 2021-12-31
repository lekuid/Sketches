class Mover {
  Repulse r;
  float x;
  float y;
  float size;
  PVector acc1 = new PVector(0,0);
  PVector acc2 = new PVector(0,0);
  PVector vel = new PVector(0,0);
  PVector F = new PVector(random(width),random(height));
  
  Mover(Repulse tempRepulse, float tempSize) {
    r = tempRepulse;  
    size = tempSize;
  }
  
  void place() {
    fill(0);
    circle(F.x, F.y, size);
    motion();
    joiner();
  }
  
  void motion() {
    randomAcceleration();
    repulseAcceleration();
    edge();
    vel.add(acc1);
    vel.add(acc2);
    vel.limit(5);
    F.add(vel);
  }
  
  void joiner(){
    float rn=random(500);
    if(rn<2){
      strokeWeight(0.6);
      line(r.x, r.y, F.x, F.y);
    } else rn=random(500);
  }
  
  void edge() {
    if(F.x>width) F.x = 0;
    else if(F.x<0) F.x = width;
    if(F.y>height) F.y = 0;
    else if(F.y<0) F.y = height;
  }
  
    
  void randomAcceleration(){
    acc1= new PVector(random(-0.2,0.2), random(-0.2,0.2));
  }
  
  void repulseAcceleration() {
    float dist = dist(r.x, r.y, F.x, F.y);
    PVector foll = F.copy();
    foll.sub(new PVector(r.x, r.y));
    foll.setMag(1/(size*2));
    acc2=foll;
  }
}
