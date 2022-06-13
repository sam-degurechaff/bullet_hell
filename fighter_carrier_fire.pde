class fighterCarrierFire extends GameObject {


  fighterCarrierFire(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy, 10, purple, 1);

    if (player1.x>x) {
      vx=5;
    }
    if (player1.x<x) {
      vx=-5;
    }
    if (player1.y>y) {
      vy=5;
    }
    if (player1.y<y) {
      vy=-5;
    }
  }

  void act() {

    super.act();
    if (offScreen()) {
      lives=0;
    }


    //    while (i<objects.size()) {
    //      GameObject obj=objects.get(i);
  }
}
