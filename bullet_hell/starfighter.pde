class Starfighter extends GameObject {

  int cooldown, threshold, timer, vt_timer;
  Starfighter() {
    super(width/2, height/2, 0, 0, 40, #FF0000, 10000);
    threshold=6;
    cooldown=threshold;
    fullhealth=false;
  }
  void act() {
    //control
    if (wkey)vy=-5;
    if (skey)vy=5;
    if (akey)vx=-5;
    if (dkey) vx=5;


    if (!akey && !dkey)vx=vx*0.9;
    if (!wkey && !skey)vy=vy*.9;
    text(lives, width/2, 100);
    //on board weaponds
    cooldown++;
    if (spacekey&&cooldown>=threshold) { 
      objects.add(new bullet(x, y, 0, -18));
      cooldown=0;
    }
    rect(100, 800, 200, 100);
    super.act();



    int i=0; 
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof eneimyFire) {
        if (collidingWith(obj)) {
          lives=lives-1;
        } else {
        }
      }
      i++;
    }



    float dist;
    dist = dist(player1.x, player1.y, emy, emx);
    if (dist<80) {
      //objects.add(new bullet(0, -10));
      //objects.add(new bullet(0, 10));
      //objects.add(new bullet( 10, 0));
      //objects.add(new bullet(-10, 0));
    }

    if (wingman==true) {

      objects.add(new wingman(x+60, y+10, vx, vy));
      objects.add(new wingman(x-60, y+10, vx, vy));
      wingman=false;
    }
    if (fullhealth==true) {
      lives=lives+10;
      fullhealth=false;
    }
    if (vt_timer==0 &&spacekey &&cooldown>=threshold &&mouseX>100 &&mouseX<500 &&mouseY>800 &&mouseY<800) { 

      hevt=true;
      timer=4000;
      objects.add(new hevt(x, y, 0, -22));
      cooldown=0;
      timer--;
    }
    if (hevt==true) {
      rect(x, y, 20, 200);
    }
    if (timer==0) {

      hevt=false;
      vt_timer=10000;
      vt_timer--;
    }
    if (lives<=0) {
      mode=GAMEOVER;
      //gameover.rewind();
      //gameover.play();
    }

    if (x<0+40) {
      x=width+40;
    } else if (x>width-40) {
      x=width-40;
    } else if (y<0+40) {
      y=0+40;
    } else if (y>height-40) {
      y=height-40;
    }


    //    void distance() {
    //      int i=0;
    //      int index == 0 {
    //        while (i<objects.length()) {
    //          GameObject obj=objects.get(i);
    //          i++;
    //          (float minimum_distance=(player1.x, player1.y, objects.x, objects.y) {
    //else if (objects[index][i] <= 700) {
    //}
    //}
    //void rear_gunner() {
    //  dist = dist(player1.x, player1.y, objects.x, objects.y);
    //  if (cooldown>=threshold||dist<700) { 
    //    ffvx=(x-player1.x);
    //    ffvy=(y-player1.y);
    //    ffba=-atan2(player1.y-y, player1.x-x);
    //    gnsp=-sin(ffba)*10;
    //    gnsps=-cos(ffba)*10;
    //    objects.add(new gunnerfire(x, y, ffsp, ffsps));
    //    cooldown=0;
    //  }
    //}
    //}
  }

  //void rear gunner target() {
  //  if ( idt > -1 ) 
  //    PVector waytotarget = objects.get(idt).copy();
  //  waytotarget.sub(target);
  //  if ( waytotarget.mag() > 0.5 ) {                     // thats close enough
  //    waytotarget.setMag(waytotarget.mag()*speedf);      // calc faster to short step in that direction
  //    target = target.add(waytotarget);                  // change target
  //  } else {
  //    if ( !shoot ) println("shoot at "+idt);            // only print 
  //    shoot = true;
  //    points.remove(idt);
  //  }
  //}

  void show() {
    fill(c);
    square(x, y, size);
  }
}
