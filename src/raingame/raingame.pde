int raindropY= 0;
int randomNumber= (int) random(width);
void setup() {;
  size(600, 600);
}
void draw () {
  background(9, 1, 1);
  fill(130, 197, 236);
  stroke(30, 146, 213);
  ellipse(randomNumber,raindropY, 10, 13);
  raindropY=raindropY+10;
   if(raindropY>600) {
   raindropY=0;
   randomNumber = (int) random(width);
   }
   //rect(int x, int y, int width, int height);
}
