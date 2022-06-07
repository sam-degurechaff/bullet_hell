class bullet extends GameObject {

  bullet(float vx, float vy) {super(player1.x,player1.y, vx, vy,7,#FF0000,1);
  
  }
  void act() {
    super.act();
    if (x<0||x>width||y<0||y>height)lives=0;
  }
}
