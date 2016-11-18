// 1. Find a really hard Where’s Waldo puzzle, save it, and drop it onto this sketch.
PImage face;
void setup() {
  face=loadImage("scawy.png");
  PImage waldo = loadImage("whereswaldo.png"); // 2. Change this to match your file name.
  waldo.resize(900, 900);
  size(waldo.width, waldo.height);
  image(waldo, 0, 0);
  fill(255,0,0);
  textSize(20);
  text("FIND WALDO...YOU HAVE ONLY ONE CHANCE",0,0);
}


void draw() {
  // 3. Use this print statement to find out the coordinates of Waldo
  println("X: " + mouseX + " Y: " + mouseY); 


  // 4. If the mouse is on Waldo, print “Waldo found!”
  if(mousePressed){
  if (mouseX>90&&mouseX<99&&mouseY>729&&mouseY<770) {
    playWoohoo(); 
    noFill();
    rect(mouseX,mouseY,50,50);
    
  }
  else{
    playDoh() ;
    image(face,0,0);
  }
  }



  // 5. If Waldo is found, also use the method below to play “Woohoo”


  // 6. If the mouse is pressed and they’re not on Waldo, play “Doh”
}


void playWoohoo() {
woohoo.stop();
woohoo.trigger();

}


void playDoh() {
doh.stop();
doh.trigger();
}





import ddf.minim.*;
Minim minim = new Minim(this);   
AudioSample doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
AudioSample woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");

