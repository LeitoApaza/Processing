
class Pelota {
  PVector pos;
  PVector vel;
  PVector acel;
  float r = 10;
  color c = color(255);

  Pelota(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    acel = new PVector(0, 0);
  }

  void mover() {
    vel.add(acel);
    pos.add(vel);
    acel.mult(0);
  }

  void mostrar() {
    fill(c);     
    circle(pos.x, pos.y, r);
  }
      
  void addFuerza(PVector fuerza) {
    acel.add(fuerza);
  } 

  void saltar() {
    vel.y = -5;
  }
}
       
