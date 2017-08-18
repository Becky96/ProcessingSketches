
class ParticleSystem {


  ArrayList<Particle> particles = new ArrayList<Particle>();

  float r, g, b;
  float ampX, ampY;
  float xR, yR;

  int elements = 18000;

  int magnify = 2;
  int choice;


  ParticleSystem(float _r, float _g, float _b, int c) {
    r = _r;
    g = _g;
    b = _b;
    choice = c;



    for (int n = 1; n < elements; n++) {
      Particle p = new Particle(new PVector(randomGaussian()*2.16, randomGaussian()*2.16), n, r, g, b, choice);

      particles.add(p);
    }
  }


  void display() {

    for (Particle p : particles) {

      pushMatrix();
      
      translate(p._x, p._y);
      p.display(); 

      popMatrix();

    }

  }

  void run() {
    
    display();

  }



}