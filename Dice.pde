Die bob;
int k; //experimental idea, is scale factor
void setup()
{
  size (601, 650);
  noLoop();
}
void draw()
{
  k = 1;
  int num;
  num = 0;
  fill (255, 255, 210);
  rect (-1, 600, 650, 601);
  for (int y = 0; y < 600; y += 30 * k)
  {
    for (int x = 0; x < 600; x += 30 * k)
    {
      fill (255);
      bob = new Die (x, y);
      bob.roll();
      num += bob.dieRoll;
      bob.show();
      fill (0);
    }
  }
  textSize (24);
  text ("Your sum of rolls is " + num, 190, 635);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, dieRoll;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    dieRoll = (int) (Math.random() * 6) + 1;
    //Some intentional rigging below, is temporary debugging tool
    //dieRoll = 1;
    //dieRoll = 2;
    //dieRoll = 3;
    //dieRoll = 4;
    //dieRoll = 5;
    //dieRoll = 6;
  }
  void show()
  {
    rect (myX, myY, 30 * k, 30 * k);
    if (dieRoll == 1)
    {
      fill (0);
      ellipse (myX + 15 * k, myY + 15 * k, 5 * k, 5 * k);
    }
    else if (dieRoll == 2)
    {
      fill (0);
      ellipse (myX + 7 * k, myY + 7 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 23 * k, 5 * k, 5 * k);
    }
    else if (dieRoll == 3)
    {
       fill (0);
      ellipse (myX + 7 * k, myY + 7 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 23 * k, 5 * k, 5 * k);
      ellipse (myX + 15 * k, myY + 15 * k, 5 * k, 5 * k);
    }
    else if (dieRoll == 4)
    {
      fill (0);
      ellipse (myX + 7 * k, myY + 23 * k, 5 * k, 5 * k);
      ellipse (myX + 7 * k, myY + 7 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 23 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 7 * k, 5 * k, 5 * k);
    }
    else if (dieRoll == 5)
    {
      fill (0);
      ellipse (myX + 7 * k, myY + 23 * k, 5 * k , 5 * k);
      ellipse (myX + 7 * k, myY + 7 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 23 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 7 * k, 5 * k, 5 * k);
      ellipse (myX + 15 * k, myY + 15 * k, 5 * k, 5 * k);
    }
    else if (dieRoll == 6)
    {
      fill (0);
      ellipse (myX + 7 * k, myY + 23 * k, 5 * k, 5 * k);
      ellipse (myX + 7 * k, myY + 7 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 23 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 7 * k, 5 * k, 5 * k);
      ellipse (myX + 23 * k, myY + 15 * k, 5 * k, 5 * k);
      ellipse (myX + 7 * k, myY + 15 * k, 5 * k, 5 * k);
    }
  }
}
