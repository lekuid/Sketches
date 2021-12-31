Entity e;
Paddle p;

void setup() {
 size(300,300);
 frameRate(120);
 e = new Entity(10, 3);
 p = new Paddle(20);
}

void draw() {
  p.gameLevel(e);
  background(255);
  e.display("ScoreShow");
  e.move(true);
  e.hit(p);
  p.display();
}
