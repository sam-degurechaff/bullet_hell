class hevt extends GameObject {

  int timer;

  hevt(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 14, #FF0000, 1);
  }

  void act() {
    super.act();
    if (x<0||x>width||y<0||y>height)lives=0;
    timer=100;
    text(timer, 100, 400);
    timer--;
    if (timer==0) {
      int k = 0;
      while (k < 30) {
        objects.add(new bullet(x, y, vx++, vy++));
        k++;
      }
    }
    if (offScreen()) lives=0;
  }
}
