class Pendulum {
   PVector bobLoc = new PVector(width*2, height/3);
   PVector swingLoc = new PVector(width*2, 0);
   float len = dist(bobLoc.x, bobLoc.y, swingLoc.x, swingLoc.y);
   float angle = 90;
   float aVel = 0.0;
   float aAcc = 0.0;
   float size = 20;
 
 void display() {
   fill(0);
   circle(bobLoc.x, bobLoc.y, size);
   line(bobLoc.x, bobLoc.y, swingLoc.x, swingLoc.y);
 }
 
 void swing() {
   bobLoc.x = swingLoc.x + len * sin(angle);
   bobLoc.y = swingLoc.y + len * cos(angle);
   
   aAcc = -0.005 * sin(angle);
   angle+=aVel;
   aVel+=aAcc;
   aVel *= 0.99;
 }

  void doublePen(Pendulum p) {
    p.swingLoc = bobLoc;
    p.display();
    p.swing();
  }
}

class multiPendulum extends Pendulum {
  {
   bobLoc = swingLoc;
   swingLoc = swingLoc.mult(2);
  }
}
