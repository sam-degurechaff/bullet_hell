class bullet extends GameObject {

  bullet() {super(player1.x,player1.y,0,-10,5,#FF0000,1);
  
  }
  void act() {
    super.act();
    if (x<0||x>width||y<0||y>height)lives=0;
  }
}
