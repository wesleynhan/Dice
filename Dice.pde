void setup()
{
	noLoop();
}
void draw()
{
	background(100);
	Die one = new Die(100,100);
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		myX = 0;
		myY = 0;//variable initializations here
		mySize = 10;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{

		rect(x, y, 50, 50, 10);//your code here
		int numDie = (int)(Math.random()*6+1);
		if (numDie == 1 ||numDie == 3 ||numDie == 5)
		{
			ellipse(myX+25,myY+25,10,10);

			if(numDie == 3)
			{
				ellipse(myX+40,myY+10,10,10);
				ellipse(myX+10,myY+40,10,10);

				if(numDie ==5)
				{
					ellipse(myX+10,myY+10,mySize,mySize);
					ellipse(myX+40,myY+40,10,10);
				}
			}
		}
		else if (numDie == 2 ||numDie == 4 ||numDie == 6)
		{
			ellipse(myX+10,myY+10,mySize,mySize);
			ellipse(myX+40,myY+40,10,10);
		}
	}
}
