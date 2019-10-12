import ddf.minim.*;  //at the very top of your sketch
PImage pictureOfRecord; //as member variable
Minim minim;  //as a member variable
AudioPlayer song;  //as a member variable
int angleOfRecord = 0;
void setup() {
  size(600, 600);     //in setup method  
  pictureOfRecord = loadImage("record.jpg");     //in setup method
  pictureOfRecord.resize(600, 600);     //in setup method
  minim = new Minim(this);  //in the setup method
  song = minim.loadFile("AG.mp3", 512);//in the setup method
}

void draw() {
  if (mousePressed) {
    song.play();
    angleOfRecord = angleOfRecord + 1;
  } else {
    song.pause();
  }

  rotateImage( pictureOfRecord, angleOfRecord);
  image(pictureOfRecord, 0, 0);      //in draw method
}

void rotateImage(PImage image, int amountToRotate) {
  translate(width/2, height/2);
  rotate(amountToRotate*TWO_PI/360);
  translate(-image.width/2, -image.height/2);
}
