

int i;
int z;
int a;
int b;
PImage face;
void setup() {
  size(300, 450); 
  face=loadImage("gir.jpg");
  ;
  image(face, 0, 0);
}

void draw() {
  i = mouseX;
  z=mouseX;
  a=mouseY;
  b=mouseY;
  image(face, 0, 0);
  println("X: " + mouseX + " Y: " + mouseY); 
  fill(mouseX, mouseY, random(255));
  ellipse(80, 237, 130, 130);
  ellipse(228, 224, 130, 130);
  fill(random(255));
  //pupils
  //ellipse(79,239,20,20);
  fill(random(255));
  if (i>79&&i<132) {
    i=mouseX;
  }
  if (i>132) {
    i=132;
  }

  if (i<34) {
    i=34;
  }




  fill(random(255));

  if (z<178) {
    z=178;
  }

  if (z>278) {
    z=278;
  }

  if (a<182) {
    a=182;
  }
  if (a>293) {
    a=293;
  }
  if (b<172) {
    b=172;
  }
  if ( b>276) {
    b=276;
  }
  ellipse(i, a, 20, 20);
  ellipse(z, b, 20, 20);
  println("ab " + a + " " + b);
}

