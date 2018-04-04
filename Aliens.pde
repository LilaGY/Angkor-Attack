class Aliens {
  //member variables
  float aX, aY, groupX, groupY;
  int dir, lvl;
  boolean dead, wait;
  

  Aliens(float aX, float aY, int lvl) { //float aW, float aH
    this.aX = aX;
    this.aY = aY;
    this.lvl = lvl;
    dead = false;
    groupX = 10;
    dir = 1;
    wait = false;
  }

  void display() {
    if (dead == false && lvl == 1) {
      fill(150, 150, 0);
      image(banane[0], aX, aY, 50, 40);
      //image(banane[1], aX-7, aY+5, 20, 15);
      //image(banane[0], aX+27, aY+5, 20, 15);
      //image(banane[1], aX+10, aY+5, 20, 15);
    }
    if (dead == false && lvl == 2) {
      fill(245, 236, 27);
      image(banane[1], aX, aY, 50, 40);
      //image(banane[1], aX-7, aY+5, 20, 15);
      //image(banane[0], aX+27, aY+5, 20, 15);
      //image(banane[1], aX+10, aY+5, 20, 15);
   }
    
  }

  void travel() {
    if (startGame == true && dead == false) {
      if (lvl == 1) {
        if (sec>500 && sec<517) {
          aX+=37*dir;
          groupX+=37*dir;
          wait = true;
        } else if (groupX>=121 || groupX<=10) {  //if the millis>800 for a given second
          if (wait == true && sec>800) {
            aY+=50;
            dir*=-1;
            wait = false; //keeps the ships from shooting down off the screen
          }
        }
      }
      if (lvl == 2 && counter>=15) {
        if (sec>400 && sec<417 || sec>900 && sec<917) {
          aX+=37*dir;
          groupX+=37*dir;
          wait = true;
        } else if (groupX>=121 || groupX<=10) {  //if the millis>800 for a given second
          if (wait == true && sec>800) {
            aY+=45;
            dir*=-1;
            wait = false; //keeps the ships from shooting down off the screen
          }
        }
      }
    }
  }

  void collision() { 
    if (aX-27<lsX && aX+57>lsX && aY<lsY && aY+35>lsY) {
      dead = true;
      hit = true;
      youpi.play();
      counter+=1;
      aY-=2000;
      aX+=1000;
      println(counter);
    }
    if (counter == 15 && aY<0) {
      lvl = 2;
      aY+=400;
    }
  }
  
  void gameover() {
    textSize(40);
    if (aY>=392) {
      startGame = false;
      fill(255);
      text("GAME OVER",width/2-110,height/2);
    }
    if (counter>=30) {
      startGame = false;
      fill(255);
      image(cup,155,155,170,170);
      text("YOU WIN !",155,370);
    }
  }
}