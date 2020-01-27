Plads[] v;
Brik b = new Brik();

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
  b.drawBrik();
}

void mouseClicked(){
  b= new Brik();
  
}
