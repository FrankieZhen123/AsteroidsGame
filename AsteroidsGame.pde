Star [] stars = new Star[400];
Spaceship ship = new Spaceship();
ArrayList <Asteroids> rocks = new ArrayList();
ArrayList <Bullet> shots = new ArrayList();
boolean w, a, s, d;
public void setup() {
  size(1000,1000);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
    stars[i].show();
  }
  for(int i = 0; i < 15; i++){
    rocks.add(new Asteroids());
    rocks.get(i).setRot((int)(Math.random()*27));
  }
}
public void draw() {
  background(0);
  for(int i = 0 ; i < stars.length; i++){
    stars[i].twinkle();
    stars[i].show();
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
  for(int i = 0; i < shots.size(); i++){
    for(int e = 0; e < rocks.size(); e++){
      float f = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)rocks.get(e).getX(), (float)rocks.get(e).getY());
      if(f < 20)
      rocks.remove(e);
    }
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).turn((int)(Math.random()*8));
    rocks.get(i).show();
    float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if(d < 10)
      rocks.remove(i);
  }
  ship.show();
  ship.move();
  if(w == true)
    ship.accelerate(0.15);
  if(a == true)
    ship.turn(-5);
  if(s == true)
    ship.accelerate(-0.15);
  if(d == true)
    ship.turn(5);
}
public void keyPressed(){
  if(keyCode == UP)
    w = true;
  if(keyCode == LEFT)
    a = true;
  if(keyCode == DOWN)
    s = true;
  if(keyCode == RIGHT)
    d = true;
  if(key == 'q')
    ship.hyperSpace(); 
  if(key == ' ')
    shots.add(new Bullet());
}
public void keyReleased(){
  if(keyCode == UP)
    w = false;
  if(keyCode == LEFT)
    a = false;
  if(keyCode == DOWN)
    s = false;
  if(keyCode == RIGHT)
    d = false;
}
