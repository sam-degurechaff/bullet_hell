class GameObject {
  float x, y, vx, vy, size;
  color c;
  int lives;

  void act() {
    x=x+vx;
    y=y+vy;
  }

  void show() {
    fill(c);
    square(x, y, size);
  }
}
