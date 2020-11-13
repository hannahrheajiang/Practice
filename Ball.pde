class Ball{
  int xPos, yPos, xSz, ySz, bSpeed, bLife; 
  color bCol;
  Ball(){
    xPos = (int) (Math.random()*500);
    yPos = (int) (Math.random()*300);
    xSz = ySz = 20;
    bSpeed = (int) (Math.random()*12)+1;
    bCol = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
    bLife = (int) (Math.random()*1500)+500;
  }
  void show(){
    fill(bCol);
    ellipse(xPos, yPos, xSz, ySz);
  }
  void update(){
    xPos += bSpeed;
    bLife -= 1;
    if (xPos > 510) 
      xPos = -10;
    if (bLife == 0){
      yPos = 400;
  }
}
}
