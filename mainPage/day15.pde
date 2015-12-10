//dekorera skorstenen


PImage day15Img;
boolean isDay15Init = false;
void initDay15()
{
  day15Img = loadImage("chimneydecoration.png");
}

void day15(){
  if(!isDay15Init)
  {
    initDay15();
    isDay15Init = true;
  }
  
  if(isHatchOpen(15))
  {
    image(day15Img, 1012, 307);
  }
}