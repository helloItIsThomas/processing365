let rows;
let columns;
let circSize = 100;
let img1, img2, img3, img4;
let rand1, rand2;
let myWave;
let mySpeed = 1;
let myRunner = 0;
let myOsc;

function preload() {
  img1 = loadImage('data/img2.jpg');
}

function setup() {
  createCanvas(windowWidth, windowHeight, WEBGL);
  noStroke();
}

function draw() {
  background('#CACCCF');
  fill('#303030');
  translate(-width/2, -height/2);
  translate(width/2,height/2);
  columns = height/circSize;
  rotateX(frameCount*0.01);
  rotateY(frameCount*0.005);
  texture(img1);
  box(200);
}
