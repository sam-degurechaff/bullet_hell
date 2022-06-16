
void game() {



  addObject();
  gameEngine();
  debug();
  playSound();
}

void addObject() {
  objects.add(new AR());
  if (frameCount%5==0)
    objects.add(new eneimy());
    if (frameCount%80==0)
    objects.add(new aa_eneimy());
    if (frameCount%300==0)
    objects.add(new fcarrier());

}

void gameEngine() {  
  int i=0;
  while (i<objects.size()) {
    GameObject s=objects.get(i);
    s.act();
    s.show();
    if (s.lives <= 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  player1.show();
  player1.act();
}

void debug() { 
  fill(225);
  text(frameRate, 20, 20);
  text(objects.size(), 20, 40);
}
void gameClicks() {
}

void playSound() {

   {
    theme.play();
  }
}
