class Brik {

  int face;
  int xPos;
  int yPos;

  Brik(int xPos, int yPos) {
    face = 2;
    this.xPos = xPos;
    this.yPos = yPos;
  }

  Brik(int n) {
    face = n;
  }

  void render() {

    if (face == 1) {
      fill(255, 255, 0);
    } else if (face == 2) {
      fill(255, 0, 0);
    }
    ellipse(xPos, yPos, 75, 75);
  }

  void start() {
    face = 1;
  }
}
