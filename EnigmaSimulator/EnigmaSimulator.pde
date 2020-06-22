//Colocar campos para mostrar a mensagem digitada e a encriptada. //<>//

//PImage background; 

Keyboard keyboard;
Lampboard lampboard;

Plugboard plugboard;

void setup() {
  size(1850, 1050);
  frameRate(1);
  //background = loadImage("blackTexture.jpg");
  
  lampboard = new Lampboard();
  lampboard.setDistanceBetweenLamps(120.0);
  lampboard.setLettersList("QWERTZUIOASDFGHJKPYXCVBNML");
  lampboard.makeLampsRow(100.0, 300.0, 9);//100.0, 380.0, 9);
  lampboard.makeLampsRow(160.0, 370.0, 8);//140.0, 470.0, 8);
  lampboard.makeLampsRow(100.0, 440.0, 9);//60.0, 560.0, 9);

  keyboard = new Keyboard();
  keyboard.setDistanceBetweenKeys(120.0);
  keyboard.setLettersList("QWERTZUIOASDFGHJKPYXCVBNML");
  keyboard.makeKeysRow(100.0, 550.0, 9);
  keyboard.makeKeysRow(160.0, 620.0, 8);
  keyboard.makeKeysRow(100.0, 690.0, 9);

  plugboard = new Plugboard();
  plugboard.setDistanceBetweenSlots(120.0);
  plugboard.setLettersList("QWERTZUIOASDFGHJKPYXCVBNML");
  plugboard.makeSlotsRow(100.0, 780.0, 9);
  plugboard.makeSlotsRow(160.0, 860.0, 8);
  plugboard.makeSlotsRow(100.0, 940.0, 9);
  
  //enigma = new Enigma();
  //enigma.randomRotors();
  //enigma.randomPositions();
}

void draw() {
  background(20);
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(60, 260, 1040, 230, 20);
  rect(60, 500, 1040, 240, 20);
  rect(60, 750, 1040, 290, 20);
  //imageMode(CORNER);
  //image(background, 0, 0, width, height);
  
  lampboard.lamps.get(int(random(26))).turnOn();
  

  lampboard.show();
  keyboard.show();
  plugboard.show();
  
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
