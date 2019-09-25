
void Start(){
  background(0);
  textAlign(CENTER,CENTER);
  textSize(60);
  fill(255);
  text("xxxx", width/2, 100);
  
  float x = width/4;
  float y = height/3;
  float w = width/2;
  float h = 200;
  
  float xx = width/4;
  float yy = height/3 + height/4 + 40;
  float ww = width/2;
  float hh = 200;
  
  
  fill(255);
  text("xxxx", w, y+100);
  text("BACK", ww, yy + 100);
  if(mouseX > xx && mouseX< xx+ww && mouseY>yy && mouseY<yy+hh && mousePressed && released == false){
    released = true;
    tra.toNextScene(0);
  }
  
}
