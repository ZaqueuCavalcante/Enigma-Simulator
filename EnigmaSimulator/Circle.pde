class Circle {

  PVector position;
  float radius;
  float borderThickness;
  color insideColor;
  color borderColor;

  Circle() {
  }
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
  void setPosition(float x_, float y_) {
    position = new PVector();
    position.x = x_;
    position.y = y_;
  }
  void setRadius(float radius_) {
    radius = radius_;
  }
  void setBorderThickness(float borderThickness_) {
    borderThickness = borderThickness_;
  }
  void setInsideColor(color insideColor_) {
    insideColor = insideColor_;
  }
  void setBorderColor(color borderColor_) {
    borderColor = borderColor_;
  }
  void show() {
    strokeWeight(borderThickness);
    stroke(borderColor);
    fill(insideColor);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, radius, radius);
  }
}
