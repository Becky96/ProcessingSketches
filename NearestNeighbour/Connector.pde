class Connector {
  Point p1, p2;
  //Point mainPoint = new Point(new PVector(width/2, 0));
  //float r, g, b;
  
  Connector(Point _p1, Point _p2) {
    p1 = _p1;
    p2 = _p2;
  //  r = random(40) + map(p1.pos.x, 0, width, 20, 105);
    //  g = random(10, 100) + map(p1.pos.y, 0, width, 50, 125);
      //  b = random(10, 150) + map(p2.pos.x, 0, width, 70, 155);
    
  }
  
  void display() {
   
    //line(mainPoint.pos.x, mainPoint.pos.y, p1.pos.x, p1.pos.y);
    stroke(200, 5);
    line(p1.pos.x, p1.pos.y, p2.pos.x, p2.pos.y);
    
  
}


  
}