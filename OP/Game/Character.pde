class Character {
  float x, y;
  float size;
  
  Character(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  void move(float xSpeed, float ySpeed) {
    x += xSpeed;
    y += ySpeed;
  }
  
  boolean collidesWith(Obstacle obstacle) {
    float distance = dist(x, y, obstacle.x, obstacle.y);
    return distance < (size + obstacle.size) / 2;
  }
  
  void display() {
    fill(255);
    ellipse(x, y, size, size);
    // beginShape();
    // vertex(150, 250);
    // vertex(150, 260);
    // vertex(145, 260);
    // vertex(145, 250);
    // vertex(125, 250);//Beginning of handle
    // vertex(125, 240);
    // vertex(145, 240);//End of handle
    // vertex(145, 230);
    // vertex(150, 230);
    // vertex(150, 240);
    // vertex(200,245);
    // endShape(CLOSE);
    

  }
}