float shapeWidth, shapeHeight;
float gridWidth = 10;
float gridHeight = 4;

void setup() {
  size(990, 990);
  strokeWeight(1);
  stroke(#4B333F);
  //noStroke();
  ellipseMode(CENTER);
}

void draw() {
  ellipseMode(CENTER);
  translate(width/4,height/4);
  shapeWidth = (width/2)/gridWidth;
  shapeHeight = (height/2)/gridHeight;
  background(#EEEEEE);
  //circle(50,50,100);
  //fill(#BBD3F2);
  beginShape(TRIANGLE_STRIP);
  for (int x = 0; x < gridWidth; x++) {
    for (int y = 0; y < gridHeight; y++) {
      //vertex(gridWidth*x,0);
      if (x%2 == 0 && y%2 == 0) {
        fill(#BBD3F2);
        ellipse(shapeWidth*x, shapeHeight*y, 30, 30);
        //vertex(shapeWidth*x, shapeHeight*y);
      }
      else if (x%2 == 1 && y%2 == 1) {
        fill(#000F1B);
        ellipse(shapeWidth*1.5*x, shapeHeight*y, 30, 30);
        //vertex(shapeWidth*1.5*x, shapeHeight*y);
      }
      //ellipse((shapeWidth*1.5)*x,shapeHeight*y,30,30);
      //circle(shapeWidth*x,shapeWidth*y,shapeWidth);
    }
  }
  endShape();
}
