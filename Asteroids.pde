class Asteroids extends Floater{
  Asteroids(){
    corners = 6;
    xCorners = new int []{};
    yCorners = new int []{};
    myCenterX = myCenterY = (int)(Math.random()*100);
    myXspeed = myYspeed = 5;
  }
  
}
