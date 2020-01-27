class Plads {
  int x; 
  int y;

  Plads(int x, int y) {
    this.x = x; 
    this.y = y;
  }

  void drawPlads() {
    ellipse(x+50, y+50, 75, 75);
    fill(255,255,255);
  }
}
