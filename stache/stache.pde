PImage friends, tp, mustache;

void setup() {
  // 1. Get a photo of your friends, and drop it onto this sketch.
  friends = loadImage("stache face.jpg");  // 2. Change this to match the name of your photo. 
  friends.resize(900, 800);
  size(251, 251);
  size(friends.width, friends.height);
  // 3. Set your friends as the background. 

  // 4. Find an image of a mustache, and drop it onto this sketch. 
  tp=loadImage("top hat.png");
  mustache = loadImage("mustache.png"); // 5. Change this to match your file name.
}

void draw() {
  background(friends);
  if (mouseButton==LEFT) {
    image(mustache, mouseX-mustache.width/2, mouseY-tp.height/2);
  }
  if (mouseButton==RIGHT) {
    image(tp, mouseX-tp.width/2, mouseY-tp.height/2);
  }

  // 8. Only draw the mustache when the mouse is pressed.

  // 6. Add the mustache using: image(mustache, xPosition, yPosition)

  // 7. Change the line above so that the mustache moves with the mouse.

  // 9. [optional] You might want to adjust mouseX and mouseY so that your tash is drawn exactly where the mouse is clicked.
  // 10. [optional] Draw a hat on your friends when the right mouse button is clicked: if (mouseButton == RIGHT)
}

