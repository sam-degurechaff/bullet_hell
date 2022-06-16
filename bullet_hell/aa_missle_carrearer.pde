class aa_eneimy extends GameObject {
  int cooldown, threshold;

  aa_eneimy() {
    super(random(width), 0, 0, 5, 40, green, 1);

    threshold=120;
    cooldown=threshold;
  }

  void act() {
    super.act();

    //fire
    cooldown++;
    if (cooldown>=threshold) { 
      objects.add(new aam(x, y));
      cooldown=0;
    }
    if (cooldown==100||cooldown<84&&cooldown>76||cooldown<60&&cooldown>52||cooldown<38&&cooldown>26||cooldown<18) {
      c=red;
    } else {
      c=green;
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
    if (offScreen()) lives=0;
  }
}
