class Level {
  // ========================================================================
  // Properties
  // ========================================================================
  Spock spock;  
  //  Screen screen;
  //  Timer timer; 
boolean proceedToNextLevel = false; // controls event change  
Food[] foodBasket = new Food[7];

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
      setFoodBasketLevel1();
      
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
  
  
  
  
void setFoodBasketLevel1() {
  foodBasket[0] = new Food(false, 1, -25, "Jumbo Vulcan Mollusk", "jumbovulcanmollusk.png", "It is not logical to want to eat mushy moist mollusks in the morning."); // JUMBO MOLLUSK
  foodBasket[1] = new Food(false, 2, 20, "Gespar", "jumbovulcanmollusk.png", "It is only logical to eat a slice of gespar fruit in the morning."); // JUMBO MOLLUSK
  foodBasket[2] = new Food(false, 0, 5, "Earl Grey Tea. Hot", "earlgreyhot.png", "I believe you are confusing me with a certain Enterprise captain. No, not that Enterprise Captain."); // EARLGREY
  foodBasket[3] = new Food(false, -2, 35, "Lucky Charms", "luckycharms.png", "This is not a logical option for breakfast."); // LUCKY CHARMS
  
}
  
  
  
  
  
}
// end of the "Level" class

