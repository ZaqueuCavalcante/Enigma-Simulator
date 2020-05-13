//Light[] letters = new Light[26];
//String letterOrderLowerCase = "qwertyuiopasdfghjklzxcvbnm";
//PImage lightOnSprite;
//boolean keyIsDown = false;
//char keyDown;
//char keyLight;
//PImage blackground;
//Enigma enigma;

Keyboard keyboard;

void setup() {
  size(1600, 800);

  keyboard = new Keyboard();
  keyboard.setPosition(100.0, 200.0);
  keyboard.setDistanceBetweenKeys(150.0, 100.0);
  keyboard.setLetters();
  keyboard.setKeycapsPositions();
  keyboard.setKeycapsLetters();
  
  //blackground = loadImage("blackTexture.jpg");
  //for (int i = 0; i< letters.length; i++) {
  //  letters[i] = new Light(letterOrder.charAt(i), i);
  //}
  //lightOnSprite = loadImage("light.png");

  //enigma = new Enigma();
  //enigma.randomRotors();
  //enigma.randomPositions();
}

void draw() {
  background(20);
  
  keyboard.show();
  
  

  //imageMode(CORNER);
  //image(blackground,0,0, width,height);
  //enigma.show();
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
