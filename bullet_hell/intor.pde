void intro() {
  //gametheme.pause();
  //gametheme02.pause();
  theme.play();
  rectMode(CENTER);
  background(0, 0, 0);
  text("Bullet_hell.exe", width/2-80, 300);
  fill(71, 129, 10);
  rect(width/2, 500, 200, 100);
 
  fill(#FFEA00);
  textSize(50);
  text("start:", width/2-50, 530);
 
  lives=3;
}

void introClicks() {
  if (mouseX>width/2-100&&mouseX<width/2+100&&mouseY>500&&mouseY<600) {
    mode=GAME;
  }
}
