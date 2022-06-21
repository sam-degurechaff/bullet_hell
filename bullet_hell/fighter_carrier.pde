class fcarrier extends GameObject {
  int cooldown, threshold;
  float r, ffpw;
  fcarrier() {

    super(random(width), 0, 0, 3, 40, purple, 40);
    r=random(-50, 50);
    ffpw=11;
    threshold=16;
    cooldown=threshold;
  }
  void act() {
    super.act();



    emx=x;
    emy=y;
    //fire
    cooldown++;
    if (cooldown>=threshold) { 
      dist = dist(player1.x, player1.y, x, y);
      if (dist<700) {
        ffvx=(player1.x-x);
        ffvy=(player1.y-y);
        ffba=-atan2(y-player1.y, x-player1.x);
        ffsp=-sin(ffba)*10;
        ffsps=-cos(ffba)*10;
        objects.add(new fighterCarrierFire(x, y, ffsp, ffsps));
        cooldown=0;
      }
    }
    if (offScreen()) {
      lives=0;

      if (lives==0) {
        lives=1;
        threshold=600;
        cooldown=threshold;
        x=x;
        y=y-5;
        if (vy>-5) {
          c=blue;
          vy--;
        };
        size=1;
      } else {

        y=y+11;
        size=size+random(1, 5);
      }
    }    
    //col
    int i=0; 
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
      }
      i++;
    }
    if (offScreen()) {
      lives=0;
    }

    if (r<-10&&y>=300) {
      vy=0;
    }
    if (r>-9&&r<10||y>=600) {
      vy=0;
    }
    if (r>10&&y>=600) {
      vy=0;
    }
    if (lives==28) {
      ffp=random(-600, 600) ;
      x=x-ffp;
      lives=lives-1;
    }
    if (lives==0) {
      ffpw=random(0, 10);
    }
    if (ffpw<4&&ffpw>2) {
      spawnpw=true;
      objects.add(new spawnpw(x, y));
    } else if 
      (ffpw<2) {
      spawnHP=true;
      objects.add(new spawnHP(x, y));
    } else {
      spawnpw=false;
      spawnHP=false;
    }
  }
}
