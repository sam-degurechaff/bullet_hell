class gunnerfire extends GameObject {


  gunnerfire(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy, 10, purple, 1);
  }
  void act() {

    super.act();
    if (offScreen()) {
      lives=0;
    }
  }
}
