class Level {
  // ========================================================================
  // Properties
  // ========================================================================
  boolean proceedToNextLevel = false; // controls event change  
  PImage foodImg;
  int selectionCounter;
  Food[] foodBasket = new Food[6];
  int heart = 0;
  String foodItem1;
  PImage[] images = new PImage[6]; // images of the food
  boolean first = true;
  int start = 0; // start 



  // ========================================================================
  // Constructor
  // ========================================================================
  Level() {
    foodItem1 = "Food : ";
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
    else if (scene == 1) {
      sceneBg = loadImage("lvl_01.jpg");
      image(sceneBg, 0, 0); //show the image
      setFoodBasketLevel1();
      displayForeLevel1();
    } //else {}
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
    if (first) {
      initializeImagesOfFood(); 
      first = false;
    }
    selectionCounter ++;
    moveImagesOfFood();
    
    //Start the level 1 after counter > 10
    if (selectionCounter > 10 ) {
      if (nowSpockOn) {
        keyGraphic = loadImage("haha_lvl1.png");
        selectedFood01 = true;
        updateHearts();
        selectedFood01 = false;
        nowSpockOn = false;
        //reset the selection counter to 0;
        selectionCounter = 0;
      
       foodItem1 = foodItem1 + foodBasket[0].getName();
       println(foodBasket[0].getName());
      
    
      } else {
        keyGraphic = loadImage("poop_lvl1.png");
      }
      image(keyGraphic, 0, 0); //show the image
    }
    //    displayHeartCounter();
    println(selectionCounter);
//    image(foodImg, 500, 300);
    text("Heart: " + heart, 500, 200);
  }

  void updateHearts() {
    if (selectedFood01) {
      heart = heart + 1;
    }
  }

  void initializeImagesOfFood() {
    int start = 150;
    int x = start;
    int y = 300;
    for (int i=0;i<6;i++) {
      images[i] = loadImage(foodBasket[i].getPath());
      images[i].resize(200,0);
      image(images[i], x, y);
      x = x + 220;
    }
  }
  
  void moveImagesOfFood() {
    int x = start;
    int y = 300;
    for (int i = 0; i <6; i++) {
      images[i] = loadImage(foodBasket[i].getPath());
      images[i].resize(200,0);
      image(images[i], x, y);
      x = x + 220;
    }
    start++;
  }

  void setFoodBasketLevel1() {
    foodBasket[0] = new Food(false, 1, -25, "Jumbo Vulcan Mollusk", "jumbovulcanmollusk.png", "It is not logical to want to eat mushy moist mollusks in the morning."); // JUMBO MOLLUSK
    foodBasket[1] = new Food(false, 2, 20, "Gespar", "gespar.png", "It is only logical to eat a slice of gespar fruit in the morning."); // JUMBO MOLLUSK
    foodBasket[2] = new Food(false, 0, 5, "Earl Grey Tea. Hot", "earlgreyhot.png", "I believe you are confusing me with a certain Enterprise captain. No, not that Enterprise Captain."); // EARLGREY
    foodBasket[3] = new Food(false, -2, 35, "Lucky Charms", "luckycharms.png", "This is not a logical option for breakfast."); // LUCKY CHARMS
    foodBasket[4] = new Food(false, 3, -30, "Vulcan Lettuce", "vulcanlettuce.png", "It is not logical for breakfast to be so tasteless."); // VULCAN LETTUCE
    foodBasket[5] = new Food(false, 2, 20, "Earth Salmon", "salmon.png", "It is only logical for something from Earth's vast oceans to be so delicious."); // SALMON
  }
}
// end of the "Level" class

