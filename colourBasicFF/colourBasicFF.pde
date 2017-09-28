

ParticleSystem ps, ps2, ps3, ps4;


//Particle positioning
float start = 0;
float end = 1;
float area = 20;

//Particle movement
float scale = 0.000005; 




void setup() {
  size(1200, 1200, P3D);

  strokeWeight(1.56);

  background(1, 7, 30);


  float h = random(360);
  float s = random(30, 80);
  float b = random(70, 100);

  ps = new ParticleSystem(h, s, b, int(random(0, 3)));
  ps2 = new ParticleSystem(h, s, b, int(random(0, 3)));
}

void draw() {

  ps.run();
  //ps2.run();
}