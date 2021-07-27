float xoff = 0.01;
float xxoff = 0.01;

int amp;
float gap = 10;
float mathInt;

void setup() {
  size(705, 990);
  rectMode(CENTER);
}


void draw() {
  float gridX = frameCount*0.01;
  amp = height;
  xoff = xoff + 0.01;
  xxoff = xxoff + 0.09;
  float n = noise(xoff) * 100;
  float m = noise(xxoff) * 100;
  background(#E1DFDB);
  //fill(#050606);
  noFill();

  //noStroke();
  translate(width/2, height/2);
  //rect(0, 0, 100, 100);
  gap = sin(frameCount*0.01)*100;

  for (int x = 0; x < gridX; x++) {
    for (int y = 0; y < gridX; y++ ) {
        mathInt = map(gap, 0, 500,20,frameCount);
      strokeWeight(5);
      stroke(#050606);
      rect(0,0,x*m,x*n);
    }
  }
}
