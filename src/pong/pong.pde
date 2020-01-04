int x=20;
int y=50;
int width= 20;
int height= 20;
int speed=10;
void setup(){
  size(500, 500);
background(80, 247, 218);
}



void draw(){
  background(80, 247, 218);
  fill(240, 65, 65);
stroke(247, 40, 40);
ellipse(x+=speed, y, width, height);

}
