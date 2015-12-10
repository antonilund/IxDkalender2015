  int ipa = 1;
//dag 3
void day3()
{
  if(isHatchOpen(3)){
      if(iMoon <256){
    ipa++;
    int moonX=100;
    int moonY=100;
    moonX=moonX+iMoon;
    moonY=moonY-iMoon;
    }
    tint(255,ipa);
  image(halfMoon,300,7,300,300);
  noTint();
  }
  

}