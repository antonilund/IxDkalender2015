int ipa = 1;
//dag 3
void day3()
{
  int moonX=100;
  int moonY=100;

  if (isHatchOpen(3)) {
    if (ipa <256 && moonX<300 && moonY>7) {
      ipa++;
    }
    moonX=moonX+ipa;
    moonY=moonY-ipa;
    tint(255, ipa*2);
    image(halfMoon, moonX, moonY, 300, 300);
    noTint();
  }
}