public class Bird{
  PImage flapup, flapdown;
  int birdX,  num =1;
  float birdY,space;
  
  public Bird(int x){
    flapup=loadImage("./images/bird1.png");
    flapdown=loadImage("./images/bird2.png");
    birdX=x;
    birdY=220;
    space=random(0,200);
  }
  
  void moveBird(){
    //image(flapup, birdX,birdY);
    birdX-=40;
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
    /*if(birdX > dinoX - 30 || birdX < dinoX + 30 ){  
      if( birdY>dinoY -40 || birdY<dinoY-40){
        gameRun = false;
      }
    }*/
    if(birdX>10 && birdX<55){
    
      if(dinoY>birdY-50){ //a cactus is in the vertical
     

  
    
        gameRun = false;
    }
  }
}
}
