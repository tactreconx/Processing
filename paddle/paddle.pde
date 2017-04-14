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
int p1score=0;
int p2score=0;

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
     p2score=p2score+1;
  }
  if (ballX > rpadx && ballY>rpady && ballY< rpady+ rpadwidth) {
    ballSpeedX=-ballSpeedX;
  }
    if(ballX<= lpadx+lpadlength && ballY>= lpady && ballY<= lpady+lpadwidth){
    ballSpeedX=-ballSpeedX;
    println(lpadwidth);
   }
   if(keyPressed && key=='q'){
//     lpady=lpady-4;
     lpady -= 2;
   }
   if(keyPressed && key=='a'){
     lpady+=2;
   }
   if(keyPressed && key=='9'){
     rpady-=2;
   }
   if(keyPressed&&key=='6'){
     rpady+=2;
   }

  if (ballX<leftBoard) {
   ballSpeedX=-ballSpeedX;
    p1score=p1score+1;
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
 textSize(32);
 text("player 1 score="+p1score,10,30);
 text("player 2 score="+p2score,600,20);
  fill(0, 216, 255);
  rect(rpadx, rpady, rpadlength, rpadwidth);

  fill(255, 255, 0);
  rect(lpadx, lpady, lpadlength, lpadwidth);
}  //end draw

