class Connector {
  Point p1, p2;
  
  
  Connector(Point _p1, Point _p2) {
    p1 = _p1;
    p2 = _p2;
    
  }
  
  void display() {
   
    line(p1.pos.x, p1.pos.y, p2.pos.x, p2.pos.y);
    
  }
  
}