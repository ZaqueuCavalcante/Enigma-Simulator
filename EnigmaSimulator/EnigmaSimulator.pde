//PImage background; //<>// //<>// //<>// //<>// //<>//

Keyboard keyboard;
Lampboard lampboard;

Plug plug;

void setup() {
  size(1200, 900);
  frameRate(1);
  //background = loadImage("blackTexture.jpg");

  keyboard = new Keyboard();
  keyboard.setDistanceBetweenKeys(120.0);
  keyboard.setLettersList("QWERTZUIOASDFGHJKPYXCVBNML");
  keyboard.makeKeysRow(100.0, 650.0, 9);
  keyboard.makeKeysRow(140.0, 740.0, 8);
  keyboard.makeKeysRow(60.0, 830.0, 9);

  lampboard = new Lampboard();
  lampboard.setDistanceBetweenKeys(120.0);
  lampboard.setLettersList("QWERTZUIOASDFGHJKPYXCVBNML");
  lampboard.makeLampsRow(100.0, 300.0, 9);
  lampboard.makeLampsRow(140.0, 390.0, 8);
  lampboard.makeLampsRow(60.0, 480.0, 9);
  
  plug = new Plug();
  plug.setPosition(100.0, 100.0);
  plug.setVerticalDistance(50.0);
  plug.setLetter('Z');
  plug.setSockets();
  
  //enigma = new Enigma();
  //enigma.randomRotors();
  //enigma.randomPositions();
}

void draw() {
  background(20);
  //imageMode(CORNER);
  //image(background, 0, 0, width, height);
  
  lampboard.lamps.get(int(random(26))).turnOn();
  
  keyboard.show();
  lampboard.show();
  
  plug.show();
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
