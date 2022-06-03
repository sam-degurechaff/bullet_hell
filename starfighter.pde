class Starfighter extends GameObject {

  int cooldown, threshold;
  Starfighter() {
    super(width/2, height/2, 0, 0, 40, #FF0000, 3);
    threshold=8;
    cooldown=threshold;
  }
  void act() {
    //control
    if (wkey)vy=-5;
    if (skey)vy=5;
    if (akey)vx=-5;
    if (dkey) vx=5;


    if (!akey && !dkey)vx=vx*0.9;
    if (!wkey && !skey)vy=vy*.9;

    //on board weaponds
    cooldown++;
    if (spacekey&&cooldown>=threshold) { 
      objects.add(new bullet());
      cooldown=0;
    }
      super.act();
    }
    void show() {
      fill(c);
      square(x, y, size);
    }
  }
