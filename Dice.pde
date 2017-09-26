void setup()
{
  size(480,800);
    noLoop();
}

int rolls = 1;
Die burrito;// = new Die(x,y);
void draw()
{
  background(0);
  int total = 0;
  for(int y = 30; y <= 470; y+= 90)
  {
   
    for(int x = 30; x <= 470; x += 90)
    {
      burrito = new Die(x,y);
      burrito.show();
      total = total + burrito.rolling;
    }
  }
  fill(255);
  text("Total: " + total, 50, 600);
  text("Total # of Rolls: " + rolls, 50, 620);
}
void mousePressed()
{
    redraw();
    ;
    rolls = rolls +1;
}
class Die //models one single dice cube
{
    int myX, myY, rolling;
    Die(int x, int y) //constructor
    {
        myX = x;
        myY = y;
        rolling = (int)(Math.random()*6)+1;
    }
    void roll()
    {

       //text
       //fill(255);
       //text("Total # of Rolls: " + rolls, 50, 620);
    }
    void show()
    {
      fill(255);  
      rect(myX, myY, 60, 60); 
        if(rolling == 1)
        {
        fill(0);  
        ellipse (myX+30, myY+30, 10,10);
        }
        if(rolling == 2)
        {
          fill(0);
          ellipse (myX+20, myY+20, 10,10);
          ellipse (myX+40, myY+40, 10,10);
        }
         if(rolling == 3)
        {
          fill(0);
          ellipse (myX+10, myY+10, 10,10);
          ellipse (myX+30, myY+30, 10,10);
          ellipse (myX+50, myY+50, 10,10);
        }
       if(rolling == 4)
       {
          fill(0);
          ellipse (myX+20, myY+20, 10,10);
          ellipse (myX+20, myY+40, 10,10);
          ellipse (myX+40, myY+20, 10,10);
          ellipse (myX+40, myY+40, 10,10);
       }
       if(rolling == 5)
       {
         fill(0);
         ellipse (myX+15, myY+15, 10,10);
         ellipse (myX+15, myY+45, 10,10);
         ellipse (myX+45, myY+15, 10,10);
         ellipse (myX+45, myY+45, 10,10);
         ellipse (myX+30, myY+30, 10,10);
       }
        if(rolling == 6)
       {
          fill(0);
          ellipse (myX+17.5, myY+10, 10,10);
          ellipse (myX+17.5, myY+30, 10,10);
          ellipse (myX+17.5, myY+50, 10,10);
          ellipse (myX+43.5, myY+10, 10,10);
          ellipse (myX+43.5, myY+30, 10,10);
          ellipse (myX+43.5, myY+50, 10,10);
       }
       
    }
    
}