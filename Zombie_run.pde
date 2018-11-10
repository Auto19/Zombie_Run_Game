Actor r = new Actor(300, 200);
zombie p = new zombie(43, 34);
Actor s = new Actor(300, 200);

void setup() {
  size(640, 360); 
  noStroke();  
  
  r.setColor(0,0,255);
  p.setColor(0,255,0);
  r.wid = r.hei = 20;
  p.wid = p.hei = 70;
  

}

void draw() { 
  background(240,240,240);
  fill(0,0,0);
  textSize(14);
  text("lives = " + r.lives, 8, 8);
  text("time: " + r.time, 8, 20);
  text("power: " + r.level, 8, 32);
  fill(255,0,0);
  textSize(30);
  text("Escape the Giant Zombie", 150, 30);
  r.drawEllipse();
  r.move();
  r.bounceEdge();
  p.drawEllipse();
  p.chaseit();
  s.drawEnd();
  r.time = r.time + 1;
    
  if(r.isTouching(p)) {
    r.lives = r.lives - 1;
  }
  
  if(r.lives < 1) {
    textSize(14);
    text("-------", 490, 10);
    textSize(100);
    fill(0,0,0);
    text("game over", 30, 200);
    textSize(30);
    text("Press Tab to restart", 30, 300);
  }
  
  if(r.isTouching(s)) {
    s.goTo(random(10, 640), random(20, 360));
    r.level = r.level + 1;
  }
  
  if(r.level == 10) { 
    p.wid = 40;
    p.hei = 40;
    text("Upgrade activated", width/2, height/2);
  }
  
  if(r.level == 50) {
    p.wid = 20;
    p.hei = 20;
    text("Upgrade activated", width/2, height/2);
    text("Get to 100 to win", width/2, height/2 + 30);
  }
  
  if(r.level > 99) {
    p.wid = 0;
    p.hei = 0;
    text("YOU Win", width/2, height/2);
    r.time = r.time;
    r.lives = r.lives + 1000;
  }
    
}



