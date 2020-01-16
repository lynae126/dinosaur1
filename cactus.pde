public class cactus{

  PImage cactus;
  int cactusX;
  float cactusY, space;
  
  public cactus(int x){
    cactus = loadImage("singlecactus.PNG");
    cactusX = x;
    space = int(random(0, 200));
  }
  
  void movecactus(){
    image(cactus, cactusX,cactusY);
    cactusX -= 10;
    
    if(cactusX < -800){
      cactusX = width;
     
    }
    
    
      //added this comment
  
}
}
