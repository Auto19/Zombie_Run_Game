class zombie extends Actor {

  public zombie() {
    super();
  }
  
  public zombie(int xPos, int yPos) {
    super(xPos, yPos);
  }
 
 public void chaseit() {
  float targetX = r.x;
  float dx = targetX - x;
  if(abs(dx) > 1) {
    x += dx * easing;
  }
  
  float targetY = r.y;
  float dy = targetY - y;
  if(abs(dy) > 1) {
    y += dy * easing;
  }
  
 }
 

    
}
