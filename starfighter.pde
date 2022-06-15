class Starfighter extends GameObject {

  int cooldown, threshold, timer;
  Starfighter() {
    super(width/2, height/2, 0, 0, 40, #FF0000, 3);
    threshold=6;
    cooldown=threshold;
    wingman=true;
  }
  void act() {
    //control
    if (wkey)vy=-5;
    if (skey)vy=5;
    if (akey)vx=-5;
    if (dkey) vx=5;


    if (!akey && !dkey)vx=vx*0.9;
    if (!wkey && !skey)vy=vy*.9;

    //on board weaponds
    cooldown++;
    if (spacekey&&cooldown>=threshold) { 
      objects.add(new bullet(x,y,0, -10));
      cooldown=0;
    }
    super.act();



    int i=0; 
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof eneimyFire) {
        if (collidingWith(obj)) {
          lives--;
        }
      }
      i++;
    }

    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
        i++;
      }
    }

    float dist;
    dist = dist(player1.x, player1.y, emy, emx);
    if (dist<80) {
      //objects.add(new bullet(0, -10));
      //objects.add(new bullet(0, 10));
      //objects.add(new bullet( 10, 0));
      //objects.add(new bullet(-10, 0));
    }
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
        i++;
      }
    }
    if (wingman==true) {

      objects.add(new wingman(x, y, vx, vy));
      wingman=false;
    }
    if ( timer==0) {
    }
  }

  int get_nearest() {
    int idx = -1;                               
    tdist = displayWidth;                              
    for (int i = 0; i < objects.size(); i++) {
      targetnewdist = dist(objects.get(i).x, objects.get(i).y, player1.x, player1.y);
      if ( targetnewdist < tdist ) { 
        tdist = newdist; 
        idx = i;
      }
    }
    return idx;
  }

  //void rear gunner() {
  //  if (objects.y>player1.y) {                                  
  //      fill(255);
  //      ellipse(target.x, target.y, 2*k, 2*k);       
  //      k++;
  //      if ( k >= kmax ) {  
  //        shoot = false; 
  //        k = 0;
  //      }
  //    }
  //  }

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
