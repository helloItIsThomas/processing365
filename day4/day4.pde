////////////////////////////////////////////
// Written by Thomas McElmeel             //
//                                        //
// Thanks for stopping by :]              //
// Feel free to use and modify            //
// Tag me if you're feeling generous      //
// instagram.com/tom_mcelmeel             //
////////////////////////////////////////////


// Change rows to change number of columns & rows
int rows = 21;
int circWidth;
float myOsc = 0.5;
// Change frameSpeed to adjust speed
float frameSpeed = 1;
int myRunner = 0;

void setup() {
  size(990, 990);
  ellipseMode(CORNER);
  noStroke();
}

void draw() {
  circWidth = width/rows;
  background(#CACCCF);
  
  if (frameCount*frameSpeed%myOsc==0){
    myRunner++;
    if (myRunner == rows){
      myRunner = -rows+1;
    }
  }
  
  for (int x = 0; x < rows; x++){
    for (int y = 0; y < rows; y++){
      if (y+myRunner == x){
        fill(#303030);
      }
      else{
        fill(#CACCCF);
        stroke(#303030);
        strokeWeight(3.0);
      }
      circle(x*circWidth,y*circWidth,circWidth);
    }
  }
}
