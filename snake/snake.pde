int leftwall= 100;
int rightwall=700;
int topwall=100;
int bottomwall=600;
int snakewidth=100;
int snakeheight=100;
int maxX=0;

int[]  snakex= {
  2, 2
};
int[] snakey= {
  2, 3
};
int time=millis();

void setup() {
  size(900, 900);
}

void draw() {



  if (millis()-time>1000) {
    time=millis();
    if (isInBounds()==false) {
      textSize(32);
      text("Game Over", 450, 450);
    } else {
      advancesnake();
    }
    drawSnake();
  }
}
void advancesnake() {
  for (int i=0; i<snakey.length; i++) {
    snakey[i]=snakey[i]-1;
  }
  if (keyPressed && key=='d') {
    snakex[0]++;
    snakey[0]++;
  }
}

boolean isInBounds() {
  if (snakex[0]<=6&& 
    snakex[0]>=0&&
    snakey[0]<=6&&
    snakey[0]>=0) {
    return(true);
  } else {
    return false;
  }
}
void drawSnake() {
  fill(255, 255, 255);
  rect(leftwall, topwall, rightwall, bottomwall);
  fill(0, 0, 0);

  for (int i=0; i<snakex.length; i++) {
    rect(leftwall+snakex[i]*100, topwall+snakey[i]*100, snakewidth, snakeheight);
  }
}

