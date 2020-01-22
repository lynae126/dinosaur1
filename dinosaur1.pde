PImage dino, background;
int bgX, bgY, dinoX, dinoY, score, gravity;
boolean gameRun = true;
cactus c1;

void setup(){
  size(1200,400);
  background = loadImage("background.png");
  dino = loadImage("dino.png");
  bgX=0;
  bgY=0;
  dinoX = 20;
  dinoY = 250;
  score = 0;
  gravity = 6;
  c1 = new cactus(10);
}

void draw(){
  if(gameRun == true){
    movebg();
    checkKeyPresses();
    gravityPull();
    c1.movecactus();
  
    
  }
}


void checkKeyPresses(){
  if(keyPressed){
   if(keyCode == UP){
     while(dinoY <= 255 && dinoY >=245){
       dinoY -= 100;

       
     }
   }
  }
}

void gravityPull(){
  image(dino, dinoX, dinoY, 60, 80);
    if(dinoY < 250){
     dinoY += gravity;
  }
}



void movebg(){
  image(background,bgX,0,width,height);
  image(background,bgX+width,0,width,height);
  bgX-=7;
  if(bgX<-width){
    bgX=0;
  }
}
