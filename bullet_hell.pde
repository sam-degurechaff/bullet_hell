final int INTRO=0;
final int GAME=1;
final int GAMEOVER=2;
final int PAUSE=3; 
final int OPTIONS=4;
boolean wkey, skey, upkey, downkey,spacekey;

int mode;
ArrayList<AR> stars;
Starfighter player1;
void setup() {
  size(displayWidth, displayHeight); 
  mode=GAME;
  stars=new ArrayList<AR>();
  player1=new Starfighter();
}
void draw() {
 
  background(0);

  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
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
