class Level {
  // ========================================================================
  // Properties
  // ========================================================================
  Spock spock;  
  //  Screen screen;
  //  Timer timer; 
  //  boolean proceedToNextLevel = false; // controls event change  

  int heart = 0;
  int emo = 0;
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
    else if (scene == 1) {
      spock = new Spock();
      sceneBg = loadImage("lvl_01.jpg");
      image(sceneBg, 0, 0); //show the image
      displayForeLevel1();
    }
    //-- Lvl 02 --//
    else {
      spock = new Spock();
      //nothing yet
    }
  }

  //--- Intro front ---//
  void displayForeIntro() {
    if (nowSpockOn) {
      keyGraphic = loadImage("On.png");
    } else {
      keyGraphic = loadImage("down.png");
    }
    image(keyGraphic, 0, 0); //show the image
  }


  //--- Level 01 front ---//
  void displayForeLevel1() {
    if (nowSpockOn) {
      keyGraphic = loadImage("haha_lvl1.png");
      if (flag) {
        heart = spock.getHearts(heart);
        emo = spock.getEmo(emo);
        flag = false;
      }
      nowSpockOn = false;
    } else {
      keyGraphic = loadImage("poop_lvl1.png");
      nowSpockOn = false;
    }
    image(keyGraphic, 0, 0); //show the image
    text("Heart: " + heart, 500, 100);
    text("Emotional: " + emo, 500, 200);
  }
}


//void evaluateScore (int _hearts, int _emo){
//  newHeart = spock.getHearts(_hearts);
//  newEmo = spock.getEmo(_emo);
//  println("Heath: " + newHeart);
//println("Emotion: " + newEmo);
//}

//  //------------ Condition that go to the next level ------------//
//
//  boolean evaluateScore(int _heart, int _emo) {
//    spock.changeHearts(_heart);
//    spock.changeEmo(_emo);
//    // WIN CONDITION 
//    int h = spock.getHearts();
//    int e = spock.getEmo();
//    println("Heath: " + h);
//    println("Emotion: " + e);
//
//    if (h == 10 && e >= 60) {
//      return true;
//    } else {
//      return false;
//    }
//  }
//}
// end of the "Level" class

