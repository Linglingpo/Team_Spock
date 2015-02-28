PImage keyGraphic;

boolean[] activeKeys = new boolean[3];
Boolean nowSpockOn = false;

void setup() {
  size(500, 300);
  textSize(12);
  keyGraphic = loadImage("start.png");
}

void draw() {
  background(100);
  image(keyGraphic, 0, 0); //show the image
  keyEventControl();
  display();
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
  printArray(activeKeys);
  println(nowSpockOn);
}

//------------ When keypressed, show the image ------------//

void display() {
  if (nowSpockOn) {
    keyGraphic = loadImage("On.png");
  } else {
    keyGraphic = loadImage("down.png");
  }
  image(keyGraphic, 0, 0); //show the image
}

