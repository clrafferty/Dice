Die [] dic = new Die[9];
void setup()
{
  noLoop();
  size(300, 300);
  background(0);
  for(int i = 0;i<9;i++){
  	dic[i]= new Die(i*20,i*50);
  }
}
void draw()
{
  for(int i = 0;i<9;i++){
  	  dic[i].roll();
  	dic[i].show();
  }

}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int val;
  float xcoord, ycoord, siz;  
  Die(int x, int y) 
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
    rect(xcoord, ycoord, siz, siz, 7);
    if (val%2==1) {
      fill(0);
      ellipse(xcoord+siz/2, ycoord+siz/2, 5, 5);
      if (val>1) {
        ellipse(xcoord + siz/4, ycoord+siz/4, 5, 5);
        ellipse(xcoord+siz*3/4, ycoord+siz*3/4, 5, 5);
        if (val>3) {
          ellipse(xcoord + siz/4, ycoord+siz*3/4, 5, 5);
          ellipse(xcoord + siz*3/4, ycoord+siz/4, 5, 5);
        }
      }
    } else {
      fill(0);
      if (val==2) {
        ellipse(xcoord+siz/3, ycoord+siz/2, 5, 5);
        ellipse(xcoord+siz*2/3, ycoord+siz/2, 5, 5);
      }
      if (val==4) {
        ellipse(xcoord+siz/3, ycoord+siz/4, 5, 5);
        ellipse(xcoord+siz*2/3, ycoord+siz/4, 5, 5);
        ellipse(xcoord+siz/3, ycoord+siz*3/4, 5, 5);
        ellipse(xcoord+siz*2/3, ycoord+siz*3/4, 5, 5);
      }
      if (val==6) {
        ellipse(xcoord+siz/3, ycoord+siz/4, 5, 5);
        ellipse(xcoord+siz*2/3, ycoord+siz/4, 5, 5);
        ellipse(xcoord+siz/3, ycoord+siz*3/4, 5, 5);
        ellipse(xcoord+siz*2/3, ycoord+siz*3/4, 5, 5);
        ellipse(xcoord+siz/3, ycoord+siz/2, 5, 5);
        ellipse(xcoord+siz*2/3, ycoord+siz/2, 5, 5);
      }
    }
  }
}
