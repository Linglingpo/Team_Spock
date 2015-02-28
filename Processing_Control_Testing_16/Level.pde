class Level {
  // ========================================================================
  // Properties
  // ========================================================================
  Spock spock;  
  //  Screen screen;
  //  Timer timer; 
 boolean proceedToNextLevel = false; // controls event change  

    // ========================================================================
  // Constructor
  // ========================================================================
  Level() {
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

void displayForeLevel1() {
  if (nowSpockOn) {
    keyGraphic = loadImage("haha_lvl1.png");
  } else {
    keyGraphic = loadImage("poop_lvl1.png");
  }
  image(keyGraphic, 0, 0); //show the image
}

//------------ Condition that go to the next level ------------//

  boolean evaluateScore(int heart, int emo) {
    spock.changeHearts(heart);
    spock.changeEmo(emo);
    
    // WIN CONDITION 
    int h = spock.getHearts();
    int e = spock.getEmo();
    
    if (h == 10 && e >= 60) {
      return true;
    } else {
      return false;
    }
  
  }
}
// end of the "Level" class

