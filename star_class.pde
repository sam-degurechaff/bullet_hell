class AR {
  //instant v
  float x, y, vx, vy, size;
  color c;
  int lives;

  //construct
  AR() {
    x= random(0, width);
    y=0;
    vx=0;
    size=random(1, 5);
    vy=size;
    c=#FFFFFF;
    lives=1;
  }

  //beheave
  void act() {
    x=x+vx;
    y=y+vy;
    if(y>height)lives=0;
  }
  void show() {
    fill(c);
    square(x, y, size);
  }
  
}
