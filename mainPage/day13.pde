//Luciatåg

PImage lucia;
int xPoslucia = 850;
int yPoslucia = 1080;
int ySpeed = 2;
int yDirection = -1;

void day13(){
  if(isHatchOpen(13)){
  image(lucia,xPoslucia,yPoslucia,259,188);
    yPoslucia = yPoslucia + (ySpeed * yDirection);
     if (yPoslucia < 800){
       yDirection *= -1;
     }
  }
  }