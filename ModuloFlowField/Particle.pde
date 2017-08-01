class Particle {
  PVector p;
  float n;
  PVector v;
  float xx, yy;
  float R, G, B;
  float x, y;



  Particle(PVector _p, float _R, float _G, float _B) {
    
    p = _p;
    R = _R;
    G = _G;
    B = _B;
  
  }


  //Creating flow field here
  void display() {

    xx = map(p.x, -3.5, 3.5, 0, width);
    yy = map(p.y, -3.5, 3.5, 0, height);


    //Creating splitting of sketch, try the different variations of alpha component to see the effect
    stroke(R, G, B, xx%200);
    stroke(R, G, B, yy%200);
    //stroke(R, G, B, (xx+yy)%100);
    point(0, 0, 0); 

    float n = map(noise(p.x, p.y), 0, 1, -1, 1)*10;

    x = sin(x*n/20)*2;
    y = cos(y*n/20)*2;

    v = new PVector(cos((x)*2)*0.5, sin((y)*2)*0.5);


    p.x += scale * v.x;
    p.y += scale * v.y;


  }
}