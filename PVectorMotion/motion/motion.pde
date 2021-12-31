Walker[] w = new Walker[100];
float[] size = new float[100];

void setup() {
 size(600,400);
 frameRate(60);
 for(int i=0; i<w.length;i++) {
   size[i] = random(10);
   w[i] = new Walker(size[i]);
 }
}

void draw() {
 background(255);
 for(int i=0; i<w.length;i++) {
   w[i].move();
   w[i].display();
   w[i].applyForce(0,1/size[i]);
  }
}
