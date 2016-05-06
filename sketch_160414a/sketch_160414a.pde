void setup() {
  size(800, 800);
}


void draw() {
  if(mousePressed){
    ellipse(mouseX,mouseY,75,75);
   //2. make it a nice color
   fill(0,155,0);
  }
else
{
   //3. if the mouse is pressed, fill the circle with a different color          
  fill(0,0,150);
}
  if(key==' '){
    fill(155,0,0);
  }
   //1. draw an ellipse
   ellipse(mouseX,mouseY,75,75);
}

