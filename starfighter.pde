class Starfighter extends GameObject{
  float x, y, vx, vy, size;
  //boolean up,down,left,right;
  color c;
  int lives;

  Starfighter() {
    x=width/2;
    y=height/2;
    vx=0;
    vy=0;
    size=40;
    c=#FF0000;
    lives=3;
  }
  void act() {
    if (wkey)vy=-5;
    if (skey)vy=5;
    if (upkey)vx=-5;
    if (downkey) vx=5;
    if (!upkey&&!downkey)vy=vy*0.9;
    if (!wkey&&!skey)vx=vx*.9;

    super.act();
  }
  void show() {
    fill(c);
    square(x, y, size);
  }
}
