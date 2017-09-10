int speedX = 7;
int speedY = 7;
int X = (int) random(1000);
int Y = 0;
void setup () {
  size (1000,500);
}
void draw(){
  background (0,0,0);
  fill(255,0,0);
  ellipse(X,Y,15,15);
  int ballrand = (int) random(5);
  ballrand = ballrand*25;
  X = X + speedX;
  Y = Y + speedY;
  stroke (0,255,0);
  if (X > 1000){
  speedX = -speedX;
  print (" right ");
  }
  if (X < 0){
    speedX = -speedX;
    print (" left ");
  }
  if (Y < 0){
    speedY = -speedY;
    print (" top ");
  }
    if (intersects(X,Y,mouseX,495,100)){
        speedY = -speedY;
        print (" paddle ");
        X = X + ballrand;
  }
  else if (Y > 500){
    print ("---GAME OVER---");
    exit();
}
  rect(mouseX,495,100,100);
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}
