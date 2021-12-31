Entity[] entity = new Entity[300];
BigEntity[] bigEntity = new BigEntity[5];

void setup() {
 size(400,400);
 
 for(int i=0; i < entity.length; i++) {
   entity[i] = new Entity(3, 10, 2);
 }
 
 for(int i=0; i < bigEntity.length; i++) {
   entity[i] = new Entity(30, 30, 2);
 }
 
}

void draw() {
  background(255);
  for(int i=0; i < entity.length; i++) {
   entity[i].display();
   entity[i].move();
   entity[i].sight();
     for(int y=0; y < entity.length && y!=i; y++) {
       entity[i].collide(entity[y]);     
     }
  }
  
    for(int i=0; i < bigEntity.length; i++) {
   bigEntity[i].display();
   bigEntity[i].move();
   bigEntity[i].sight();
     for(int y=0; y < bigEntity.length && y!=i; y++) {
       bigEntity[i].collide(bigEntity[y]);     
     }
  }
}
