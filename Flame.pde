class Flame {
  float x;
  float y;
  ArrayList<Particle> particles;
  
  Flame(float _x, float _y) {
    x = _x;
    y = _y;
    particles = new ArrayList<Particle>();
  }
  
  void locate(float _x, float _y) {
    x = _x;
    y = _y;
  }
  
  void show() {
    for(int i = 0; i < 15; i++) 
      particles.add(new Particle(x, y));
    
    for(int i = 0; i < particles.size(); i++) {
      particles.get(i).update();
      particles.get(i).show();
    
      if(particles.get(i).finished())
        particles.remove(i);
    }  
  }
}