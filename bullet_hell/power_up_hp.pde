class spawnHP extends GameObject {
  int timer;
  spawnHP(float x, float y) {
    super(x, y, 0, 3, 20, red, 1);
    timer=200;
  }
  void act() {
    if (lives==1) {

      text(timer, 3*width/4, 550); 
      timer=timer-1;
      if (timer==0) {
        lives=0;
      }
    }
    if (collidingWith(player1)) {
      lives=0;
      fullhealth=true;
    }
    if (y>600) {
      vy=0;
    }
  }
}
