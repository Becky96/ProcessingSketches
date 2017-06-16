int w = 900;
int h = 900;

int pointNum = 100;

PointSystem ps;

float vector_scale = 0.1;

ArrayList<Connector> connectors = new ArrayList<Connector>();

void setup() {
  size(900, 900);
  background(0);
  stroke(255, 10);
  strokeWeight(0.5);
   
   stroke(255, 1.5);
  ps = new PointSystem();
  
  ps.checkDistance();

  
  
}



void draw() {
    //background(0);
  ps.run();
//ps.checkDistance();

  for (Connector c: connectors) {
   c.display(); 
  }
}



void keyPressed() {
 println(connectors.size()); 
  
}