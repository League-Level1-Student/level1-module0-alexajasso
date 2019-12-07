int raindropY= 0;
int x= 300;
int y= 500;
int width = 100;
int height= 90;
int randomNumber= (int) random(width);
void setup() {;
  size(600, 600);
}
void draw () {
  background(9, 1, 1);
  fill(130, 197, 236);
  stroke(30, 146, 213);
  
  //code for raindrop
  ellipse(randomNumber,raindropY, 10, 13);
  raindropY=raindropY+10;
   if(raindropY>600) {
   raindropY=0;
   randomNumber = (int) random(width);
   }
   
   //code for rect
   fill(201,193,193);
   rect( mouseX,  y,  width,  height);
}
