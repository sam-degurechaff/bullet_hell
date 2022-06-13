class fcarrier extends GameObject {
  int cooldown, threshold;
  float r;
  fcarrier() {


    super(random(width), 0, 0, 5, 40, purple, 40);
    r=random(-50, 50);

    threshold=16;
    cooldown=threshold;
  }
  void act() {
    super.act();
    println(vx, vy);
    emx=x;
    emy=y;
    //fire
    cooldown++;
    if (cooldown>=threshold) { 
      objects.add(new fighterCarrierFire(x, y, 0, 6));
      cooldown=0;
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
  }
}
