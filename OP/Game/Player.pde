final class Player {
  static final color INK = #008000, OUTLINE = 0;
  static final float BOLD = 2.0;
 
  boolean isLeft, isRight, isUp, isDown;
  int x, y;
  final int d, v;
 
  Player(final int xx, final int yy, final int dd, final int vv) {
    x = xx;
    y = yy;
    d = dd;
    v = vv;
  } 
  Player(final int xx, final int yy, final int dd) {
    x = xx;
    y = yy;
    d = dd;
    v = 2;
  }
 
  void display() {
    //ellipse(x, y, d, d);
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
 
  void move() {
    final int r = d >> 1;
    // x = constrain(x + v*(int(isRight) - int(isLeft)), r, width  - r);
    // y = constrain(y + v*(int(isDown)  - int(isUp)),   r, height);
    x = x + v*(int(isRight) - int(isLeft));
    y = y + v*(int(isDown)  - int(isUp));
  }
 
  boolean setMove(final int k, final boolean b) {
    switch (k) {
    case +'W':
    case UP:
      return isUp = b;
 
    case +'S':
    case DOWN:
      return isDown = b;
 
    case +'A':
    case LEFT:
      return isLeft = b;
 
    case +'D':
    case RIGHT:
      return isRight = b;
 
    default:
      return b;
    }
  }
  boolean collidesWith(Obstacle obstacle) {
    float distance = dist(x+210, y+250, obstacle.x, obstacle.y);
    println(x);
    //return distance < (size + obstacle.size) / 2;
    return distance < (40 + 10) / 2;
  }
}