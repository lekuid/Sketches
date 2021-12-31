ArrayList<Mover> m;

void setup() {
  size(500,500);
  m = new ArrayList<Mover>();
  for(int i=0; i<100; i++) {
    m.add(new Mover());
  }
}

void draw() {
  background(0);
  for(int i=0; i<m.size(); i++) {
    Mover m1 = m.get(i);
    m1.show();
    m1.move();
  }
}

class Mover {
  PVector A = PVector.random2D();
  PVector V = new PVector(0,0);
  PVector F = new PVector(random(width), random(height));
  
  float direction() {
    float angle = -atan2(V.x, V.y);
    return angle;
  }
  
  void show() {
    fill(255);
    pushMatrix();
    translate(F.x, F.y);
    rotate(direction());
    triangle(0 , 5, -3, -5, 3, -5);
    popMatrix();
    
  }
  
  void move() {
    edgeDetect();
    if(mousePressed == false) {
    seekA();
    } else randomA();
    V.add(A);
    V.limit(8);
    A.mult(0);
    F.add(V);
  }
  
  void edgeDetect() {
   if(F.x<0) F.x+=width;
   else if(F.x>width) F.x=0;
   else if(F.y<0) F.y+=height;
   else if(F.y>height) F.y=0;
  }
  
  void randomA() {
   A = PVector.random2D(); 
  }
  
  void seekA() {
    PVector mouseLoc = new PVector(mouseX, mouseY);
      mouseLoc.sub(F);
      mouseLoc.setMag(1);
      A = mouseLoc;
  }
}
