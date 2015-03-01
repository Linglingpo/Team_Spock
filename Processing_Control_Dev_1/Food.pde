class Food {
  // ========================================================================
  // Properties
  // ========================================================================

  String[] foodBasket = new String[12];
  
  boolean[] booleanFB01 = new boolean [foodBasket.length];

  PImage[] foodImages = new PImage[foodBasket.length];
  int imageIndex = 0;

  //Timer
  int savedTime;
  //3 sec
  int slidTime = 3000;

  boolean selectinfFood = false;
  int selectedFoodCounter = -1;
  //Spock spockLvl01;

  int timertest = 50;
  int timertest1 = 0;
  boolean startLvl1;

  // ========================================================================
  // Constructor
  // ========================================================================
  Food() {
    //spockLvl01 = new Spock();
    //Timer
    savedTime = millis();
    foodBasket[0] = "chocolate.png";
    foodBasket[1] = "salmon.png";
    foodBasket[2] = "alien_meat.png";
    foodBasket[3] = "vulcan_mollusk.png";    
    foodBasket[4] = "pancakes.png";
    foodBasket[5] = "sushi.png";
    foodBasket[6] = "tart.png";
    foodBasket[7] = "tea.png";
    foodBasket[8] = "fillet_mignon.png";
    foodBasket[9] = "cheese.png";
    foodBasket[10] = "vulcan_lettuce.png";
    foodBasket[11] = "gespar.png";
    for (int i = 0; i<foodBasket.length; i++)
    { 
      foodImages[i] = loadImage(foodBasket[i]);
      booleanFB01[i] = false;
    }
  }  

  // ========================================================================
  // Methods
  // ========================================================================
  void run() {

    timertest1++;
    //Timer
    int passedTime = millis() - savedTime;
<<<<<<< HEAD

=======
>>>>>>> origin/master
    //For display/slid the image
    image(foodImages[imageIndex], 290, 280, 280, 280);    
    if (passedTime > slidTime) {
      imageIndex++;
      savedTime = millis();
    }
    if (imageIndex>foodBasket.length-1) {
      imageIndex = 0;
    }
<<<<<<< HEAD

=======
>>>>>>> origin/master
    displayInfoFB01();
    startLvl1 = true;
    if (timertest1 >= timertest) {   
      if (passedTime > slidTime) {
        imageIndex++;
        savedTime = millis();
      }
      if (imageIndex>foodBasket.length-1) {
        imageIndex = 0;
      }
    }
    //For display/slid the image
    //image(foodImages[imageIndex], 0, 0, 200, 200);
  }

  void displayInfoFB01() {
    int infoX = 10;
    int infoY = 100;
    if (booleanFB01[0]) {
      //text("Food 01 is ON", infoX, infoY);
      //--- Milin ---//
      selectedFoodCounter = 0;
      booleanFB01[0] = false;
    }
    if (booleanFB01[1]) {
      //text("Food 02 is ON", infoX, infoY*2);
      selectedFoodCounter = 1;
      booleanFB01[1] = false;
    }
    if (booleanFB01[2]) {
      //text("Food 03 is ON", infoX, infoY*3);
      selectedFoodCounter = 2;
      booleanFB01[2] = false;
    }
    if (booleanFB01[3]) {
      //text("Food 04 is ON", infoX, infoY*4);
      selectedFoodCounter = 3;
      booleanFB01[3] = false;
    }
    if (booleanFB01[4]) {
      //text("Food 05 is ON", infoX, infoY*5);
      selectedFoodCounter = 4;
      booleanFB01[4] = false;
    }
    if (booleanFB01[5]) {
      //text("Food 06 is ON", infoX, infoY*6);
      selectedFoodCounter = 5;
      booleanFB01[5] = false;
    }
    if (booleanFB01[6]) {
      //text("Food 06 is ON", infoX, infoY*6);
      selectedFoodCounter = 6;
      booleanFB01[6] = false;
    }
    if (booleanFB01[7]) {
      //text("Food 06 is ON", infoX, infoY*6);
      selectedFoodCounter = 7;
      booleanFB01[7] = false;
    }
    if (booleanFB01[8]) {
      //text("Food 06 is ON", infoX, infoY*6);
      selectedFoodCounter = 8;
      booleanFB01[8] = false;
    }
    if (booleanFB01[9]) {
      //text("Food 06 is ON", infoX, infoY*6);
      selectedFoodCounter = 9;
      booleanFB01[9] = false;
    }
    if (booleanFB01[10]) {
      //text("Food 06 is ON", infoX, infoY*6);
      selectedFoodCounter = 10;
      booleanFB01[10] = false;
    }
    if (booleanFB01[11]) {
      //text("Food 06 is ON", infoX, infoY*6);
      selectedFoodCounter = 11;
      booleanFB01[11] = false;
    }
  }

  int getSelectedFood() {
    return selectedFoodCounter;
  }
  void changeSelectedFoodToNothing() {
    selectedFoodCounter = -1;
  }
}//end of Food class

