class Spock {
  // ========================================================================
  // Properties
  // ========================================================================
  int initialHeart = 5;
  int initialEmo = 50;

  int hearts = initialHeart;
  int emo = initialEmo;

  // ========================================================================
  // Constructor
  // ========================================================================
  Spock() {
    //starting Hearts and Emo
//    hearts = 5; // maximum hearts
//    emo = 50; // medium happiness
  }  

  // ========================================================================
  // Methods
  // ========================================================================

  int getHearts(int h) {
    if (nowSpockOn) {
      hearts = hearts + h;
      //      if (hearts > 10) {
      //        hearts = 10; // HEART COUNT SHOULD NEVER BE HIGHER THAN 10
      //      }
    } else {
      //do noting yet
    }
    return hearts;
  }

  int getEmo(int e) {
    if (nowSpockOn) {
      emo = emo + e;
      //      if (emo > 100) {
      //        emo = 100;    // EMOTIONAL PERCENTAGE SHOULD NEVER BE HIGHER THAN 100
      //      }
    } else {
      //do noting yet
    }
    return emo;
  }
  
  int getHearts() {
    return hearts;
  }

  int getEmo() {
    return emo;
  }
}
