class Plugboard {

  float distanceBetweenPlugs;

  String lettersList;
  ArrayList<Plug> plugs;

  Plugboard() {
    plugs = new ArrayList<Plug>();
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setDistanceBetweenPlugs(float distanceBetweenPlugs_) {
    distanceBetweenPlugs = distanceBetweenPlugs_;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLettersList(String lettersList_) {
    lettersList = lettersList_;
  }
  void makePlugsRow(float firstPlugX, float firstPlugY, int plugsNumber) {
    int lastPlugIndex;
    char lastPlugLetter;
    for (int i = 0; i < plugsNumber; i++) {
      Plug newPlug = new Plug();
      newPlug.setPosition(firstPlugX + i*distanceBetweenPlugs, firstPlugY);
      plugs.add(newPlug);
      lastPlugIndex = plugs.size() - 1;
      lastPlugLetter = lettersList.charAt(lastPlugIndex);
      plugs.get(lastPlugIndex).setVerticalDistance(50.0);
      plugs.get(lastPlugIndex).setLetter(lastPlugLetter);
      plugs.get(lastPlugIndex).setSockets();
    }
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    for (int i = 0; i < plugs.size(); i++) {
      plugs.get(i).show();
    }
  }
}
