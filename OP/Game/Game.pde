 /*
  Assignment: OOP EXERCISE
  Student: Oscar Pascual
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program substitutes the former objects with a knife and heart,
  and includes additional changes. When the knife hovers over the heart the text 'Eeeek!' appears 
  and a screaming woman is heard. Diagonal movement was also added to the player object.
  )
  Last Modified: November 13, 2024
  */

static final int DIAM = 80, SPD = 4, FPS = 60;
static final color BG = 0350;
Player player;
//Character player;
//Obstacle obstacle;
Obstacle obstacle;
import processing.sound.*;

SoundFile sound;



void setup() {
  size(400, 400);
  sound = new SoundFile(this, "femaleScream.mp3");
  obstacle = new Obstacle(width - 50, height / 2, 40);
  player = new Player(width / -8, height / -9, 30);
  //player = new Shape(50, height / 2, 30);
  smooth(3);
  frameRate(FPS);
  ellipseMode(CENTER);
 
  fill(Player.INK);
  stroke(Player.OUTLINE);
  //strokeWeight(Player.BOLD);
 
  //p = new Player(width /-2, height /-2, DIAM, SPD);
}

void draw() {
  
    
  background(125);

  if (keyPressed) {
    if (key == 'a') {
      player.move();
    } else if (key == 'd') {
      player.move();
    } else if (key == 'w') {
      player.move();
    } else if (key == 's') {
      player.move();
    }
  }

  obstacle.display();
  player.display();

  if (player.collidesWith(obstacle)) {
    sound.play();
    textSize(32);
    fill(0);
    text("Eeeek!", width / 3, height / 2);
  }
  player.move();
  player.display();
}
void keyPressed() {
  player.setMove(keyCode, true);
}
 
void keyReleased() {
  player.setMove(keyCode, false);
}
void mousePressed(){
    println(mouseX,mouseY);
}