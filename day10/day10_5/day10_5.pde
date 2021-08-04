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
  vertex(shapeWidth,0);
  vertex(shapeWidth+shapeWidth/2,shapeHeight);
  vertex(shapeWidth+shapeWidth,0);
  vertex(shapeWidth+shapeWidth+shapeWidth/2,shapeHeight);
  vertex(shapeWidth+shapeWidth+shapeWidth,0);
  endShape();
}
