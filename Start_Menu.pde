PImage YinYang,Bianzhong_text,Bianzhong_Img;
float YinYangRotation;

void startMenu(){

  drawYinyang();
  image(Bianzhong_text,width*4/10,0,width/5,width/10);
  image(Bianzhong_Img,width*8/10,height*4/5,width/5,width/10);
  textAlign(CENTER,CENTER);
  
  float x = width/4;
  float y = height/3;
  float w = width/3;
  float h = 200;
  
  float xx = width/4;
  float yy = height/3 + height/4 + 40;
  float ww = width/2;
  float hh = 200;
  
  textSize(30);
  text("START", w, y);
  text("Teaching", w-40, y+90);
  text("Entertainment", w-40, y+180);
  //text("OPTIONS", ww, yy + 100);
  
  if(mouseX > w-60 && mouseX< w+60 && mouseY>y && mouseY<y+30 && mousePressed && released == false){
    released = true;
    tra.inAnimation = true;
    click.play();
    tra.toNextScene(1);
  }
    
  
}

void drawYinyang() {
  translate(width/2, height/2);
  rotate(YinYangRotation);
  image(YinYang,-width/8,-width/8,width/4,width/4);
  rotate(-YinYangRotation);
  translate(-width/2, -height/2);
  YinYangRotation += PI/500;
}
