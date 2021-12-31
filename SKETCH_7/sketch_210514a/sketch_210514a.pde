float xy=0;
void setup(){
  size(600,600);
}

 void draw(){
   background(0);
   noStroke();
   for(float x=0; x<width; x+=5){
    float r = random(-1*width, width);
    fill(r+x,r,0);
    rect(r, x, r, r);
   }
  save("0xyrxy.png");
 }
