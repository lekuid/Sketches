class Entity {
  
  float size;
  float sight;
  float velocity;
  PVector direction = new PVector(random(width), random(height));
  
  Entity(float tempSize, float tempSight, float tempVelocity) {
    sight = tempSight;
    velocity = tempVelocity;
    size = tempSize;
  }
  
  void display() {
    fill(0);
    stroke(0);
    circle(direction.x, direction.y, size);
  }
  
  void sight() {
    fill(0, 0);
    stroke(1, 25);
    circle(direction.x, direction.y, sight);
  }
  
  void move() {
    direction.add(PVector.fromAngle(random(360)));
    
    if(direction.x>width) direction.x-=width;
    else if(direction.x<0) direction.x+=width;
    else if(direction.y>width) direction.y-=width;
    else if(direction.y<0) direction.y+=width;
  }
  
  void collide(Entity collider) {
    float angle = PVector.angleBetween(direction, collider.direction);
    float distance = direction.dist(collider.direction);
    if(distance < sight) {
      direction.sub(PVector.fromAngle(angle));
      collider.direction.sub(PVector.fromAngle(angle));
    }
  }
}

class BigEntity extends Entity {
  
  BigEntity(float tempSize, float tempSight, float tempVelocity) {
    super(tempSize, tempSight, tempVelocity);
  }
}
