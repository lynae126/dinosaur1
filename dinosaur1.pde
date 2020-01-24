PImage dino, legrup, leglup, background;
int bgX, bgY, dinoX, dinoY, gravity, num = 1, score=0;
boolean gameRun = true;
cactus c1;
Bird[] birdArray;

void setup(){
  size(1200,400);
  background = loadImage("./images/background.png");
  dino = loadImage("./images/dino.png");
  legrup = loadImage("./images/legrup.png");
  leglup = loadImage("./images/leglup.png");
  bgX=0;
  bgY=0;
  dinoX = 20;
  dinoY = 250;
  score = 0;
  gravity = 10;
  c1 = new cactus(10);
  birdArray = new Bird[4];
  for(int i=0; i<birdArray.length;i++){
    birdArray [i]=new Bird(width+i*400);
  }
}

void draw(){
  if(gameRun == true){
    movebg();
    keyPressed();
    gravityPull();
    c1.movecactus();
    animation();
    moveBird();
    showScore();
    checkKeyPress();
  }
}


void keyPressed(){
   
   if(gameRun == false){
   if(key == 'p'){
     gameRun = true;
     score = 0;
      bgX=0;
      bgY=0;
      dinoY = 250;
      score = 0;
      for(int i=0; i<birdArray.length;i++){
        birdArray [i]=new Bird(width+i*400);
      }
      gravity = 10;
      fill(255);
      rect(200, 40,50,60);
      draw();
   }
  }
}
void checkKeyPress(){
  if(keyCode == UP){
     if(dinoY <= 255 && dinoY >=245){
       dinoY -= 150;
     }
   }
}

void gravityPull(){
  //image(dino, dinoX, dinoY, 60, 80);
    if(dinoY < 250){
     dinoY += gravity;
  }
}



void movebg(){
  image(background,bgX,0,width,height);
  image(background,bgX+width,0,width,height);
  bgX-=20;
  if(bgX<-width){
    bgX=0;
  }
}


void animation(){
  if(dinoY!=250){
    image(dino, dinoX, dinoY+7, 50 ,70);
  }else{
   switch(num){
   case 1:
     image(legrup, dinoX, dinoY+7, 50, 70);
     num++;
     break;
      
   case 2:
     image(leglup, dinoX, dinoY+7,50 ,70);
     num++;
     break;
     
   default:
     num = 1;
     image(dino, dinoX, dinoY+7, 50 ,70);

  }
  }
  delay(5); 
}
void moveBird(){
  for(int i=0; i<birdArray.length;i++){
    birdArray[i].moveBird(); //call the pipe class methyod for all pipes
  }

}

void showScore(){
  textSize(30);
  fill(0);
  text("Score: " + score, 1000,40);
  if(gameRun){
    score++;
    delay(10);
  } else {
    textSize(20);
    text("High Score: " + score , 50, 40);
    text("Click P to play again ", 50, 60);

  }
}
