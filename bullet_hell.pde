final int INTRO=0;
final int GAME=1;
final int GAMEOVER=2;
final int PAUSE=3; 
final int OPTIONS=4;
int mode;
ArrayList<AR> stars;
void setup() {
  size(800, 600); 
  mode=INTRO;
  stars=new ArrayList<AR>();
}
void draw() {
  stars.add(new AR());
  background(0);

  int i=0;
  while (i<stars.size()) {
    AR r=stars.get(i);
    r.act();
    r.show();
    if (r.isDead()) {
      stars.remove(i);
    } else {
      i++;
    }
  }
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    //game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==OPTIONS) {
    options();
  } else {
    println("error: mode="+mode);
  }
}
