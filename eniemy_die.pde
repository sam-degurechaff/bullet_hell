class eneimyDie extends GameObject {


  eneimyDie() {
    super(x, y, 0, 0, 40, blue, 1);
   
  }
  void act() {
     super.act();
    x=emx;
    y=emy;
    if (lives==0) {
      if (lives==0) {
        lives=1;

        x=x;
        y=y-5;
        if (vy>-5) {
          c=blue;
          vy--;
        }
      }
    }
  }
}
