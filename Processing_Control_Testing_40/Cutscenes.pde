class Level {
  // ========================================================================
  // Properties
  // ========================================================================

  /*-------- Calling other class -----------*/
  int cutsceneCount = 0;

  // ========================================================================
  // Constructor
  // ========================================================================
  Cutscenes () {
   
  }  

  // ========================================================================
  // Methods
  // ========================================================================
  void run() {
  }


  void display() {
    //------------ change scenes ------------//
    //display the bg
    image(sceneBg, 0, 0); // this gets initialized somewhere else

    //-- Intro --//
    if (cutsceneCount == 0) {
      // do nothing
    }
 
    //-- Cut Scene 1 --//
    else if (cutsceneCount == 1) {
      displayCutscene1();
    }
    //-- Lvl 02 --//
    else {
      //do noting yet
    }
  }

  //-- Cutscene 1 --//
  void displayCutScene1() {
    //load the intro bg
    sceneBg = loadImage("intro.jpg");
  }


}// end of the "cutscene" class

