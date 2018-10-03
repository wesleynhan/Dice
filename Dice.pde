void setup()
{
	noLoop();
	size(435,500);
}

void draw()
{
	background(100);
	int sumDie = 0;
	 for(int i=0;i<441;i+=55)
	{
		for(int j=0;j<385;j+=55)
		{
			Die one = new Die(i,j);
			one.show();
			sumDie = sumDie + one.numDie;
		}
	}
	fill(0,(int)(Math.random()*179+66),(int)(Math.random()*179+66));
	rect(0,385,435,125);
	fill(0);
	textSize(20);
	text("The sum of the dice: "+sumDie,100,450);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	int mySize;
	int dX;
	int dY;
	int numDie;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;//variable initializations here
		mySize = 10;
		dX=x;
		dY=y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(66,(int)(Math.random()*179+66),(int)(Math.random()*179+66));
		rect(dX,dY , 50, 50, 10);//your code here
		numDie = (int)(Math.random()*6+1);
		fill(0);
		if (numDie == 1 ||numDie == 3 ||numDie == 5)
		{
			ellipse(myX+25,myY+25,mySize,mySize);

			if(numDie == 3 || numDie ==5)
			{
				ellipse(myX+40,myY+10,mySize,mySize);
				ellipse(myX+10,myY+40,mySize,mySize);

				if(numDie ==5)
				{
					ellipse(myX+10,myY+10,mySize,mySize);
					ellipse(myX+40,myY+40,mySize,mySize);
				}
			}
		}
		else if (numDie == 2 ||numDie == 4 ||numDie == 6)
		{
			ellipse(myX+10,myY+10,mySize,mySize);
			ellipse(myX+40,myY+40,mySize,mySize);

			if(numDie == 4 ||numDie ==6)
			{
				ellipse(myX+40,myY+10,mySize,mySize);
				ellipse(myX+10,myY+40,mySize,mySize);
				
				if(numDie ==6)
				{
					ellipse(myX+10,myY+25,mySize,mySize);
					ellipse(myX+40,myY+25,mySize,mySize);
				}
			}
		}
	}
}
