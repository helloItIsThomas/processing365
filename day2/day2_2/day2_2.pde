int myRange = 9;
float rectWidth;
float rectHeight;
String grey = "#CACCCF";
String white = "#E1DFDB";


void setup() {
  size(705, 990);
}


void draw() {
  rectWidth = width/ myRange;
  rectHeight = height/ myRange;
  background(#E1DFDB);
  fill(#303030);

  for (int x = 0; x<myRange; x++) {
    for (int y = 0; y<myRange; y++) {
      if(x%2==0&&y%2==0){
        fill(#303030);
      }
      else{
        fill(#CACCCF);
      }
      rect(x*rectWidth,y*rectHeight,rectWidth,rectHeight);
    }
  }
}
