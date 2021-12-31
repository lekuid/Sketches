Drop[] d = new Drop[1000];

void setup(){
  size(1000,1000);
  for (int i=0; i < d.length; i++) {
    d[i] = new Drop(); 
  }
}

void draw(){
  background(0);
  for (int i=0; i < d.length; i++) {
     d[i].display();
     d[i].fall(2);
   }
 }
