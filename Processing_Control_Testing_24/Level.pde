class Level {
  // ========================================================================
  // Properties
  // ========================================================================
  boolean proceedToNextLevel = false; // controls event change  
  PImage foodImg;
  int selectionCounter;

  int heart = 0;

  // ========================================================================
  // Constructor
  // ========================================================================
  Level() {
    foodImg = loadImage("tomoto.png");
    selectionCounter = 0;
  }  

  // ========================================================================
  // Methods
  // ========================================================================
  void display() {
    //------------ change scenes ------------//
    //-- Intro --//
    if (scene == 0) {
      image(sceneBg, 0, 0); //show the image
      displayForeIntro ();
      if (nowSpockOn) {
        scene = 1;
        nowSpockOn = false;
      }
    }
    //-- Lvl 01 --//
    else {
      sceneBg = loadImage("lvl_01.jpg");
      image(sceneBg, 0, 0); //show the image
      displayForeLevel1();
    }
  }

  //------------ When keypressed, show the image ------------//

  void displayForeIntro() {
    if (nowSpockOn) {
      keyGraphic = loadImage("On.png");
    } else {
      keyGraphic = loadImage("down.png");
    }
    image(keyGraphic, 0, 0); //show the image
  }


  //-- level 01 --//
  void displayForeLevel1() {
    selectionCounter ++;
    //Start the level 1 after counter > 10
    if (selectionCounter > 20 ) {
      if (nowSpockOn) {
        keyGraphic = loadImage("haha_lvl1.png");
        selectedFood01 = true;
        updateHearts();
        selectedFood01 = false;
        nowSpockOn = false;
        //reset the selection cunter to 0;
        counter = 0;
      } else {
        keyGraphic = loadImage("poop_lvl1.png");
      }
      image(keyGraphic, 0, 0); //show the image
    }
    //    displayHeartCounter();
    println(counter);
    image(foodImg, 500, 300);
    text("Heart: " + heart, 500, 200);
  }

  void updateHearts() {
    if (selectedFood01) {
      heart = heart + 1;
    }
  }
}
// end of the "Level" class

