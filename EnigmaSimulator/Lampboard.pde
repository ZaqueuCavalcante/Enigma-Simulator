class Lampboard {

  float distanceBetweenLamps;

  String lettersList;
  ArrayList<Lamp> lamps;

  Lampboard() {
    lamps = new ArrayList<Lamp>();
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setDistanceBetweenLamps(float distanceBetweenLamps_) {
    distanceBetweenLamps = distanceBetweenLamps_;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLettersList(String lettersList_) {
    lettersList = lettersList_;
  }
  void makeLampsRow(float firstLampX, float firstLampY, int LampsNumber) {
    int lastLampIndex;
    char lastLampLetter;
    for (int i = 0; i < LampsNumber; i++) {
      Lamp newLamp = new Lamp();
      newLamp.setPosition(firstLampX + i*distanceBetweenLamps, firstLampY);
      lamps.add(newLamp);
      lastLampIndex = lamps.size() - 1;
      lastLampLetter = lettersList.charAt(lastLampIndex);
      lamps.get(lastLampIndex).setCircle();
      lamps.get(lastLampIndex).setLetter(lastLampLetter);
    }
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    for (int i = 0; i < lamps.size(); i++) {
      lamps.get(i).show();
    }
  }
}
