class Spaceship extends Floater  
{   
  public Spaceship(){ 
    corners = 7; 
    xCorners = new int[corners]; 
    yCorners = new int[corners]; 
    xCorners[0] = -8; 
    yCorners[0] = -8; 
    xCorners[1] = 16; 
    yCorners[1] = 0; 
    xCorners[2] = -8; 
    yCorners[2] = 8;
    xCorners[3] = -6; 
    yCorners[3] = 3; 
    xCorners[4] = -16; 
    yCorners[4] = -7;
    xCorners[5] = -16; 
    yCorners[5] = 7;
    xCorners[6] = -6; 
    yCorners[6] = -3; 
    myColor = color(255);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
   public Spaceship(int x, int y){ 
    corners = 7; 
    xCorners = new int[corners]; 
    yCorners = new int[corners]; 
    xCorners[0] = -8; 
    yCorners[0] = -8; 
    xCorners[1] = 16; 
    yCorners[1] = 0; 
    xCorners[2] = -8; 
    yCorners[2] = 8;
    xCorners[3] = -6; 
    yCorners[3] = 3; 
    xCorners[4] = -16; 
    yCorners[4] = -7;
    xCorners[5] = -16; 
    yCorners[5] = 7;
    xCorners[6] = -6; 
    yCorners[6] = -3; 
    myColor = color(255);
    myCenterX = x;
    myCenterY = y;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void setCord(int x, int y){
    myCenterX = x;
    myCenterY = y;
  }
  public void setSpeed(int x, int y){
    myXspeed = x;
    myYspeed = y;
  }
}
