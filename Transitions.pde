class Transitions{
  
  PImage Gate_left,Gate_right;
  int AnimationTime;
  int AnimationSpeed = 25;
  
  boolean isOpening = true;
  public boolean inAnimation = false;
  
  int nextScene = 0;
  
  public Transitions(){
    Gate_left = loadImage("Gate_left.png");
    Gate_right = loadImage("Gate_right.png");
  }
  
  public void drawMyself() {
    if(isOpening){
      image(Gate_left,-AnimationTime*AnimationSpeed,0,width/2,height);
      image(Gate_right,width/2+AnimationTime*AnimationSpeed,0,width/2,height);
    } else {
      image(Gate_left,AnimationTime*AnimationSpeed-width/2,0,width/2,height);
      image(Gate_right,width-AnimationTime*AnimationSpeed,0,width/2,height);
    }
    
    if(AnimationTime*AnimationSpeed<width/2){
      AnimationTime++;
    } else {
      if(!isOpening){
        opening();
        changeMusic();
        screen = nextScene;
      }  
      else{
        inAnimation = false;
      }
      
    }
      
  }
  
  public void opening(){
    AnimationTime = 0;
    isOpening = true;
    inAnimation = true;
  }
  
  public void closeing(){
    AnimationTime = 0;
    isOpening = false;
    inAnimation = true;
  }
  
  public void toNextScene(int nextScene){
    this.nextScene = nextScene;
    closeing();
  }
  
  void changeMusic(){
    if(nextScene == 0){
      BackgroundMusic.play();
    } else {
      BackgroundMusic.stop();
    }
      
  }
  
}
