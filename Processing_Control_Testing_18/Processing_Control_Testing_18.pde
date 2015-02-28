PImage keyGraphic;
PImage sceneBg;

boolean[] activeKeys = new boolean[3];
Boolean nowSpockOn = false;

int scene = 0;

boolean flag = true;

Level levels;


void setup() {
  size(1280, 800);
  textSize(30);
  fill(0);
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
  nowSpockOn = false;
}

void keyEventControl() {
  if (activeKeys[0] == true && activeKeys[1] == false && activeKeys[2] == true) {
    nowSpockOn = true;
    flag = true;
  } else {
    nowSpockOn = false;
    flag = false;
  }
  //  printArray(activeKeys);
  //  println(nowSpockOn);
}

