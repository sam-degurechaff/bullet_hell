void keyPressed() {
  //println(wkey,skey,akey,dkey);
  if (key=='W'||key=='w')wkey=true;
  if (key=='S'||key=='s')skey=true;
  if (key=='A'||key=='a')akey=true;
  if (key=='D'||key=='d')dkey=true;
 // if (keyCode==UP)akey=true;
  //if (keyCode==DOWN)dkey=true;
  if(key==' ')spacekey=true;
}
void keyReleased() {
  if (key=='W'||key=='w')wkey=false;
  if (key=='s'||key=='s')skey=false;
  if (key=='A'||key=='a')akey=false;
  if (key=='D'||key=='d')dkey=false;
  if(key==' ')spacekey=false;
}
void mousePressed() {
  if (mode==INTRO) introClicks();
  else if (mode==GAME)gameClicks();
  else if (mode==GAMEOVER)gameoverClicks();
  else if (mode==PAUSE)pauseClicks();
}
