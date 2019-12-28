int raindropY= 0;
int x= 300;
int y= 500;
int width = 100;
int height= 90;
int randomNumber= (int) random(600);
int score=0;
void setup() {

  size(600, 600);
}
void draw () {
  background(9, 1, 1);
  fill(130, 197, 236);
  stroke(30, 146, 213);
  if (y==raindropY) {
    checkCatch(randomNumber);
  }
  fill(255, 255, 255);
  textSize(16);
  text("Score: " + score, 20, 20 );

  //code for raindrop
  ellipse(randomNumber, raindropY, 10, 13);
  raindropY=raindropY+10;
  if (raindropY>600) {
    raindropY=0;
    randomNumber = (int) random(600);
    println(randomNumber);
  }

  //code for rect
  fill(201, 193, 193);
  rect( mouseX, y, width, height);
}
void checkCatch(int x) {
  if (x > mouseX && x < mouseX+100) {
    score++;
    raindropY=0;
    randomNumber= (int)random(600);
  } else if (score > 0)
    score--;
  println("Your score is now: " + score);
}
