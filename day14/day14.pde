String myString = "*LOVE";
String[] myArray = myString.split("");
int x;
float myPeriod;
int sphereDiam = 200;
float moveThick;

float mySin1;
float myCos1;

void setup() {
  PFont mySansBold = createFont("data/sansBold.otf", 100);
  size(900, 900, P3D);
  frameRate(60);
  textFont(mySansBold);
  //shapeMode(CENTER);
  //ellipseMode(CENTER);
  //rectMode(CENTER);
  //textMode(CENTER);
}

void draw() {
  background(#232323);
  pushMatrix();
  translate(-width*0.4, 100, 0);
  //myPeriod = sphereDiam/myArray.length;
  myPeriod = 0.1/myArray.length;
  translate(0, 0, 0);
  for (int x = 1; x < myArray.length; x++) {
    for (float n = 0; n < 1; n+=.1) {
    createGlyph(myPeriod*x, myArray[x], n);
    }
  }
  popMatrix();
}

void createGlyph(float thePeriod, String currentGlyph, float thick) {
  push();
  rotateX(19);
  rotateZ(6);

  mySin1 = map(sin(degrees(thePeriod+(-frameCount*0.0009))), -1, 1, 0, sphereDiam);
  myCos1 = map(cos(degrees(thePeriod+(-frameCount*0.0009))), -1, 1, 0, sphereDiam);
  translate(mySin1, 0, myCos1);
  fill(#8CB7E3,myCos1*1.5);
  text(currentGlyph, width/2, height/2, -25*thick);
  pop();
}

// I want each of the 4 letters to go around a circle via sine and cosine.
// I want each of them to have a different period based on
//   the number of degrees divided by the number of letters (0.1/arr.length).
