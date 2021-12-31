class Trees {
  PVector treeLoc;
  float treeSize = random(1,5);
  float wood = treeSize*10;
  
  Trees() {
    treeLoc = new PVector(random(width), random(height));
  }
  void show() {
    fill(0,150,0);
    circle(treeLoc.x, treeLoc.y, treeSize);
  }
  
  public PVector treeLoc() {
    return treeLoc;
  }
}
