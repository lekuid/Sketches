Ball b1;
boolean x = true;

void setup(){
  size(1080,1080);
  background(0);
  frameRate(400);
  b1 = new Ball(1);
}

void draw(){
  b1.display();
  b1.fillColor();
  if (x){
    b1.move();
  }
  b1.edgeReset();
}

void mousePressed(){
  x = !x;
}
