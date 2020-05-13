//class Rotor {

//  PVector position;

//  String name;  // IC, IIC, IIIC, I, II,  III, UKW, ETW...

//  int[][] wiring;
//  int rotorNo;
//  int rotorPos;

//  Rotor() {
//  }
//  void setPosition(float x_, float y_) {
//    position = new PVector();
//    position.x = x_;
//    position.y = y_;
//  }

//  void show() {
//    int x = width/2 - ((rotorPos-2)*200);
//    rectMode(CENTER);
//    fill(255);
//    rect(x, 200, 50, 120);
//    fill(230);
//    rect(x, 160, 50, 40);
//    rect(x, 240, 50, 40);
//    fill(0);
//    textSize(20);
//    if (position == 0) {
//      text(1, x, 160);
//      text(26, x, 200);
//      text(25, x, 240);
//    } else if (position == 1) {
//      text(position+1, x, 160);
//      text(position, x, 200);
//      text((26), x, 240);
//    } else {
//      text(position+1, x, 160);
//      text(position, x, 200);
//      text((position-1), x, 240);
//    }
//    fill(255);
//    textSize(30);
//    text(rotorNo+1, x, 100);
//  }

//  void click(int x, int y) {
//    int posX = width/2 - ((rotorPos-2)*200);
//    if (x < posX + 25 && x > posX - 25 && y >160 && y < 240) {
//      position +=1;
//      position = position % 26;
//    } else if (x < posX + 25 && x > posX - 25 && y >70 && y < 130) {
//      nextRotor();
//    }
//  }
//}
