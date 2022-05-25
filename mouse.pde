void mouseReleased() {
  if (mode==INTRO) {
    introClicks();
  } else if (mode==GAME) {
    gameClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
  } else if (mode==OPTIONS) {
    optionsClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else {
    println("error: mode="+mode);
  }
}
