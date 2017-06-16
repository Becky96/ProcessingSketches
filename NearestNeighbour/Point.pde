class Point {
  PVector pos = new PVector(random(0, width), random(0, height));
  int step = int(random(0, 4));
 Point() {
   
   
 }
 
 void display() {

  point(pos.x, pos.y); 
  
 }
 
 void update() {

   float xx, yy;

   
       xx = map(pos.x, -6.5, 6.5, 0, width);
    yy = map(pos.y, -6.5, 6.5, 0, height);
    
   point(xx, yy);

    // placeholder for vector field calculations
 float n = 3*map(noise(pos.x, pos.y), 0, 1, -1, 1);
 
float x = ((n));
float y = (n);


 PVector v = new PVector(sin(x), cos(y));

 
//PVector v = new PVector(1/cos(n/2)*2,1/(sin(n/2))*2);

v.normalize();



//v.dot(new PVector(mouseX, mouseY));


//v.mult(0.5);


   pos.x += vector_scale * v.x;
    pos.y += vector_scale * v.y;
 
   
   
 }
 
   float distance(Point p, Point p2) {
    
    
    return sqrt( sq(p.pos.x-p2.pos.x) + sq(p.pos.y-p2.pos.y));
  }
  
  
  
  
}