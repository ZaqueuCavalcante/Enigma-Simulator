class Lamp {

  PVector position;

  char letter;

  boolean on;

  Lamp() {
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
      imageMode(CENTER);
      //image(lightOnSprite, position.x, position.y);
      fill(200, 100, 0);
    } else {
      strokeWeight(5);
      fill(150);
      ellipse(position.x, position.y, 80, 80);
      fill(50);
    }
    textAlign(CENTER, CENTER);
    textSize(20);
    text(letter, position.x, position.y);
  }
}
