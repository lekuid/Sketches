import processing.video.*;
import java.util.Arrays;

PImage transform;
PImage line;
int scroller;
int blockSize = 1;
int completed = 0;

Capture webCam;
void captureEvent(Capture video) {
  video.read();
}

void setup() {
  size(1280, 720);
  background(255);
  webCam = new Capture(this, width, height);
  webCam.start();
  scroller=-blockSize;
}

void draw(){
  transform = webCam;
  line = transform.get(0, height-blockSize, width, blockSize);
  image(line,0,scroller);
  
  if(completed==0) {
    scroller+=blockSize;
    if(scroller>height) {
      scroller=-blockSize;
      completed+=1;
    }
  }
  
  if(mousePressed) {
    completed = 0;
  }
  
}
