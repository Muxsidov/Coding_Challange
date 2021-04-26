import processing.sound.*;
SoundFile file;

Drop[] drops = new Drop[2000];

void setup() {
  fullScreen();
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
  
  // For sound
  file = new SoundFile(this, "Kiss_the_Rain.mp3");
  file.play();
}
  
void draw() {
  background(170, 229, 183);
  //background(175, 29, 183);
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
  
}
