class Keyboard {

  float distanceBetweenKeys;

  String lettersList;
  ArrayList<Key> keys;

  Keyboard() {
    keys = new ArrayList<Key>();
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setDistanceBetweenKeys(float distanceBetweenKeys_) {
    distanceBetweenKeys = distanceBetweenKeys_;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLettersList(String lettersList_) {
    lettersList = lettersList_;
  }
  void makeKeysRow(float firstKeyX, float firstKeyY, int keysNumber) {
    int lastKeyIndex;
    char lastKeyLetter;
    for (int i = 0; i < keysNumber; i++) {
      Key newKey = new Key();
      newKey.setPosition(firstKeyX + i*distanceBetweenKeys, firstKeyY);
      keys.add(newKey);
      lastKeyIndex = keys.size() - 1;
      lastKeyLetter = lettersList.charAt(lastKeyIndex);
      keys.get(lastKeyIndex).setCircle();
      keys.get(lastKeyIndex).setLetter(lastKeyLetter);
    }
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    for (int i = 0; i < keys.size(); i++) {
      keys.get(i).show();
    }
  }
}
