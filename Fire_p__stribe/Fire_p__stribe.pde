Plads[] v;
Brik b, b2, b3, b4, b5, b6, b7;
Brik[][] gitter = new Brik[6][7];

void setup() {
  size(700, 600);
  frameRate(50);
  v = new Plads[42];
  for (int i = 0; i < v.length; i++) {
    v[i] = new Plads(100*(i%7)+1, 100*(i/7)+1);
  }
}

void draw() {
  background(44, 74, 200);
  for (int i = 0; i < v.length; i++) {
    v[i].drawPlads();
  }
}


void mousePressed() {
  if (mouseX>b.xPos-50 && mouseY<b.yPos+50 && mouseX<b.xPos+50 && mouseY>t.bPos-50 && mouseButton == LEFT) {
    for (int i = 0; i<6; i++) {
      if (gitter([6-i][0] == null) {
        gitter([6-i][0] = new Brik(255, 255, 0);
        break;
      }
    }
    if (mouseX>b2.xPos-50 && mouseY<b2.yPos+50 && mouseX<b2.xPos+50 && mouseY>b2.yPos-50 && mouseButton == LEFT) {
      for (int i = 0; i<6; i++) {
        if (gitter([6-i][0] == null) {
          gitter([6-i][0] = new Brik();
          break;
        }
        if (mouseX>b3.xPos-50 && mouseY<b3.yPos+50 && mouseX<b3.xPos+50 && mouseY>b3.yPos-50 && mouseButton == LEFT) {
          for (int i = 0; i<6; i++) {
            if (gitter([6-i][0] == null) {
              gitter([6-i][0] = new Brik();
              break;
            }
            if (mouseX>b4.xPos-50 && mouseY<b4.yPos+50 && mouseX<b4.xPos+50 && mouseY>b4.yPos-50 && mouseButton == LEFT) {
              for (int i = 0; i<6; i++) {
                if (gitter([6-i][0] == null) {
                  gitter([6-i][0] = new Brik();
                  break;
                }
                if (mouseX>b5.xPos-50 && mouseY<b5.yPos+50 && mouseX<b5.xPos+50 && mouseY>b5.yPos-50 && mouseButton == LEFT) {
                  for (int i = 0; i<6; i++) {
                    if (gitter([6-i][0] == null) {
                      gitter([6-i][0] = new Brik();
                      break;
                    }
                    if (mouseX>b6.xPos-50 && mouseY<b6.yPos+50 && mouseX<b6.xPos+50 && mouseY>b6.yPos-50 && mouseButton == LEFT) {
                      for (int i = 0; i<6; i++) {
                        if (gitter([6-i][0] == null) {
                          gitter([6-i][0] = new Brik();
                          break;
                        }
                        if (mouseX>b6.xPos-50 && mouseY<b6.yPos+50 && mouseX<b6.xPos+50 && mouseY>b6.yPos-50 && mouseButton == LEFT) {
                          for (int i = 0; i<6; i++) {
                            if (gitter([6-i][0] == null) {
                              gitter([6-i][0] = new Brik();
                              break;
                            }
                          }
                        }
