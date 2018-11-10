class Actor {
  float x;
  float y;
  int fillRed = 0;
  int fillGreen = 0;
  int fillBlue = 0;
  int penRed = 0;
  int penGreen = 0;
  int penBlue = 0;
  int size = 50;
  int wid = 50;
  int hei = 50;
  int dx = 0;
  int dy = 0;
  int lives = 50;
  int level = 1;
  int time = 10000;
  
  
  
  public Actor(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  public Actor() {
  }
  
  void setColor(int r, int g, int b) {
    fillRed = r;
    fillGreen = g;
    fillBlue = b;
  }
  
  void setPenColor(int r, int g, int b) {
    penRed = r;
    penGreen = g;
    penBlue = b;
  }
  
  void move() {
    if (keyCode == TAB) {
        r.lives = 50;
        r.level = 0;
        r.time = 10000;
        p.goTo(0,0);
        textSize(12);
     }
  }
     
   void moveLeft() {
       x -=5;
   }
   
   void moveRight() {
       x+=5;
   }
   
   void moveUp() {
       y -= 5;
   }
   
   void moveDown() {
       y += 5;
   }

    
  void goTo(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  
  void bounceEdge() {
    if (x > width) {
      x = x - 5;
    }
    if (x < 0) {
      x = x + 5;
    }
      
    if (y > height) {
      y = y - 5;
    }
    
    if (y < 0) {
      y = y + 5;
    }
  }
  
  void setDX(int xVel) {
    dx = xVel;
  }
  
  void setDY(int yVel) {
    dy = yVel;
  }
  
  void drawRect() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    rect(x, y, wid, hei);
  }
  
  void drawEllipse() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    ellipse(x, y, wid, hei);
  }
  
  void drawTriangle() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    triangle(x, y, x, y, x, y);    
  }
  
  boolean isTouching(Actor a) {
    boolean xTouch = (x + wid/2 > a.x & x - wid/2 < a.x + a.wid);
    boolean yTouch = (y + hei/2 > a.y & y - hei/2 < a.y + a.hei);
    return (xTouch & yTouch);
  }
  
} //actor end here (maybe)
