class Spaceship {

  //constructor
  Spaceship() {
  }
  void display(int n) {
    fill(220,0,0);
    /*triangle(ssX+35,495,ssX+45,490,ssX+45,465);
    triangle(ssX+65,495,ssX+55,490,ssX+55,465);
    triangle(ssX+58,485,ssX+42,485,ssX+50,460);*/
     ssY = 392;
    image(singe[n],ssX,ssY,60,56.7);
    if ((millis()>0 && millis()<6000)){
      
      fill(255);
      textSize(40);
      if (millis()>2000 && millis()<=3000) {
        text("3",width/2-10,height/2);
      } else if (millis()>3000 && millis()<=4000) {
        text("2",width/2-10,height/2);
      } else if (millis()>4000 && millis()<=5000) {
        text("1",width/2-10,height/2);
      } else if (millis()>5000) {
        startGame = true;
      }
      
    }
  }
  
  void steer() {
    ssX = mouseX-50;
    
  }
}