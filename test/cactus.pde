public class cactus{

  PImage cactus;
  float cactusX = 200;
  float cactusY= 275;
 
 
  
  public cactus(int x){

    cactus = loadImage("THEsinglecactus.PNG");
    
  }
  
  void movecactus(){
    image(cactus,cactusX,cactusY,30,40);
    cactusX -= 10;
    
    if(cactusX < -800){
      cactusX = width;
     
    }
    checkKeyPresses();
    checkCollision();

    
}

  
  
  void checkCollision(){ //check dino collision with cactus
    if(cactusX>10 && cactusX<55){
    
      if(dinoY>cactusY-50){ //a cactus is in the vertical
     

  
    
        gameRun = false;
    }
  }
  }
  
  }
