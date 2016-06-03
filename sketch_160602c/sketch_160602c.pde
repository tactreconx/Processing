PImage bef, mus, che, pep;
void setup() {
  size(900, 900);
  fill(0,0,0);
  textSize(15);
  textAlign(CENTER);
  text("BEEF=LEFT MOUSE\n mushroom=RIGHT MOUSE\n CHEESE= PRESS 1\n PEPERONI= Press 2\n",450,25);
  fill(230, 224, 186);
  ellipse(450, 450, 300, 300);
  fill(250, 0, 0);
  ellipse(450, 450, 270, 270);
  bef=loadImage("beef.ppm.gif");
  mus=loadImage("mushroom.ppm.gif");
  che=loadImage("cheese.ppm.gif");
  pep=loadImage("pepperoni.ppm.gif");
}
void draw() {
  if (mouseButton==LEFT) {
    image(bef, mouseX-bef.width/2, mouseY-bef.height/2);
  }
  if (mouseButton==RIGHT) {
    image(mus, mouseX-mus.width/2, mouseY-mus.height/2);
  }
  if (key=='1') {
    image(che, mouseX-che.width/2, mouseY-che.height/2);
  }
  if (key=='2') {
    image(pep, mouseX-pep.width/2, mouseY-pep.height/2);
  }
}

