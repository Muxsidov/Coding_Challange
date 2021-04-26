class Drop {
  float x = random(width);
  float y = random(-1000, 100);
  float z = random(0, 30);
  float len = map(z, 0, 30, 20, 30); //random(20, 30);
  float yspeed = map(z, 0, 30, 1, 3); //random(1, 5);
   
  void fall() {
    y = y + yspeed;
    float grav = map(z, 0, 30, 0, 0.05);
    yspeed = yspeed + grav;
    
    if (y > height) {
      y = random(-1000, -100);
      yspeed = map(z, 0, 30, 1, 5);
    }
  }
  
  void show() {
    float thick = map(z, 0, 30, 1, 4);
    strokeWeight(thick);
    //stroke(138, 43, 227);
    stroke(170, 170, 170, 200);
    line(x, y, x, y + len);
  }
}
