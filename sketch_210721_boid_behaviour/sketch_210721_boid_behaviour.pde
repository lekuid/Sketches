/*
Boid Class construstor takes (maxSpeed, Size) as arguments
*/
Boid b = new Boid(1, 1.5);
ArrayList<Boid> a = new ArrayList<Boid>();

void setup() {
 size(840,1080);
 for(int i=0;i<100;i++)  {
   a.add(new Boid(0.5, random(0.4, 1)));
 }
}

void draw() {
 background(0);
 fill(255);
 stroke(255,255,255);
 for(int i=0;i<a.size(); i++)  {
   Boid m = a.get(i);
   PVector followVec = m.loc.copy();
   followVec.sub(b.loc);
   followVec.setMag(0.8);
   m.vel.sub(followVec);
   m.show();
   m.move();
 }
 fill(255,0,0);
 stroke(255,0,0);
 b.show();
 b.move();
 
}
