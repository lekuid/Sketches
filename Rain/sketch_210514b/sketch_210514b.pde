float y=0;

void setup(){
  size(600,600);
}

float locX = random(width);

 void draw(){
   background(255);
   line(locX, 10+y, locX, 10+5+y);
   if(y>width){
     y=0;
   }
   y=y+5;
 }
