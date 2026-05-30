Movil[] robots;
int n = 10;
int separacion = 40;

void setup() {
  size(600, 400);

  robots = new Movil[n];

  for (int i = 0; i < n; i++) {
    robots[i] = new Movil(50 + i * separacion, height/2);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < n; i++) {
    robots[i].mover();
    robots[i].mostrar();
  }
}
