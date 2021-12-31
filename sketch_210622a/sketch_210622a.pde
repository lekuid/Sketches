Pendulum[] p = new Pendulum[100];

void setup() {
  size(400,400);
  for(int i = 0; i<p.length; i++) {
    p[i] = new Pendulum();
  }
}

void draw() {
  background(255);
  for(int i = 0; i<p.length; i++) {
    p[i].display();
    p[i].swing();
    for(int j = 0; j<p.length; j++) {
      p[i].doublePen(p[j]);
    }
  }
}
