class eneimyFire extends GameObject {
  eneimyFire(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, yellow, 1);
  }
  void act() {
    super.act();
    if (offScreen()) {
      lives=0;
    }
  }
}
