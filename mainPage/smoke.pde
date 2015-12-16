int m;
float startWidth = 10;
float startHeight = 10;
int delay = 0;
float yPos = 280;
float op = 0;

float startWidth2 = 10;
float startHeight2 = 10;
int delay2 = 0;
float yPos2 = 280;
float op2 = 0;

float startWidth3 = 10;
float startHeight3 = 10;
int delay3 = 0;
float yPos3 = 280;
float op3 = 0;

float startWidth4 = 10;
float startHeight4 = 10;
int delay4 = 0;
float yPos4 = 280;
float op4 = 0;

void smoke(int time) {
  if (m2>delay) {
    startHeight = startHeight+0.2;
    startWidth = startWidth+0.2;
    yPos = yPos-0.5;
    op = op + 0.5; 
    delay = m2 + time;
  }
  
  fill(120, 120, 120, 255-op);
  ellipse(1035, yPos, startWidth, startHeight);
  if (op==255) {
    startHeight = 0;
    startWidth = 0;
    yPos = 280;
    op = 0;
    delay = 0;
  }
}


void smoke2(int time) {
  if (m2>delay2) {
    startHeight2 = startHeight2+0.2;
    startWidth2 = startWidth2+0.2;
    yPos2 = yPos2-0.5;
    op2 = op2 + 0.5; 
    delay2 = m2 + time;
  }
  fill(120, 120, 120, 255-op2);
  ellipse(1035, yPos2, startWidth2, startHeight2);
  if (op2==255) {
    startHeight2 = 0;
    startWidth2 = 0;
    yPos2 = 280;
    op2 = 0;
    delay2 = 0;
  }
}

void smoke3(int time) {
  if (m2>delay3) {
    startHeight3 = startHeight3+0.2;
    startWidth3 = startWidth3+0.2;
    yPos3 = yPos3-0.5;
    op3 = op3 + 0.5; 
    delay3 = m2 + time;
  }
  fill(120, 120, 120, 255-op3);
  ellipse(1035, yPos3, startWidth3, startHeight3);
  if (op3==255) {
    startHeight3 = 0;
    startWidth3 = 0;
    yPos3 = 280;
    op3 = 0;
    delay3 = 0;
  }
}

void smoke4(int time) {
  if (m2>delay4) {
    startHeight4 = startHeight4+0.2;
    startWidth4 = startWidth4+0.2;
    yPos4 = yPos4-0.5;
    op4 = op4 + 0.5; 
    delay4 = m2 + time;
  }
  fill(120, 120, 120, 255-op4);
  ellipse(1035, yPos4, startWidth4, startHeight4);
  if (op4==255) {
    startHeight4 = 0;
    startWidth4 = 0;
    yPos4 = 280;
    op4 = 0;
    delay4 = 0;
  }
}