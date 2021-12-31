void setup(){
  background(175, 200, 200);
  size(1080, 1080);
}

void draw(){
  fill(125, 255, 200);
  stroke(2, 150);
  rectMode(CENTER);
  rect(mouseX, mouseY, 100, 100);
}

void mousePressed(){
  background(175, 200, 200);
}
