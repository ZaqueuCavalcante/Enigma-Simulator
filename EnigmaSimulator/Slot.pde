class Slot {

  PVector position;
  float verticalDistance;
  Letter letter;
  ArrayList<Circle> sockets;  // Provavelmente vou precisar de uma classe Socket.

  Slot() {
    sockets = new ArrayList<Circle>();
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setPosition(float x, float y) {
    position = new PVector();
    position.x = x;
    position.y = y;
  }
  void setVerticalDistance(float verticalDistance_) {
    verticalDistance = verticalDistance_;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setLetter(char symbol) {
    letter = new Letter();
    letter.setPosition(position.x, position.y);
    letter.setFont("Arial");
    letter.setSymbol(symbol);
    letter.setSize(30.0);
    letter.setColor(color(255));
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setSockets() {
    Circle socket0 = new Circle();
    socket0.setPosition(position.x, position.y + verticalDistance);
    socket0.setRadius(30.0);
    socket0.setBorderThickness(5.0);
    socket0.setInsideColor(color(0));
    socket0.setBorderColor(color(255));
    Circle socket1 = new Circle();
    socket1.setPosition(position.x, position.y + 2*verticalDistance);
    socket1.setRadius(30.0);
    socket1.setBorderThickness(5.0);
    socket1.setInsideColor(color(0));
    socket1.setBorderColor(color(255));
    sockets.add(socket0);
    sockets.add(socket1);
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    letter.show();
    for (Circle socket : sockets) {
      socket.show();
    }
  }
}
