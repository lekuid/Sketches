ArrayList<Circle> circles;
void setup() {
   size(400,200);
   circles = new ArrayList<Circle>();
   for (int i=0; i<10; i++) {
     circles.add(new Circle());
   }
}

void draw(){
   background(255);
   for (Circle c : circles) {
      c.display();
      c.grow();
      c.pack(c);
   }
}
