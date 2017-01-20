

int i;
int z;
int a;
int b;
float ix=78;
float iy=235;
float ixx=ix+50;
float iyy=438;


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




  fill(random(255));

  /*
  if (a<182) {
   a=182;
   }
   if (a>293) {
   a=293;
   }
   if (i>132) {
   i=132;
   }
   
   if (i<34) {
   i=34;
   }
   */
  float x=mouseX-ix;
  float y=mouseY-iy;
  float r= sqrt(x*x+y*y);
  println("r" + r + " " + r);

  if (r<74-20) {


    ellipse(i, a, 20, 20);
  } else { 
    float px = ix;
    float py = iy;
    float ir= 20;
    float pr=74;
    float theta= atan2(y, x);
    px=ix-(ir-pr)*cos(theta);
    py=iy-(ir-pr)*sin(theta);
    ellipse(px, py, 20, 20);
  }

  /////////
  float xx=mouseX-ix;
  float yy=mouseY-iy;
  float rr= sqrt(x*x+y*y);
  println("r" + r + " " + r);

  if (r<74-20) {


    ellipse(i, a, 20, 20);
  } else { 
    float pxx = ixx;
    float pyy = iyy;
    float irr= 20;
    float prr=74;
    float theta= atan2(y, x);
    pxx=ixx-(irr-prr)*cos(theta);
    pyy=iyy-(irr-prr)*sin(theta);
    ellipse(pxx, pyy, 20, 20);

    if (z<178) {
      z=178;
    }

    if (z>278) {
      z=278;
    }

    if (b<172) {
      b=172;
    }
    if ( b>278) {
      b=276;
    }



    println("ab " + a + " " + b);
  }
}

