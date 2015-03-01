class Level {
  // ========================================================================
  // Properties
  // ========================================================================
  boolean startLvl01 = false;

  int timertest = 20;
  int timertest1 = 0;
  boolean pause;

  /*-------- Calling other class -----------*/
  Food foodLvl01;

  // ========================================================================
  // Constructor
  // ========================================================================
  Level() {
  }  

  // ========================================================================
  // Methods
  // ========================================================================
  void run() {
    foodLvl01 = new Food();
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
        //change the bg
        sceneBg = loadImage("lvl_01.jpg");
        nowSpockOn = false;
        pause = true;
      }
    }
    //-- Lvl 01 --//
    else if (scene == 1) {
      if (pause) {
        timertest1++;
        if (timertest1 >= timertest) {
          //Reset the lvl01 food selected timer
          foodLvl01.savedTime = millis();
          timertest1 = 0;
          pause = false;
        }
      }
      if (timertest1 == 0) {
        displayLevel01();
        foodLvl01.run();
        println(timertest1);
      }
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
    //if selected some food
    if (nowSpockOn) {
      //For boolean Array in FB01
      //Selected which food in level 01
      foodLvl01.booleanFB01[foodLvl01.imageIndex] = true;
      printArray(foodLvl01.booleanFB01);
      //food.updateHearts();
      nowSpockOn = false;
    }
  }
}// end of the "Level" class

