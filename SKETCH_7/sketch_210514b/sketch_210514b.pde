float xy=0;
void setup(){
  size(600,600);
  background(255);
}

 void draw(){
   stroke(0);
   for(float x=0; x<width; x+=2){
    float r = random(width);
    //fill(r+x,r,0);
    line(x, r, x, r+5);
   }
  save("0xyrxy.png");
 }
