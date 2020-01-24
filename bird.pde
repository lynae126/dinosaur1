
public class Bird{
  PImage flapup, flapdown;
  int birdX,  num =1;
  float birdY,space;
  
  public Bird(int x){
    flapup=loadImage("./images/bird1.png");
    flapdown=loadImage("./images/bird2.png");
    birdX=x;
    birdY=230;
    space=random(300,1000);
  }
  
  void moveBird(){
    birdX-=30;
    if(birdX+space < -800){
      space = random(300,1000);
      birdX = width;
    }
    checkCollision();
    switch(num){
      case 1:
       image(flapup, birdX+space, birdY, 50, 70);
       num++;
       break;
     
      default:
       num = 1;
       image(flapdown, birdX+space, birdY, 50 ,70);
  } 
  delay(10);
  }
  void checkCollision(){
    if(birdX>10-space && birdX<55-space){
      if(dinoY>birdY-50){ 
        gameRun = false;
    }
  }
}
}
