ArrayList<Blob> b;

void setup() {
  size(1920,1080);
  b = new ArrayList<Blob>();
}

void draw() {
  if(mousePressed) {
    b.add(new Blob(random(3,5), 1000));
  }
  
  for( Blob b : b) {
    b.display();
    b.move();
  }
  if(b.size()>20) {
    b.remove(0); 
  }
  fill(255, 255, 255, 1);
  rect(-10, -10, width+10, height+10);
}
