class Plugboard {

  float distanceBetweenSlots;

  String lettersList;
  ArrayList<Slot> slots;
  ArrayList<Plug> plugs;

  Plugboard() {
    slots = new ArrayList<Slot>();
    plugs = new ArrayList<Plug>();
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setDistanceBetweenSlots(float distanceBetweenSlots_) {
    distanceBetweenSlots = distanceBetweenSlots_;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLettersList(String lettersList_) {
    lettersList = lettersList_;
  }
  void makeSlotsRow(float firstSlotX, float firstSlotY, int slotsNumber) {
    int lastSlotIndex;
    char lastSlotLetter;
    for (int i = 0; i < slotsNumber; i++) {
      Slot newSlot = new Slot();
      newSlot.setPosition(firstSlotX + i*distanceBetweenSlots, firstSlotY);
      slots.add(newSlot);
      lastSlotIndex = slots.size() - 1;
      lastSlotLetter = lettersList.charAt(lastSlotIndex);
      slots.get(lastSlotIndex).setVerticalDistance(35.0);
      slots.get(lastSlotIndex).setLetter(lastSlotLetter);
      slots.get(lastSlotIndex).setSockets();
    }
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    for (int i = 0; i < slots.size(); i++) {
      slots.get(i).show();
    }
  }
}
