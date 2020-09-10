int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(3.5);
  background(0);
  frameRate(12);
}

void draw()
{
int x = 500; 
int num = ((int)(Math.random()*4)+2);
fill(0, 0, 0, 15);
rect(0, 0, 300, 300);
  while(endX < 300)
  {
  endX = startX +(int)(Math.random()*10);
  endY = startY +(int)(Math.random()*20)-9;
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), x);
  strokeWeight(num);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  x = x - 9;
  }
}

void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 50;  
}
