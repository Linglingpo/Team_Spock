class Food {
  // ========================================================================
  // Properties
  // ========================================================================
  boolean selected;
  int heart; // a value between 0 and 10 hearts
  int emotionalPercentage; // a percentage, negative or positive
  String name;
  String graphicPath;
  String response;

  // ========================================================================
  // Constructor
  // ========================================================================
  Food(boolean tempSelect, int tempHeartPercentage, int tempEmotionalPercentage, String tempName, String tempGraphicPath, String tempResponse) {
    selected = tempSelect;
    heart = tempHeartPercentage;
    emotionalPercentage = tempEmotionalPercentage;
    name = tempName;
    graphicPath = tempGraphicPath;
    response = tempResponse;
  }

  // ========================================================================
  // Methods
  // ========================================================================
  void selectItem(boolean _tempSelect) {
    selected = _tempSelect;
  }
  String getName() {
    return name;
  }
  String getPath() {
    return graphicPath;
  }
}//end of the "Food" class

