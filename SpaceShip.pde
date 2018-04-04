class Laser {
  //member variables
  float lsXFixed;
  boolean show,powerup;
  
  Laser() {
  }
  void display(int n) {
    fill(240,240,0);
    if (show) {
      lsX = lsXFixed;
      if (lsY>0) {
        lsY-=15;
        //image(singe[n], lsX,lsY, 60, 56.7);
        image(singe[n], lsX,lsY, 60, 56.7);
      }
      
      //collision detection
      if (lsY<0 || hit == true) {
        show = false;
        hit = false;
      }
    }
  }
  
  void shoot() {
    if (startGame) {
      if (mousePressed && show == false) {
        lsXFixed = ssX;
        lsY = 392;
        show = true;
       }
    }
  }
}