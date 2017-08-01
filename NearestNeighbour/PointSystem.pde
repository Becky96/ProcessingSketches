class PointSystem {
  
  ArrayList<Point> points = new ArrayList<Point>();
  float smallestDist = 900.;  //Smallest distance is the width or height of sketch
  float currentDist;
  int pointNum = 200;        //Number of points
  float spacing = TWO_PI/pointNum;
  int amp1 = int(random(10, 30));
  int amp2 = int(random(10, 30));
  float magnify = 400;

  ArrayList<Connector> connectors = new ArrayList<Connector>();
    
    
  PointSystem() {
    
    //Creating point positions using Roses of Grandi algorithm. 
    for (int i = 0; i < pointNum; ++i) {
    
      float x = cos(i * spacing * amp1) * cos(i * spacing * amp2) * magnify;
      float y = sin(i * spacing * amp1) * cos(i * spacing * amp2) * magnify;
      
      Point p = new Point(new PVector(x, y));
      points.add(p);

    
    } 
  }
  
 
  

 
     void checkDistance() {
   
       //Points to store for connection end points
       Point ap1 = new Point(new PVector(0, 0));
       Point ap2 = new Point(new PVector(0, 0));
       
       
       
       //Loop through arrayList
        for (int i = 0; i < points.size(); ++i) {
    
           for (int j = 0; j < points.size(); ++j) {
       
           //Check that point is not checking against itself
             if (i != j) {
              Point p = points.get(i);
              Point p2 = points.get(j);

            
            //Compute Euclidean distance
             currentDist = p.distance(p, p2);

            //Setting smallestDist to be smallest distance found
            if (currentDist < smallestDist) {
                smallestDist = currentDist;
                ap1 = p;
                ap2 = p2;
                
                
                //Creating a connector if the smallestDist is less than 150
                if (smallestDist < 325) {
      
                //Pass through points to create new line between them
                   connectors.add(new Connector(ap1, ap2));
      
                }
    
              }
     
            
          }
  
  
     //Remove first connector in arrayList if size exceeds 20
          if (connectors.size() > 200) {
    
            connectors.remove(0);
      
           }
  
   }
   
   //connectors.add(new Connector(ap1, ap2));
   //Reseting 
   smallestDist = 800.;
   
   
  }
   
 }
  
/*void removeConnectors() {
 
 for (int i = 0; i < connectors.size(); i++) {
  Connector c = connectors.get(i); 
  
    if (sqrt( sq(c.p1.pos.x-c.p2.pos.x) + sq(c.p1.pos.y-c.p2.pos.y)) > 150) {
      
      connectors.remove(i);
    }
    
  }

  
}*/

  void runConnectors() {
    
     for (Connector c: connectors) {
   c.display(); 
  }
  }
  
  
  
  void run() {
    checkDistance();
    //removeConnectors();
    for (Point p: points) {
     p.display(); 
     p.update();
     p.checkEdges();
 
  //removeConnectors();
    }
    
     runConnectors();
  
  }
  }

  