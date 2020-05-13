class Key {

  PVector position;
  Letter letter;
  boolean pressed;

  Key() {
    drop();
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setPosition(float x_, float y_) {
    position = new PVector();
    position.x = x_;
    position.y = y_;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLetter(char symbol) {
    letter.setPosition(position.x, position.x - 5.0);
    letter.setFont("MS-UIGothic-48");
    letter.setSymbol(symbol);
    letter.setSize(50.0);
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
    print("PRESSED !");
    print("\n");
    return pressed;
    
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    strokeWeight(5);
    stroke(255);
    fill(50);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, 80.0, 80.0);

    fill(255);
    textSize(50);
    textAlign(CENTER, CENTER);
    text(letter, position.x, position.y - 5.0);
  }
}
