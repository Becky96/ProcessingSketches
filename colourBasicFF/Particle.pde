class Particle {

  PVector p;
  int index;
  PVector v;
  float angle;
  float xx, yy, zz;
  float R, G, B;
  float x, y, z;
  float ran;
  int chance;
  color col;


  Particle(PVector _p, int i, float _R, float _G, float _B, int c, color _col, float _ran, float _angle) {
    p = _p;
    index = i;
    R = _R;
    G = _G;
    B = _B;
    chance = c;

    ran  = _ran;

    angle = _angle;
    col = _col;
  }

  void display() {

    pushMatrix();


    xx = map(p.x, start, end, area, width-area);
    yy = map(p.y, start, end, area, height-area);


    float n = map(noise(p.x, p.y, chance), 0, 1, -1, 1)*cos(radians(angle))*sin((radians((p.x+p.y)/5000)))*1000;
    float n2 = (map(noise(p.x, p.y, chance), 0, 1, -1, 1))*50;


    x = cos(n*200)*sin(n2)*300;
    y = sin(n*500)*300;


    stroke(col, 4);
    point(0, 0, 0); 

    v = new PVector(x, y, 0);


    p.x += scale * (v.x);
    p.y += scale * (v.y);

    angle+=0.5;


    popMatrix();
  }

}