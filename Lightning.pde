int startX = 0;
int startY = 120;
int endX = 0;
int endY = 120;

void setup()
{
  size(255,255);
  strokeWeight(1);
  background(0,0,0);
  frameRate(10);
}
void draw()
{
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	if(startX<255)
	{
	endX=startX+(int)(Math.random()*9);
	endY=startY+(int)(Math.random()*18-9);
	line(startX,startY,endX,endY);
	startX=endX;
	startY=endY;
	}
	//noLoop();
}
void mousePressed()
{
	background(0,0,0);
	while(startX>0)
	{ 

	endX=startX-(int)(Math.random()*9);
	endY=startY+(int)(Math.random()*18-9);
	line(startX,startY,endX,endY);
	startX=endX;
	startY=endY;
	}
	
	ellipse(mouseX,mouseY,5,5);

	redraw();
}