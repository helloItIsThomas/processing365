int gridWidth = 10;
int gridHeight = 10;
int gridDepth = 10;
int boxWidth, boxHeight, boxDepth;
int sinWave1, sinWaveCol;
int cosWave1;
float waveSpeed = 0.0015;

void setup() {
  size(990, 990, P3D);
  frameRate(60);
  noStroke();
}

void draw() {
  boxWidth = width/gridWidth;
  boxDepth = width/gridWidth;
  boxHeight = width/gridWidth;
  sinWave1 = int(map(sin(degrees(frameCount*waveSpeed)),-1,1,0,gridHeight));
  cosWave1 = int(map(sin(degrees(frameCount*waveSpeed)),-1,1,0,gridHeight));
  sinWaveCol = int(map(sin(degrees(frameCount*waveSpeed/5)),-1,1,0,255));
  background(#CACCCF);
  
  translate(200,50,-500);
  rotateY(1.95);
  for (int y = 0; y < gridHeight; y++ ) {
    for (int x = 0; x < gridWidth; x++ ) {
      for (int z = 0; z < gridDepth; z++ ) {
        if(y == sinWave1){
          stroke(#CACCCF);
          strokeWeight(1.5);
          fill(#303030);
          //fill(sinWaveCol);
        }
        else{
        noFill();
        //stroke(0);
        stroke(0,sinWaveCol);
        //noStroke();
        strokeWeight(0.5);
        }
        
        push();
        translate(boxHeight*x,boxHeight*y,boxDepth*z);
        box(50);
        pop();
      }
    }
  }
}
