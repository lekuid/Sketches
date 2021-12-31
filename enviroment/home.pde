class Home {
 PVector homeLoc;
 
 Home() {
  homeLoc = new PVector(random(width), random(height));
 }
 
  void show() {
    fill(0);
    stroke(0);
    rectMode(CENTER);
    square(homeLoc.x, homeLoc.y, 6);
  }
}
