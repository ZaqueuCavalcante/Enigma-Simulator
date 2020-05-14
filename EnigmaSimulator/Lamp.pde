class Lamp {

  PVector position;
  Circle circle;
  Letter letter;
  boolean on;

  Lamp() {
    turnOff();
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setPosition(float x, float y) {
    position = new PVector();
    position.x = x;
    position.y = y;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setCircle() {
    circle = new Circle();
    circle.setPosition(position.x, position.y);
    circle.setRadius(50.0);
    circle.setBorderThickness(1.0);
    circle.setInsideColor(color(50));
    circle.setBorderColor(color(255));
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLetter(char symbol) {
    letter = new Letter();
    letter.setPosition(position.x, position.y);
    letter.setFont("Arial Black");
    letter.setSymbol(symbol);
    letter.setSize(30.0);
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void turnOn() {
    on = true;
  }
  void turnOff() {
    on = false;
  }
  boolean isOn() {
    return on;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    if (isOn()) {
      letter.setColor(color(255, 255, 0));
    } else {
      letter.setColor(color(255));
    }
    circle.show();
    letter.show();
    turnOff();
  }
}
