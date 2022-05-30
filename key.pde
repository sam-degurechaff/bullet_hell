void keyPressed() {
  if (key=='W'||key=='w')wkey=true;
  if (key=='S'||key=='s')skey=true;
  if (key=='A'||key=='A')skey=true;
  if (key=='D'||key=='D')skey=true;
  if (keyCode==UP)upkey=true;
  if (keyCode==DOWN)downkey=true;
}
void keyReleased() {
  if (key=='W'||key=='w')wkey=false;
  if (key=='s'||key=='s')skey=false;
  if (key=='A'||key=='A')skey=false;
  if (key=='D'||key=='D')skey=false;
}
