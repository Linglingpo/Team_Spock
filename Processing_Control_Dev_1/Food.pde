class Food {
  // ========================================================================
  // Properties
  // ========================================================================

  String[] foodBasketLvl01 = {
    "salmon.png", "alien meat.png", "chocolate.png", "pancakes.png", "sushi.png", "tart.png"
  }; 
  boolean[] booleanFB01 = new boolean [foodBasketLvl01.length];

  PImage[] foodImages = new PImage[foodBasketLvl01.length];
  int imageIndex = 0;
  
  //Timer
  int savedTime;
  //3 sec
  int slidTime = 3000;

  boolean selectinfFood = false;
  int selectedFoodCounter = -1;
  //Spock spockLvl01;

  // ========================================================================
  // Constructor
  // ========================================================================
  Food() {
    //spockLvl01 = new Spock();
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
    image(foodImages[imageIndex], 300, 300, 250, 250);    
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
      selectedFoodCounter = 0;
      booleanFB01[0] = false;
    }
    if (booleanFB01[1]) {
      text("Food 02 is ON", infoX, infoY*2);
      selectedFoodCounter = 1;
       booleanFB01[1] = false;
    }
    if (booleanFB01[2]) {
      text("Food 03 is ON", infoX, infoY*3);
      selectedFoodCounter = 2;
      booleanFB01[2] = false;
    }
    if (booleanFB01[3]) {
      text("Food 04 is ON", infoX, infoY*4);
      selectedFoodCounter = 3;
      booleanFB01[3] = false;
    }
    if (booleanFB01[4]) {
      text("Food 05 is ON", infoX, infoY*5);
      selectedFoodCounter = 4;
      booleanFB01[4] = false;
    }
    if (booleanFB01[5]) {
      text("Food 06 is ON", infoX, infoY*6);
      selectedFoodCounter = 5;
      booleanFB01[5] = false;
    }
  }
 
 int getSelectedFood() {
   return selectedFoodCounter;
 }
 void changeSelectedFoodToNothing() {
   selectedFoodCounter = -1;
 } 
  
}//end of Food class

