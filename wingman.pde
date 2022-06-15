class wingman extends GameObject {
  int timer, cooldown, threshold;
  wingman(float x, float y, float vx, float vy) {
    super(x+70, y+10, player1.vx, player1.vy, 40, red, 1);
    timer=3000;

    lives=5;
  }

  void act () { 
    vx=player1.vx; 
    vy=player1.vy;
    super.act();
    text(timer, 300, 100);
    timer--;
    cooldown++;
    if (spacekey&&cooldown>=threshold) { 
      objects.add(new bullet(x, y, 0, -10));
      cooldown=0;
    }

    if (timer==0) {
      lives=0;
    }
  }
}
