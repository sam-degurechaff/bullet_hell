class hevt extends GameObject {

  hevt(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 14, #FF0000, 1);
  }
  void act() {
    super.act();
    if (x<0||x>width||y<0||y>height)lives=0;
    if (dist(x, y, emx, emy)<100) {
      int k = 0;
      while (k < 30) {
        objects.add(new eneimyFire(x, y, vx++, vy++));
        k++;
      }
    }
  }
}
