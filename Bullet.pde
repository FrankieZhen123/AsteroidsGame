class Bullet extends Floater{
  Bullet(){
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getDirection() + (int)(Math.random()*7)-3;
    accelerate(5);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
    if(myCenterX == 1000 || myCenterX == 0){   
      if(shots.size() > 1)
        shots.remove(0);  
    }     
    if(myCenterY == 1000 | myCenterY == 0){    
      if(shots.size() > 1)
        shots.remove(0);  
    }  
  }
  public void show(){
    fill(#00FFFF);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
}
