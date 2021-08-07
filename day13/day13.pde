String myString = "PLEASE DRINK WATER";
PFont sansLight;
PFont sansRoman;
String[] myStrArr = myString.split("");
int numChars = myStrArr.length;
String currentChar;
int shapeWidth, shapeHeight;
int gridSize = myStrArr.length;
int rotateCirc = 450;
float movementSin, movementCos;
int myTextSize = 75;
float moveInstance0X;
float moveInstance0Y;
float moveInstance1X;
float moveInstance1Y;

//float myWaveSin1, myWaveCos1;

void setup() {
  sansLight = createFont("data/sansLight.otf", 50);
  sansRoman = createFont("data/sansRoman.otf", 50);
  size(990, 990, P3D);
  //background(#CACCCF);
  shapeMode(CENTER);
  ellipseMode(CENTER);
  rectMode(CENTER);
  textMode(CENTER);
  textFont(sansLight);
  frameRate(60);
  textSize(myTextSize);
  noStroke();
}

void draw() {
  movementSin = 0.1/gridSize;
  movementCos = 0.1/gridSize;

  shapeWidth = width/ gridSize;
  shapeHeight = shapeWidth*2;
  background(#CACCCF);
  fill(#303030);
  for (int x=0; x< numChars; x++) {
    currentChar = myStrArr[x];
    createMyShape(movementSin*x, movementCos*x, currentChar, moveInstance0X=4.0, moveInstance0Y=2.0);
    createMyShape(movementSin*x, movementCos*x, currentChar, moveInstance0X=4.0, moveInstance0Y=3.0);
    //createMyShape(movementSin*x, movementCos*x, currentChar, moveInstance1X=4.0, moveInstance1Y=3.5);
    createMyShape(movementSin*x, movementCos*x, currentChar, moveInstance1X=4.0, moveInstance1Y=4.0);
    createMyShape(movementSin*x, movementCos*x, currentChar, moveInstance1X=4.0, moveInstance1Y=5.5);
  }
}

void createMyShape(float mySin, float myCos, String theCurrentChar, float moveX, float moveY) {
  pushMatrix();
  noFill();
  float myWaveSin1 = map(sin(degrees(mySin+(-frameCount*0.00035))), -1, 1, 0, rotateCirc);
  float myWaveCos1 = map(cos(degrees(myCos+(-frameCount*0.00035))), -1, 1, 0, rotateCirc);
  float myWaveFill = map(myWaveCos1, 0, rotateCirc, 0, 250);
  push();
  translate(width*0.05, height*0.3);
  println(theCurrentChar);
  translate(myWaveSin1, 0, myWaveCos1);
  translate(width/moveX, height/moveY, 0);
  fill(0, 0, 255, myWaveFill);
  //circle(0,0,myTextSize*1.15);
  //fill(255, myWaveFill);
  text(theCurrentChar, -myTextSize/2.5, myTextSize/2.5);
  pop();
  popMatrix();
}
