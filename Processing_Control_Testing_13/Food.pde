class Food {
  // ========================================================================
  // Properties
  // ========================================================================
  boolean selected;
  int heart; // a value between 0 and 10 hearts
  int emotionalPercentage; // a percentage, negative or positive
  String name;

  // ========================================================================
  // Constructor
  // ========================================================================
  Food(boolean tempSelect, int tempHeartPercentage, int tempEmotionalPercentage, String tempName) {
    selected = tempSelect;
    heart = tempHeartPercentage;
    emotionalPercentage = tempEmotionalPercentage;
    name = tempName;
  }

  // ========================================================================
  // Methods
  // ========================================================================
  void selectItem(boolean _tempSelect) {
    selected = _tempSelect;
  }
}//end of the "Food" class

