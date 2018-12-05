  class object { 
  float xpos, ypos;
  int wid, hei;
  float speedx, speedy; 
  int obsticle;
  int upperY, lowerY, upperX, lowerX;
  boolean breakable;
  object (float x, float y,int w, int h, float vx, int uX, int lX,float vy,int uY, int lY, int o) {  
    xpos = x;
    ypos = y; 
    wid = w;
    hei =h;
    speedx = vx;
    speedy = vy;
    obsticle = o;
    upperY = uY;
    lowerY = lY;
    upperX = uX;
    lowerX =lX;
    if(o == 1 || o == 2 || o ==3){
      breakable = true;
    } else {
      breakable = false;
    }
      
    
  } 
  void update() { 
    xpos += speedx;
    ypos += speedy; 
    if (ypos > upperY) { 
      speedy *= -1; 
    } 
    if (ypos < lowerY) { 
      speedy *= -1 ; 
    }
    if (xpos > upperX) { 
      speedx *= -1; 
    } 
    if (xpos < lowerX) { 
      speedx *= -1; 
    }
  } 
  float getxpos(){
    return xpos;
  }
   float getypos(){
    return ypos;
  }
  void setxpos(float xp){
    xpos = xp;
  }
  void setypos(float yp){
    ypos = yp;
  }
  int getw(){
    return wid;
  }
  int geth(){
    return hei;
  }
  float getVY(){
  return speedy;
  }
  float getVX(){
  return speedx;
  }
  void setVX(float vx){
    speedx = vx;
  }
  void setVY(float vy){
    speedy = vy;
  }
  int getCharacter(){
    return character;
  }
  void setCharacter(int i){
    character = i;
  }
  void setBreakable(boolean b){
    breakable = b;
  }
  boolean getBreakable(){
    return breakable;
  }
  void d(){
    if(obsticle == 0){
      fill(139, 69 ,19);
      strokeWeight(3);
      stroke(0);
      rect(xpos, ypos, wid, hei);   
    }    
    if(obsticle == 1){
      //fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.125);
      image(grass,(xpos*8)-200,(ypos*8)-310);
      scale(8);
    }
    if(obsticle == 2){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.1);
      image(rocks,(xpos*10)-200,(ypos*10)-600);
      scale(10);
    }
    if(obsticle == 3){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.05);
      image(logs,(xpos*20)-175,(ypos*20)-400);
      scale(20);
    } 
    if(obsticle == 4){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.05);
      image(button,(xpos*20)-175,(ypos*20)-400);
      scale(20);
    }
    if(obsticle == 5){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.25);
      image(menu,(xpos*20)-175,(ypos*20)-400);
      scale(20);
    }    
  }
}
