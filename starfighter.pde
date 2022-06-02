class Starfighter extends GameObject{
  

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
    if (akey)vx=-5;
    if (dkey) vx=5;
    if(spacekey) objects.add(new bullet());
    
    if (!akey && !dkey)vx=vx*0.9;
    if (!wkey && !skey)vy=vy*.9;

    super.act();
  }
  void show() {
    fill(c);
    square(x, y, size);
  }
}
