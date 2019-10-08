Die dic = new Die(150,150);
void setup()
{
	noLoop();
	size(300,300);
	background(0);
}
void draw()
{
dic.roll();
dic.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
int val;
float xcoord, ycoord, siz;	
	Die(int x, int y) //constructor
	{
xcoord = (float)x;
ycoord = (float)y;
siz =50;
	}
	void roll()
	{
val = (int)(Math.random()*6) +1;
	}
	void show()
	{
fill(255);
strokeWeight(10);
rect(xcoord,ycoord,siz,siz);
if(val%2==1){
	fill(0);
	ellipse(xcoord+siz/2,ycoord+siz/2,5,5);
	if (val>1){
		ellipse(xcoord + siz/4,ycoord+siz/4,5,5);
		ellipse(xcoord+siz*3/4,ycoord+siz*3/4,5,5);
		if (val>3){
			ellipse(xcoord + siz/4,ycoord+siz*3/4,5,5);
			ellipse(xcoord + siz*3/4,ycoord+siz/4,5,5);
		}
	}
}	
}
}
