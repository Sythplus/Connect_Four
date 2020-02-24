class Plads {
  int x; 
  int y;

  Plads(int x, int y) {
    this.x = x; 
    this.y = y;
  }

  void drawPlads() {
    fill(255);
    ellipse(x+50, y+50, 75, 75);
  }
}
