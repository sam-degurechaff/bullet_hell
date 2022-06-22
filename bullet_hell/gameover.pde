void gameover() {

  //gameover.rewind();
  //gameover.play();
  theme.pause();
  background(225, 13, 13);
  textSize(50);
  textSize(104);
  text("score:"+score, width/2, 50);
  //highscore=max(score, highscore);
  //textSize(50);
  //text ("highscore:"+highscore, width/2-100, 120);

  text("click any where to restart", width/2-100, 300);
}
void gameoverClicks() {
  mode=INTRO;
  lives=3;
  score=0;
}
