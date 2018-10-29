class particle { 
  PVector loc, loc2, loc3, loc4, loc5, loc6, loc7;
  PVector vel, vel2; 
  int mode;
  color colour;


  particle (int _type, color _c) {  
    vel = new PVector (random(maxrandvel), random(maxrandvel));
    loc = new PVector (width/2, random(1*height/3, 2*height/3));
    loc2 = new PVector (2*width/5, random(3*height/8, 5*height/8));
    loc4 = loc5 = new PVector (width/3, 1*height/3);
    loc6 = new PVector (width/3, height/3 + noise(10)*random(10, 20)) ;
    loc3 = new PVector (2*width/5, 6*height/7);
    loc7 = new PVector (width/3 + 100, 2*height/3) ;
   

    mode=_type;
    colour = _c;
  }

  void simulate() {  
    if (mode == 0) {
      vel.add(gravity);   
      loc.add(vel);  
      loc2.add(vel);
    }
    if (mode == 1) {
      vel.add(gravity);   
      loc2.add(vel);
    }
    if (mode == 2) {
      vel.add(gravity2);
      loc3.add(vel);
    }
    if (mode == 3) {
      vel.add(gravity2);
      loc4.add(vel);
    } 
    if (mode == 4) {
      vel.add(gravity);
      loc5.add(vel);
    }
    if (mode == 5) {
      vel.add(gravity3);
      loc6.add(vel);
    }
    if (mode == 6) {
      vel.add(gravity2);
      loc7.add(vel);
    }
  }

  void display() { 
    stroke(colour);  
    if (mode == 0) {
      line(loc.x, loc.y, loc.x-vel.x, loc.y-vel.y);
    } 
    if (mode == 1) {
      line(loc2.x, loc2.y, loc2.x-vel.x, loc2.y-vel.y);
    }
    if (mode == 2) {
      line(loc3.x, loc3.y, loc3.x-vel.x, loc3.y-vel.y);
    }
    if (mode == 3) {
      line(loc4.x, loc4.y, loc4.x-vel.x, loc4.y-vel.y);
    }
    if (mode == 4) {
      line(loc5.x, loc5.y, loc5.x-vel.x, loc5.y-vel.y);
    }
    if (mode == 5) {
      line(loc6.x, loc6.y, loc6.x-vel.x, loc6.y-vel.y);
    }
    if (mode == 6) {
      line(loc7.x, loc7.y, loc7.x-vel.x, loc7.y-vel.y);
    }
  }

  void checkEdges() {
    //loc 1
    if (loc.x>width) {
      loc.x=width;
      vel.x*=-1;
    } else if (loc.x < 0 ) {
      loc.x=0;
      vel.x*=-1;
    } 
    if (loc.y>height) {
      loc.y= height;
      vel.y*=-1;
    } else if (loc.y < 0 ) {
      loc.y=0;
      vel.y*=-1;
    } 
    //loc 2
    if (loc2.x>width) {
      loc2.x=width;
      vel.x*=-1;
    } else if (loc2.x < 0 ) {
      loc2.x=0;
      vel.x*=-1;
    } 
    if (loc2.y>height) {
      loc2.y= height;
      vel.y*=-1;
    } else if (loc2.y < 0 ) {
      loc2.y=0;
      vel.y*=-1;
    } 

    //loc3   
    if (loc3.x>width) {
      loc3.x=width;
      vel.x*=-1;
    } else if (loc3.x < 0 ) {
      loc3.x=0;
      vel.x*=-1;
    } 
    if (loc3.y>height) {
      loc3.y= height;
      vel.y*=-1;
    } else if (loc3.y < 0 ) {
      loc3.y=0;
      vel.y*=-1;
    }

    //loc4   
    if (loc4.x>width) {
      loc4.x=width;
      vel.x*=-1;
    } else if (loc4.x < 0 ) {
      loc4.x=0;
      vel.x*=-1;
    } 
    if (loc4.y>height) {
      loc4.y= height;
      vel.y*=-1;
    } else if (loc4.y < 0 ) {
      loc4.y=0;
      vel.y*=-1;
    }
    //loc5   
    if (loc5.x>width) {
      loc5.x=width;
      vel.x*=-1;
    } else if (loc5.x < 0 ) {
      loc5.x=0;
      vel.x*=-1;
    } 
    if (loc5.y>height) {
      loc5.y= height;
      vel.y*=-1;
    } else if (loc5.y < 0 ) {
      loc5.y=0;
      vel.y*=-1;
    }
    //loc6   
    if (loc6.x>width) {
      loc6.x=width;
      vel.x*=-1;
    } else if (loc6.x < 0 ) {
      loc6.x=0;
      vel.x*=-1;
    } 
    if (loc6.y>height) {
      loc6.y= height;
      vel.y*=-1;
    } else if (loc6.y < 0 ) {
      loc6.y=0;
      vel.y*=-1;
    }

    //loc7   
    if (loc7.x>width) {
      loc7.x=width;
      vel.x*=-1;
    } else if (loc7.x < 0 ) {
      loc7.x=0;
      vel.x*=-1;
    } 
    if (loc7.y>height) {
      loc7.y= height;
      vel.y*=-1;
    } else if (loc7.y < 0 ) {
      loc7.y=0;
      vel.y*=-1;
    }
  }
}