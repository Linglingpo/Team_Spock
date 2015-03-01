class Level {
  // ========================================================================
  // Properties
  // ========================================================================
  boolean startLvl01 = false;
  /*-------- Calling other class -----------*/
  Food foodLvl01;
  
  // ========================================================================
  // Constructor
  // ========================================================================
  Level() {
    foodLvl01 = new Food();
  }  

  // ========================================================================
  // Methods
  // ========================================================================
  void run() {
  }


  void display() {
    //------------ change scenes ------------//
    //display the bg
    image(sceneBg, 0, 0);

    //-- Intro --//
    if (scene == 0) {
      displayIntro ();
      if (nowSpockOn) {
        scene = 1;
        nowSpockOn = false;
      }
    }
    //-- Lvl 01 --//
    else if (scene == 1) {
      displayLevel01();
    }
    //-- Lvl 02 --//
    else {
      //do noting yet
    }
  }

  //-- Intro --//
  void displayIntro() {
    //load the intro bg
    sceneBg = loadImage("intro.jpg");
  }


  //-- level 01 --//
  void displayLevel01() {
    //change the bg
    sceneBg = loadImage("lvl_01.jpg");
    foodLvl01.run();
    //if selected some food
    if (nowSpockOn) {
      //For boolean Array in FB01
      //Selected which food in level 01
      if (foodLvl01.timertest1*2 >= foodLvl01.timertest) {
        foodLvl01.booleanFB01[foodLvl01.imageIndex] = true;
        printArray(foodLvl01.booleanFB01);
      }
      //food.updateHearts();
      nowSpockOn = false;
    }
  }
}// end of the "Level" class

