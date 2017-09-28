class ParticleSystem {

  ArrayList<Particle> particles = new ArrayList<Particle>();
  int i = 0;
  color c;
  float r, g, b;
  int choice = int(random(1, 100));


  ParticleSystem(float _r, float _g, float _b, int c) {
    r = _r;
    g = _g;
    b = _b;

 
  c = color(random(255), random(255), random(255));

    for (float n = start; n < end; n+=0.01) {
      for (float m = start; m < end; m+=0.01) {
        
        
        Particle p = new Particle(new PVector(m, n), i, r, g, b, choice, c, random(10, 100), random(-TWO_PI, TWO_PI));
        particles.add(p);
      }
    }
  }


  void display() {

    for (int i = 0; i < particles.size(); i++) {

      Particle p = particles.get(i);
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