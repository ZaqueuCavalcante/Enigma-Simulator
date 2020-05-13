class Letter {

  PVector position;
  PFont font;
  char symbol;
  float size;
  color Color;

  Letter() {
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setPosition(float x, float y) {
    position = new PVector();
    position.x = x;
    position.y = y;
  }
  void setFont(String fontName) {
    font = createFont(fontName, 42.0);
  }
  void setSymbol(char symbol_) {
    symbol = symbol_;
  }
  void setSize(float size_) {
    size = size_;
  }
  void setColor(color Color_) {
    Color = Color_;
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void show() {
    fill(Color);
    textFont(font);
    textSize(size);
    textAlign(CENTER, CENTER);
    text(symbol, position.x, position.y - 5.0);
  }
}
