//Light[] letters = new Light[26]; //<>// //<>// //<>// //<>// //<>//
//String letterOrderLowerCase = "qwertyuiopasdfghjklzxcvbnm";
//PImage lightOnSprite;
//boolean keyIsDown = false;
//char keyDown;
//char keyLight;

PImage background;

Keyboard keyboard;

void setup() {
  size(1600, 1000);
  background = loadImage("blackTexture.jpg");

  keyboard = new Keyboard();
  keyboard.setDistanceBetweenKeys(120.0);
  keyboard.setLettersList("QWERTZUIOASDFGHJKPYXCVBNML");
  keyboard.makeKeysRow(100.0, 400.0, 9);
  keyboard.makeKeysRow(140.0, 490.0, 8);
  keyboard.makeKeysRow(60.0, 580.0, 9);


  
  //for (int i = 0; i< letters.length; i++) {
  //  letters[i] = new Light(letterOrder.charAt(i), i);
  //}
  //lightOnSprite = loadImage("light.png");

  //enigma = new Enigma();
  //enigma.randomRotors();
  //enigma.randomPositions();
}

void draw() {
  imageMode(CORNER);
  image(background, 0, 0, width, height);
  
  keyboard.show();
}

void mousePressed() {
  //enigma.click(mouseX,mouseY);
}


void keyPressed() {

  //if (letterOrderLowerCase.indexOf(key) != -1 && !keyIsDown && !enigma.showPlugs) {
  //  char output = enigma.runMachine(key);
  //  if(output == '1'){
  //    return;

  //  }
  //  keyLight = output;
  //  letters[letterOrderLowerCase.indexOf(output)].lightUp = true;
  //  keyIsDown = true;
  //  keyDown = key;
  //}
}


void keyReleased() {
  //if (letterOrderLowerCase.indexOf(key) != -1 && key == keyDown) {
  //  letters[letterOrderLowerCase.indexOf(keyLight)].lightUp = false;
  //  keyIsDown = false;
  //}
}
