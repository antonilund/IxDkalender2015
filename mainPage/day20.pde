float x = 20.0;       // Initial x-coordinate
float y = 10.0;       // Initial y-coordinate
float endX = 1000.0;    // Destination x-coordinate
float endY = 600.0;    // Destination y-coordinate
float easing = 0.01;  // Size of each step along the path
float trans = 0;

//en stjärna faller
void day20() {

  fill(255);
  trans += 0.5;
  float d = dist(x, y, endX, endY);
  if (d > 1.0) {
    x += (endX - x) * easing*2;
    y += (endY - y) * easing;
  }
    noStroke();
    fill(0, 5);
    rect(0, 0, width, height);
    fill(255);
    ellipse(x, y, 17, 15);
}