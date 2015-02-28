PImage keyGraphic;
PImage sceneBg;

boolean[] activeKeys = new boolean[3];
Boolean nowSpockOn = false;

int scene = 0;

Level levels;


void setup() {
  size(1280, 800);
  textSize(12);
  sceneBg = loadImage("intro.jpg");
  keyGraphic = loadImage("start.png");
  levels = new Level();
}

void draw() {
  background(100);
//  changeScenes();
  keyEventControl();
  levels.display();
}

////------------ change scenes ------------//
//
//void changeScenes() {
//  //-- Intro --//
//  if (scene == 0) {
//    image(sceneBg, 0, 0); //show the image
//    image(keyGraphic, 0, 0); //show the image
//    if (nowSpockOn) {
//      scene = 1;
//      nowSpockOn = false;
//    }
//  }
//  //-- Lvl 01 --//
//
//  else {
//    sceneBg = loadImage("lvl_01.jpg");
//    image(sceneBg, 0, 0); //show the image
//    image(keyGraphic, 0, 0); //show the image
//  }
//}


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
  printArray(activeKeys);
  println(nowSpockOn);
}

////------------ When keypressed, show the image ------------//
//
//void display() {
//  if (nowSpockOn) {
//    keyGraphic = loadImage("On.png");
//  } else {
//    keyGraphic = loadImage("down.png");
//  }
//  image(keyGraphic, 0, 0); //show the image
//}

