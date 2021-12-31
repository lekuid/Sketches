Drop d[] = new Drop[500];

void setup() {
 size(500,500);
 for(int i = 0; i<d.length; i++){
 d[i] = new Drop(5);
 }
}

void draw() {
 background(0);
 for(int i = 0; i<d.length; i++){
 d[i].display();
 d[i].rain();
 }
}
