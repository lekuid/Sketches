ArrayList<State> stateList = new ArrayList<State>();
int stateLen = 20;
State state;

void setup() {
  size(400,400);
  for(int i=0; i<stateLen; i++) {
    stateList.add(new State());
  }
}

void draw() {
  background(255);
  int i=0;
  while(i<width) {
    for(int x=0; x<stateList.size()-1; x++) {
      state = stateList.get(x);
      if(state.val==0) fill(255);
      else fill(0);
      circle(i, 0,width/stateLen); 
      i+=width/stateLen;
    }
  }
}
