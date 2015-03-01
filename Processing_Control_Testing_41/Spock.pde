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
    hearts = 5; // maximum hearts
    emo = 50; // medium happiness
  }
  // ========================================================================
  // Methods
  // ========================================================================
  void display() {
    text(hearts, 700, 200);
    text(emo, 700, 400);
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

