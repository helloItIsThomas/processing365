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
  size(displayHeight, displayHeight, P3D);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
  shapeMode(CENTER);
}


void draw() {
  translations();
  background(#CACCCF);
  fill(#303030);
  gridTranslate();
  gridRotate();
  gridCreation(mouseX*0.19, 255,0,0);
  gridCreation(mouseY*0.19,255,255,255);
  println(myTranslateW);
}


void translations(){
  myTranslateW = width/2.0;
  myTranslateH = height/2.0;
  shapeWidth = width/gridSize;
  shapeHeight = height/gridSize;
}


void gridRotate(){
  rotateY(frameCount*rotationSpeed);
  translate(-myTranslateW-balance, -myTranslateH-balance, -myTranslateW-balance);

}

void gridTranslate(){
  translate(myTranslateW+balance, myTranslateH+balance, myTranslateW+balance);
  translate(0, 0, -2000);
}

int waveCreation() {
  myWave1 = map(sin(degrees(frameCount*waveSpeed1)), -1, 1, -height/2, height/2);
  myWave2 = map(sin(degrees(frameCount*waveSpeed1)), -1, 1, -(gridSize*shapeWidth)+650, (gridSize*shapeWidth)-500);
  myWave3 = map(sin(degrees(frameCount*waveSpeed1)), -1, 1, -shapeHeight/2, shapeHeight/2);
  myWave4 = int(map(sin(degrees(frameCount*waveSpeed1)), -1, 1, 0, gridSize));
  return myWaveC = int(map(sin(degrees(frameCount*waveSpeed1)), -1, 1, 0, 255));
}

void gridCreation(float boxSize, int r, int g, int b) {
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
            stroke(r,g,b);
            strokeWeight(0.5);
          }
          translate(x*shapeWidth, y*shapeWidth, z*shapeWidth);
          box(boxSize);
          pop();
        }
      }
    }
  }
}
