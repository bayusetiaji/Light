class Torch {
  float x;
  float y;
  
  Flame flame;
  
  Torch(float _x, float _y) {
    x = _x;
    y = _y;
    flame = new Flame(x, y - 50);
  }
  
  void locate(float _x, float _y) {
    x = _x;
    y = _y;
  }
  
  void show() {
    flame.locate(x, y - 50);
    flame.show();
    
    pushMatrix();
    translate(x, y);
    
    noFill();
    stroke(150);
    strokeWeight(2);
    line(-25, -65, 25, -65);
    line(-15, -55, 15, -55);
    line(-10, -65, 0, -38);
    line(10, -65, 0, -38);
    line(-23, -65, 0, -38);
    line(23, -65, 0, -38);
    strokeWeight(5);
    line(-5, -38, 5, -38);
    line(0, 40, 0, -40);
    
    popMatrix();
  }
}