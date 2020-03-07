int x=20;
int y=50;
int ballW = 20;
int ballH = 20;
int speed=5;
int speed2=5;
void setup() {
  size(500, 500);
  background(80, 247, 218);
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
   
  }
  rect(mouseX, height-20, 100, 10);
  
  if (intersects(x,y,mouseX,height-20, 100 )){
  speed2= -5;
  
  }
  
}
  
  

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else
          return false;
}
