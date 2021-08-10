float myNoise, myNoise2;
float noiseScale = 500;
float mySin, myCos, mySinCol, mySinChar;
float circSize = 400.0;
float ringSpeed = 0.25;
int sphereSize = 20;
float vertSphere = sphereSize*1;
int sphereRows = 55;
PFont sans;
int mySinCharInt;

String[] myLetterArr = { "a", "b", "c", " "};

void setup() {
  sans = createFont("data/sansLight.otf", sphereSize);
  size(705, 990, P3D);
  frameRate(60);
  ellipseMode(CENTER);
  shapeMode(CENTER);
  strokeWeight(2);
  textFont(sans);
}

void draw() {
  background(#CECAC8);
  myNoise = noise(frameCount*0.05)*noiseScale;
  myNoise2 = noise(frameCount*0.005)*noiseScale;
  translate(width*0.225, height*.75);
  rotateX(HALF_PI);
  for (int n = 0; n < 30; n++) {
    makeRing(n);
  }
}


void makeRing(int n) {
  push();
  translate(0, 0, vertSphere*n);
  for (int x = 0; x < 360; x+=360/sphereRows) {
    mySin = map(sin(radians(x+frameCount*ringSpeed)), -1.0, 1.0, 0.0, circSize);
    myCos = map(cos(radians(x+frameCount*ringSpeed)), -1.0, 1.0, 0.0, circSize);
    mySinCol = map(cos(radians(x+frameCount*ringSpeed*2)), -1.0, 1.0, 255, 0);
    mySinChar = map(cos(radians(x+frameCount*ringSpeed*10)), -1.0, 1.0, 0, myLetterArr.length-1);
    mySinCharInt = int(mySinChar);
    push();
    translate(mySin, myCos, 0);
    rotateX(frameCount*0.0005);
    fill(mySinCol);
    sphereDetail(5);
    push();
    rotateX(-HALF_PI);
    text(myLetterArr[mySinCharInt], 0, 0);
    pop();
    pop();
  }
  pop();
}
