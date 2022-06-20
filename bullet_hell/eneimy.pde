class eneimy extends GameObject {
  int cooldown, threshold;

  eneimy() {


    super(random(width), 0, 0, 5, 40, yellow, 1);



    threshold=30;
    cooldown=threshold;
  }
  void act() {
    super.act();

    emx=x;
    emy=y;
    //fire
    cooldown++;
    if (cooldown>=threshold) { 
      objects.add(new eneimyFire(x, y, 0, 6));
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

          int k = 0;
          while (k < 10) {
            objects.add(new eneimyDie(x, y, random(-10, 10), random(-10, 10)));
            k++;
          }
        }
      }
      i++;
    }
    if (offScreen()) lives=0;
  }
}
