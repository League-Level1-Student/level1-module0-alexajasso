0import ddf.minim.*;  
PImage pictureOfRecord; 
Minim minim;  
AudioPlayer song;  
int angleOfRecord = 0;
void setup() {
  size(600, 600);       
  pictureOfRecord = loadImage("record.jpg");     
  pictureOfRecord.resize(600, 600);
  minim = new Minim(this);  
  song = minim.loadFile("AG.mp3", 512);
}

void draw() {
  if (mousePressed) {
    song.play();
    angleOfRecord = angleOfRecord + 1;
  } else {
    song.pause();
  }

  rotateImage( pictureOfRecord, angleOfRecord);
  image(pictureOfRecord, 0, 0);      
}

void rotateImage(PImage image, int amountToRotate) {
  translate(width/2, height/2);
  rotate(amountToRotate*TWO_PI/360);
  translate(-image.width/2, -image.height/2);
}
