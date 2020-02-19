class Brik {

  int face;
  int xPos;
  int yPos;

  Brik(int xPos, int yPos, int face) {
    this.face = face;
    this.xPos = 50;
    this.yPos = 50;
  }

  Brik(int n) {
    face = n;
  }

  void render() {

    if (face == 1) {
      fill(255, 255, 0);
    } else if (face == 0) {
      fill(255, 0, 0);
    }
    ellipse(xPos, yPos, 75, 75);
  }

  void start() {
    face = 1;
  }
}
