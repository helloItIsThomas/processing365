
////////////////////////////////////////////
// Written by Thomas McElmeel             //
//                                        //
// Thanks for stopping by :]              //
// Feel free to use and modify            //
// Tag me if you're feeling generous      //
// instagram.com/tom_mcelmeel             //
////////////////////////////////////////////
// PRESS ARROW KEYS TO MOVE DOT           //
// PRESS SHIFT TO INCREASE GRID SIZE      //
// PRESS CONTROL TO DECREASE GRID SIZE    //
////////////////////////////////////////////

// myRange determines the number of squares in the grid
int myRange = 3;
// maxRange determines the maximum number of times the grid can expand
int maxRange = 19;
// minRange determines the minimum number of times the grid can collapse
// Anything lower than 1 will break the sketch
int minRange = 2;
int rectWidth, rectHeight;

// speed changes the speed of the sketch
// More divisible numbers move faster + smoother
float speed = .2;
int xMove, yMove = 0;
char myFlag;

void setup() {
  size(990, 990);
}

void draw() {
  rectWidth = width/myRange;
  rectHeight = height/myRange;
  background(#E1DFDB);
  noFill();
  stroke(#303030);
  stroke(#050606);
  strokeWeight(4);

// Logic for drawing dot on the other side of the screen after leaving the sketch
  if (xMove >= myRange) {
    xMove = 0;
  }
  else if(xMove < 0){
    xMove = myRange-1;
  }
  else if(yMove < 0){
    yMove = myRange-1;
  }
  else if (yMove >= myRange) {
    yMove = 0;
  }
  
// Movement logic
  else if ((frameCount*speed)%2==0) {
    switch(myFlag) {
      case 'R':
        xMove++;
        break;
      case 'L':
        xMove--;
        break;
      case 'U':
        yMove--;
        break;
      case 'D':
        yMove++;
        break;
      case 'S':
      if (myRange == maxRange){
        myRange = maxRange;
      }
      else{myRange++;}
        break;
      case 'C':
      if (myRange == minRange){
        myRange = minRange;
      }
      else{myRange--;}
        break;
    }
  }

// Grid logic
  for (int x = 0; x < myRange; x++) {
    for (int y = 0; y < myRange; y++) {
      if (x == xMove && y == yMove) {
// Change the dot color here
        fill(#050606);
      } else {
        noFill();
      }
      rect(x*rectWidth, y*rectHeight, rectWidth, rectHeight);
    }
  }
}

// Keyboard logic
void keyPressed() {
  switch(keyCode) {
  case UP:
    myFlag = 'U';
    println("UP");
    break;
  case DOWN:
    myFlag = 'D';
    println("DOWN");
      break;
  case LEFT:
    myFlag = 'L';
    println("LEFT");
      break;
  case RIGHT:
    myFlag = 'R';
    println("RIGHT");
      break;
  case SHIFT:
    myFlag = 'S';
    println("SHIFT");
      break;
  case CONTROL:
    myFlag = 'C';
    println("CONTROL");
      break;
  }
}
