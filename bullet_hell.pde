import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme, gametheme, gametheme02, coin, bump, gameover, coin02;



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

 float emx,emy;
   
int mode;
ArrayList<GameObject> objects;
Starfighter player1;
void setup() {
  size(displayWidth, displayHeight); 
  mode=GAME;
  objects=new ArrayList<GameObject>();
  player1=new Starfighter();
  rectMode(CENTER);
  minim=new Minim(this);
  theme=minim.loadFile("Call_of_Duty_World_at_War_-_Black_Cats_Remix.mp3");
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
