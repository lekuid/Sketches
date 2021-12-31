class Automata{
  
  ArrayList<Integer> setup = new ArrayList<Integer>();
  int size;
  int scroll = 0;
  
  Automata(int tempSize) {
    size = tempSize;
  }
  
  void seed() {
    for(int i =0; i<size; i++) {
      setup.add(round(random(0,1)));  
    }
  }
  
  void gen() {
    for(int i = 1; i<size-1; i++) {
      int mid = setup.get(i);
      int left = setup.get(i-1);
      int right = setup.get(i+1);
      if(left+right == 2) {
        setup.set(i, 0);
      }
      else if(left+right == 0) {
        setup.set(i, 0);
      }
      else if(left+right == 1) {
        setup.set(i, 1);
      }
    }
    scroll += width/size;
  }
  
  void display() {
    int xPos = 0; //everytime the for loop below completes xPos is set to 0
    pushMatrix();
    translate(0,+scroll*2);
    for(int i=0; i<val.size; i++) {
      int state = setup.get(i);
      if(state == 0) fill(0);
      else fill(255);
      rect(xPos, -scroll, width/size, height/size);
      xPos += width/size;
    }
    popMatrix();
    gen();
  }
}
