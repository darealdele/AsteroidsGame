Spaceship ship;
Asteroid roid;
Star[] stars;
ArrayList list;
boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;
public void setup() 
{
  list = new ArrayList();
  for(int i = 0; i < 20; i++){
    list.add(new Asteroid());  
  }
  ship = new Spaceship();
  size(500,500);
  background(0);
  stars = new Star[250];
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();  
  }
}
public void draw() 
{
  background(0);
  if (wPressed == true) {
    ship.accelerate(.1);
  }
  if (sPressed == true) {
    ship.accelerate(-.1);
  }
  if (aPressed == true) {
    ship.turn(-1);
  }
  if (dPressed == true) {
    ship.turn(1);
  }
  if(wPressed == true && aPressed == true){
    ship.accelerate(.1);
    ship.turn(-2);
  }
  if(wPressed == true && dPressed == true){
    ship.accelerate(.1);
    ship.turn(2);
  }
  if(sPressed == true && aPressed == true){
    ship.accelerate(-.1);
    ship.turn(2);    
  }
  if(sPressed == true && dPressed == true){
    ship.accelerate(-.1);
    ship.turn(-2);    
  }
  if(wPressed == true){
    ship.accelerate(.1);
  }
  if(sPressed == true){
    ship.accelerate(-.1);
  }
  if(aPressed == true){
    ship.turn(-1);
  }
  if(dPressed == true){
    ship.turn(1);
  }
  for(int i = 0; i < list.size(); i++){
    Asteroid item = list.get(i);
    double distance = dist(item.getCenterX(),item.getCenterY(),ship.getCenterX(),ship.getCenterY());
    if(distance < 30){
      list.set(i,new Asteroid());  
    }
    item.move();
    item.show();
  }
  for(int i = 0; i < stars.length; i++){
    stars[i].drawStar();
  }

}

public void keyPressed(){
  if(key == 'w'){
    wPressed = true;
  }
  if(key == 's'){
    sPressed = true;
  }
  if(key == 'a'){
    aPressed = true;
  }
  if(key == 'd'){
    dPressed = true;
  }
  if(key == 'h'){
    ship.setCord((int)(Math.random()*500),(int)(Math.random()*500));
    ship.turn((int)(Math.random()*500));
    ship.setSpeed(0,0);
  } 
}

public void keyReleased(){
   if(key == 'w'){
    wPressed = false;
  }
  if(key == 's'){
    sPressed = false;
  }
  if(key == 'a'){
    aPressed = false;
  }
  if(key == 'd'){
    dPressed = false;
  }
}
