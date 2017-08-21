PImage img;
PImage img1;

void setup() {
  size(1000, 800);
  img = loadImage("troll.png");
  img1 = loadImage("happy.jpeg");
  background(random(256),random(256),random(256));
}

void draw() {
    fill(250,250,0);
  ellipse(500,500,1000,1000);
  fill (0,255,0);
  ellipse(500,500,500,500);
  fill (0,0,255);
  ellipse(500,500,250,250);
  fill (255,0,0);
  ellipse(500,500,125,125);
  if (mousePressed){
  image(img,mouseX,mouseY);
  }
  else {
    image(img1, 425, 450);
  }
}
