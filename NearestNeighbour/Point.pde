class Point {
  PVector pos;
 PVector acceleration = new PVector(random(-2, 2), random(-2, 2));
 
 
 
 Point(PVector _pos) {
   
   pos = _pos;
   
 }
 
 void display() {

  point(pos.x, pos.y); 
  
 }
 
 void update() {

   float xx, yy;

   
    xx = map(pos.x, -6.5, 6.5, 0, width);
    yy = map(pos.y, -6.5, 6.5, 0, height);
    

   point(pos.x, pos.y);


 
  pos.x += scale*(acceleration.x);
  pos.y += scale*(acceleration.y);
 
   
   
 }
 
   float distance(Point p, Point p2) {
    
    
    return sqrt( sq(p.pos.x-p2.pos.x) + sq(p.pos.y-p2.pos.y));
    
  }
  
  
  void checkEdges() {
    
   if (pos.x > 400) {
     acceleration.x*=-1;
     
   } if (pos.x < -400) {
     acceleration.x*=-1;
     
   } if (pos.y > 400) {
     acceleration.y*=-1;
     
   } if (pos.y < -400) {
     acceleration.y*=-1;
     
   }
    
  }
  
  
  
  
}