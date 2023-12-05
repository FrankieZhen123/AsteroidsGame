class Asteroids extends Floater{
  int rotSpeed;
  Asteroids(){
    rotSpeed = 5;
    myColor = 200;
    corners = 6;
    xCorners = new int []{-11, 4, 7, 6, -11, -17};
    yCorners = new int []{-10, -8, -2, 5, 8, 3};
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    myXspeed = (int)(Math.random()*2);
    myYspeed = (int)(Math.random()*3);
    myPointDirection = 0;
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public void setRot(int n){rotSpeed = n;}
}
