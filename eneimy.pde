class eneimy extends GameObject {
  eneimy() {
    super(random(width), 0, 0, 5, 40, yellow, 1);
  }
  void act() {
    super.act();
    //col
    int i=0; 
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof bullet) {
        if (collidingWith(obj)) {
          lives--;
        }
        i++;
      }
    }
  }
}
