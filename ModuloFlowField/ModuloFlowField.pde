
ParticleSystem ps, ps2, ps3, ps4;

float scale = 0.01; 

void setup() {
  size(1000, 1000, P3D);
  strokeWeight(0.76);
  background(0);
  noFill();
  
  //Using multiple particle systems for the different colours
  ps = new ParticleSystem(random(0, 255), random(0, 255), random(0, 255));
  ps2 = new ParticleSystem(random(0, 255), random(0, 255), random(0, 255));
  ps3 = new ParticleSystem(random(0, 255), random(0, 255), random(0, 255));  
  ps4 = new ParticleSystem(random(0, 255), random(0, 255), random(0, 255));
}

void draw() {

  ps2.run();
  ps3.run();
  ps4.run();
}



void keyPressed() {
  saveFrame("image#####.png");
}