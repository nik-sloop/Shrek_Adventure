int deathCounter = 3;
boolean dead = false;

float vx = 0;  // current velocity
float vy = 0;  // current velocity
float ax = 0;  // object acceleration
float ay = 0;  // object acceleration

float shrekax = 0;
float shrekay = 0;
float shrekvx = 0;
float shrekvy = 0;

float donkeyax = 0;
float donkeyay = 0;
float donkeyvx = 0;
float donkeyvy = 0;

character[] characters; 
object[][] obsticles;
boolean reset = false;
void simulate() {
  if(singlePlayer == 1){
    if(reset){
      deathCounter = 3;
      level = 1;
      stage = 0;
      dead = false;
      ready = false;
      reset = false;
      setup();
    }
    if (deathCounter == 0) {    // if player has run out of lives
      dead = true;
    }
    if (dead != true) {
      characters[character].update(); // update characters position based on the simulation
    }
  } else {
    characters[0].update();
    characters[1].update();
  }
  /*
  Handles the movement of the character
  We got help on lines 10-15 this from site
  https://forum.processing.org/two/discussion/25157/help-with-gravity-and-jumping
  */
  if(singlePlayer == 1){
    
    if (level == 1) {
      updateLevel1();
    }
    else if (level == 2) {
      updateLevel2();
    } 
    else if (level == 3) {
      updateLevel3();
    } 

    ax = 0;
    ax += bothControls[0]?-.1:0;
    ax += bothControls[1]?.1:0;
    ay = .32;
    vx += ax;
    vy += ay;
    characters[character].setVX(vx);
    characters[character].setVY(vy);
    
    if(stage == 3){
      delay(3000);
      nextstage();
    }
    if (characters[character].getxpos() > 1200) { //&& stage != 3) {   
      ax = 0;
      vx =0;
      vy = 0;
      nextstage();
      
      characters[0].setxpos(100);
      characters[0].setypos(400);  
      characters[1].setxpos(100);
      characters[1].setypos(400);
    }
    if (characters[character].getypos() > 780) { 
      characters[character].setypos(400); 
      characters[character].setxpos(100); 
      vx = 0;
      vy = 0;   
      ay = 0;
      deathCounter--;
      drawLives(deathCounter);
      //println("VY after falling: " +characters[character].getVY());
    }
    //println(stage);
    for(int i=0; i <= obsticles[stage].length-1; i++){
      if(obsticles[stage][i] != null){
        obsticles[stage][i].update();
      } 
      //else {
      // break; 
      //}
    } 
    
    if(characters[character].getypos() > 680 && character == 0) {
      shrekDeath.play();
      shrekDeath.rewind();
    }
    else if(characters[character].getypos() > 680 && character == 1){
     donkeyDeath.play();
     donkeyDeath.rewind();
    }
    detectObject();
  } else {
    
    if (level == 1) {
      updateLevel1();
    }
    else if (level == 2) {
      updateLevel2();
    } 
    else if (level == 3) {
      updateLevel3();
    } 
    shrekax = 0;
    shrekax += shrekControl[0]?-.1:0;
    shrekax += shrekControl[1]?.1:0;
    shrekay = .32;
    shrekvx += shrekax;
    shrekvy += shrekay;
    characters[0].setVX(shrekvx);
    characters[0].setVY(shrekvy);
    
    donkeyax = 0;
    donkeyax += donkeyControl[0]?-.1:0;
    donkeyax += donkeyControl[1]?.1:0;
    donkeyay = .32;
    donkeyvx += donkeyax;
    donkeyvy += donkeyay;
    characters[1].setVX(donkeyvx);
    characters[1].setVY(donkeyvy);
    
    if(stage == 3){
      delay(3000);
      nextstage();
    }
    
    for(int i = 0; i < characters.length; i++){
      if (characters[i].getxpos() > 1200 && stage != 3) {   
        shrekax = 0;
        shrekvx =0;
        shrekvy = 0;
        
        donkeyax = 0;
        donkeyvx =0;
        donkeyvy = 0;
        nextstage();
        
        characters[0].setxpos(110);
        characters[0].setypos(480);  
        characters[1].setxpos(110);
        characters[1].setypos(500);
      }
      if (characters[i].getypos() > 780) { 
        characters[i].setypos(490);
        characters[i].setxpos(150);
        if(i == 0){
          shrekvx = 0;
          shrekvy = 0;   
          shrekay = 0;
        } else {
          donkeyvx = 0;
          donkeyvy = 0;   
          donkeyay = 0;
        }
        println("VY after falling: " +characters[character].getVY());
      }
          
      if(characters[i].getypos() > 680 && characters[i].getCharacter() == 0) {
        shrekDeath.play();
        shrekDeath.rewind();
      }
      else if(characters[i].getypos() > 680 && characters[i].getCharacter() == 1){
       donkeyDeath.play();
       donkeyDeath.rewind();
      }
    }
    for(int j=0; j <= obsticles[stage].length - 1; j++){
        if(obsticles[stage][j] != null){
          obsticles[stage][j].update();
        } 
       // else {
       //  break; 
       //}
    }
    detectObject();
  }
}
void nextstage(){

  if(stage == 0){
    stage = 1;
  } else if (stage == 1){
    stage = 2;
  } else if (stage == 2){
    stage = 3;
  } else if (stage == 3){
    if (level == maxLevel){
      maxLevel++;
      println("max level: "+maxLevel);
    }
    stage = 0;
    ready = false;
  } 
}
// Handles collision detection between the character and other objects.
void detectObject(){
  if(singlePlayer == 1){
    for(int i = 0; i < obsticles[stage].length; i++){
        if(obsticles[stage][i] != null){
          if(isTouching(characters[character],obsticles[stage][i]) == 1){          
            characters[character].setypos(obsticles[stage][i].getypos()- characters[character].geth());
            vy = 0;
            ay = 0;           
          }
          if(isTouching(characters[character],obsticles[stage][i]) == 2){
            characters[character].setxpos(obsticles[stage][i].getxpos()-characters[character].getw()); 
            vx =0;
          }
          if(isTouching(characters[character],obsticles[stage][i]) == 3){
            characters[character].setxpos(obsticles[stage][i].getxpos()+obsticles[stage][i].getw()); 
            vx=0;
          }
          if(isTouching(characters[character],obsticles[stage][i]) == 0){          
            characters[character].setypos(obsticles[stage][i].getypos()+ obsticles[stage][i].geth());
            vy = 1;                    
          }
        }
     }
  } else {
    for(int i = 0; i < obsticles[stage].length; i++){
        if(obsticles[stage][i] != null){
          if(isTouching(characters[0],obsticles[stage][i]) == 1){          
            characters[0].setypos(obsticles[stage][i].getypos()- characters[0].geth());
            shrekvy = 0;
            shrekay = 0;           
          }
          if(isTouching(characters[0],obsticles[stage][i]) == 2){
            characters[0].setxpos(obsticles[stage][i].getxpos()-characters[0].getw()); 
            shrekvx =0;
          }
          if(isTouching(characters[0],obsticles[stage][i]) == 3){
            characters[0].setxpos(obsticles[stage][i].getxpos()+obsticles[stage][i].getw()); 
            shrekvx=0;
          }
          if(isTouching(characters[0],obsticles[stage][i]) == 0){          
            characters[0].setypos(obsticles[stage][i].getypos()+ obsticles[stage][i].geth());
            shrekvy = 1;                    
          }
        }
     }
     for(int i = 0; i < obsticles[stage].length; i++){
        if(obsticles[stage][i] != null){
          if(isTouching(characters[1],obsticles[stage][i]) == 1){          
            characters[1].setypos(obsticles[stage][i].getypos()- characters[1].geth());
            donkeyvy = 0;
            donkeyay = 0;           
          }
          if(isTouching(characters[1],obsticles[stage][i]) == 2){
            characters[1].setxpos(obsticles[stage][i].getxpos()-characters[1].getw()); 
            donkeyvx =0;
          }
          if(isTouching(characters[1],obsticles[stage][i]) == 3){
            characters[1].setxpos(obsticles[stage][i].getxpos()+obsticles[stage][i].getw()); 
            donkeyvx=0;
          }
          if(isTouching(characters[1],obsticles[stage][i]) == 0){          
            characters[1].setypos(obsticles[stage][i].getypos()+ obsticles[stage][i].geth());
            donkeyvy = 1;                    
          }
        }
     }
  }
}
// Checks to see if the character is touching an object.
int isTouching(character h1, object h2){
  if(h2 != null){
    // if from the bottom
    if((h1.getypos() - h2.getypos() <= h2.geth()) && ((h1.getypos()-h2.getypos() > h2.geth()-20))){
      for(int i =0; i < h1.getw(); i++){
          if((h2.getxpos() < (h1.getxpos() + i)) && ((h1.getxpos() +i) <(h2.getxpos()+h2.getw()))){
            return 0;
          }
      }
    }
    // if from the top
    if(((h2.getypos()-h1.getypos()) <= h1.geth()) && ((h2.getypos()-h1.getypos()) > h1.geth()-20)){
      for(int i =0; i < h1.getw(); i++){
          if((h2.getxpos() < (h1.getxpos() + i)) && ((h1.getxpos() +i) <(h2.getxpos()+h2.getw()))){
            return 1;
          }
      }
    }
    //if from the left
    if(((h2.getxpos() - h1.getxpos()) <= h1.getw()) && (h2.getxpos() - h1.getxpos()) > h1.getw()-20){
      for(int i =0; i < h1.geth(); i++){     
          if((((h1.getypos() + i)) > h2.getypos()) && (h1.getypos() + i) < h2.getypos() + h2.geth()){
            return 2;
          }
        }
    }
     //if from the right
    if(((h1.getxpos() - h2.getxpos()) <= h2.getw()) && ((h1.getxpos() - h2.getxpos()) > h2.getw()-20)){
     for(int i =0; i < h1.geth(); i++){    
        if((((h1.getypos() + i)) > h2.getypos()) && (h1.getypos() + i) < h2.getypos() + h2.geth()){
          return 3;
          }
      }
    }
  }
  return -1;
}
