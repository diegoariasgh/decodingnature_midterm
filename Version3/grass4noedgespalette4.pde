import processing.pdf.*;

int maxrandvel = 5; 
PVector gravity, gravity2, gravity3; 
PVector wave; 

particle[] particles = new particle [3900]; 

void setup() {
  frameRate(5);
  smooth();
  background(255, 250, 250);
  gravity = new PVector (0.001, 0.2);
  gravity2 = new PVector (0.01, 0.5);
  gravity3 = new PVector (-.1, .8);
  size(640, 480);
  beginRecord(PDF, "1.pdf");
}

void draw() {
  pushMatrix();
  translate(0, -height/4);

  for (int i = 0; i < particles.length; i++) {  // fills array
    if (i<900) {
      particles[i] = new particle(0, color(247, 246, 197, 66));
    } else if (i<1500) {
      particles[i] = new particle(1, color(192, 76, 253, 55));
    } else if (i<1900) {
      particles[i] = new particle(2, color(252, 109, 171, 55));
    } else if (i<1901) {
      particles[i] = new particle(3, color(247, 246, 197, 10));
    } else if (i<2700) {
      particles[i] = new particle(4, color(94, 43, 255, 60));
    } else if (i<3200) {
      particles[i] = new particle(5, color(243, 250, 225, 60));
    } else {
      particles[i] = new particle(6, color(111, 26, 7, 80));
    }

    particles[i].simulate();
    particles[i].display();
    particles[i].checkEdges();
  }
  popMatrix();
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}