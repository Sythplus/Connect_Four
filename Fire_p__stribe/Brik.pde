class Brik {
  int x;
  int y;
  
  Brik() {
    this.y = mouseY;
    this.x = mouseX;
  }
  
  void drawBrik() {
    ellipse(x, y, 75, 75);
    fill(255, 0, 0);
  }
}
