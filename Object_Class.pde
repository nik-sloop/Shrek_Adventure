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
      rect(xpos,ypos,wid - 5,hei);
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
    if(obsticle == 6){
      fill(255);
      textSize(100);
      text("TO BE CONTINUED....", 150, 100);
      textSize(30);
      text("Press Esc to Exit", (xpos*20)-175,(ypos*20)-400);
    }
    if(obsticle == 7){
      fill(255);
      textSize(19);
      text("Get over here", 1070, 400);
    }
    if(obsticle == 8){
      fill(255);
      textSize(65);
      text("SKILL LEVEL 99999 MODE", 210, 60);
    }
    if(obsticle == 9){
      fill(255);
      textSize(85);
      text("Stage 1", 460, 100);
    }
    if(obsticle == 10){
      fill(255);
      textSize(80);
      text("Stage 2", 455, 70);
    }
    if(obsticle == 11){
      fill(255);
      textSize(63);
      text("Stage 3", 455, 65);
    }
    if(obsticle == 12){
      fill(255);
      textSize(40);
      text("Welcome to the Shrek game.",370, 50);
      textSize(20);
      text("The purpose of the game is to reach the end.",150, 100);
      text("E = Change Character", 150, 150);
      text("A = Left", 150, 200);
      text("D = Right", 150, 250);
      text("W = JUMP", 150, 300);
      text("There are some things that you need to know. Go to the right.", 150, 350);
      text("------------->", 600, 380);
    }
    if(obsticle == 13){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.05);
      image(collectwaffles,(xpos*20)-175,(ypos*20)-400);
      scale(20);
    }
    if(obsticle == 14){
      fill(255);
      textSize(40);
      text("First, lets use only Shrek.",250, 130);
      textSize(25);
      text("He can't jump over it",250, 155);
      text("Press F", 250, 180);
      
      if (obsticles[1][2] == null) {
      text("Shrek can one-punch grass and other things.", 250, 230);
      text("Remember to use your punches wisely.", 250, 255);
      text("Now punch your way to the end---->", 250, 280);
      }
    }
    if(obsticle == 15){
      fill(255);
      textSize(23);
      text("Stand on the button.",360, 270);
      text("|",458, 300);
      text("|",458, 320);
      text("V",455, 340);      
    }
    if(obsticle == 16){
      fill(255);
      textSize(23);
      text("Your Health.",0, 340);
      textSize(17);
      fill(255);
      text("|",19, 370);
      text("|",19, 390);
      text("|",19, 410);
      text("|",19, 430);
      text("|",19, 450);
      text("|",19, 470);
      text("|",19, 490);
      text("|",19, 510);
      textSize(23);
      text("V",15, 530);      
    }
    if(obsticle == 17){
      fill(255);
      textSize(23);
      text("<-------- Settings", 50, 40);    
    }
    if(obsticle == 18){
      fill(255);
      textSize(40);
      text("Now, use only Donkey.",50, 130);
      textSize(25);
      text("Press W", 50, 160);
      
      if (jumptutorial) {
      text("Unlike Shrek, he can go jump higher", 50, 205);
      text("and fit through small areas.", 50, 230);
      text("Now jump and squeeze your way to the end---->", 50, 255);
      text("And remember to take waffles.      |", 50, 280);
      text("                                                     V", 49, 300);
      }
    }
    if(obsticle == 19){
      fill(255);
      textSize(45);
      text("Now you are ready to play the game.", 220, 170);
      textSize(23);
      text("There will be a surprise at the end of the game....", 200, 240);   
    }
    if(obsticle == 20){
      fill(255);
      textSize(45);
      text("You finished Level 1. Now go to Level 2.", 220, 200);   
    }
    if(obsticle == 21){
      fill(255);
      textSize(45);
      text("You finished Level 2. Now go to Level 3.", 220, 200);   
    }
    if(obsticle == 22){
      fill(255);
      textSize(45);
      text("You have finished the game.", 220, 170);
      text("Congratulations!!", 220, 200); 
    }
    
  }
}
