class Star {
  private int x, y, c;
  public Star() {
    x = (int)(Math.random()*1000);
    y = (int)(Math.random()*1000);
    c = 255;
  }
  public void show(){
    noStroke();
    fill(c);
    ellipse(x, y, 3, 3); 
  }
  public void twinkle(){
    int random = (int)(Math.random()*10+1);
    if(random > 5)
      c = 255;
    else c = 0;
      
  }
}
