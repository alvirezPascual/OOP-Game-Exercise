class Obstacle {
  float x, y;
  float size;
  
  Obstacle(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  void display() {
    //fill(0, 0, 255);
    //rect(x, y, size, size);
    fill(255, 0, 0, 125);
    // ellipse(x, y, size, size);
    beginShape();
    vertex(300, 225);
    vertex(275, 200);
    vertex(285, 185);
    vertex(300, 195);
    vertex(315, 185);
    vertex(325, 200);
    endShape(CLOSE);
  }
}