//Estructura de Class Movil

class Movil {
  PVector pos, vel;
  int r;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(1, 0);
    r = 20;
  }

  void mover() {
    pos.add(vel);
 
   if(pos.x < 0 || pos.x > width){
    pos.sub(vel);
    vel.x=vel.x*-1;
    
  }
  
  if(pos.y < 0 || pos.y > height){
    pos.sub(vel);
    vel.y=vel.y*-1;
 
  }

}

  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }
}







