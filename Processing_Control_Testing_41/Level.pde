class Level {
  // ========================================================================
  // Properties
  // ========================================================================
  boolean startLvl01 = false;

  /*-------- Calling other class -----------*/
  Food foodLvl01;
  Spock spockLvl01;
  
  int maximumPressed = 3;
  int pressed0 = 0;
  int pressed1 = 0;
  int pressed2 = 0;
  int pressed3 = 0;
  int pressed4 = 0;
  int pressed5 = 0;
  
  
  // ========================================================================
  // Constructor
  // ========================================================================
  Level() {
    foodLvl01 = new Food();
    spockLvl01 = new Spock();
  }  

  // ========================================================================
  // Methods
  // ========================================================================
  void run() {
    display();
    if (foodLvl01.getSelectedFood()==-1) {
          // do nothing, no food has been selected;
          println("Please select food!");
    }
    if (foodLvl01.getSelectedFood()==0) {
         if (pressed0 < 3) {
           firstLevelFood1();
           foodLvl01.changeSelectedFoodToNothing();
           pressed0++;
         }
    }
    if (foodLvl01.getSelectedFood()==1) {
        if (pressed1 < 3) {
         firstLevelFood2();
         foodLvl01.changeSelectedFoodToNothing();
         pressed1++;
        }
    }
    if (foodLvl01.getSelectedFood()==2) {
        if (pressed2 < 3) {
         firstLevelFood3();
         foodLvl01.changeSelectedFoodToNothing();
         pressed2++;
        }
    }
    if (foodLvl01.getSelectedFood()==3) {
        if (pressed3 < 3) {
         firstLevelFood4();
         foodLvl01.changeSelectedFoodToNothing();
         pressed3++;
        }
    }
    if (foodLvl01.getSelectedFood()==4) {
        if (pressed4 < 3) {
         firstLevelFood5();
         foodLvl01.changeSelectedFoodToNothing();
         pressed4++;
        }
    }
    if (foodLvl01.getSelectedFood()==5) {
        if (pressed5 < 3) {
         firstLevelFood2();
         foodLvl01.changeSelectedFoodToNothing();
         pressed5++;
        }
    }
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
      //Reset the lvl01 food selected timer
      foodLvl01.savedTime = millis();
    }
    //-- Lvl 01 --//
    else if (scene == 1) {
      displayLevel01();
      //display spock
      spockLvl01.display();
    }
    //-- Lvl 02 --//
    else {
      //do noting yet
    }
  }

  //-- Intro --//
  void displayIntro() {
    //load the intro bg
    sceneBg = loadImage("start_screen.png");
  }


  //-- level 01 --//
  void displayLevel01() {
    //change the bg
    sceneBg = loadImage("background.png");
    foodLvl01.run();
    //if selected some food
    if (nowSpockOn) {
      //For boolean Array in FB01
      //Selected which food in level 01
      foodLvl01.booleanFB01[foodLvl01.imageIndex] = true;
      printArray(foodLvl01.booleanFB01);      
      nowSpockOn = false;
    }
  }
  void firstLevelFood1() {
      println("You selected the first item!"); 
      spockLvl01.changeHearts(-2); // 
      println("YUM YUM YOU KNOW HAVE " + spockLvl01.getHearts() + " HEARTS");
  }
  void firstLevelFood2() {
      println("You selected the first item!"); 
      spockLvl01.changeHearts(1); // 
      println("YUM YUM YOU KNOW HAVE " + spockLvl01.getHearts() + " HEARTS");
  }
  void firstLevelFood3() {
      println("You selected the first item!"); 
      spockLvl01.changeHearts(-1); // 
      println("YUM YUM YOU KNOW HAVE " + spockLvl01.getHearts() + " HEARTS");
  }
  void firstLevelFood4() {
      println("You selected the first item!"); 
      spockLvl01.changeHearts(-3); // 
      println("YUM YUM YOU KNOW HAVE " + spockLvl01.getHearts() + " HEARTS");
  }
  void firstLevelFood5() {
      println("You selected the first item!"); 
      spockLvl01.changeHearts(-1); // 
      println("YUM YUM YOU KNOW HAVE " + spockLvl01.getHearts() + " HEARTS");
  }
  void firstLevelFood6() {
      println("You selected the first item!"); 
      spockLvl01.changeHearts(2); // 
      println("YUM YUM YOU KNOW HAVE " + spockLvl01.getHearts() + " HEARTS");
  }
}// end of the "Level" class
