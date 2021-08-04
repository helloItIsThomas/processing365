int shapeWidth, shapeHeight;
int gridWidth = 15;
int gridHeight = gridWidth;
int gridYDim = 10;

void setup(){
  size(705, 990);
  strokeWeight(1);
  stroke(#4B333F);
  //noStroke();
}

void draw(){
  shapeWidth = width/gridWidth;
  background(#EEEEEE);
  fill(#BBD3F2);
  //circle(50,50,100);
  
  beginShape(TRIANGLE_STRIP);
  vertex(0,height/gridYDim);
  vertex(shapeWidth*2,0);
  vertex(shapeWidth*4,height/gridYDim);
  vertex(shapeWidth*6,0);
  vertex(shapeWidth*8,height/gridYDim);
  vertex(shapeWidth*10,0);
  vertex(shapeWidth*12,height/gridYDim);
  vertex(shapeWidth*14,0);
  vertex(shapeWidth*16,height/gridYDim);
  vertex(shapeWidth*18,0);
  endShape();
  
  
}
