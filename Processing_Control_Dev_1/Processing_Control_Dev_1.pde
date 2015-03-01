PImage keyGraphic;
PImage sceneBg;
PImage bgMask;

PImage winImg;
PImage lostImg;

boolean[] activeKeys = new boolean[3];
Boolean nowSpockOn = false;

int scene = 0;

//food selection
boolean selectedFood = false;

Level levels;
Spock spock;

int gmaeTimerSec = 0;
int endTimeSec = 60;

/*-------------------------------------------
 Background Music
 * Ref links: http://soundbible.com
 * http://code.compartmental.net/tools/minim/quickstart/
 -------------------------------------------*/
//import external Minim library
import ddf.minim.*;
//instantiate the Minim Object
Minim minim;
//variable to the audio player
AudioPlayer player;
AudioPlayer playerLvl01;

void setup() {
  /*-------------------------------------------
   Background Music
   -------------------------------------------*/
  //initialize the music player
  minim = new Minim(this);
  //loading the music file from the data folder
  player = minim.loadFile("beginning_background.mp3");
  playerLvl01 = minim.loadFile("ambient_during_game.mp3");
  //calling play() function from "Minim" to play the music
  player.play();

  size(1280, 800);
  textSize(50);
  fill(255);
  sceneBg = loadImage("start_screen.png");
  bgMask = loadImage("background3.png");

  winImg = loadImage("success_end.png");
  lostImg = loadImage("fail_end.png");

  // keyGraphic = loadImage("start_scene.png");
  levels = new Level();
  spock = new Spock();
}

void draw() {
  gmaeTimerSec = millis()/1000;
  background(100);
  keyEventControl();
  levels.run();
}


//------------ Key Event ------------//
void keyPressed() {
  //W
  if (keyCode == 87) {     
    activeKeys[0] = true;
  }
  //A
  if (keyCode == 65) {     
    activeKeys[1] = true;
  }
  //S
  if (keyCode == 83) {     
    activeKeys[2] = true;
  }
}

void keyReleased() {
  //W
  if (keyCode == 87) {     
    activeKeys[0] = false;
  }
  //A
  if (keyCode == 65) {     
    activeKeys[1] = false;
  }
  //S
  if (keyCode == 83) {     
    activeKeys[2] = false;
  }
}

void keyEventControl() {
  if (activeKeys[0] == true && activeKeys[1] == false && activeKeys[2] == true) {
    nowSpockOn = true;
  } else {
    nowSpockOn = false;
  }
  //  printArray(activeKeys);
  //  println(nowSpockOn);
}

