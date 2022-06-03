final int INTRO=0;
final int GAME=1;
final int GAMEOVER=2;
final int PAUSE=3; 
final int OPTIONS=4;
boolean wkey, skey, akey, dkey, spacekey;

color red=#e63946;
color dblue=#1d3557;
color blue=#f1faee;
color yellow=#fdca40;

int mode;
ArrayList<GameObject> objects;
Starfighter player1;
void setup() {
  size(displayWidth, displayHeight); 
  mode=GAME;
  objects=new ArrayList<GameObject>();
  player1=new Starfighter();
  rectMode(CENTER);
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
