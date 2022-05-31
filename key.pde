void keyPressed() {
  println(wkey,skey,upkey,downkey);
  if (key=='W'||key=='w')wkey=true;
  if (key=='S'||key=='s')skey=true;
  if (key=='A'||key=='a')upkey=true;
  if (key=='D'||key=='d')downkey=true;
  if (keyCode==UP)upkey=true;
  if (keyCode==DOWN)downkey=true;
  if(key==' ')spacekey=true;
}
void keyReleased() {
  if (key=='W'||key=='w')wkey=false;
  if (key=='s'||key=='s')skey=false;
  if (key=='A'||key=='A')upkey=false;
  if (key=='D'||key=='d')downkey=false;
  if(key==' ')spacekey=false;
}
void mousePressed() {
  if (mode==INTRO) introClicks();
  else if (mode==GAME)gameClicks();
  else if (mode==GAMEOVER)gameoverClicks();
  else if (mode==PAUSE)pauseClicks();
}
