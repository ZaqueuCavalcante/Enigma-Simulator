class Keyboard {

  PVector position;
  PVector distanceBetweenKeys;

  String letters;
  ArrayList<Keycap> keycaps;

  Keyboard() {
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setPosition(float x_, float y_) {
    position = new PVector();
    position.x = x_;
    position.y = y_;
  }
  void setDistanceBetweenKeys(float horizontalDistance, float verticalDistance) {
    distanceBetweenKeys = new PVector();
    distanceBetweenKeys.x = horizontalDistance;
    distanceBetweenKeys.y = verticalDistance;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLetters() {
    letters = "QWERTZUIOASDFGHJKPYXCVBNML";
  }
  void setKeycapsPositions() {
    keycaps = new ArrayList<Keycap>();
    float x;
    float y;

    for (int i = 0; i < 9; i++) {
      Keycap keycap = new Keycap();
      x = position.x + i*distanceBetweenKeys.x;
      y = position.y;
      keycap.setPosition(x, y);
      keycaps.add(keycap);
    }
    for (int i = 0; i < 8; i++) {
      Keycap keycap = new Keycap();
      x = position.x + distanceBetweenKeys.x/2 + i*distanceBetweenKeys.x;
      y = position.y + distanceBetweenKeys.y;
      keycap.setPosition(x, y);
      keycaps.add(keycap);
    }
    for (int i = 0; i < 9; i++) {
      Keycap keycap = new Keycap();
      x = position.x + i*distanceBetweenKeys.x;
      y = position.y + 2.0*distanceBetweenKeys.y;
      keycap.setPosition(x, y);
      keycaps.add(keycap);
    }
  }
  void setKeycapsLetters() {
    for (int i = 0; i < 26; i++) {
      char letter = letters.charAt(i);
      keycaps.get(i).setLetter(letter);
    }
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    for (int i = 0; i < 26; i++) {
      keycaps.get(i).show();
    }
  }
}
