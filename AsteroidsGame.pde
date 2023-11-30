Star [] stars = new Star[400];
Spaceship ship = new Spaceship();
ArrayList <Asteroids> rocks = new ArrayList <Asteroids> ();
ArrayList<Bullet> shots = new ArrayList <Bullet> ();
boolean w, a, s, d;
public void setup() {
  size(1000,1000);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
    stars[i].show();
  }

}
public void draw() {
  background(0);
  ship.show();
  ship.move();
  for(int i = 0 ; i < stars.length; i++){
    stars[i].twinkle();
    stars[i].show();
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }

  if(w == true)
    ship.accelerate(0.25);
  if(a == true)
    ship.turn(-5);
  if(s == true)
    ship.accelerate(-0.25);
  if(d == true)
    ship.turn(5);
    
}

public void keyPressed(){
  if(key == 'w')
    w = true;
  if(key == 'a')
    a = true;
  if(key == 's')
    s = true;
  if(key == 'd')
    d = true;
  if(key == 'q')
    ship.hyperSpace(); 
  if(key == ' ')
    shots.add(new Bullet());
}

public void keyReleased(){
  if(key == 'w')
    w = false;
  if(key == 'a')
    a = false;
  if(key == 's')
    s = false;
  if(key == 'd')
    d = false;
}
