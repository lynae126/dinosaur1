public class Bird{
  PImage flapup, flapdown;
  int birdX;
  float birdY,space;
  
  public Bird(int x){
    flapup=loadImage("./images/bird1.png");
    flapdown=loadImage("./images/bird2.png");
    birdX=x;
    birdY=int(random(-200,0));
    space=int(random(0,200));
  }
  
  void moveBird(){
    image(flapup, birdX,birdY);
  }
}
