class eneimyDie extends GameObject {
  int timer=300;
  int lives=1;
  eneimyDie(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, blue, 1);
  }
  void act() {
    super.act();
    println(vx );
    if (lives==1) {

      text(timer, width/3, 550); 
      timer=timer-1;
    }
    if (timer==0) {
      lives=0;
    }


    if (offScreen()) lives=0;
  }
}
