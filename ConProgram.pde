Coin aCoin;

void setup()
{
  size(500, 300);
  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{
  background(190);
  int numHeads = 0;
  for (int x = 50; x <500; x +=60)
  {
    Coin aCoin = new Coin (x,150);
    aCoin.show();
    if(aCoin.heads == true)
    {
      numHeads += 1;
    }
  }
  fill(0);
  text("There are " + numHeads + " heads up coins", 150,250);
}
void mousePressed()
{
  redraw();
}
class Coin
{
  //three member variables
  boolean heads; 
  int myX, myY;
  //constructor
  Coin(int x_, int y_) 
  {
    myX = x_;
    myY = y_;
    flip();
  }
  //two member functions
  void flip()
  {
    if(Math.random() < 0.5) {
      heads = true;
    } else {
      heads = false;
    } 
  }
  void show()
  {
    if(heads) {
      fill(255, 0, 0);
      text("HEADS", myX, myY+30);
    } else {
      fill(0, 0, 255);
      text("TAILS", myX, myY+30);
    }
    ellipse(myX, myY, 50, 50);
  }
}
