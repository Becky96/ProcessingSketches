int w = 900;
int h = 900;


PointSystem ps;

float scale = 0.5;


void setup() {
  size(900, 900);
  background(0, 0, 20);
 
  strokeWeight(0.75);

  ps = new PointSystem();

  
  
}



void draw() {
  
  pushMatrix();
  translate(width/2, height/2);

  ps.run();

  popMatrix();




fill(0, 0, 30);
noStroke();
  rect(width/5, height/5,   width/5*3,    25);
  rect(width/5, height/5,   25,           height/5*3);
  rect(width/5, height/5*4, width/5*3,    25);
  rect(width/5*4, height/5, 25,           height/5*3+25);
  
}



void keyPressed() {

  
  saveFrame("2#####.png");
  
  if (key == 'b') {
  background(0, 0, 20);
  }
}