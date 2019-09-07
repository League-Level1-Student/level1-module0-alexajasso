PImage pictureOfRecord; //as member variable
void setup() {
  size(600,600);     //in setup method  
pictureOfRecord= loadImage("record.jpg");     //in setup method  
}
}
void draw(){

image(pictureOfRecord, xPosition, yPosition);     //in draw method
}
}
