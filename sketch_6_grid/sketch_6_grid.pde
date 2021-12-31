 void setup(){
   size(400,400);
 }
 
 void draw(){
   background(255);
   for(int x=0; x<width; x=x+20){
     line(x, 0, x, 400);
     line(0, x, 400, x);
   }
 }
