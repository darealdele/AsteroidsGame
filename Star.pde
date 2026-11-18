class Star{
  private int myX;
  private int myY;
  private int size;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    size = (int)(Math.random()*5);
  }
  public void drawStar(){
    fill(255);
    ellipse(myX,myY,size,size);  
  }
  public void hyperSpace(){
    for(int i = 0; i < 30; i++){
      line(myX,myY, myX + i, myY + i);
    }
  }
}
