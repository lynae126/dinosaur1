public class Bird{
  PImage flapup, flapdown;
  int birdX,  num =1;
  float birdY,space;
  
  public Bird(int x){
    flapup=loadImage("./images/bird1.png");
    flapdown=loadImage("./images/bird2.png");
    birdX=x;
    birdY=200;
    space=random(0,200);
  }
  
  void moveBird(){
    //image(flapup, birdX,birdY);
    birdX-=20;
    if(birdX < -800){
      birdX = width;
     space=int(random(0,200));
    }
    checkCollision();
    switch(num){
      case 1:
       image(flapup, birdX, birdY, 50, 70);
       num++;
       break;
     
      default:
       num = 1;
       image(flapdown, birdX, birdY, 50 ,70);
  }
  delay(70); 
  }
  void checkCollision(){
    if(birdX >50 &&birdX<80){  //pipe is in the vertical channel our plane
      if(dinoY <birdY + 80 || dinoY>birdY +80){
        gameRun = false;
      }
    }
  }
}
