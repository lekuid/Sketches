class Mover {
 float randomV = 2;
 PVector loc;
 PVector A1 = new PVector(0,0);
 PVector A2 = new PVector(0,0);
 PVector V = new PVector(0,0);
 float sight = 30;
 float mass = random(3, 5);
 
 Mover() {
   loc = new PVector(random(width), random(height));
 }
 
 void show() {
   fill(0);
   circle(loc.x, loc.y, mass);
   noFill();
   strokeWeight(0.01);
   stroke(200);
   //circle(loc.x, loc.y, sight); 
 }
 
 void move() {
   A1.add(new PVector(random(-1*randomV,randomV), random(-1*randomV, randomV)));
   A1.add(A2);
   V.add(A1);
   A1.mult(0);
   V.limit(2);
   loc.add(V);
   
   if(loc.x>width) loc.x = 0;
   else if(loc.x<0) loc.x = width;
   else if(loc.y>height) loc.y = 0;
   else if(loc.y<0) loc.y = height;
 }
 
 void moveTogether(Mover m) {
   PVector movement = new PVector(m.loc.x*loc.x, m.loc.y*loc.y);
   if(dist(m.loc.x, m.loc.y, loc.x, loc.y)<sight) {
     movement.setMag(0.04);
     A2.sub(movement);
     m.A2.sub(movement);
   }
 }
}
