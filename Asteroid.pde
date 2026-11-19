class Asteroid extends Floater{
  int turnSpeed;
  public Asteroid(){
    corners = 9; 
    xCorners = new int[corners]; 
    yCorners = new int[corners]; 
    xCorners[0] = 0; 
    yCorners[0] = 15;
    xCorners[1] = 5; 
    yCorners[1] = 13; 
    xCorners[2] = 12; 
    yCorners[2] = 6; 
    xCorners[3] = 6; 
    yCorners[3] = -4; 
    xCorners[4] = 5; 
    yCorners[4] = -2; 
    xCorners[5] = -7; 
    yCorners[5] = -6; 
    xCorners[6] = -11; 
    yCorners[6] = -5;
    xCorners[7] = -12; 
    yCorners[7] = 8;
    xCorners[8] = -8; 
    yCorners[8] = 13; 
    myColor = color(100);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*5);
    myYspeed = (int)(Math.random()*5);
    myPointDirection = (int)(Math.random()*500);
    turnSpeed = (int)(Math.random()*20) - 10;
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed
    turn(turnSpeed);
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }

  public void show ()  //Draws the floater at the current position  
  {            
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    fill(myColor);
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
  public float getCenterX(){
    return myCenterX;  
  }
  public float getCenterY(){
    return myCenterY;  
  }
} 
