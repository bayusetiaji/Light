import processing.sound.*;

SoundFile bmSound;

Torch torch;
int bg = 0;

void setup() {
  size(400, 400);
  
  bmSound = new SoundFile(this, "POL-horror-ambience-3-short.wav");

  torch = new Torch(width / 2, height - 100);
  bmSound.loop();
}

void draw() {
  background(bg);

  torch.locate(mouseX, mouseY);
  torch.show();
  
  textAlign(CENTER, CENTER);
  fill(bg);
  textSize(18);
  text("T-O-R-C-H", width / 2, height / 2 - 100);
  textSize(16);
  text("smokey", width / 2, height / 2 - 75);
  textAlign(LEFT, BOTTOM);
  
  fill(61);
  textSize(12);
  text("fps: " + floor(frameRate), 25, height - 10);
  
  //saveFrame("frames\\frame-####.tiff");
}