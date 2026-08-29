ArrayList<Cuadrado> tubos;
Pelota bird;
float ultimoPar = 0;
PVector G = new PVector(0,0.4);

void setup() {
  size(800, 600);
  tubos = new ArrayList<Cuadrado>();
  bird = new Pelota(100, height/2);
}

void draw() {
  background(0);
  Agregartubos();
  bird.addFuerza(G);
  bird.mover();
  borrartubos();

  for (Cuadrado t : tubos) {
    t.mover();
    t.mostrar();
  }

  bird.mostrar();
}

void borrartubos() {
  for (int i = tubos.size() - 1; i >= 0; i--) {
    Cuadrado Aux = tubos.get(i);

    if (Aux.pos.x < 0) {
      tubos.remove(i);
    }
  }
}

void Agregartubos() {
  float tActual = millis();
  float dt = tActual - ultimoPar;

  if (dt > 5000) {
    tubos.add(new Cuadrado(width, 100));
    tubos.add(new Cuadrado(width, 400));
    ultimoPar = tActual;
  }
}

void keyPressed() {
  if (key == ' ') {
    bird.saltar();
  }
}
