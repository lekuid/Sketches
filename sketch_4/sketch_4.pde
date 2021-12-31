int x=0;
int y=0;
int res=19; //change the resolution of squares

void setup(){
  size(640, 380);
  background(0);
}

void draw(){
  noStroke();
  while(x<width){
    while(y<height){
      fill(y*4, x, 55); //experimenting with fill for gradients
      square(x,y,res);
      y=y+res;
    }
    x=x+res;
    y=0;
  }
}
