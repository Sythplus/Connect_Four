Plads[] v;
Brik b, b2, b3, b4, b5, b6, b7;
Brik[][] gitter = new Brik[6][7];
int tur = 1;
int plads = 75;

void setup() {
  size(700, 600);
  frameRate(50);
  //v = new Plads[42];
  //for (int i = 0; i < v.length; i++) {
  //  v[i] = new Plads(100*(i%7)+1, 100*(i/7)+1);
  //}
}

void draw() {
  background(44, 74, 200);
  //for (int i = 0; i < v.length; i++) {
  //  v[i].drawPlads();
  //}
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 7; j++) { 
      if ( gitter[i][j] !=null) {
        gitter[i][j].render();
      } else {
        fill(255);
        ellipse(100*(j)+1+50, 100*(i)+1+50, 75, 75);
      }
    }
  }
}

void mousePressed() {
  if (mouseX>0  && mouseX<width/7 && mouseButton == LEFT) {
    for (int i = 0; i<6; i++) {
      if (gitter[5-i][0] == null) {
        gitter[5-i][0] = new Brik(50, (5-i)*100+50, tur);
        tur = (tur + 1) % 2;
        println(checkForWin(5-i, 0));
        break;
      }
    }
  }
  if (mouseX>width/7  && mouseX<width*2/7 && mouseButton == LEFT) {
    for (int i = 0; i<6; i++) {
      if (gitter[5-i][1] == null) {
        gitter[5-i][1] = new Brik(150, (5-i)*100+50, tur);
        tur = (tur + 1) % 2;
        println(checkForWin(5-i, 1));
        break;
      }
    }
  }
  if (mouseX>width*2/7  && mouseX<width*3/7 && mouseButton == LEFT) {
    for (int i = 0; i<6; i++) {
      if (gitter[5-i][2] == null) {
        gitter[5-i][2] = new Brik(250, (5-i)*100+50, tur);
        tur = (tur + 1) % 2;
        println(checkForWin(5-i, 2));
        break;
      }
    }
  }
  if (mouseX>width*3/7  && mouseX<width*4/7 && mouseButton == LEFT) {
    for (int i = 0; i<6; i++) {
      if (gitter[5-i][3] == null) {
        gitter[5-i][3] = new Brik(350, (5-i)*100+50, tur);
        tur = (tur + 1) % 2;
        println(checkForWin(5-i, 3));
        break;
      }
    }
  }
  if (mouseX>width*4/7  && mouseX<width*5/7 && mouseButton == LEFT) {
    for (int i = 0; i<6; i++) {
      if (gitter[5-i][4] == null) {
        gitter[5-i][4] = new Brik(450, (5-i)*100+50, tur);
        tur = (tur + 1) % 2;
        println(checkForWin(5-i, 4));
        break;
      }
    }
  }
  if (mouseX>width*5/7  && mouseX<width*6/7 && mouseButton == LEFT) {
    for (int i = 0; i<6; i++) {
      if (gitter[5-i][5] == null) {
        gitter[5-i][5] = new Brik(550, (5-i)*100+50, tur);
        tur = (tur + 1) % 2;
        println(checkForWin(5-i, 5));
        break;
      }
    }
  }
  if (mouseX>width*6/7  && mouseX<width && mouseButton == LEFT) {
    for (int i = 0; i<6; i++) {
      if (gitter[5-i][6] == null) {
        gitter[5-i][6] = new Brik(650, (5-i)*100+50, tur);
        tur = (tur + 1) % 2;
        println(checkForWin(5-i, 6));
        break;
      }
    }
  }
}



boolean checkForWin(int y, int x){
    // hvilken farve er lige blevet lagt
    int faceC = gitter[y][x].face;
    
    // check 3 til højre
    int count = 0;
    for (int i= 1; i<4; i++){ 
        if ((gitter.length >  (x + i)) && (gitter[y][x + i] != null) && gitter[y][x + i].face == faceC)
        {
            count++;
        }
    }
    if (count == 3)
    {
        return true;
    }

    // check 3 til ventre
    count = 0;
    for (int i= 1; i<4; i++)
    { 
        if ((0 <= (x - i)) && (gitter[y][x + i] != null) && gitter[y][x-i].face == faceC)
        {
            count++;
        }
    }
    if (count == 3){
        return true;
    }

    // check 3 ned
    int count = 0;
    for (int i= 1; i<4; i++){ 
        if ((gitter.length >  (y - i)) && (gitter[y - i][x] != null) && gitter[y - i][x].face == faceC)
        {
            count++;
        }
    }
    if (count == 3)
    {
        return true;
    }

    // check op til højre
    count = 0;
    for (int i= 1; i<4; i++){ 
        if ((0 <=  (y - i)) && (gitter.length >  (x + i)) && (gitter[y - i][x + i] != null) && gitter[y - i][x + i].face == faceC)
        {
            count++;
        }
    }
    if (count == 3)
    {
        return true;
    }

    // check op til venstre
    count = 0;
    for (int i= 1; i<4; i++){ 
        if ((0 <=  (y - i)) && (0 <= (x - i)) && (gitter[y - i][x - i] != null) && gitter[y - i][x - i].face == faceC)
        {
            count++;
        }
    }
    if (count == 3)
    {
        return true;
    }

    // check ned til venstre
    count = 0;
    for (int i= 1; i<4; i++){ 
        if ((gitter.length >  (y + i)) && (0 <= (x - i)) && (gitter[y + i][x - i] != null) && gitter[y + i][x - i].face == faceC)
        {
            count++;
        }
    }
    if (count == 3)
    {
        return true;
    }

    // check ned til højre
    count = 0;
    for (int i= 1; i<4; i++){ 
        if ((gitter.length >  (y + i)) && (gitter.length >  (x + i)) && (gitter[y + i][x + i] != null) && gitter[y + i][x + i].face == faceC)
        {
            count++;
        }
    }
    if (count == 3)
    {
        return true;
    }

    return false;
}

// x x x x x x x
// x x x x x x x
// x x x x o x x
// x x x x x x x
// x x x x x x x
// x x x x x x x
