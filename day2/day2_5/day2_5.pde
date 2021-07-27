int myRange = 9;
float rectWidth;
float rectHeight;
String grey = "#CACCCF";
String white = "#E1DFDB";
int myOsc = 1;
int myOsc2 = 0;
// change me below
float speed = 0.05;


void setup() {
  size(705, 990);
}


void draw() {
  //noStroke();
  strokeWeight(3);
  rectWidth = width/ myRange;
  rectHeight = height/ myRange;
  background(#E1DFDB);
  fill(#303030);
  
  if ((frameCount*speed)%2==0){
    myOsc = 0;
    myOsc2 = 1;
  }
  if ((frameCount*speed)%2==1){
    myOsc = 1;
    myOsc2 = 0;
  }


  for (int x = 0; x<myRange; x++) {
    for (int y = 0; y<myRange; y++) {
      if(x%2==myOsc&&y%2==myOsc){
        fill(#303030);
      }
      else if(x%2==myOsc&&y%2==myOsc){
        fill(#303030);
      }
      else{
        fill(#CACCCF);
      }
      rect(x*rectWidth,y*rectHeight,rectWidth,rectHeight);
    }
  }
}
