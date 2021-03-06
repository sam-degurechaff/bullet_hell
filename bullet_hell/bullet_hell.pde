import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme, gametheme, gametheme02, coin, bump, gameover, coin02;

int idt;
ArrayList<PVector> points = new ArrayList<PVector>();    
PVector target = new PVector(0, 0);                     
boolean shoot = false;

boolean timer,spawnpw,wingman,spawnHP,fullhealth,hevt;
float targetnewdist,newdist,ffp,gnsp,gnsps;


final int INTRO=0;
final int GAME=1;
final int GAMEOVER=2;
final int PAUSE=3; 
final int OPTIONS=4;
boolean wkey, skey, akey, dkey, spacekey,powerw1,powerh2;
float carrierdist, r, R,dist,ffvx,ffvy,ffba,ffsps,ffsp, highscore,score,lives;

color red=#e63946;
color dblue=#1d3557;
color blue=#f1faee;
color yellow=#fdca40;
color purple=#C303FF;
color green=#77FF03;
color gray=#ADADAD;
color darkR=#A70000;

 float emx,emy;
 float speedof,tdist, targetdist=.04;
   
int mode;
ArrayList<GameObject> objects;
Starfighter player1;
void setup() {
  size(displayWidth, displayHeight); 
  mode=INTRO;
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
