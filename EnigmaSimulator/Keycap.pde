class Keycap {

  PVector position;
  char letter;
  boolean pressed;

  Keycap() {
    position = new PVector();
    drop();
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setPosition(float x_, float y_) {
    position.x = x_;
    position.y = y_;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLetter(char letter_) {
    letter = letter_;
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
    strokeWeight(4);
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
