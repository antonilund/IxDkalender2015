float x = 20.0;       
float y = 10.0;       
float endX = 1000.0;    
float endY = 600.0;    
float easing = 0.01;  // Size of each step along the path
float trans = 0;

//en stjärna faller
void day20() {
  roofy = false;

  trans += 0.5;
  float d = dist(x, y, endX, endY);
  if (d > 1.0) {
    x += (endX - x) * easing*2;
    y += (endY - y) * easing;
  }
    noStroke();
    fill(255);
    ellipse(x, y, 17, 15);
}