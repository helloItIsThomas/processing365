float shapeWidth, shapeHeight;
float gridWidth = 20;
float gridHeight = gridWidth;

void setup() {
  size(990, 990);
  strokeWeight(1);
  stroke(#4B333F);
  //noStroke();
  ellipseMode(CENTER);
}

void draw() {
  ellipseMode(CENTER);
  //translate(0, height/2);
  shapeWidth = (width)/gridWidth;
  shapeHeight = (height)/gridHeight;
  translate(-shapeWidth/1.25, shapeHeight*0.25);
  background(#EEEEEE);
  //circle(50,50,100);
  fill(#BBD3F2);
  beginShape(TRIANGLE_STRIP);
  for (float x = 0; x < gridWidth; x+=0.5) {
    for (int y = 0; y < gridHeight; y+=1) { 
      pushMatrix();
      vertex(shapeWidth+(shapeWidth*x), 0);
      vertex(shapeWidth+shapeWidth*x, shapeHeight);
      popMatrix();
    }
  }
  endShape();
}

//vertex(shapeWidth,0);
//vertex(shapeWidth+shapeWidth/2,shapeHeight);
//vertex(shapeWidth+shapeWidth,0);
//vertex(shapeWidth+shapeWidth+shapeWidth/2,shapeHeight);
//vertex(shapeWidth+shapeWidth+shapeWidth,0);
