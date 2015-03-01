PImage keyGraphic;
PImage sceneBg;

boolean[] activeKeys = new boolean[3];
Boolean nowSpockOn = false;

int scene = 0;

//food selection
boolean selectedFood = false;

Level levels;


void setup() {
  size(1280, 800);
  textSize(50);
  fill(255);
  sceneBg = loadImage("start_screen.png");
 // keyGraphic = loadImage("start_scene.png");
  levels = new Level();
}

void draw() {
  background(100);
  keyEventControl();
  levels.run();
  //levels.display();
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
  } 
  else {
    nowSpockOn = false;
  }
  //  printArray(activeKeys);
  //  println(nowSpockOn);
}

