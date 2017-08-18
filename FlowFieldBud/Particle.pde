class Particle {
  PVector pos;
  int index;
  float n;
  PVector v;
  float _x, _y;
  float x, y;
  float R, G, B;
  int chance;

  Particle(PVector _pos, int i, float _R, float _G, float _B, int c) {

    pos = _pos;
    index = i;
    R = _R;
    G = _G;
    B = _B;
    chance = c;
  }

  void display() {


    //Map calculations to certain pos
    _x = map(pos.x, -3.5, 3.5, 10, width-10);
    _y = map(pos.y, -3.5, 3.5, 10, height-10);


    stroke(R, G, B, 8);
    point(0, 0, 0);

    //Creating noise values
    float n = map(noise(pos.x, pos.y), 0, 1, -1, 1);


    //Responsible for shape
    x = n*(cos(sin(x*10/n)))*0.5;
    y = n*(cos(y*n*50*x))*10;

    x = cos(y*n)*10 ;
    y = sin(x/n)/10;


    v = new PVector(tan((x*n))*cos(n)*x/10, sin((y/n))/y*1, cos(n)*100);

    //Add to previous position new value
    pos.x += scale * (v.x);
    pos.y += scale * (v.y);


  }
}