PVector l = new PVector(0,0);
Repulse blob = new Repulse(10);
Mover[] mover = new Mover[500];


void setup() {
  size(500,500);
  for(int i = 0; i<mover.length; i++) {
    mover[i]= new Mover(blob, random(1,4));
  }
}


void draw() {
  background(255);
  grid();
  fill(0);
  blob.enable();
  for(int i = 0; i<mover.length; i++) {
    mover[i].place();
  }
}
  
void grid() {
  strokeWeight(1);
  stroke(200);
  noFill();
  for(int x=0;x<width;x+=width/5) {
    circle(width/2, height/2, x);
  }
  line(10, width/2, height-10, width/2);
  line(width/2, 10, width/2, width-10); 
}
