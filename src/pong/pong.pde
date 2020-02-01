int x=20;
int y=50;
int width= 20;
int height= 20;
int speed=10;
int speed2=5;
void setup(){
  size(500, 500);
background(80, 247, 218);
}



void draw(){
  background(80, 247, 218);
  fill(240, 65, 65);
stroke(247, 40, 40);
ellipse(x+=speed, y+=speed2, width, height);

if(x > width){
speed= -10;
}
if(x < 0){
speed= 10;
}
if(y > height){
speed2= -5;
}
if(y < 0){
speed2= 5;
}
}
