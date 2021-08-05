int meshSize = 50;
int shapeWidth, shapeHeight;
float randNum1;
float randNum2;
float myWave1, myWave2;

void setup() {
  size(900, 900, P3D);
  frameRate(60);
}

void draw() {

  myWave1 = map(sin(degrees(frameCount*0.001)),-1,1,-50,50);
  myWave2 = map(cos(degrees(frameCount*0.001)),-1,1,-50,50);
  

  shapeWidth = width/ meshSize;
  //translate(0, 725, 0);
  //rotateX(-degrees(frameCount*0.00001));
  //translate(0, -height, 0);
  println(mouseY);
  background(#000000);
  noFill();
  stroke(#4B333F);
  //circle(50,50,100);
  for (int y = 0; y < meshSize; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < meshSize; x++) {
      fill(#000000);
      stroke(#EEEEEE);
      vertex(x*shapeWidth, (y-1)*shapeWidth, 0);
      vertex(x*shapeWidth, y*shapeWidth, 0 );
      //if (y == meshSize/2 ) {
      //  fill(#000000);
      //}
    }
    endShape();
  }
}
