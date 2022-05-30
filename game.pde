
void game() {
   
  stars.add(new AR());
  int i=0;
  while (i<stars.size()) {
    AR s=stars.get(i);
    s.act();
    s.show();
    if (s.lives==0) {
      stars.remove(i);
    } else {
      i++;
    }
  }
  fill(225);
  text(frameRate, 20, 20);
  text(stars.size(), 20, 40);
}
void gameClicks() {
}
