class OddBall extends Ball {
  OddBall(){
    xPos = 250;
    yPos = -10;
    xSz = ySz = 40;
    bSpeed = 1;
    bCol = color(255,255,255);
    bLife = 0;
  }
  void update(){
    yPos += 1;
    if (yPos > 320)
      yPos = -20;
  }
}
