class Asteroids extends Floater{
  int rotSpeed;
  Asteroids(){
    rotSpeed = 5;
    myColor = 155;
    corners = 6;
    xCorners = new int []{-11, 7, 13, 6, -11, -5};
    yCorners = new int []{-8, -8, 0, 10, 8, 0};
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    myXspeed = (int)(Math.random()*3);
    myYspeed = (int)(Math.random()*3);
    myPointDirection = 0;
  }
  
}
