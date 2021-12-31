Automata val;
int x = 0;

void setup() {
  size(400,400);
  val = new Automata(width/10);
  val.seed();
}

void draw() {
  //background(255);
  val.display();
}
