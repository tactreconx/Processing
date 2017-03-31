int leftBoard=50;
int topBoard=29;
int rightBoard=800;
int bottomBoard=450;
int ballX=450;
int ballY=230;
int ballSpeedX=10;
int ballspeedY=10;
int ballDiameter=20;

void setup() {
  size(900, 500);
}

void draw() {
  fill(255, 255, 255);
  rect(leftBoard, topBoard, rightBoard, bottomBoard);
  fill(0, 254, 163);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);

  if (ballX  > rightBoard ) {
    ballSpeedX=-ballSpeedX;
  }
  if (ballX<leftBoard) {
    ballSpeedX=-ballSpeedX;
  }
  if (ballY> bottomBoard) {
    ballspeedY=-ballspeedY;
  }
  if (ballY<topBoard) {
    ballspeedY=-ballspeedY;
  }

  ballX=ballX+ballSpeedX;
  ballY=ballY+ballspeedY;
  println("X: " + mouseX + " Y: " + mouseY);
}

