import processing.pdf.*;
int counter;
int maxrandvel = 5; 
PVector gravity, gravity2, gravity3; 
PVector wave; 

particle[] particles = new particle [300]; 

void setup() {
  frameRate(10);
  smooth();
  background(255, 250, 250);
  gravity = new PVector (random(1,2), random(0.1,0.5));
  gravity2 = new PVector (random(-1,-5), random(-0.1,-0.5));
  gravity3 = new PVector (2, -.5);
  size(640, 480);

  beginRecord(PDF, "trial5.pdf");

  for (int i = 0; i < particles.length; i++) {  // fills array
    if (i<50) {
      particles[i] = new particle(0, color(0, 107, 166, 40));
    } else if (i<100) {
      particles[i] = new particle(1, color(4, 150, 255, 40));
    } else if (i<120) {
      particles[i] = new particle(2, color(255, 188, 66, 55));
    } else if (i<150) {
      particles[i] = new particle(3, color(216, 17, 89, 55));
    } else if (i<200) {
      particles[i] = new particle(4, color(216, 17, 89, 30));
    } else if (i<250) {
      particles[i] = new particle(5, color(143, 45, 86, 60));
    } else {
      particles[i] = new particle(6, color(255, 188, 66, 15));
    }
  }
}

void draw() {
  for (int i = 0; i < particles.length; i++) {  
    particles[i].simulate();
    particles[i].display();  
    particles[i].checkEdges();
  }
}

void keyPressed() {
  if (key == 'q') {
    counter++;
    endRecord();
    exit();
  }
}