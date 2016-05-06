PImage background;
void setup() {
  background=loadImage("gamebackground.jpg");
  background.resize(900, 700);
  size(900, 700);
}
void draw() 
{
  background(background);
  ellipse(x1, 20, 100, 100);
  fill(0, 0, 120);
  if (x1<850) {
  }
  ellipse(x2, 500, 100, 100);
  fill(0, 120, 0);
}
float x1=80;
float x2=80;

void keyPressed()
{
  print("p");
  if (key=='p')
  {
    x2=x2+20;
  }
  if (key=='q')
  {
    x1=x1+20;
  }
}

