class Keyboard {

  PVector position;
  PVector distanceBetweenKeys;

  String letters;
  ArrayList<Key> keys;

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
    keys = new ArrayList<Key>();
    float x;
    float y;

    for (int i = 0; i < 9; i++) {
      Key key_ = new Key();
      x = position.x + i*distanceBetweenKeys.x;
      y = position.y;
      key_.setPosition(x, y);
      keys.add(key_);
    }
    for (int i = 0; i < 8; i++) {
      Key key_ = new Key();
      x = position.x + distanceBetweenKeys.x/2 + i*distanceBetweenKeys.x;
      y = position.y + distanceBetweenKeys.y;
      key_.setPosition(x, y);
      keys.add(key_);
    }
    for (int i = 0; i < 9; i++) {
      Key key_ = new Key();
      x = position.x + i*distanceBetweenKeys.x;
      y = position.y + 2.0*distanceBetweenKeys.y;
      key_.setPosition(x, y);
      keys.add(key_);
    }
  }
  void setKeycapsLetters() {
    for (int i = 0; i < 26; i++) {
      char letter = letters.charAt(i);
      keys.get(i).setLetter(letter);
    }
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    for (int i = 0; i < 26; i++) {
      keys.get(i).show();
    }
  }
}
