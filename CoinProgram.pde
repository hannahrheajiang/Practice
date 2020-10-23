void setup()
{
  //Create the canvas
  size(500,300);
  textAlign(CENTER, CENTER);
  noLoop();
}

void draw()
{
  background(175);
  int numHeads = 0;
  for (int x = 50; x <500; x +=60)
  {
    Coin bob = new Coin (x,150);
    bob.show();
    if(bob.heads == true)
    {
      numHeads += 1;
    }
  }
}

void mousePressed()
{
  //Every time the mouse is pressed, draw() is repeated
  redraw();
}

class Coin
{
  //sets up needed variables
  boolean heads;
  int myX, myY;
  
  //sets up input into Coin object
  Coin(int x, int y)
  {
    //flips coin, sets heads = true or false
     flip();
     //sets input values of Coin equal to coin location
     myX = x;
     myY = y;
  }
  //flips coin, returns heads = true or heads = false depending on probability
  void flip()
  {
    if (Math.random() < 0.5)
    {
      heads = true;
    }
    else
    {
      heads = false;
    }
  }
  //shows the coin
  void show()
  {
    if (heads) {
      fill(255,0,0);
      text("HEADS", myX, myY+30);
    }
    else {
      fill(0,0,255);
      text("TAILS", myX, myY+40);
    }
    ellipse(myX, myY, 50, 50);
  }  
}
