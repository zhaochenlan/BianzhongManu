import processing.sound.*;
SoundFile file;

int screen, len;
boolean released;
PImage Background;

int screensizex, screensizey;
Transitions tra;

SoundFile click,BackgroundMusic;

void setup(){
  screensizex = round(1200);
  screensizey = round(600);
  size(1200,600);
  Background = loadImage("Background.jpeg");
  
  tra = new Transitions();
  tra.inAnimation = true;
  
  click = new SoundFile(this, "1.mp3");
  BackgroundMusic = new SoundFile(this, "BackgroundMusic.mp3");
  BackgroundMusic.play();
    
  YinYang = loadImage("YinYang.png");
  Bianzhong_text = loadImage("Bianzhong_text.PNG");
  Bianzhong_Img = loadImage("Bianzhong.png");
}

void draw (){
  image(Background, 0,0,screensizex, screensizey);
  //background(128);
  
  if (screen == 0){
    startMenu(); 
  }
  else if (screen == 1){
    Start();
  }
  else if (screen == 2){
    options();
  }
  
  if(tra.inAnimation)
    tra.drawMyself();
  
}


void mouseReleased(){
  released = false;
}
