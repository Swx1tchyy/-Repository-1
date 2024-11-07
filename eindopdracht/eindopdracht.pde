//Variables of the white circles that go down
int[] y1 = {-150, -300, -890, -1111, -1590, -1850, -1990, -2560, -3050, -3550};
int[] y2 = {-175, -450, -760, -990, -1350, -1600, -2200, -2400, -3000, -3200};
int[] y3 = {-200, -575, -830, -1050, -1500, -1770, -2110, -2690, -2800, -3700};
int[] y4 = {-230, -350, -650, -1000, -1200, -1700, -2290, -2560, -2850, -3400};

//Variables of the arrows
int arrow = 0;

//How high the circles that go down are
int fall = -850;

//Variable of how high the arrows that go down are
int falla = -500;

//Speed of the white circles that go down
int verSpeed = 15;

//Keys that you press
boolean aKey = false;
boolean sKey = false;
boolean kKey = false;
boolean lKey = false;

void setup() {
  size(400, 500);
  for (int i = 0; i < y1.length; i++) {
    y1[i]+=fall;
  }
  for (int i = 0; i < y2.length; i++) {
    y2[i]+=fall;
  }
  for (int i = 0; i < y3.length; i++) {
    y3[i]+=fall;
  }
  for (int i = 0; i < y4.length; i++) {
    y4[i]+=fall;
  }
}

void draw() {
  background(0, 0, 0);

  //Pause game
  if (key == 'p') {
    textSize(25);
    text("Game paused", 80, 200);
    text("Press any key to continue", 80, 230);
    return;
  }

  //White rings
  fill(255, 255, 255);
  ellipse(50, 450, 100, 100);
  ellipse(150, 450, 100, 100);
  ellipse(250, 450, 100, 100);
  ellipse(350, 450, 100, 100);

  //Black circles in the white ring
  fill(0, 0, 0);
  ellipse(50, 450, 90, 90);
  ellipse(150, 450, 90, 90);
  ellipse(250, 450, 90, 90);
  ellipse(350, 450, 90, 90);

  //Grey circles in the white ring
  if (aKey) {
    fill(105, 105, 105);
    ellipse(50, 450, 90, 90);
  }
  if (sKey) {
    fill(105, 105, 105);
    ellipse(150, 450, 90, 90);
  }
  if (kKey) {
    fill(105, 105, 105);
    ellipse(250, 450, 90, 90);
  }
  if (lKey) {
    fill(105, 105, 105);
    ellipse(350, 450, 90, 90);
  }

  //Arrows that go down
  stroke(255, 255, 255);
  line(175, 250+arrow+falla, 200, 275+arrow+falla);
  line(200, 275+arrow+falla, 225, 250+arrow+falla);

  stroke(255, 255, 255);
  line(175, 60+arrow+falla, 200, 85+arrow+falla);
  line(200, 85+arrow+falla, 225, 60+arrow+falla);

  //Circles that move down
  fill(255, 255, 255);
  for (int i = 0; i < y1.length; i++) {
    y1[i]+=verSpeed;
    ellipse(50, y1[i], 100, 100);
  }
  for (int i = 0; i < y2.length; i++) {
    y2[i]+=verSpeed;
    ellipse(150, y2[i], 100, 100);
  }
  for (int i = 0; i < y3.length; i++) {
    y3[i]+=verSpeed;
    ellipse(250, y3[i], 100, 100);
  }
  for (int i = 0; i < y4.length; i++) {
    y4[i]+=verSpeed;
    ellipse(350, y4[i], 100, 100);
  }

  arrow+=verSpeed;
}

void keyPressed() {
  if (key == 'a') {
    aKey = true;
    for (int i = 0; i < y1.length; i++) {
      if (checkInHitBox(y1[i])) {
        y1[i] = 1000;
      }
    }
  }
  if (key == 's') {
    sKey = true;
    for (int i = 0; i < y2.length; i++) {
      if (checkInHitBox(y2[i])) {
        y2[i] = 1000;
      }
    }
  }
  if (key == 'k') {
    kKey = true;
    for (int i = 0; i < y3.length; i++) {
      if (checkInHitBox(y3[i])) {
        y3[i] = 1000;
      }
    }
  }
  if (key == 'l') {
    lKey = true;
    for (int i = 0; i < y4.length; i++) {
      if (checkInHitBox(y4[i])) {
        y4[i] = 1000;
      }
    }
  }
  if (key == 'A') {
    aKey = true;
    for (int i = 0; i < y1.length; i++) {
      if (checkInHitBox(y1[i])) {
        y1[i] = 1000;
      }
    }
  }
  if (key == 'S') {
    sKey = true;
    for (int i = 0; i < y2.length; i++) {
      if (checkInHitBox(y2[i])) {
          y2[i] = 1000;
      }
    
    }
  }
  if (key == 'K') {
    kKey = true;
    for (int i = 0; i < y3.length; i++) {
      if (checkInHitBox(y3[i])){
        y3[i] = 1000;
      }
    }
  }
  if (key == 'L') {
    lKey = true;
    for (int i = 0; i < y4.length; i++) {
      if (checkInHitBox(y4[i])) {
        y4[i] = 1000;
      }
    }
  }
}

boolean checkInHitBox(int y){
   return (y  > 400 && y < 600);
}

void keyReleased() {
  if (key == 'a') {
    aKey = false;
  }
  if (key == 's') {
    sKey = false;
  }
  if (key == 'k') {
    kKey = false;
  }
  if (key == 'l') {
    lKey = false;
  }
  if (key == 'A') {
    aKey = false;
  }
  if (key == 'S') {
    sKey = false;
  }
  if (key == 'K') {
    kKey = false;
  }
  if (key == 'L') {
    lKey = false;
  }
}
