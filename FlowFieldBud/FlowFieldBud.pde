
ParticleSystem ps, ps2, ps3, ps4;

float scale = 0.001; 

float rx1, rx2, rx3, rx4;


void setup() {
  size(1400, 1400, P3D);
  strokeWeight(1.56);

  background(random(40), random(40), random(40));
  noFill();
  smooth(8);

  ps = new ParticleSystem(random(0, 255), random(0, 255), random(0, 255), int(random(0, 3)));

  ps2 = new ParticleSystem(random(0, 255), random(0, 255), random(0, 255), int(random(0, 3)));
  ps3 = new ParticleSystem(random(0, 255), random(0, 255), random(0, 255), int(random(0, 3)));  
  ps4 = new ParticleSystem(random(0, 255), random(0, 255), random(0, 255), int(random(0, 3)));


}

void draw() {


  ps.run();
  ps2.run();
  ps3.run();
  ps4.run();
}