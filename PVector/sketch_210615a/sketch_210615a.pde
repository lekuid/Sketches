Walker[] a = new Walker[500];

void setup() {
  size(1920,1080);
  for(int i = 0; i<a.length; i++) {
    int mass = int(random(5, 10));
    a[i] = new Walker(mass, mass);
  }
}

void draw() {
  background(255);
  for(int i = 0; i<a.length; i++) {
   a[i].display();
   a[i].move();
   a[i].edge();
  }
}
