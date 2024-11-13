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
    float distance = dist(x+210, y+250, obstacle.x, obstacle.y);
    println(x);
    return distance < (size + obstacle.size) / 2;
  }
  
  void display() {
    fill(255);
    //ellipse(x, y, size, size);
    beginShape();
    vertex(150+x, y+250);
    vertex(150+x, y+260);
    vertex(145+x, y+260);
    vertex(145+x, y+250);
    vertex(125+x, y+250);//Beginning of handle
    vertex(125+x, y+240);
    vertex(145+x, y+240);//End of handle
    vertex(145+x, y+230);
    vertex(150+x, y+230);
    vertex(150+x, y+240);
    vertex(200+x, y+245);
    endShape(CLOSE);
    

  }
}