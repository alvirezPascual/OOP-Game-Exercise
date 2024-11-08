 /*
  Assignment: OOP EXERCISE
  Student: Oscar Pascual
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program .... (describe it!)
  Last Modified: November 6, 2024
  */

Character player;
//Obstacle obstacle;
Obstacle obstacle;
import processing.sound.*;

SoundFile sound;



void setup() {
  size(400, 400);
  sound = new SoundFile(this, "femaleScream.mp3");
  player = new Character(50, height / 2, 30);
  //player = new Shape(50, height / 2, 30);
  obstacle = new Obstacle(width - 50, height / 2, 40);
}

void draw() {
    
  background(125);

  if (keyPressed) {
    if (key == 'a') {
      player.move(-2, 0);
    } else if (key == 'd') {
      player.move(2, 0);
    } else if (key == 'w') {
      player.move(0, -2);
    } else if (key == 's') {
      player.move(0, 2);
    }
  }

  player.display();
  obstacle.display();

  if (player.collidesWith(obstacle)) {
    sound.play();
    textSize(32);
    fill(0);
    text("Eeeek!", width / 2 - 100, height / 2);
  }
}

void mousePressed(){
    println(mouseX,mouseY);
}