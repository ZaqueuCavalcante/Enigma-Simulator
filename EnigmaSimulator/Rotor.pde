class Rotor {

  PVector position;

  String name;  // IC, IIC, IIIC, I, II,  III, UKW, ETW...
  String rightLetters;
  String leftLetters;

  int currentLetterIndex;

  Rotor() {
  }
  void setPosition(float x_, float y_) {
    position = new PVector();
    position.x = x_;
    position.y = y_;
  }

  void show() {
  }
}
