ArrayList<Mover> movers;

void setup() {
  size(100,100);
  movers = new ArrayList<Mover>();
  for(int i=0; i<1000; i++) {
    movers.add(new Mover()); 
  }
}

void draw() {
  //background(255);
  for(int i=0; i<movers.size(); i++) {
    Mover m1 = movers.get(i);
    m1.show();
    m1.move();
    for(int j=0; j<movers.size() && j!=i; j++) {
      Mover m2 = movers.get(j);
      m1.moveTogether(m2);
    }
  }

}
