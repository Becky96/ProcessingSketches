class PointSystem {
  
  ArrayList<Point> points = new ArrayList<Point>();
  float smallestDist = 800.;
  float currentDist;
  
  PointSystem() {
    
     
  for (int i = 0; i < pointNum; ++i) {
    Point p = new Point();
    points.add(p);
    println("x:" + p.pos.x);
     println("y:" + p.pos.y);
    
    } 
  }
  
 
  

 
     void checkDistance() {
 Point ap1 = new Point();
 Point ap2 = new Point();
       
  for (int i = 0; i < points.size()-1; ++i) {
    
     for (int j = i+1; j < points.size(); ++j) {
       
    Point p = points.get(i);
    Point p2 = points.get(j);
    println("i: " + i + " j: " + j);
    
    currentDist = p.distance(p, p2);
    
    
    if (currentDist < smallestDist) {
    smallestDist = currentDist;
    ap1 = p;
    ap2 = p2;
    
    }
    
    
    
    println(smallestDist);
   }
   
   connectors.add(new Connector(ap1, ap2));
   smallestDist = 800.;
   
   
  }
   
 }
  

  
  void run() {
    
    for (Point p: points) {
 p.display(); 
 p.update();
  
}
  
  }
  
}