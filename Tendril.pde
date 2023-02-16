class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myNumSegments = len;
    myAngle = theta;
    
  }
  public void show()
  {
    double startX = myX;
    double startY = myY;
    for(int i = 0; i < myNumSegments; i++) {
      myAngle += (Math.random()-0.5)* 0.4;
      double endX = startX + Math.cos(myAngle);
      double endY = startY + Math.sin(myAngle);
      line((float)startX, (float)startY, (float)endX, (float)endY);
      startX = endX;
      startY = endY;
      if(myNumSegments >= SEG_LENGTH) {
        Cluster next = new Cluster((int)myNumSegments/2, (int)startX, (int)startY);
      }
    }  
  }
