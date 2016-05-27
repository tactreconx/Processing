PImage background;
void setup() {
  background=loadImage("images.png");
  background.resize(900, 900);
  size(900, 900);
}
void draw()
{
  noStroke();
  fill(0, 255, 0);
  rect(112, 189, 10, 50);
  fill(255, 0, 0);
  ellipse(105, 250, 70, 70);
  ellipse(130, 250, 70, 70);
  fill(0, 255, 0);
  if (mouseButton==LEFT) {
    fill(204, 204, 204);
    ellipse(150, 230, 20, 20);
    if (mouseButton==RIGHT) {
      fill(204, 204, 204);
      ellipse(100, 115, 20, 20);
    }
  }
}

