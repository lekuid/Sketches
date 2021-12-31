class Walker {
 
 float size;
 float velocityLimit;
 PVector location = new PVector(width/2, width/2);
 PVector velocity = new PVector(1,-3);
 PVector a;
 
 Walker(float tempSize, float tempVelocityLimit) {
   velocityLimit = tempVelocityLimit;
   size = tempSize;
 }
 
 void display() {
  fill(0);
  circle(location.x, location.y, size);
 }
 
 void move() {
  PVector mouseLoc = new PVector(mouseX, mouseY);
  if(mouseX>10 && mouseX<width-10 &&  mouseY>10 && mouseY<height-10) {
    mouseLoc.sub(location);
    mouseLoc.setMag(0.4);
    a = mouseLoc;
    velocity.add(a);
    location.add(velocity);
    velocity.limit(velocityLimit); 
  }  else {
    a = PVector.random2D();
    velocity.add(a);
    location.add(velocity);
    velocity.limit(velocityLimit); 
    }
 }
 
 void edge() {
   if( location.x<0 ) location.x += width;
   else if( location.x>width ) location.x -= width;
   if( location.y<0 ) location.y += height;
   else if( location.y>height ) location.y -= height;
 }
}
