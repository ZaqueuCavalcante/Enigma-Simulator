class Key {

  PVector position;
  Circle circle;
  Letter letter;
  boolean pressed;

  Key() {
    drop();
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
    circle.setBorderThickness(5.0);
    circle.setInsideColor(color(50));
    circle.setBorderColor(color(255));
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLetter(char symbol) {
    letter = new Letter();
    letter.setPosition(position.x, position.y);
    letter.setFont("MS PGothic");
    letter.setSymbol(symbol);
    letter.setSize(30.0);
    letter.setColor(color(255));
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void press() {
    pressed = true;
  }
  void drop() {
    pressed = false;
  }
  boolean isPressed() {
    return pressed;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    circle.show();
    letter.show();
  }
}
