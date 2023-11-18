class Spaceship extends Floater {
  Spaceship() {
    myColor = 255;
    corners = 4;
    xCorners = new int []{-8, 16, -8, -2};
    yCorners = new int []{-8, 0, 8, 0};
    myCenterX = myCenterY = 500;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperSpace(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*360+1);
    myXspeed = 0;
    myYspeed = 0;
  }
}
