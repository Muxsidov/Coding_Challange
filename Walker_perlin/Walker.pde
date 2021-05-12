class Walker {
  PVector location;
  float t = 0;

  Walker() {
    location = new PVector(width / 2, height / 2);
  }

  void render() {
    fill(0);
    ellipse(location.x, location.y, 10, 10);
  }

  void step() { 
    float choice = (noise(t));
     println(choice);
     if (choice <= 0.4) {
     location.x++;
     }
     else if (choice > 0.4 && choice <= 0.6)  {
     location.x--;
     }
     else if (choice > 0.6 && choice <= 0.85) {
     location.y++;
     }
     else {
     location.y--;
     }
     
     t++;

    location.x = constrain(location.x, 0, width - 1);
    location.y = constrain(location.y, 0, height - 1);
  }
}
