World world = new World();

void setup() {
  size(1000,1000); 
}

void draw() {
  //if(world.timer()>1200) background(127, 70, 200);
  //else background(255, 200, 150);
  world.collectFood();
  world.addPopulation();
  world.addHome();
  world.addForest();
  world.nightReturnHome();
  world.woodChopping();
}
