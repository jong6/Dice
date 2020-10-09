void setup() 
{
  size (1000,1000);
  textAlign(CENTER);
  noLoop();
}

void draw ()
{
    
    int sum = 0;
    background(197);
    for (int y = 100; y < 700; y = y + 110)
    {
      for (int x = 70; x < 900; x = x + 110)
      {
        dice bob = new dice (x , y);
        bob.show();
        sum = sum + bob.num;
      }
    }
    fill(0);
    textSize(26);
    text("Sum of Dice: " + sum, 500, 800);  
}
  
void mousePressed()
{
  redraw();
}

class dice 
{
  int num;
  int myX, myY;
  
  dice(int x, int y)
  {
      role();
      myX = x;
      myY = y;
  }
  void role()
  {
    num = (int) (Math.random()*(6)+1);
  }
  
  void show()
  {
    noStroke();
    fill(255);
    rect(myX,myY,100,100);
    fill(0);
    if(num == 1){
      ellipse ((myX + 50), (myY + 50), 10, 10);
    } else if (num == 2) {
      ellipse ((myX + 20), (myY + 20), 10, 10);
      ellipse ((myX + 80), (myY + 80), 10, 10);
    }else if (num == 3) {
      ellipse ((myX + 20), (myY + 20), 10, 10);
      ellipse ((myX + 50), (myY + 50), 10, 10);
      ellipse ((myX + 80), (myY + 80), 10, 10);
    }else if (num == 4) {
     ellipse ((myX + 20), (myY + 20), 10, 10);
     ellipse ((myX + 80), (myY + 20), 10, 10);
     ellipse ((myX + 20), (myY + 80), 10, 10);
     ellipse ((myX + 80), (myY + 80), 10, 10);
   }else if (num == 5) {
     ellipse ((myX + 20), (myY + 20), 10, 10);
     ellipse ((myX + 80), (myY + 20), 10, 10);
     ellipse ((myX + 20), (myY + 80), 10, 10);
     ellipse ((myX + 80), (myY + 80), 10, 10);
     ellipse ((myX + 50), (myY + 50), 10, 10);
   }else{
     ellipse ((myX + 20), (myY + 20), 10, 10);
     ellipse ((myX + 80), (myY + 20), 10, 10);
     ellipse ((myX + 20), (myY + 80), 10, 10);
     ellipse ((myX + 80), (myY + 80), 10, 10);
     ellipse ((myX + 50), (myY + 20), 10, 10);
     ellipse ((myX + 50), (myY + 80), 10, 10);
   }
  }
   
}
