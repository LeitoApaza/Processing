class Cuadrado {
  PVector pos;
  PVector Tamano;

  Cuadrado(float x, float y) {
    pos = new PVector(x, y);
    Tamano = new PVector(70, 200);
  }

  void mover() {
    pos.x -= 2;
  }

  void mostrar() {
    fill(0, 255, 0);
    rect(pos.x, pos.y, Tamano.x, Tamano.y);
  }
}
