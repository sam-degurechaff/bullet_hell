class eneimy extends GameObject {
  int cooldown, threshold;
  eneimy() {


    super(random(width), 0, 0, 5, 40, yellow, 1);

    threshold=8;
    cooldown=threshold;
  }
  void act() {
    super.act();

    //fire
    cooldown++;
    if (cooldown>=threshold) { 
      objects.add(new eneimyFire(x, y, 0, 6));
      cooldown=0;
    }
    if (offScreen()) {
      lives=0;
    }    
    //col
    int i=0; 
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof bullet) {
        if (collidingWith(obj)) {
          lives--;
        }
      }
      i++;
    }
    if (offScreen()) lives=0;
  }
}
