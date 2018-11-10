class Maze extends Actor {

  public Maze() {
    super();
    x = random(0, width);
    y = random(0, height);
    while(x > (width/2 - 25) & x < (width/2 + 25) & y > (height/2 - 25) & y < (height/2 +25)) {
          x = random(0, width);
          y = random(0, height);
    } //end while
    size = (int)random(5,10);
    wid = size;
    hei = size;
    fillBlue = 255;
    dy = (int)random(5,10);
  }
  
  public void drawMaze() {
    fill(fillRed, fillGreen, fillBlue);
    rect(x, y, hei, wid);
  }
  
  public void act() {
    drawMaze();
    if (y > height) {
      y = -20;
      dy = (int)random(1,10);
    }
  } 
}
