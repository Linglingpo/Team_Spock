class Food {
  // ========================================================================
  // Properties
  // ========================================================================

  String[] foodBasketLvl01 = {
    "01.png", "02.png", "03.png", "04.png", "05.png", "06.png"
  }; 
  boolean[] booleanFB01 = new boolean [foodBasketLvl01.length];

  PImage[] foodImages = new PImage[foodBasketLvl01.length];
  int imageIndex = 0;

  //Timer
  int savedTime;
  //3 sec
  int slidTime = 3000;

  boolean selectinfFood = false;
  Spock spockLvl01;

  // ========================================================================
  // Constructor
  // ========================================================================
  Food() {
    spockLvl01 = new Spock();
    //Timer
    savedTime = millis();
    for (int i = 0; i<foodBasketLvl01.length; i++)
    { 
      foodImages[i] = loadImage(foodBasketLvl01[i]);
      booleanFB01[i] = false;
    }
  }  

  // ========================================================================
  // Methods
  // ========================================================================
  void run() {
    //Timer
    int passedTime = millis() - savedTime;
    //For display/slid the image
    image(foodImages[imageIndex], 0, 0, 200, 200);    
    if (passedTime > slidTime) {
      imageIndex++;
      savedTime = millis();
    }
    if (imageIndex>foodBasketLvl01.length-1) {
      imageIndex = 0;
    }
    displayInfoFB01();
  }

  void displayInfoFB01() {
    int infoX = 10;
    int infoY = 100;
    if (booleanFB01[0]) {
      text("Food 01 is ON", infoX, infoY);
      //--- Milin ---//
      selectinfFood = true;
      if (selectinfFood) {
        spockLvl01.changeHearts(3);
        selectinfFood = false;
        //--- Milin ---//
      }
      println (spockLvl01.getHearts());
    }

    if (booleanFB01[1]) {
      text("Food 02 is ON", infoX, infoY*2);
    }
    if (booleanFB01[2]) {
      text("Food 03 is ON", infoX, infoY*3);
    }
    if (booleanFB01[3]) {
      text("Food 04 is ON", infoX, infoY*4);
    }
    if (booleanFB01[4]) {
      text("Food 05 is ON", infoX, infoY*5);
    }
    if (booleanFB01[5]) {
      text("Food 06 is ON", infoX, infoY*6);
    }
  }
}//end of Food class

