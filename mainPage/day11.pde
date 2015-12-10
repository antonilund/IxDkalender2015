int iMoon = 1;
void day11() {
  if (isHatchOpen(11))
  {
    iMoon++;
    tint(255, iMoon);
    image(moon, 300, -10, 350, 350);
    noTint();
  }
}