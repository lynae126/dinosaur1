PImage dino, background;
int bgX, bgY, dinoX, dinoY, score, gravity;
boolean gameRun = true;
cactus c1;
Bird[] birdArray;

void setup(){
  size(1200,400);
  background = loadImage("background.png");
  dino = loadImage("dino.png");
  bgX=0;
  bgY=0;
  dinoX = 20;
  dinoY = 250;
  score = 0;
  gravity = 4;
  c1 = new cactus(10);
  birdArray = new Bird[4];
  for(int i=0; i<birdArray.length;i++){
    birdArray [i]=new Bird(width+i*400);
  }
}

void draw(){
  if(gameRun){
    movebg();
    checkKeyPresses();
    gravityPull();
    c1.movecactus();
    moveBird();
  }
}


void checkKeyPresses(){
  if(keyPressed){
   if(keyCode == UP){
     if(dinoY <= 255 && dinoY >=245){
       dinoY -= 70;
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

void moveBird(){
  for(int i=0; i<birdArray.length;i++){
    birdArray[i].moveBird(); //call the pipe class methyod for all pipes
  }
}
