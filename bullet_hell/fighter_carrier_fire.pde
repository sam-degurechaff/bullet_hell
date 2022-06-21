class fighterCarrierFire extends GameObject {


  fighterCarrierFire(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy, 10, purple, 1);

    //if (player1.x>x) {
    //  println("a");
    //  _vx++;
    //}else if (player1.x<x) {
    //  println("b");
    //  _vx--;
    //}else if (player1.y>y) {
    //  println("c");
    //  _vy++;

    //}else if (player1.y<y) {
    //  println("d");
    //  _vy--;
    //}
  }

  void act() {

    super.act();
    if (offScreen()) {
      lives=0;
    }

    //if (player1.x>x) {
    //  println("a");
    //  vx++;
    //  vy++;
    //}
    //if (player1.x<x) {
    //  println("b");
    //  vx--;
    //  vy--;
    //}
    //if (player1.y>y) {
    //  println("c");
    //  vy++;
    //  vx++;
    //}
    //if (player1.y<y) {
    //  println("d");
    //  vy--;
    //  vx--;
    //}
  }


  //    while (i<objects.size()) {
  //      GameObject obj=objects.get(i);
}
