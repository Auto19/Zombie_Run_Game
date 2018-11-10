Actor r = new Actor(300, 200);
Actor p = new Actor(0, 0);


boolean right = false, left = false, d = false, a = false, up = false, down = false, s = false, w = false;

void keyPressed() {
  if (keyCode == LEFT)
  {
    left = true;
  }
  if (keyCode == RIGHT)
  {
    right = true;
  }
  if (keyCode == UP)
  {
    up = true;
  }
  if (keyCode == DOWN) 
  {
    down = true;
  }
  if (key == 'a')
  {
    a=true;
  }
  if (key == 'd' )
  {
    d=true;
  }
  if (key == 's')
  {
    s=true;
  }
  if (key == 'w')
  {
    w=true;
  }
}

void keyReleased() {
  if (keyCode == LEFT)
  {
    left = false;
  }
  if (keyCode == RIGHT)
  {
    right = false;
  }
  if (keyCode == UP)
  {
    up = false;
  }
  if (keyCode == DOWN) 
  {
    down = false;
  }
  if (key == 'a')
  {
    a=false;
  }
  if (key == 'd' )
  {
    d=false;
  }
  if (key == 's')
  {
    s=false;
  }
  if (key == 'w')
  {
    w=false;
  }
}

void setup() {
  size(600,400);
  background(240,240,240);
  r.setColor(0,0,255);
  r.setPenColor(0, 0, 0);
  r.wid = 18;
  r.hei = 18;
  r.setDX(10);
  r.setDY(10);
  p.setColor(255,0,0);
  p.setPenColor(0,0,0);
  p.wid = p.hei = 50;
  
  } // end for
  
  void R() {
  r.drawEllipse(); 
  p.drawEllipse(); 
  r.move();
  r.bounceEdge();
  p.bounceEdge();
  }

void draw() {
  background(240,240,240);
  fill(#FF0000);
  textSize(14);
  text("lives = " + r.lives, 8, 8);
  text("time: " + r.time, 8, 20);
  textSize(20);
  text("Stay alive till the time runs out", 20, 380);
  if (r.lives < 1) {
    textSize(60);
    text("game over", 200, 200);
    textSize(14);
    text("Player 2 wins", 200, 220);
  }
  
  R();
  if (left == true) {
    r.moveLeft();
  }
  if (right == true) {
    r.moveRight();
  }
  if (up == true) { 
    r.moveUp();
  }
  if (down == true) {
    r.moveDown();
  }
  
  if (a == true) {
    p.moveLeft();
  }
  if (d == true) {
    p.moveRight();
  }
  if (w == true) { 
    p.moveUp();
  }
  if (s == true) {
    p.moveDown();
  }

  if (r.isTouching(p)) {
    r.lives = r.lives - 1;
  }
  
  r.time = r.time - 1;
  
  if(r.time < 1) {
    text("game over", 200, 200);
    textSize(14);
    text("Player 1 wins", 200, 220);
  }
  

   
 }

//} //end draw 
