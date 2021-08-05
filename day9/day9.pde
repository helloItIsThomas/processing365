////////////////////////////////////////////
// Written by Thomas McElmeel             //
//                                        //
// Thanks for stopping by :]              //
// Feel free to use and modify            //
// Tag me if you're feeling generous      //
// instagram.com/tom_mcelmeel             //
////////////////////////////////////////////

int gridSize = 5;
int gridSizeX = 5;
int gridSizeY = 5;
int gridSizeZ = 5;
int shapeWidth, shapeHeight;
float myTranslateW, myTranslateH;
float myWave1, myWave2, myWave3, myWave4;
float waveSpeed1 = 0.5;
float myWaveCSpeed = 0.5;
int myWaveC;
float waveSpeed2 = 0.005;
float rotationSpeed = 0.01;
int balance = 100;



void setup() {
  size(800, 800, P3D);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
  shapeMode(CENTER);
}


void draw() {
  myTranslateW = width/2.0;
  myTranslateH = height/2.0;
  shapeWidth = width/gridSize;
  shapeHeight = height/gridSize;
  myWave1 = map(sin(degrees(frameCount*waveSpeed1)), -1, 1, -height/2, height/2);
  myWave2 = map(sin(degrees(frameCount*waveSpeed1)), -1, 1, -(gridSize*shapeWidth)+650, (gridSize*shapeWidth)-500);
  myWave3 = map(sin(degrees(frameCount*waveSpeed1)), -1, 1, -shapeHeight/2, shapeHeight/2);
  myWave4 = int(map(sin(degrees(frameCount*waveSpeed1)), -1, 1, 0, gridSize));
  myWaveC = int(map(sin(degrees(frameCount*waveSpeed1)), -1, 1, 0, 255));
  background(#CACCCF);
  background(#050606);
  fill(#303030);
  pushMatrix();
  translate(myTranslateW+balance, myTranslateH+balance, myTranslateW+balance);
  translate(0, 0, -2000);

  rotateY(frameCount*rotationSpeed);
  translate(-myTranslateW-balance, -myTranslateH-balance, -myTranslateW-balance);

  for (int x=0; x < gridSizeX; x++) {
    for (int y=0; y < gridSizeY; y++) {
      for (int z=0; z < gridSizeZ; z++) {
        for (float n=0; n < gridSize; n+=0.1) {
          push();
          if ( y == int(map(sin(degrees(z*0.1+frameCount*waveSpeed2)), -1, 1, 0, gridSize))) {
            fill(#1bad00);
            fill(#E1DFDB);
          } else {
            noFill();
            stroke(#303030);
            strokeWeight(0.5);
            //fill(#303030, 0);
          }

          //translate(0,myWave2,0);
          translate(x*shapeWidth, y*shapeWidth, z*shapeWidth);
          box(50.0);
          pop();
        }
      }
    }
  }
  popMatrix();
}
