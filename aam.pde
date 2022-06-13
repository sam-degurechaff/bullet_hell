class aam extends GameObject {

  int timer;

  aam( float x, float y) {
    super(x, y, 7, 7, 12, #FF0000, 1);
  }
  void act() {
    super.act();
    if (x<0||x>width||y<0||y>height)lives=0;
    if (player1.x>x) {
      vx++;
    }
    if (player1.x<x) {
      vx--;
    }
    if (player1.y<y) {
      vy--;
    }
    if (player1.y>y) {
      vy++;
    }

    if (lives==1) {
      timer=80;
      text(timer, 3*width/4, 550); 
      timer=timer-1;
    }
    if (timer==0) {
      lives=0;
    }
  

  //while (i<objects.size()) {
  //  GameObject obj=objects.get(i);
  //  if (obj instanceof aam) {
  //    if (collidingWith(player1)) {
  //      lives--;
  //      obj.lives = 0;
  //    }
  //  }
  //  i++;
  //}
}
}
