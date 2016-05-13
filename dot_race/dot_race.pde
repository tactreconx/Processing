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
  fill(0, 120, 0);
  if (x1<850) {
  }
  ellipse(x2, 500, 100, 100);
  fill(120, 0, 0);
}
float x1=80;
float x2=80;

void keyPressed()
{
  if (key=='p')
   
  {
    x2=x2+20;
        if (x2>898) {
      println("Green Won");
      x1=80;
      x2=80;
    }

  }
  if (key=='q')
  {
    x1=x1+20;
    if (x1>898) {
      println("Red Won");
      x1=80;
      x2=80;
    }
    if (x2>898) {
      print("Green Won");
      x1=80;
      x2=80;
    }
  }
}

