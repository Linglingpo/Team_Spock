class Spock {

  // ========================================================================
  // Properties
  // ========================================================================
  int hearts;
  int emo;

  // ========================================================================
  // Constructor
  // ========================================================================
  Spock() {
    hearts = 5; // medium hearts
    emo = 50; // medium happiness
    
  }
  // ========================================================================
  // Methods
  // ========================================================================
  void display() {
    heathBar();
    text(hearts, 700, 200);
    text(emo, 700, 400);

    if (hearts > 10) {
      hearts = 10;
    }
    if (emo > 100) {
      emo = 100;
    }
    if (hearts < 0) {
      hearts = 0;
    }
    if (emo < 0) {
      emo = 0;
    }
  }

  void heathBar() {
    fill(0, 255, 0);
    noStroke();
    int rectHeight = 150;
    //Heath Bar
    if (hearts == 0) {
      rectHeight = 150;
    } else if (hearts == 1) {
      rectHeight = 200;
    } else if (hearts == 2) {
      rectHeight = 250;
    } else if (hearts == 3) {
      rectHeight = 300;
    } else if (hearts == 4) {
      rectHeight = 350;
    } else if (hearts == 5) {
      rectHeight = 400;
    } else if (hearts == 6) {
      rectHeight = 450;
    } else if (hearts == 7) {
      rectHeight = 500;
    } else if (hearts == 8) {
      rectHeight = 550;
    } else if (hearts == 9) {
      rectHeight = 600;
    } else if (hearts >= 10) {
      rectHeight = height;
    }
    rect(0, 0, width, rectHeight);
    image(bgMask, 0, 0, width, height);
  }

  //----- update heart -----//
  void changeHearts(int h) {
    hearts = hearts + h;
    //      if (hearts > 10) {
    //        hearts = 10; // HEART COUNT SHOULD NEVER BE HIGHER THAN 10
    //      }
  }

  //----- update emotional -----//
  void changeEmo(int e) {
    emo = emo + e;
    if (emo > 100) {
      emo = 100;    // EMOTIONAL PERCENTAGE SHOULD NEVER BE HIGHER THAN 100
    }
  }


  //----- get heart -----//
  int getHearts() {
    return hearts;
  }

  //----- get emotional -----//
  int getEmo() {
    return emo;
  }
}
// end of the object

