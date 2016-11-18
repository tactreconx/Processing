 


//floateyeX= mouseX
PImage face;
void setup(){
  size(300,450); 
face=loadImage("gir.jpg");
image(face, 0, 0);


}
   
void draw(){
image(face, 0, 0);
println("X: " + mouseX + " Y: " + mouseY); 
fill(mouseX,mouseY,random(255));
ellipse(80,237,130,130);
ellipse(228,224,130,130);
fill(random(255));
ellipse(mouseX,mouseY,20,20);
fill(random(255));
ellipse(mouseX,mouseY,20,20);
//if(mouseX<16&&mouseX>139&&mouseY>173&&mouseY<298){
 // ellipse(eyeX,
 
//}
//if(mouseX<168&&mouseX>284&&mouseY<221&&mouseY>279){
   //ellipse(228,224,30,30);
//}

//if{
 // mouseX
  //mouseY


}
