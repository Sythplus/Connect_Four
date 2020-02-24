class Brik {//opretter klassen brik

  int face;// værdien for brikken
  int xPos;// Hvor brikken ligger på x-aksen
  int yPos;// Hvor brikken ligger på y-aksen

  Brik(int xPos, int yPos, int face) {// opretter objektet brik
    this.face = face;
    this.xPos = xPos;
    this.yPos = yPos;
  }

  Brik(int n) {// antallet af face objektet brik har
    face = n;
  }

  void render() {

    if (face == 1) {
      fill(255, 255, 0);
    } else if (face == 0) {
      fill(255, 0, 0);//hvis objektet face = 1 tegn objektet gul, Hvis objektet face = 0 tegn objektet rød
    }
    ellipse(xPos, yPos, 75, 75);//tegn elipse(, position på x-aksen, position på y-aksen, højde, bredde 
  }

  void start() {
    face = 1;
  }
}
