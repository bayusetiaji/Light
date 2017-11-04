class Particle {
  float x;
  float y;
  float vx;
  float vy;
  int red;
  int green;
  int blue;
  int alpha;
  
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    vx = random(-1, 1);
    vy = random(-5, -1);
    red = 255;
    green = 250;
    blue = 15;
    alpha = 255;
  }
  
  boolean finished() {
    return alpha < 0;
  }
  
  void update() {
    x += vx;
    y += vy;
    red -= 5;
    green -= 15;
    blue -= 1;
    alpha -= 5;
  }
  
  void show() {
    noStroke();
    fill(red, green, blue, alpha);
    ellipse(x, y, 16, 16);
  }
}