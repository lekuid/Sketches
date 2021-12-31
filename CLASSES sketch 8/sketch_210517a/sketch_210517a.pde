Bubble b;

void setup(){
  size(400,400);
  b = new Bubble();
}

void draw(){
  background(255);
  b.display();
  b.ascend();
  b.top();
}
