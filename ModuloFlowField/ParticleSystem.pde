
class ParticleSystem {


  ArrayList<Particle> particles = new ArrayList<Particle>();
  float r, g, b;
  int elements = 6000;



  ParticleSystem(float _r, float _g, float _b) {
    r = _r;
    g = _g;
    b = _b;


    for (int n = 1; n < elements; n++) {

      Particle p = new Particle(new PVector(randomGaussian()*2.16, randomGaussian()*2.16), r, g, b);
      particles.add(p);
   
    }
  }


  void display() {

    for (Particle p : particles) {

      pushMatrix();

      translate(p.xx, p.yy);
      p.display(); 

      popMatrix();
    }
  }

  void run() {
    display();
  }
}