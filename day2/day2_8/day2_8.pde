//int arrLength = 3;
int[] myArray = {0, 1, 2, 3, 4, 5, 6, 7, 8};
int tempArrVarX;
int tempArrVarY =0;

int myRange = 30;
float rectWidth;
float rectHeight;
String grey = "#CACCCF";
String white = "#E1DFDB";
int myOsc = 1;
// change me below
float speed = 1.5;


void setup() {
  size(705, 990);
}


void draw() {
  print(myArray[0]+"\n");
  //noStroke();
  strokeWeight(3);
  rectWidth = width/ myRange;
  rectHeight = height/ myRange;
  background(#E1DFDB);
  fill(#303030);
  
  if (tempArrVarY == myRange){
    tempArrVarY = 0;
    
  }
  else if (tempArrVarX == myRange){
    tempArrVarX = 0;
    tempArrVarY++;
  }
  else{
    if ((frameCount*speed)%2==0) {
      tempArrVarX++;
    }
  }


  for (int x = 0; x<myRange; x++) {
    for (int y = 0; y<myRange; y++) {
      if (x==tempArrVarX&&y==tempArrVarY) {
        fill(#303030);
      } else {
        fill(#CACCCF);
      }
      rect(x*rectWidth, y*rectHeight, rectWidth, rectHeight);
    }
  }
}
