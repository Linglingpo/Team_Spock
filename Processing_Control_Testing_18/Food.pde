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
  Food(boolean tempSelect, int tempHeartPercentage, int tempEmotionalPercentage, String tempName, String tempPath, String tempResponse) {
    selected = tempSelect;
    heart = tempHeartPercentage;
    emotionalPercentage = tempEmotionalPercentage;
    name = tempName;
    graphicPath = tempPath;
    response = tempResponse;
  }

  // ========================================================================
  // Methods
  // ========================================================================
  void selectItem(boolean _tempSelect) {
    selected = _tempSelect;
  }
  boolean getSelect() {
    return selected;
  }
  int getHeart() {
    return heart;
  }
  int getEmotionalPercentage() {
    return emotionalPercentage;
  }
  String getName() {
    return name;
  }
  String getPath() {
    return graphicPath();
  }
  String getResponse() {
    return response;
  }
  
}//end of the "Food" class

