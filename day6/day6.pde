int circSize = 10;
float myWaveX, myWaveY;
float mySpeedReg = 1;
float mySpeedFast = 2;
float mySpeedMed = 0.5;
float mySpeedSlow = 0.05;
float myOsc = 0.5;
int runner = 0;
float rand1;
int myWaveIntX, myWaveIntY;
int myNoise;
int myBlur = 5;


void setup() {
  size(800,800);
  noStroke();
}

void draw() {
    int rows = width/circSize;
    int cols = height/circSize;
    rand1 = int(random(cols));
    
    myNoise = int(map(noise(frameCount*mySpeedSlow),0,1,1,cols));
    println(myNoise);

    myWaveX = map(sin(radians(frameCount*mySpeedReg)), -1,1,0,rows);
    myWaveY = map(cos(radians(frameCount*mySpeedReg)), -1,1,0,cols);
    myWaveIntX = int(myWaveX);
    myWaveIntY = int(myWaveY);

    if (runner == rows)
       {
           runner = 0;
       }
    else if ((frameCount*mySpeedReg)%myOsc == 0){
        runner++;
    }
    //println(myWaveInt);
    //background(#CACCCF);
    translate(circSize/2,circSize/2);
    for (int x = 0; x < rows; x++){
        for (int y = 0; y < cols; y++){
            if(x == myWaveIntX && y == myWaveIntY ){
                //fill(#E1DFDB);
                noStroke();
                 fill(#303030);
            }
            else{
                //fill(#303030);
                 fill(#E1DFDB, 255/myBlur);
            }
            push();
            circle(circSize*x,circSize*y,circSize);
            pop();
        }
    }
}
