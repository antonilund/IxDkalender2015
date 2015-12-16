float moonSize = 350;
float moonYPos = -10;
float moonXPos = 300;
void day23() {
  // Månen blir avsevärt större. Marschaller tänds.
  image(moon, moonXPos, moonYPos, moonSize, moonSize);
  if (moonSize < 500)
  {
    moonSize = moonSize + 1;
    moonYPos = moonYPos -0.5;
    moonXPos = moonXPos -0.5;
  }
}