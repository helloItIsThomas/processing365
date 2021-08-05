int circSize;
int rows = 10;
int cols = 10;
int depth = 10;
int sinWave1;
int cosWave1;
float sinWave2;
float cosWave2;
int cosWave3;
float speed = 2.0;
float runnerSpeed = 1;
int runner;

void setup() {
  size(705, 990, P3D);
  noStroke();
  //ellipseMode(CENTER);
  frameRate(60);
}


void draw() {

  if (runner == rows) {
    runner = 1;
  } else if (frameCount*runnerSpeed%2 == 1) {
    runner+=1.0;
  }

  float gap = 0.8;
  sinWave1 = int(map(sin(radians(frameCount)), -1, 1, 0, rows-1));
  sinWave2 = map(sin(radians(frameCount*speed)), -1, 1, -rows*1.5, rows*1.5);
  cosWave1 = int(map(cos(radians(frameCount)), -1, 1, 0, cols-1));
  cosWave2 = map(cos(radians(frameCount)), -1, 1, 0, cols-1);
  cosWave3 = int(map(cos(radians(frameCount*10.0)), -1, 1, 0, depth*1.0-1.0));
  background(#E1DFDB);
  background(#050606);
  fill(#050606);
  println(sinWave1);
  translate(width*0.15, height*0.25,-100);
  circSize = width/rows;
  for (int x = 0; x < rows; x++) {
    for (int y = 0; y < cols; y++) {
      for (int z = 0; z < depth; z++) {
        push();
        if (y%2 == 0) {
          translate(sinWave2*2, 0);
        } else if (y%2 == 1) {
          translate(-sinWave2*2, 0);
        }
        
        if (z < runner){
          //fill(#E1DFDB,100);
          fill(#E1DFDB);
        }
        

        
        
        translate(x*circSize * gap, y*circSize * gap, z*circSize * gap);
        sphere(20);
        pop();
      }
    }
  }
}
