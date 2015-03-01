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
    emoBar();
    //text(hearts, 700, 200);
    //text(emo, 700, 400);

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

  void emoBar() {
    fill(0, 0, 255);
    noStroke();
    int rectHeight = 150;
    //Heath Bar
    if (emo <= 0) {
      rectHeight = 100;
    } else if (emo == 5) {
      rectHeight = 150;
    } else if (emo == 10) {
      rectHeight = 175;
    } else if (emo == 15) {
      rectHeight = 200;
    } else if (emo == 20) {
      rectHeight = 225;
    } else if (emo == 25) {
      rectHeight = 250;
    } else if (emo == 30) {
      rectHeight = 300;
    } else if (emo == 35) {
      rectHeight = 325;
    } else if (emo == 40) {
      rectHeight = 350;
    } else if (emo == 45) {
      rectHeight = 375;
    } else if (emo == 50) {
      rectHeight = 400;
    } else if (emo == 55) {
      rectHeight = 425;
    } else if (emo == 60) {
      rectHeight = 450;
    } else if (emo == 65) {
      rectHeight = 475;
    } else if (emo == 70) {
      rectHeight = 500;
    } else if (emo == 75) {
      rectHeight = 525;
    } else if (emo == 80) {
      rectHeight = 550;
    } else if (emo == 85) {
      rectHeight = 575;
    } else if (emo == 90) {
      rectHeight = 600;
    } else if (emo == 95) {
      rectHeight = 625;
    } else if (emo >= 100) {
      rectHeight = height;
    }
    rect(1000, 0, width, rectHeight);
    image(bgMask, 0, 0, width, height);
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
    rect(0, 0, width - 300, rectHeight);
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

