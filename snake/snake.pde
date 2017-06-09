int leftwall= 100;
int rightwall=700;
int topwall=100;
int bottomwall=600;
int snakewidth=100;
int snakeheight=100;

int[]  snakex={2,2};
int[] snakey={2,3};
int time=millis();

void setup(){
  size(900,900);
  
}

void draw(){
  fill(255,255,255);
  rect(leftwall,topwall,rightwall,bottomwall);
  fill(0,0,0);
  for(int i=0; i<snakex.length;i++){
    rect(leftwall+snakex[i]*100,topwall+snakey[i]*100,snakewidth,snakeheight);
   
  }
  if(millis()-time>1000){
    time=millis();
    advancesnake();
  }
  
 
}

  void advancesnake(){
    for(int i=0; i<snakey.length;i++){
      snakey[i]=snakey[i]-1;
    }
  }