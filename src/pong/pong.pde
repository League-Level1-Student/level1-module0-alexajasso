//import ddf.minim.*;
//Minim minim;
//AudioSample sound;
int x=20;
int y=50;
int ballW = 20;
int ballH = 20;
int speed=10;
int speed2=5;
void setup() {
  size(500, 500);
  background(80, 247, 218);
  //minim = new Minim (this);
  //sound = minim.loadSample("pong2.wav", 128);
}



void draw() {
  background(80, 247, 218);
  fill(240, 65, 65);
  stroke(247, 40, 40);
  ellipse(x+=speed, y+=speed2, ballW, ballH);

  if (x > width) {
    speed= -10;
  }
  if (x < 0) {
    speed= 10;
  }
  if (y > height) {
    speed2= -5;
  }
  if (y < 0) {
    speed2= 5;
    //sound.trigger();
  }
}
