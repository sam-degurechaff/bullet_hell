class Starfighter extends GameObject {

  int cooldown, threshold;
  Starfighter() {
    super(width/2, height/2, 0, 0, 40, #FF0000, 3);
    threshold=6;
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
      objects.add(new bullet(0, -10));
      cooldown=0;
    }
    super.act();



    int i=0; 
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof eneimyFire) {
        if (collidingWith(obj)) {
          lives--;
        }
      }
      i++;
    }

    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
        i++;
      }
    }

    float dist;
    dist = dist(player1.x, player1.y, emy, emx);
    if (dist<80) {
      objects.add(new bullet(0, -10));
      objects.add(new bullet(0, 10));
      objects.add(new bullet( 10, 0));
      objects.add(new bullet(-10, 0));
    }
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
        i++;
      }
    }
  }

  int get_nearest() {
    int idx = -1;                               
    tdist = displayWidth;                              
    for (int i = 0; i < points.size(); i++) {
      targetnewdist = dist(points.get(i).x, points.get(i).y, target.x, target.y);
      if ( targetnewdist < tdist ) { 
        tdist = newdist; 
        idx = i;
      }
    }
    return idx;
  }}




  void show() {
    fill(c);
    square(x, y, size);
  }
}
