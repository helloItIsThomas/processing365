PFont sansRoman;
PFont serifMed, serifEL, serifELItalic, serifLItalic;
float moveY;
int numLines;
int pointSize = 45;
float leading = 1.05;
float rotateInstance;
String[] txtFile;
String currentLine;


void setup() {
  serifELItalic = createFont("data/serifELItalic.otf", 50);
  txtFile = loadStrings("data/day15.txt");
  size(705, 990, P3D);
  textFont(serifELItalic);
  textSize(pointSize);
  textAlign(CENTER);
  frameRate(60);
}

void draw() {
  numLines = txtFile.length;
  for (int i = 0; i < txtFile.length; i++) {
    println(txtFile[i]);
  }
  translate(0,-height*.25);
  background(0, 0, 185);
  fill(#E1DFDB);
  push();
  translate(width/2, height/2);
  rotateY(frameCount*0.05);
  translate(-width/2, -height/2);
  for (int n = 0; n < 10; n++) {
    translate(0,n+pointSize*3.45,0);
    for (int x = 1; x < numLines; x++) {
      currentLine = txtFile[x];
      rotateInstance = frameCount*0.0000005*x;
      makeLine(moveY = pointSize*x*leading, rotateInstance, currentLine);
    }
  }
  pop();
}

void makeLine(float moveY, float roInst, String currentLine) {
  translate(width/2, height/2);
  rotateY(frameCount*roInst);
  translate(-width/2, -height/2);
  text(currentLine, width/2, moveY);
}
