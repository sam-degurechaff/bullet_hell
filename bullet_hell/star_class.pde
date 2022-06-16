class AR extends GameObject {
  //instant v

  //construct
  AR() {
   
    super( random(0, width), 0, 0, 0, random(1, 5), #FFFFFF, 1);
    vy=size;
  }

  //beheave
  void act() { 
    super.act();
    if (y>displayHeight)lives=0;
  }
  void show() {
    fill(c);
    square(x, y, size);
  }
}
