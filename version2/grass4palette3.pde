import processing.pdf.*;

int maxrandvel = 5; 
PVector gravity, gravity2, gravity3; 
PVector wave; 

particle[] particles = new particle [3900]; 

void setup() {
  frameRate(20);
  smooth();
  background(255, 250, 250);
  gravity = new PVector (0.001, 0.2);
  gravity2 = new PVector (0.01, 0.5);
  gravity3 = new PVector (-.1, .8);
  size(1000, 750);
  stroke(11, 102, 35, 55);  
  beginRecord(PDF, "2.pdf");

  for (int i = 0; i < particles.length; i++) {  // fills array
    if (i<500) {
      particles[i] = new particle(0, color(85, 107, 47, 60));
    } else if (i<1500) {
      particles[i] = new particle(1, color(0, 100, 0, 55));
    } else if (i<1900) {
      particles[i] = new particle(2, color(169, 186, 157, 55));
    } else if (i<2300) {
      particles[i] = new particle(3, color(11, 102, 35, 55));
    } else if (i<2700) {
      particles[i] = new particle(4, color(11, 102, 35, 15));
    } else if (i<3200) {
      particles[i] = new particle(5, color(124, 252, 0, 60));
    } else {
      particles[i] = new particle(6, color(11, 102, 35, 15));
    }
  }
}

void draw() {

  for (int i = 0; i < particles.length; i++) {  
    particles[i].simulate();
    particles[i].display();
  }
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}