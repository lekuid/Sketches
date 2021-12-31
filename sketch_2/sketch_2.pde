void setup(){
 size(680, 340);
 background(0);
}

void draw(){
  noFill();
  stroke(mouseX, mouseY, mouseX/10+mouseY);
  triangle(25, 200, 150, 200, 90, 100);
}

void mousePressed()
{
  fill(100);
}

void keyPressed(){
  if (key == 'b' || key == 'B'){
      background(0);
  }
}
