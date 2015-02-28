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
  desplay();
}

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

//----------------------------------------- When keypressed, show the image

void keyEventControl() {
  if (activeKeys[0] == false && activeKeys[1] == true && activeKeys[2] == false) {
    nowSpockOn = true;
  } else {
    nowSpockOn = false;
  }

  //  if (aClose && wClose == false && sClose == false) {
  //    nowSpockOn = true;
  //  } else {
  //    nowSpockOn = false;
  //  }
  //  println (wClose);
  //  println (aClose);
  //  println (sClose);

  printArray(activeKeys);
  println(nowSpockOn);
}

void desplay() {
  if (nowSpockOn) {
    keyGraphic = loadImage("On.png");
  } else {
    keyGraphic = loadImage("down.png");
  }
  image(keyGraphic, 0, 0); //show the image
}

