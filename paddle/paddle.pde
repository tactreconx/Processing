int leftBoard=50;
int topBoard=29;
int rightBoard=800;
int bottomBoard=450;
int ballX=450;
int ballY=230;
int ballSpeedX=10;
int ballspeedY=10;
int ballDiameter=20;
int rpadx=810;
int rpady=200;
int rpadlength=30;
int rpadwidth=100;
int lpadx=55;
int lpady=200;
int lpadlength=30;
int lpadwidth=100;

void setup() {
  size(900, 500);
}

void draw() {
  fill(255, 255, 255);


  rect(leftBoard, topBoard, rightBoard, bottomBoard);
  fill(0, 254, 163);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);

  if (ballX  > rightBoard+leftBoard ) {
    ballSpeedX=-ballSpeedX;
  }
  if (ballX > rpadx && ballY>rpady && ballY< rpady+ rpadwidth) {
    ballSpeedX=-ballSpeedX;
    
  }
  
  if (ballX<leftBoard) {
    ballSpeedX=-ballSpeedX;
  }
  if (ballY> bottomBoard+topBoard) {
    ballspeedY=-ballspeedY;
  }
  if (ballY<topBoard) {
    ballspeedY=-ballspeedY;
  }

  ballX=ballX+ballSpeedX;
  ballY=ballY+ballspeedY;
  println("X: " + mouseX + " Y: " + mouseY);
  fill(0, 216, 255);
  rect(rpadx, rpady, rpadlength, rpadwidth);

  fill(255, 255, 0);
  rect(lpadx, lpady, lpadlength, lpadwidth);
}  //end draw

