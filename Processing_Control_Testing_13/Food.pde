// GENERIC FOOD OBJECT
Food foodItem;
boolean selected;
int heart; // a value between 0 and 10 hearts
int emotionalPercentage; // a percentage, negative or positive
String name;
void setup() {
foodItem = new foodItem();
}
class foodItem(boolean tempselectect, int tempheartpercentage, int tempemotionalpercentage, String tempname) {
selected = tempselect;
if (tempheartpercentage < 0 & tempheartpercentage > 10) {
println("Food constructor faulty for " + tempname + ", heart value was incorrect and is null.");
} else {
heart = tempheartpercentage;
}
if (tempemotionalpercentage < 0 & tempemotionalpercentage > 10) {
println("Food constructor faulty for " + tempname + ", emotional value was incorrect and is null.");
} else {
emotionalPercentage = tempemotionalpercentage;
}
name = tempname;
}
boolean selectItem(boolean tempselect) {
selected = tempselect;
}
