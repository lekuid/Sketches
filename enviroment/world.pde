class World {
  int time=0;
  float collectedWood;
  ArrayList<Home> homes= new ArrayList<Home>();
  int treeCount = 20;
  int population =10;
  ArrayList<Trees> forest = new ArrayList<Trees>();
  ArrayList<moverBase> bob = new ArrayList<moverBase>();
  float days;

  PVector treeSub;
  PVector homeSub;


  int timer() {
    time+=1;
    if (time>2400) {
      time=0;
      days+=1;
    }
      
    return time;
  }


  void addPopulation() {
    for(Home h : homes) {
      PVector spawnLoc = h.homeLoc.copy();
      //initial population
      if (bob.size()<population) {
        bob.add(new moverBase(spawnLoc));
      }
      //additional growth
      if(random(500)/homes.size()<2) bob.add(new moverBase(spawnLoc));
    }
    
    for (moverBase bob : bob) {
      bob.show();
      bob.move();
      bob.health-=0.1;
    }
    
    for(int i=0; i<bob.size(); i++) {
      moverBase b = bob.get(i);
      if(b.health<1) {
        bob.remove(i);
      }
      if(bob.size()>1000) bob.remove(0);
    }
  }

  void addForest() {
    if (forest.size()<treeCount) forest.add(new Trees());
    if(random(forest.size())<10) forest.add(new Trees());
    
    for (Trees forest : forest) {
      forest.show();
    }
  }
  
  void addHome() {
    if(homes.size() == 0) homes.add(new Home());
    
    if(collectedWood>500) {
      collectedWood-=500;
      homes.add(new Home());
    }
    for(Home h : homes) {
      h.show(); 
    }
  }

  void collectFood() {
    for (Trees t : forest) {
      for (moverBase bob : bob) {
        if (dist(t.treeLoc.x, t.treeLoc.y, bob.pos.x, bob.pos.y)<bob.sight/2) {
          //Acceleration towards trees
          treeSub = bob.pos.copy();
          treeSub.sub(t.treeLoc);
          treeSub.setMag(t.treeSize);
          if (time<1200) {
            bob.A.sub(treeSub);
          }
        }
      }
    }
  }

  void nightReturnHome() {
    if (time>1200) {
      for (moverBase bob : bob) {
        for(Home h : homes) {
          bob.A.mult(0.2);
          if (dist(h.homeLoc.x, h.homeLoc.y, bob.pos.x, bob.pos.y)<bob.sight/2) {
            //Acceleration towards home
            homeSub = bob.pos.copy();
            homeSub.sub(h.homeLoc);
            homeSub.setMag(0.2);
            bob.A.sub(homeSub);
          }
        }
      }
    }
  }

  void woodChopping() {
    for (Trees t : forest) {
      for (moverBase bob : bob) {
        if (dist(t.treeLoc.x, t.treeLoc.y, bob.pos.x, bob.pos.y)<t.treeSize/2) {
          t.wood-=0.5;
          collectedWood+=0.5;
          println(collectedWood);
        }
      }
    }
    for (int i=0; i<forest.size(); i++) {
      Trees t = forest.get(i);
      if (t.wood<1) {
        treeCount-=1;
        forest.remove(i);
      }
    }
  }

}
